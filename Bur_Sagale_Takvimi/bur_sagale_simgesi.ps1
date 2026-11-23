# =====================================================================
#  BUR SAGALE TAKVİMİ · GÖREV ÇUBUĞU SİMGESİ (Sistem A) · Sürüm 3.6
# ---------------------------------------------------------------------
#  - Bildirim alanında bugünün gününü gösteren küçük bir simge koyar.
#  - Üzerine gelince: "23 Kasım 2789 · Pazartesi"
#  - Sol tık: takvimi ayrı bir Edge uygulama penceresinde açar.
#  - Sağ tık: tarihte bugün, açılış ayarları, çıkış.
#  Windows'un saatine, tarihine, bölge ayarlarına ya da başka hiçbir
#  uygulamanın takvimine DOKUNMAZ. Yalnızca kendi kısayollarını ve
#  bu klasördeki ayarlar.json dosyasını yazar.
#
#  Kullanım:   Kur.cmd        -> kısayolları oluşturur ve simgeyi başlatır
#              Kaldir.cmd     -> bu aracın oluşturduğu kısayolları siler
# =====================================================================
param([switch]$Kur, [switch]$Kaldir, [switch]$Test)
$ErrorActionPreference = 'Stop'

$Klasor   = $PSScriptRoot
$HtmlYolu = Join-Path $Klasor 'Bur_Sagale_Takvimi.html'
$VeriYolu = Join-Path $Klasor 'olaylar.js'
$AyarYolu = Join-Path $Klasor 'ayarlar.json'

# ------------------------------------------------------------ hesap motoru
# Takvimdeki (HTML) motorun birebir aynısıdır.
$A_EPOCH = 1442738   # 1 Ocak MÖ 763 (Jülyen) = Sistem A 01/01/0001
$CUT     = 2299161   # 15 Ekim 1582 (Gregoryen ilk gün)
$Aylar   = @('Ocak','Şubat','Mart','Nisan','Mayıs','Haziran','Temmuz','Ağustos','Eylül','Ekim','Kasım','Aralık')
$Gunler  = @('Pazartesi','Salı','Çarşamba','Perşembe','Cuma','Cumartesi','Pazar')

function FDiv([long]$a, [long]$b) { return [long][math]::Floor($a / $b) }

function Get-JD([long]$y, [long]$m, [long]$d, [string]$cal) {
    $a = FDiv (14 - $m) 12; $Y = $y + 4800 - $a; $M = $m + 12 * $a - 3
    $n = $d + (FDiv (153 * $M + 2) 5) + 365 * $Y + (FDiv $Y 4)
    if ($cal -eq 'greg') { return $n - (FDiv $Y 100) + (FDiv $Y 400) - 32045 }
    return $n - 32083
}

function From-JD([long]$J, [string]$cal) {
    if ($cal -eq 'greg') {
        $a = $J + 32044; $b = FDiv (4 * $a + 3) 146097; $c = $a - (FDiv (146097 * $b) 4)
    } else { $b = 0; $c = $J + 32082 }
    $d = FDiv (4 * $c + 3) 1461; $e = $c - (FDiv (1461 * $d) 4); $m = FDiv (5 * $e + 2) 153
    return @{ y = 100 * $b + $d - 4800 + (FDiv $m 10); m = $m + 3 - 12 * (FDiv $m 10); d = $e - (FDiv (153 * $m + 2) 5) + 1 }
}

function From-A([long]$J) {
    if ($J -lt $A_EPOCH) { return $null }
    $cal = 'greg'; if ($J -lt $CUT) { $cal = 'jul' }
    $q = From-JD $J $cal
    return @{ y = $q.y + 763; m = $q.m; d = $q.d }
}

function Get-HaftaGunu([long]$J) { return [int]((($J % 7) + 7) % 7) }   # 0 = Pazartesi
function Get-BugunJD { $t = Get-Date; return Get-JD $t.Year $t.Month $t.Day 'greg' }
function Get-Etiket([long]$J) {
    $a = From-A $J
    return ('{0} {1} {2} · {3}' -f $a.d, $Aylar[$a.m - 1], $a.y, $Gunler[(Get-HaftaGunu $J)])
}

function Parse-Tarih([string]$s, [string]$cal) {
    if ($s -notmatch '^\s*(\d{1,2})\.(\d{1,2})\.(\d{1,5})\s*(MÖ|MS)?\s*$') { throw "tarih biçimi hatalı: $s" }
    $d = [long]$Matches[1]; $m = [long]$Matches[2]; $y = [long]$Matches[3]
    if ($Matches[4] -eq 'MÖ') { $y = 1 - $y }
    if ($cal -ne 'jul' -and $cal -ne 'greg') { throw "takvim jul ya da greg olmalı: $cal" }
    $J = Get-JD $y $m $d $cal; $q = From-JD $J $cal
    if ($q.y -ne $y -or $q.m -ne $m -or $q.d -ne $d) { throw "takvimde olmayan gün: $s" }
    return $J
}

# ------------------------------------------------------------ olay verisi
$script:Olaylar = @(); $script:VeriHatasi = $null; $script:SorunSayisi = 0

function Load-Olaylar {
    $script:Olaylar = @(); $script:VeriHatasi = $null; $script:SorunSayisi = 0
    try {
        $t = [IO.File]::ReadAllText($VeriYolu, [Text.Encoding]::UTF8)
        $i = $t.IndexOf("`nwindow.TAKVIM_VERI"); if ($i -lt 0) { throw 'window.TAKVIM_VERI satırı bulunamadı' }
        $j = $t.IndexOf('=', $i) + 1; $k = $t.LastIndexOf(';')
        $veri = $t.Substring($j, $k - $j) | ConvertFrom-Json
    } catch {
        $script:VeriHatasi = 'olaylar.js okunamadı. Takvimi açınca ayrıntılı hata görünür.'
        return
    }
    $liste = New-Object System.Collections.ArrayList
    foreach ($e in $veri.olaylar) {
        try {
            if ($e.sinif -eq 'C') { continue }
            $J = $null
            if ($null -ne $e.jdn -and "$($e.jdn)" -ne '') { $J = [long]$e.jdn }
            if ($e.tarih) {
                $cal = 'jul'; if ($e.takvim) { $cal = [string]$e.takvim }
                $T = Parse-Tarih ([string]$e.tarih) $cal
                if ($null -eq $J) { $J = $T } elseif ($T -ne $J) { throw 'tarih ve jdn tutmuyor' }
            }
            if ($null -eq $J -or $J -lt $A_EPOCH) { throw 'tarih yok' }
            $a = From-A $J
            $anahtar = '{0:D2}.{1:D2}' -f $a.d, $a.m
            if ($e.yildonumu) { $anahtar = [string]$e.yildonumu }
            [void]$liste.Add([pscustomobject]@{ olay = [string]$e.olay; jdn = $J; ay = $a.y; anahtar = $anahtar; sinif = [string]$e.sinif })
        } catch { $script:SorunSayisi++ }
    }
    $script:Olaylar = @($liste | Sort-Object jdn)
}

# Kural (takvimle aynı): olay Sistem A ay/gününde anılır; 29 Şubat olayları
# 29 Şubat olmayan yıllarda 28 Şubat'ta gösterilir.
function Get-Yildonumleri([long]$J) {
    $a = From-A $J
    $anahtarlar = @(('{0:D2}.{1:D2}' -f $a.d, $a.m))
    if ($a.m -eq 2 -and $a.d -eq 28) { $n = From-A ($J + 1); if ($n.m -eq 3) { $anahtarlar += '29.02' } }
    return @($script:Olaylar | Where-Object { $_.jdn -lt $J -and $anahtarlar -contains $_.anahtar } |
             ForEach-Object { [pscustomobject]@{ olay = $_.olay; yil = $a.y - $_.ay; sinif = $_.sinif } })
}

function Get-YildonumuMetni([long]$J) {
    if ($script:VeriHatasi) { return $script:VeriHatasi }
    $l = Get-Yildonumleri $J
    if ($l.Count -eq 0) { return 'Bugün için kayıtlı bir yıldönümü yok.' }
    $satirlar = @($l | ForEach-Object { '↺ {0:N0} yıl önce · {1}' -f $_.yil, $_.olay })
    $metin = ''; $n = 0
    foreach ($s in $satirlar) {
        if (($metin.Length + $s.Length) -gt 220) { break }
        if ($metin) { $metin += "`n" }; $metin += $s; $n++
    }
    if ($n -lt $satirlar.Count) { $metin += "`n+$($satirlar.Count - $n) olay daha (takvimde)" }
    return $metin
}

# ------------------------------------------------------------ kısayollar
function Get-EdgeYolu {
    foreach ($k in @('HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe',
                     'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe')) {
        try { $p = (Get-ItemProperty -Path $k -ErrorAction Stop).'(default)'; if ($p -and (Test-Path $p)) { return $p } } catch {}
    }
    foreach ($p in @("${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe", "$env:ProgramFiles\Microsoft\Edge\Application\msedge.exe")) {
        if (Test-Path $p) { return $p }
    }
    return $null
}
function Get-HtmlUri { return ([System.Uri]$HtmlYolu).AbsoluteUri }
$PsExe = 'powershell.exe'
if ($env:SystemRoot) { $PsExe = Join-Path $env:SystemRoot 'System32\WindowsPowerShell\v1.0\powershell.exe' }
$SimgeArg = "-NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File `"$PSCommandPath`""

function New-Kisayol([string]$yol, [string]$hedef, [string]$arg, [string]$aciklama) {
    $ws = New-Object -ComObject WScript.Shell
    $l = $ws.CreateShortcut($yol); $l.TargetPath = $hedef; $l.Arguments = $arg
    $l.WorkingDirectory = $Klasor; $l.Description = $aciklama; $l.Save()
}
function Get-BaslangicKisayolu { return Join-Path ([Environment]::GetFolderPath('Startup')) 'Bur Sagale Takvimi Simgesi.lnk' }
function Get-AracKisayollari {
    $menu = Join-Path ([Environment]::GetFolderPath('Programs')) 'Bur Sagale Takvimi'
    return @((Join-Path $menu 'Bur Sagale Takvimi.lnk'), (Join-Path $menu 'Bur Sagale Takvimi Simgesi.lnk'),
             (Join-Path ([Environment]::GetFolderPath('Desktop')) 'Bur Sagale Takvimi.lnk'), (Get-BaslangicKisayolu))
}

function Open-Takvim {
    $edge = Get-EdgeYolu
    if ($edge) { Start-Process -FilePath $edge -ArgumentList ('--app="{0}"' -f (Get-HtmlUri)) }
    else { Start-Process -FilePath $HtmlYolu }   # Edge yoksa varsayılan tarayıcı
}

if ($Kur) {
    $edge = Get-EdgeYolu
    $menu = Join-Path ([Environment]::GetFolderPath('Programs')) 'Bur Sagale Takvimi'
    New-Item -ItemType Directory -Force -Path $menu | Out-Null
    $s = Get-AracKisayollari
    if ($edge) {
        New-Kisayol $s[0] $edge ('--app="{0}"' -f (Get-HtmlUri)) 'Bur Sagale Takvimi (Sistem A)'
        New-Kisayol $s[2] $edge ('--app="{0}"' -f (Get-HtmlUri)) 'Bur Sagale Takvimi (Sistem A)'
    } else {
        New-Kisayol $s[0] $HtmlYolu '' 'Bur Sagale Takvimi (Sistem A)'
        New-Kisayol $s[2] $HtmlYolu '' 'Bur Sagale Takvimi (Sistem A)'
        Write-Host 'Microsoft Edge bulunamadı; takvim varsayılan tarayıcıda açılacak.'
    }
    New-Kisayol $s[1] $PsExe $SimgeArg 'Bur Sagale Takvimi görev çubuğu simgesi'
    Write-Host 'Kısayollar oluşturuldu: Başlat menüsü > Bur Sagale Takvimi, masaüstü > Bur Sagale Takvimi'
    Start-Process -FilePath $PsExe -ArgumentList $SimgeArg
    exit 0
}

if ($Kaldir) {
    # 3.5 ve öncesi "Tarihsel Takvim" adıyla kısayol oluşturuyordu; onlar da kaldırılır.
    $eskiMenu = Join-Path ([Environment]::GetFolderPath('Programs')) 'Tarihsel Takvim'
    $eskiler = @((Join-Path $eskiMenu 'Tarihsel Takvim.lnk'), (Join-Path $eskiMenu 'Tarihsel Takvim Simgesi.lnk'),
                 (Join-Path ([Environment]::GetFolderPath('Desktop')) 'Tarihsel Takvim.lnk'),
                 (Join-Path ([Environment]::GetFolderPath('Startup')) 'Tarihsel Takvim Simgesi.lnk'))
    foreach ($p in (@(Get-AracKisayollari) + $eskiler)) { if (Test-Path $p) { Remove-Item -LiteralPath $p; Write-Host "Silindi: $p" } }
    foreach ($menu in @((Join-Path ([Environment]::GetFolderPath('Programs')) 'Bur Sagale Takvimi'), $eskiMenu)) {
        if ((Test-Path $menu) -and -not (Get-ChildItem $menu)) { Remove-Item -LiteralPath $menu }
    }
    Write-Host 'Takvim dosyaları ve notların yerinde duruyor; yalnızca kısayollar kaldırıldı.'
    exit 0
}

if ($Test) {
    Load-Olaylar
    $J = Get-BugunJD
    "Bugün JDN $J · " + (Get-Etiket $J)
    "Olay (C hariç): $($script:Olaylar.Count) · atlanan sorunlu kayıt: $($script:SorunSayisi) · veri hatası: $($script:VeriHatasi)"
    Get-YildonumuMetni $J
    exit 0
}

# ------------------------------------------------------------ simge
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
Add-Type -Namespace BurSagaleTakvimi -Name Win32 -MemberDefinition '[DllImport("user32.dll")] public static extern bool DestroyIcon(System.IntPtr h);'

$yeni = $false
$kilit = New-Object System.Threading.Mutex($true, 'Local\BurSagaleTakvimiSimgesi', [ref]$yeni)
if (-not $yeni) { exit 0 }   # zaten çalışıyor

function Read-Ayarlar {
    $v = @{ acilisBildirimi = $false }
    try { if (Test-Path $AyarYolu) { $o = Get-Content $AyarYolu -Raw -Encoding UTF8 | ConvertFrom-Json; $v.acilisBildirimi = [bool]$o.acilisBildirimi } } catch {}
    return $v
}
function Save-Ayarlar($v) { try { ($v | ConvertTo-Json) | Set-Content -Path $AyarYolu -Encoding UTF8 } catch {} }

$script:IkonHandle = [IntPtr]::Zero
function New-GunIkonu([int]$gun) {
    $bmp = New-Object System.Drawing.Bitmap 32, 32
    $g = [System.Drawing.Graphics]::FromImage($bmp)
    $g.SmoothingMode = 'AntiAlias'; $g.TextRenderingHint = 'AntiAliasGridFit'
    $g.Clear([System.Drawing.Color]::Transparent)
    $lacivert = New-Object System.Drawing.SolidBrush ([System.Drawing.Color]::FromArgb(255, 22, 39, 64))
    $altin    = New-Object System.Drawing.SolidBrush ([System.Drawing.Color]::FromArgb(255, 201, 162, 88))
    $g.FillRectangle($lacivert, 1, 3, 30, 28)
    $g.FillRectangle($altin, 1, 3, 30, 7)
    $font = New-Object System.Drawing.Font('Segoe UI', 13, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Pixel)
    if ($gun -ge 10) { $font = New-Object System.Drawing.Font('Segoe UI', 15, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Pixel) }
    $sf = New-Object System.Drawing.StringFormat; $sf.Alignment = 'Center'; $sf.LineAlignment = 'Center'
    $g.DrawString([string]$gun, $font, [System.Drawing.Brushes]::White, (New-Object System.Drawing.RectangleF(0, 9, 32, 23)), $sf)
    $g.Dispose()
    $h = $bmp.GetHicon(); $bmp.Dispose()
    return @{ icon = [System.Drawing.Icon]::FromHandle($h); handle = $h }
}

$ayar = Read-Ayarlar
$ni   = New-Object System.Windows.Forms.NotifyIcon
$menu = New-Object System.Windows.Forms.ContextMenuStrip
$baslik = $menu.Items.Add('—'); $baslik.Enabled = $false
[void]$menu.Items.Add((New-Object System.Windows.Forms.ToolStripSeparator))
$miAc    = $menu.Items.Add('Takvimi aç')
$miBugun = $menu.Items.Add('Tarihte bugün')
[void]$menu.Items.Add((New-Object System.Windows.Forms.ToolStripSeparator))
$miBildirim = New-Object System.Windows.Forms.ToolStripMenuItem 'Her gün tarihte bugün bildirimi göster'
$miBildirim.CheckOnClick = $true; $miBildirim.Checked = $ayar.acilisBildirimi; [void]$menu.Items.Add($miBildirim)
$miAcilis = New-Object System.Windows.Forms.ToolStripMenuItem 'Windows açılışında başlat'
$miAcilis.CheckOnClick = $true; $miAcilis.Checked = (Test-Path (Get-BaslangicKisayolu)); [void]$menu.Items.Add($miAcilis)
[void]$menu.Items.Add((New-Object System.Windows.Forms.ToolStripSeparator))
$miCikis = $menu.Items.Add('Çıkış')
$ni.ContextMenuStrip = $menu

$script:GosterilenJD = 0
function Show-Bugun([long]$J) {
    Load-Olaylar   # olaylar.js her seferinde yeniden okunur; eklediğin olaylar hemen görünür
    $ni.ShowBalloonTip(10000, "Tarihte bugün · $(Get-Etiket $J)", (Get-YildonumuMetni $J), [System.Windows.Forms.ToolTipIcon]::None)
}
function Update-Simge([bool]$gunDegisti) {
    $J = Get-BugunJD
    if ($J -eq $script:GosterilenJD) { return }
    $script:GosterilenJD = $J
    $a = From-A $J; $etiket = Get-Etiket $J
    $yeniIkon = New-GunIkonu $a.d
    $eski = $script:IkonHandle
    $ni.Icon = $yeniIkon.icon; $script:IkonHandle = $yeniIkon.handle
    if ($eski -ne [IntPtr]::Zero) { [void][BurSagaleTakvimi.Win32]::DestroyIcon($eski) }
    $ipucu = "$etiket"; if ($ipucu.Length -gt 63) { $ipucu = $ipucu.Substring(0, 63) }
    $ni.Text = $ipucu; $baslik.Text = $etiket
    if ($gunDegisti -and $miBildirim.Checked) { Show-Bugun $J }
}

$ni.add_MouseClick({ param($s, $e) if ($e.Button -eq [System.Windows.Forms.MouseButtons]::Left) { Open-Takvim } })
$ni.add_BalloonTipClicked({ Open-Takvim })
$miAc.add_Click({ Open-Takvim })
$miBugun.add_Click({ Show-Bugun (Get-BugunJD) })
$miBildirim.add_Click({ $ayar.acilisBildirimi = $miBildirim.Checked; Save-Ayarlar $ayar })
$miAcilis.add_Click({
    $p = Get-BaslangicKisayolu
    if ($miAcilis.Checked) { New-Kisayol $p $PsExe $SimgeArg 'Bur Sagale Takvimi görev çubuğu simgesi' }
    elseif (Test-Path $p) { Remove-Item -LiteralPath $p }
})
$miCikis.add_Click({ $ni.Visible = $false; $zaman.Stop(); [System.Windows.Forms.Application]::Exit() })

Update-Simge $false
$ni.Visible = $true

# Gece yarısını yakalamak için her 30 saniyede bir tarih kontrolü
$zaman = New-Object System.Windows.Forms.Timer
$zaman.Interval = 30000
$zaman.add_Tick({ Update-Simge $true })
$zaman.Start()

# Açılış bildirimi (ayar açıksa), simge yerleştikten birkaç saniye sonra
if ($miBildirim.Checked) {
    $ilk = New-Object System.Windows.Forms.Timer; $ilk.Interval = 4000
    $ilk.add_Tick({ $ilk.Stop(); Show-Bugun (Get-BugunJD) })
    $ilk.Start()
}

[System.Windows.Forms.Application]::Run()
$ni.Dispose()
if ($script:IkonHandle -ne [IntPtr]::Zero) { [void][BurSagaleTakvimi.Win32]::DestroyIcon($script:IkonHandle) }
$kilit.ReleaseMutex()
