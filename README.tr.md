# Bur-Sagale Takvimi

**Açık kaynaklı tarihsel takvim ve kaynaklı kronoloji projesi.**  
**Tarihsel dayanak:** 15 Haziran **MÖ 763** Asur Güneş tutulması (geriye uygulanmış Jülyen takvimi).  
**Ana takvim:** **Sistem A** — genişletilmiş tarihsel Jülyen–Gregoryen takvimi.  
**Deneysel alternatif:** **Sistem B** — tutulma gününde başlayan 13 aylı takvim.

*English: [README.md](README.md)*

> **Temel fikrimiz:** Antik Çağ, bugünün de içinde bulunduğu kesintisiz günler zincirinin bir parçasıdır. Güvenilir biçimde tarihlendirilen eski olayları tanıdık bir takvim içinde görünür kılarak, insanlığın kayıtlı geçmişinin uzak ve göz ardı edilen dönemleriyle günümüz arasında daha güçlü bir bağ kurmak istiyoruz.

## İçindekiler

- [Projenin amacı](#projenin-amacı)
- [Bur-Sagale ve MÖ 763 neden seçildi?](#bur-sagale-ve-mö-763-neden-seçildi)
- [MÖ 763 ve insanlığın yazılı medeniyet birikimi](#mö-763-ve-insanlığın-yazılı-medeniyet-birikimi)
- [İki takvim sistemimiz](#i̇ki-takvim-sistemimiz)
- [Kesintisiz gün hesabı: JDN](#kesintisiz-gün-hesabı-jdn)
- [Tarihsel kayıtlar ve kesinlik sınıfları](#tarihsel-kayıtlar-ve-kesinlik-sınıfları)
- [Günlük kullanım ve Windows](#günlük-kullanım-ve-windows)
- [Araştırma ilkeleri ve katkılar](#araştırma-ilkeleri-ve-katkılar)
- [Temel kaynakça](#temel-kaynakça)
- [Lisans ve durum](#lisans-ve-durum)

## Projenin amacı

Milattan önceki tarihler, bugün kullanılan yıl sayımında geriye doğru ilerler. Bu, tarih araştırmalarında gerekli ve kullanışlı bir gelenektir; ancak çok eski olaylarla günümüzü aynı zihinsel zaman çizgisinde kavramayı zorlaştırabilir. **Bur-Sagale Takvimi**, gerçek zamanın akışını değil, onu insanlara gösterme biçimini yeniden düzenlemeyi amaçlar.

Hedeflerimiz:

1. **Tarihsel sürekliliği göstermek:** Eski bir olay ile bugün arasındaki günleri kesintisiz hesaplayabilmek.
2. **Yıl sayımını bir insan kaydına bağlamak:** Başlangıç dayanağı olarak MÖ 763 Asur tutulmasını seçmek.
3. **Gündelik kullanımı kolaylaştırmak:** Sistem A'da mevcut ay ve günleri, yedi günlük haftayı ve tarihsel Jülyen–Gregoryen geçişini korumak.
4. **Uygarlıkları ortak çizgide buluşturmak:** Mezopotamya, Mısır, Yunan, Roma, İran, Hint, Çin ve başka toplumların belgeli olaylarını birbiriyle karşılaştırılabilir hâle getirmek.
5. **Kanıtı matematikten ayırmak:** Bir tarih bilgisayarda kusursuz dönüştürülebilir; ama olayın o gün meydana geldiğini ispatlamak ayrı bir araştırma gerektirir.
6. **Denetlenebilir açık kaynak oluşturmak:** Takvim motorunu, olay verilerini, kaynakları ve belirsizlikleri görünür ve düzeltilebilir tutmak.

Bu proje mevcut MÖ/MS kronolojisinin yanlış olduğunu iddia etmez ve onu yasaklamak ya da silmek istemez. **Amaç, belgeli insanlık tarihinin daha geniş bir bölümünü modern kullanıcının günlük takvim algısına taşımaktır.**

## Bur-Sagale ve MÖ 763 neden seçildi?

### Tarihsel kayıt ve astronomik sabitin birleşmesi

Yeni Asur Devleti'nde yıllar, görevli kişilerin isimleriyle (*limmu* ya da eponim) kaydediliyordu. **Bur-Sagale** (Bur-Saggilê / Bur-Sagalê şeklinde de yazılır), Guzana valisi olarak kaydedilen bir eponimdir. Eponim kroniği, onun görev yılında **Simānu ayında bir Güneş tutulması** yaşandığını bildirir.

Belgede bugün kullandığımız **“15 Haziran MÖ 763”** ibaresi yazılı değildir. Bu, Asur kayıtlarının krallık ve eponim dizileriyle karşılaştırılması, tutulmanın tanımlanması ve astronomik geriye hesaplama sayesinde elde edilen modern **Jülyen tarihidir**.

Tarihsel dayanağımız birden fazla kanıt türünün birleşmesidir:

- **Antik insan kaydı:** Bur-Sagale'nin eponim yılında Güneş tutulması kaydı.
- **Göreli kronoloji:** Eponim dizisi ve Asur krallık kronolojisi.
- **Astronomi:** 15 Haziran MÖ 763 tutulmasının hesaplanabilmesi ve tarihsel kayıtla eşleştirilmesi.
- **Modern bilimsel literatür:** Bu olayın Yeni Asur kronolojisinin temel sabitlerinden biri olarak kullanılması.

Başlıca başvuru kaynakları: [Alan Millard'ın Asur eponimleri çalışması](https://oracc.museum.upenn.edu/saao/aebp/downloads/millard_saas_2_intro_1994.pdf), [NASA'nın tarihsel tutulmalar listesi](https://eclipse.gsfc.nasa.gov/SEhistory/SEhistory.html), [F. Richard Stephenson (1997)](https://doi.org/10.1017/CBO9780511525186) ve [*Three New Kings of Assyria* (2026)](https://www.journals.uchicago.edu/doi/10.1086/741239).

### Daha eski bir tarih neden seçilmedi?

**Başlangıç ölçütümüz, yalnızca eski olmak değildir:** İnsan tarafından kaydedilmiş bir olayın, belirli bir mutlak güne güvenilir biçimde bağlanabilmesidir.

| Aday | Seçmeme gerekçemiz |
|---|---|
| MÖ 10.000 gibi sembolik başlangıç | Tarihsel bir insan olayının güvenle belirlenmiş gününe dayanmaz. |
| JDN 0 (MÖ 4713) | Matematiksel gün sayımı başlangıcıdır; o güne ait insan kaydı olduğu anlamına gelmez. |
| **Mari eponim kroniği** ve daha eski tutulmalar | MÖ **1838** ile **1833** dâhil farklı tutulma eşleştirmeleri ve mutlak kronoloji tartışmaları devam ediyor. |
| Nabonassar çağı (MÖ 747) | Astronomik kronoloji açısından önemli, fakat bizim seçtiğimiz olay-temelli başlangıç kriterinden farklı. |
| **Bur-Sagale tutulması (MÖ 763)** | Antik kaydı ve mutlak gün eşleştirmesi güçlü; **kabul ettiğimiz tarihsel dayanak**. |

Mari tartışmasını özellikle **Werner Nahm ve Michael Roaf editörlüğündeki, 2025 tarihli [*Eclipses, Volcanoes, and Eponyms*](https://www.peeters-leuven.be/detail.php?search_key=9789042957077)** adlı araştırma derlemesinin önsözü ve ilgili makaleleri üzerinden değerlendirdik. Kitapta MÖ 1838 ve MÖ 1833 gibi farklı eşleştirmelerin hâlâ tartışıldığı açıklanıyor.

**Kabul ettiğimiz bilimsel ifade şudur:**

> **15 Haziran MÖ 763**, bugüne kadarki proje araştırmamızda tespit edip başlangıç dayanağı olarak benimsediğimiz **en eski güçlü ve kesin güne bağlanmış tarihsel kayıttır**. Ancak bundan önce hiçbir güvenilir tarihsel gün bulunamayacağını veya dünyadaki bütün eski kayıtların tarandığını iddia etmiyoruz.

Bu ayrım seçtiğimiz günün sağlamlığını azaltmaz. Daha eski ve eşit derecede güvenilir bir olay bulunursa **olay kataloğuna eklenir**. Takvim çağını değiştirmek ise bütün yıl etiketlerini etkilediğinden, hiçbir zaman sessizce yapılmaz.

**Önemli:** MÖ 763 tutulması takvimin başlangıç yılının **gerekçesidir**. **Sistem A**, tutulmanın gerçekleştiği 15 Haziran'da değil, o yılın **1 Ocak** gününde başlar. **Sistem B** ise doğrudan 15 Haziran'da başlar.

### Astronomik belirsizlik ve MÖ 791 itirazı

**Bir tutulmayı hesaplamak, antik bir gözlemle özdeşleştirmekten farklıdır.** NASA, **Dünya'nın dönüşündeki geçmiş belirsizliklerin (ΔT)** çok eski tutulmaların Dünya üzerindeki *görünürlük izlerini* belirsizleştirdiğini; tarihsel açıklamasında yaklaşık **MÖ 1500 öncesinin tutulma izlerinin güvenilir biçimde yerleştirilemeyeceğini** belirtiyor. Bu, **gezegenlerin yörünge hızlarının bilinmediği** veya tutulmaların hiç hesaplanamayacağı anlamına gelmez. Bkz. [NASA'nın açıklaması](https://eclipse.gsfc.nasa.gov/SEhelp/rotation.html) ve [ΔT belirsizliği](https://eclipse.gsfc.nasa.gov/SEcat5/uncertainty.html).

Azınlık görüşü Bur-Sagale kaydını **15 Haziran MÖ 763 (BS 1)** yerine **24 Haziran MÖ 791 (BS −27)** tutulmasına bağlar. MÖ 791'de gerçek bir tutulma vardır, ancak Asur kronolojisinin **28 yıl kaydırılması**, bağımsız astronomik ve hükümdarlık kayıtlarıyla açıklanmalıdır. [Hermann Hunger (2008)](https://ucrisportal.univie.ac.at/de/publications/zur-datierung-der-neuassyrischen-eponymenliste/) **MÖ 731 Ay tutulması** ve **MÖ 679, 651 ve 649 Mars–Merkür kayıtlarını** eponim dizisiyle karşılaştırıp **MÖ 763** tarihini savunur. [Edmonds–Frahm (2026)](https://doi.org/10.1086/741239) **Asur Krallar Listesi'nin** eksikliğini tartışır, fakat yaklaşık MÖ 911'den itibaren kesintisiz eponim kronolojisini değiştirmez.

**MÖ 763 eşleştirmesi ana akım Asurolojide yerleşiktir**; ancak bunu benimseyen tarihçilerin güvenilir bir kesin sayısı veya yüzdesi bulunmamaktadır. Kanıtların ayrıntısı, sınırlamaları ve kaynakçası için [Türkçe araştırma notuna](docs/epoch-evidence-and-uncertainty.tr.md) bakınız ([English](docs/epoch-evidence-and-uncertainty.md)). **Takvim başlangıcı ve mevcut hesap kuralları değiştirilmemiştir.**

## MÖ 763 ve insanlığın yazılı medeniyet birikimi

Bur-Sagale başlangıcını seçmenin ikinci önemli gerekçesi **tarihsel kapsayıcılıktır**. MÖ 763, yazının veya medeniyetin başlangıcı değildir; ancak günümüze ulaşan çok sayıda idari, hukuki, bilimsel, edebî ve felsefi kaydın üretildiği bir dönemi pozitif yıl dizisine dahil eder. Bu gerekçe astronomik dayanağı tamamlar; onun yerine geçmez.

### Eşit uzunluktaki iki dönemin karşılaştırılması

| Geleneksel kronoloji | Sistem A | Takvim yılı sayısı |
|---|---|---:|
| MÖ 763–1 | BS 1–763 | 763 |
| MS 1–763 | BS 764–1526 | 763 |

Mısır'daki yayımlanmış Yunanca, Demotik ve Kıptîce papirüslerin Trismegistos veri tabanından **20 Haziran 2012** tarihinde alınan kesiti (2013'te yayımlanan araştırma), aşağıdaki karşılaştırmayı mümkün kılar. Kaynağın kendi yüz yıllık tarih aralıkları korunmuştur.

| Dönem | Kayıt sayısı |
|---|---:|
| MÖ 763–1 | 9.934 |
| MS 1–699 | 27.705 |
| MS 700–799 (tam dilim) | 1.809 |
| MS 1–763 (alt–üst sınır) | 27.705–29.514 |

İkinci dönemde bu örneklemde yaklaşık **2,79–2,97 kat** fazla kayıt vardır. MS 700–799 diliminin hangi kayıtlarının 763 ve öncesine ait olduğu tablodan çıkarılamadığından kesin toplam verilmemiştir. Bu, 2012'deki sınırlı bir veri tabanı kesitidir; bugünkü tüm papirüslerin envanteri değildir ve Arapça, Latince ve diğer dilleri kapsamaz. MÖ 3. yüzyıl dilimindeki 4.716, MÖ 2. yüzyıldaki 3.509 ve MS 2. yüzyıldaki 8.993 kayıt, belge yoğunluğunun doğrusal artmadığını da gösterir. Kaynak: [*Studies in Ancient Oracles and Divination*, ed. Mika Kajava (2013), “Chronological distribution” tablosu](https://www.academia.edu/2416149/Studies_in_Ancient_Oracles_and_Divination_edited_by_Mika_Kajava_Acta_Instituti_Romani_Finlandiae_40_Rome_2013_224_pp); [Trismegistos](https://www.trismegistos.org/).

### Mezopotamya, İran ve Akdeniz'den bağımsız örnekler

| Koleksiyon / araştırma | Tarihsel kapsam | Bildirilen miktar |
|---|---|---|
| Asurbanipal Kütüphanesi / Ninova koleksiyonu | Ağırlıkla MÖ 7. yy | Yaklaşık 32.000 çivi yazılı tablet ve parça |
| Babil hukuk ve idare belgeleri | Özellikle MÖ 626–484 (BS 138–280) | 50.000'den fazla metin |
| Persepolis Tahkimat Arşivi | MÖ 6. yy sonu–5. yy başı | Yaklaşık 15.000–18.000 özgün belgeyi temsil eden 20.000–25.000 tablet ve parça (2017 itibarıyla Oriental Institute'taki bölüm) |
| Yunanca ve Latince yazıtlar | Yaklaşık MÖ 800–MS 800 (iki dönemin dışına da taşar) | Yaklaşık 600.000 günümüze ulaşmış yazıt tahmini |

Kaynaklar: [ORACC / British Museum, Asurbanipal Kütüphanesi](https://oracc.museum.upenn.edu/asbp/whatisthelibrary/index.html); [Alstola vd., *Sources at the End of the Cuneiform Era* (2023)](https://www.researchgate.net/publication/370855350_Sources_at_the_end_of_the_cuneiform_era); [Encyclopaedia Iranica, *Persepolis Administrative Archives*](https://www.iranicaonline.org/articles/persepolis-admin-archive/); [*Inscriptions as data: digital epigraphy in macro-historical perspective*](https://journalofdigitalhistory.org/en/article/WBqfZzfi7nHK).

Roma İmparatorluğu'nun erken döneminde yazıt üretimi artmış, birçok seride MS 2. yüzyıl sonlarında zirveye yaklaşmıştır. Buna karşılık Babil'de MÖ 626–484 arasındaki belge yoğunluğu ve sonraki arşiv kayıpları çok farklı bir bölgesel örüntü gösterir. Dolayısıyla MÖ 763–1 döneminin bazı bölgelerdeki kayıt zenginliği, MS 1–763 döneminin Mısır ve Roma verilerindeki üstünlüğü ile çelişmez.

**Sayım uyarısı:** Tablet parçası, özgün belge, veri tabanı kaydı, yazıt, edebî eser ve sonraki el yazması nüsha farklı birimlerdir. Arşivler ve kataloglar örtüşebilir. Korunma koşulları, kazılar, yayımlama ve tarihlendirme yöntemleri sonuçları etkiler. Bu sayılar toplanarak dünya çapında kesin bir toplam veya iki dönem arasında küresel oran üretilemez. Bir metnin yazıldığı tarih ile günümüze ulaşan nüshasının tarihi de ayrılmalıdır.

### Medeniyet tarihindeki niteliksel ağırlık

MÖ 763–1 arasındaki 763 yıl, sadece bir sayısal uzatma değildir. Bu aralığa Yeni Babil ve Ahameniş imparatorlukları, klasik Yunan düşüncesi, Roma'nın geleneksel kuruluşu ve Cumhuriyet dönemi, Helenistik dünya, Çin'deki düşünce okulları ve erken imparatorluk tarihçiliği, Hint felsefesi ve Budist metin geleneklerinin gelişimi girer. Mısır, İran, Mezopotamya, Çin, Hindistan ve Akdeniz'in yazılı mirasları farklı korunma ve aktarım koşullarına sahiptir. Erken MS döneminde Roma, geç Antik Çağ, Hristiyanlık, Çin hanedanları ve İslamiyet'in ilk yüzyılları bu çizgiyi sürdürür.

Örnek olarak aşağıdaki yaklaşık eser/derlenme tarihleri, Sistem A'nın kapsadığı düşünsel mirası gösterir. Bunlar kesin günlü olay kataloğu girdileri değildir; bazı eserler uzun bir sözlü ve yazılı aktarım sürecinin ürünüdür.

| Eser / düşünsel miras | Yaklaşık geleneksel tarih | Sistem A |
|---|---|---|
| Homeros, İlyada (geleneksel tarihleme) | MÖ 750 civarı | BS 14 civarı |
| Konfüçyüs, Konuşmalar (derlenme süreci) | MÖ 5–3. yy | BS 264–563 |
| Herodot, Tarih | MÖ 5. yy | BS 264–363 |
| Thukydides, Peloponez Savaşı Tarihi | MÖ 5. yy sonu–4. yy başı | BS 350–380 civarı |
| Eflatun, Devlet | MÖ 4. yy | BS 364–463 |
| Aristo, Politika | MÖ 4. yy | BS 364–463 |
| Öklid, Elementler | MÖ 300 civarı | BS 464 civarı |
| Polybios, Tarihler | MÖ 2. yy | BS 564–663 |
| Sima Qian, Tarihçinin Kayıtları | MÖ 1. yy başı | BS 670'ler civarı |
| Caesar, Galya Savaşı | MÖ 50'ler | BS 705–714 civarı |
| Vergilius, Aeneis | MÖ 19 civarı (ölümü) | BS 745 civarı |

### Zamansal kapsama ile belge kapsamını ayırmak

Yazının ortaya çıkışı için yaklaşık MÖ 3300 ve karşılaştırma yılı olarak MS 2026 (BS 2789) alınırsa, dahilî yıl etiketi hesabıyla 5.326 takvim yılının 2.789'u Sistem A'nın pozitif yıllarındadır (yaklaşık **%52,4**). Geleneksel MS pozitif yıl dizisi ise 2.026 yıl, yaklaşık **%38,0** kapsar. MÖ 3300 yalnızca açıklayıcı yaklaşık bir başlangıçtır; farklı toplumlarda yazı farklı zamanlarda ortaya çıkmıştır. Bu oranlar geçen tam gün sayısı değil, kapsanan yıl etiketleridir; **belgelerin, eserlerin veya insanlık tarihinin öneminin yüzde ölçüsü değildir**.

Sümer, Akad, Hitit, eski Mısır ve Tunç Çağı dünyasının büyük bölümü BS 1 öncesinde kalır. Bunlar negatif/sıfır yıl etiketleriyle yine ifade edilebilir; proje onları dışlamaz. Pozitif dizinin kültürel ağırlığına ilişkin değerlendirmemiz güçlü bir niteliksel gerekçedir, fakat küresel belge payı henüz ölçülmemiştir.

**Araştırma hedefi:** Trismegistos, ORACC, CDLI, EDH/EDCS ve Doğu Asya ile Güney Asya kaynak katalogları üzerinden tarih aralıkları, dil, coğrafya, belge türü, özgün metin/nüsha ayrımı ve mükerrer kayıtlar denetlenerek karşılaştırılabilir bir veri seti oluşturmak. Tarihsel kapsayıcılık ile astronomik güvenilirlik birlikte değerlendirilmeli; bu inceleme mevcut takvim başlangıcını veya hesaplama kurallarını değiştirmez.

## İki takvim sistemimiz

İki sistemin de gösterdiği **fiziksel günler aynıdır**; farklılık günlere verdikleri tarih etiketleridir.

| Özellik | **Sistem A (ana)** | **Sistem B (deneysel)** |
|---|---|---|
| Başlangıç tarihi | **1 Ocak MÖ 763**, Jülyen → **01/01/0001** | **15 Haziran MÖ 763**, Jülyen → **01/01/0001** |
| Başlangıç JDN | **1.442.738** | **1.442.903** |
| Ay sayısı | **12**, geleneksel aylar | **13**, yalnızca numara |
| Ay uzunluğu | Jülyen/Gregoryen | 01–12: 28 gün, 13: 29/30 gün |
| Hafta | 7 gün, kesintisiz | 7 gün, kesintisiz |
| Yıl başlangıcı | 1 Ocak | Proleptik Gregoryen 7 Haziran |
| Kullanım | **Günlük varsayılan** | **Gelişmiş/isteğe bağlı** |

### Sistem A — Genişletilmiş Jülyen–Gregoryen

**Bu, kabul ettiğimiz ana standarttır:** Bugün kullandığımız tarihsel Jülyen–Gregoryen düzenini ve ay/gün etiketlerini koruyarak yıl numaralarını MÖ 763'ten başlatmak. **MÖ/MS 1'den itibaren ayrıca proleptik Gregoryen bir takvim dayatmıyoruz.**

Kesin kurallar:

- **1 Ocak MÖ 763, Jülyen = 1 Ocak 1, Sistem A**.
- **Yıl formülü:** `Sistem A yılı = astronomik yıl + 763`.
- Astronomik tarihlemede **0 yılı = MÖ 1**; geleneksel MÖ/MS adlandırmasında **0 yılı yoktur**.
- **4 Ekim 1582 Jülyen dâhil** Jülyen takvim etiketleri geçerlidir.
- **Ertesi gün 15 Ekim 1582 Gregoryen** olarak gösterilir. İki tarih **kesintisiz ardışık günlerdir**.
- **15 Ekim 1582 sonrasında** Gregoryen takvimi kullanılır.
- Artık yıl hesabı **yeni yıl numarasına göre değil**, ilgili Jülyen/Gregoryen yılın kendi kuralına göre yapılır.
- Haftanın yedi günü sürekli ilerler.

| Geleneksel tarih | Sistem A |
|---|---|
| **15 Haziran MÖ 763**, Jülyen | **15 Haziran 1** |
| **22 Haziran MÖ 168**, Jülyen — Pidna | **22 Haziran 596** |
| **1 Ocak MS 1**, Jülyen | **1 Ocak 764** |
| **29 Mayıs 1453**, Jülyen — İstanbul'un fethi | **29 Mayıs 2216** |
| **4 Ekim 1582**, Jülyen | **4 Ekim 2345** |
| **15 Ekim 1582**, Gregoryen | **15 Ekim 2345** |
| **29 Ekim 1923**, Gregoryen | **29 Ekim 2686** |
| **23 Kasım 2026**, Gregoryen | **23 Kasım 2789** |

1582 reformunda fiziksel olarak **10 gün kaybolmadı**. JDN **2.299.160** olan 4 Ekim'i, JDN **2.299.161** olan 15 Ekim takip etti. Atlanan şey yalnızca **5–14 Ekim tarih etiketleridir**. Reform farklı ülkelerde farklı tarihlerde kabul edildi; Sistem A bütün olaylar için **tek bir standart geçişi** kullanır, belgelerin gerçek yerel takvimini ayrıca saklar. [ABD Deniz Gözlemevi](https://aa.usno.navy.mil/data/JulianDate), [Belçika Kraliyet Gözlemevi](https://robinfo.oma.be/en/astro-info/calendar/the-gregorian-calendar/).

MÖ 763'te Jülyen takvimi henüz bulunmadığından bu erken dönemler için Jülyen tarihleri **proleptiktir**, yani geriye dönük hesaplanmıştır. Asurluların kendi belgelerinde “15 Haziran” dediğini iddia etmiyoruz.

### Sistem B — Tutulma gününden başlayan 13 aylı takvim

**Sistem B'nin ilk günü** 15 Haziran MÖ 763 = **01/01/0001**'dir.

- **01–12. aylar:** 28'er gün, toplam **336 gün**.
- **13. ay:** normal yılda **29**, artık yılda **30** gün.
- **Yıl:** 365/366 gün, haftalar ay başında yeniden sıfırlanmaz.
- **Aylar:** kültürel ad taşımayan `01`–`13` sayılarıyla gösterilir.
- **Yılbaşı:** MÖ 763 tutulmasının proleptik Gregoryen karşılığı olan **7 Haziran** esas alınır. Her Sistem B yılı Gregoryen 7 Haziran'da başlar.
- **Artık yıl kuralı:** B yılının başladığı astronomik Gregoryen yıl `G = B − 763` olur; yıl 7 Haziran G–6 Haziran G+1 aralığına yayıldığı için **`B − 762` bir Gregoryen artık yılıysa** B yılı 366 gündür.

Örnek: **B 2786**, 7 Haziran 2023–6 Haziran 2024 arasında bulunduğundan 29 Şubat 2024'ü içerir ve artık yıldır. **B 2789**, 7 Haziran 2026'da başlar, normal yıldır.

| Geleneksel tarih | Sistem A | Sistem B |
|---|---|---|
| 15 Haziran MÖ 763, Jülyen | `15/06/0001` | `01/01/0001` |
| 22 Haziran MÖ 168, Jülyen | `22/06/0596` | `13/01/0596` |
| 23 Kasım 2026, Gregoryen | `23/11/2789` | `02/07/2789` |

**Neden bu kural?** Yılbaşını mevsimlere göre çok uzun süre kaydırmamak ve basit bir hesap standardı kullanmak için. Ancak sistemin mevsimsel ortalaması **Gregoryen takviminden mirastır**; daha hassas olduğunu iddia etmiyoruz. Deneysel bir 128 yıllık artık yıl düzeltmesini kabul etmedik. 13 ay dört mevsime eşit olarak bölünmez.

**Güncel karar:** Sistem A varsayılan günlük takvimdir. Sistem B ana ekranda gizli, **gelişmiş seçenek** ve tarih dönüştürücü içinde tutulur.

## Kesintisiz gün hesabı: JDN

JDN (**Julian Day Number / Jülyen Gün Numarası**), günleri sürekli tamsayılarla ifade eden astronomik/kronolojik hesap aracıdır. **Jülyen takvimiyle aynı şey değildir.** Astronomik Julian Date (JD) öğle referanslıdır ve kesirli olabilir; bu uygulama tarih düzeyinde tamsayı **JDN** kullanır.

| Referans olay veya gün | JDN |
|---|---:|
| Sistem A başlangıcı — 1 Ocak MÖ 763 Jülyen | **1.442.738** |
| Bur-Sagale tutulması — 15 Haziran MÖ 763 | **1.442.903** |
| Pidna'dan önceki ay tutulması — 21 Haziran MÖ 168 | **1.660.233** |
| Pidna Muharebesi — 22 Haziran MÖ 168 | **1.660.234** |
| İstanbul'un fethi — 29 Mayıs 1453 Jülyen | **2.251.915** |
| 4 Ekim 1582 Jülyen | **2.299.160** |
| 15 Ekim 1582 Gregoryen | **2.299.161** |
| 23 Kasım 2026 Gregoryen | **2.461.368** |

```text
Geçen gün sayısı = JDN(son) - JDN(ilk)
Tutulma dahil sıralı gün = JDN(tarih) - 1442903 + 1
```

Böylece 15 Haziran MÖ 763'ten 23 Kasım 2026'ya kadar **1.018.465 gün** geçmiştir. Bu aritmetik sonuç, antik bir kaydın gerçekten belirli bir günde yaşanmış olduğunu **tek başına kanıtlamaz**.

## Tarihsel kayıtlar ve kesinlik sınıfları

Bir olayı incelerken ayrı ayrı saklamak istediğimiz bilgiler:

- Olayın adı, yeri, tarihsel bağlamı.
- **Belgedeki özgün tarih** (`kaynak_tarih`) ve kullanıldığı takvim.
- Birincil kaynak, edisyon, çeviri, akademik atıf.
- Olayın **JDN'si veya gerekçeli olası JDN aralığı**.
- Sistem A, Sistem B, Jülyen ve proleptik Gregoryen karşılıkları.
- **Kaynağın güvenilirliği** ile **gün dönüşümünün kesinliği** (ayrı değerlendirmeler).
- Varsayılan yıldönümü, özel anma kuralı ve alternatif tarihler.

### A / A* / B / C sınıfları

| Sınıf | Ölçüt |
|---|---|
| **A** | Güvenilir tarihsel kayıt **tek bir güne** güçlü biçimde bağlanır. Astronomik bağlantı zorunlu değildir; sağlam tarihli belge de yeterli olabilir. |
| **A\*** | Güvenli bir olayın bitişiğindeki gün ilişkisiyle **türetilmiş** güçlü tarih (Pidna gibi). |
| **B / B±1 / B?** | Olay güvenilir, ancak dönüştürmede veya bağlamda genellikle **1–2 günlük** sınırlı belirsizlik vardır. |
| **C** | Olayın tanımı veya mutlak günü ciddi biçimde tartışmalıdır; kesin gün gibi gösterilmez. |

Bunlar **proje içi çalışma dereceleridir**; her kaydın bağımsız akademik hakem denetiminden geçtiği anlamına gelmez.

**V3/V3.4 araştırma kataloğu:** **122 kayıt/adayı**: 53 A + 1 A* + 39 B ailesi + 29 C. Katalog şimdilik MÖ döneme ve tutulmalara yoğunlaşır. Her satırın özgün kaynağı denetlenmeli; MS dönemi ve farklı uygarlıklar daha geniş temsil edilmelidir.

### Üç tarih birden korunmalı

1. **Kaynağın kendi tarihi:** Örneğin Hicrî, Rumî, Babil, Mısır veya Roma takviminde belgedeki tarih ifadesi.
2. **Sistem A etiketi:** Takvimimizin standart tarih gösterimi ve varsayılan yıldönümü.
3. **Proleptik Gregoryen karşılık:** Aynı JDN'nin geriye uygulanan Gregoryen tarihi; çağdaş belgenin kullandığı tarih olmak zorunda değil.

**Yıldönümü kararı:** Varsayılan gün, **Sistem A'nın ay/gün etiketidir**. Pidna **22 Haziran**, İstanbul'un fethi **29 Mayıs** olarak anılır. Olay kartında aynı günün proleptik Gregoryen karşılığı (sırasıyla **19 Haziran** ve **7 Haziran 1453**) gösterilebilir. Belgelere dayanan bir başka yıldönümü istenirse kayıt düzeyinde özel kural eklenebilir. Uygulamanın mevcut kuralı, artık olmayan yıllarda 29 Şubat yıldönümlerini 28 Şubat'ta göstermektir.

Hicrî günün günbatımında başlaması ve hilal tespiti gibi etkenler, bazı olayların çevrilmesinde belirsizlik yaratabilir. Osmanlı Rumî takvimindeki reformlar da dikkate alınmalıdır. Modern Jülyen karşılığı, **belgedeki gerçek Hicrî tarih** diye sunulmamalıdır.

## Günlük kullanım ve Windows

**Windows V3.6 prototipi** [`Bur_Sagale_Takvimi/`](Bur_Sagale_Takvimi/) klasöründedir ve şunları içerir:

- Ana ekran olarak Sistem A aylık takvimi.
- Ayarlarda isteğe bağlı Sistem B.
- MÖ 763'ten bugüne uzanan, katalogdaki her olayı gösteren zaman çizgisi şeridi.
- Jülyen/Gregoryen/Sistem A/Sistem B/JDN dönüştürücü.
- Kaynaklı olay kataloğu ve güven filtreleri.
- Tarayıcıda saklanan kişisel notlar, JSON yedekleme.
- Olay ekleme formu, taslak kayıtlar ve güncellenmiş `olaylar.js` indirme.
- Windows bildirim alanı için isteğe bağlı PowerShell aracı; tıklayınca Edge uygulama penceresi açılır.

Depoyu **Code → Download ZIP** ile indirip içindeki `Bur_Sagale_Takvimi` klasörünü kalıcı bir yere çıkardıktan sonra `Kur.cmd` çalıştırılarak kısayollar oluşturulabilir. Kurulum istemeyenler `Bur_Sagale_Takvimi.html` dosyasını doğrudan tarayıcıda açabilir; ayrıntılar `KULLANIM.txt` dosyasındadır. Kaynak kodunu incelemek ve yalnızca güvenilen sürümleri çalıştırmak gerekir. Dosyalar kalıcı bir konumda tutulmalıdır. **Windows sistem tarihi, saati veya bölge ayarları değişmez.** Otomatik başlangıç ve günlük bildirimler varsayılan olarak kapalıdır.

Kişisel notlar tarayıcı verisi içinde tutulduğundan **JSON yedeği almak** önemlidir. Yeni olaylar geçici taslak olarak eklenebilir; kalıcı hâle getirmek için üretilen `olaylar.js` dosyası eski dosyanın yerine geçirilir. Windows ortamındaki kurulum ve bildirim alanı davranışı, kararlı sürümden önce gerçek bilgisayarda sınanmalıdır.

## Araştırma ilkeleri ve katkılar

GitHub deposunu yalnızca yazılım barındıran bir yer olarak değil, **kanıt temelli ortak kronoloji altyapısı** olarak görüyoruz. Tarihçi, arşivci, astronom, yazılımcı ve meraklı araştırmacılar katkıda bulunabilir.

**Öncelikler:**

1. Mevcut **122 adayın** kaynak ve JDN denetimini tamamlamak.
2. Takvim motoru için MÖ/MS sınırı, 0 yılı, artık yıllar, 1582 reformu, hafta günleri, Sistem B ve çift yönlü dönüşüm testleri oluşturmak.
3. Roma, Yunan, Mısır, Çin, Hint, İran, Mezopotamya, Türk-İslam ve modern tarih dahil farklı dönemlerde **günü sağlam belgelenmiş** olayları artırmak.
4. Kaynak özgün tarihlerini ve tarih dönüşümlerindeki tartışmaları kayıt altına almak.
5. Türkçe ve İngilizce belgeleri, erişilebilirliği ve platform desteğini geliştirmek.

Bir katkı önerisinde olay adı, tarihsel kaynak, belgenin özgün tarih ifadesi (biliniyorsa), kullanılan takvim, önerilen JDN/JDN aralığı, belirsizlik gerekçesi ve kaynak bağlantısı bulunmalıdır. **Açık kaynak olmak, kaynaksız kayıtların otomatik olarak “kesin” kabul edilmesi demek değildir.**

Takvim çağında değişiklik bütün tarih etiketlerini etkiler; böyle bir değişiklik ancak açık, sürümlenmiş bir kararla yapılabilir. Tekil olayların düzeltmeleri de kaynaklı ve izlenebilir olmalıdır.

## Temel kaynakça

Aşağıdaki kaynaklar genel tasarımın tarihsel ve teknik temelidir; **122 satırın her biri için ayrı kaynak denetimi gereklidir**.

### Asur kronolojisi ve erken tutulmalar

1. **Alan Millard**, *The Eponyms of the Assyrian Empire, 910–612 BC* (1994). [ORACC üzerinden giriş bölümü](https://oracc.museum.upenn.edu/saao/aebp/downloads/millard_saas_2_intro_1994.pdf).
2. **NASA Goddard**, [*Solar Eclipses of History*](https://eclipse.gsfc.nasa.gov/SEhistory/SEhistory.html). MÖ 763 Asur tutulmasını listeler.
3. **F. Richard Stephenson**, [*Historical Eclipses and Earth's Rotation*](https://doi.org/10.1017/CBO9780511525186), Cambridge University Press (1997).
4. [*Three New Kings of Assyria*](https://www.journals.uchicago.edu/doi/10.1086/741239) (2026), Asur eponim kaydı ve kronoloji tartışması.
5. **Werner Nahm & Michael Roaf (ed.)**, [*Eclipses, Volcanoes, and Eponyms*](https://www.peeters-leuven.be/detail.php?search_key=9789042957077), Peeters (2025). Özellikle Mari tutulmasının farklı eşleştirmeleri.
6. **Teije de Jong**, [*Further Astronomical Fine-tuning of the Old Assyrian and Old Babylonian Chronologies*](https://dare.uva.nl/id/f84694a6-a8f2-408f-a3dc-d5e1368523e7).

### Takvim matematiği

7. **U.S. Naval Observatory**, [Julian Date Converter](https://aa.usno.navy.mil/data/JulianDate).
8. **U.S. Naval Observatory**, [Jülyen/Gregoryen tarih dönüşümü](https://aa.usno.navy.mil/faq/JD_formula).
9. **NASA/JPL**, [JD Date/Time Converter](https://ssd.jpl.nasa.gov/tools/jdc/).
10. **Belçika Kraliyet Gözlemevi**, [Gregoryen takviminin tarihi](https://robinfo.oma.be/en/astro-info/calendar/the-gregorian-calendar/).
11. **NASA Goddard**, [eski tutulmalarda ΔT belirsizliği](https://eclipse.gsfc.nasa.gov/SEcat5/uncertainty.html).

### Olay kayıtları ve tarihsel belgeler

12. **Stephenson & Yau (1992)**, [Çin İlkbahar ve Sonbahar döneminin astronomi kayıtları](https://doi.org/10.1177/002182869202300103).
13. [ORACC](https://oracc.museum.upenn.edu/) — çivi yazılı metin projeleri.
14. [Edition Topoi, Babylonian Astronomical Diaries](https://repository.edition-topoi.org/collection/BDIA/overview).
15. [Livius, Gaugamela Muharebesi'nin çağdaş Babil kaydı](https://www.livius.org/sources/content/oriental-varia/a-contemporary-account-of-the-battle-of-gaugamela/).
16. [Plutarkhos, *Aemilius Paullus*](https://penelope.uchicago.edu/Thayer/E/Roman/Texts/Plutarch/Lives/Aemilius%2A.html); [Livius, Pidna](https://www.livius.org/articles/battle/pydna-168-bce/).
17. [British Museum, Reşid Taşı / Memfis kararnamesi rehberi](https://www.britishmuseum.org/sites/default/files/2022-10/Hieroglyphs_unlocking_ancient_Egypt_large_print_guide_The_British_Museum_2.pdf).
18. [Livius, Behistun yazıtı](https://www.livius.org/sources/content/behistun-persian-text/behistun-t-07/).

**Kaynak göstermek, ilgili akademik yayının tam metnini veya görsellerini serbestçe yeniden dağıtma hakkı vermez.** Her kaynağın kendi telif koşulları geçerlidir.

## Lisans ve durum

- **Yazılım kodu:** Hedeflenen lisans **MIT**’dir. Kodun MIT lisansıyla yayımlanmasından önce depoda ilgili `LICENSE` dosyası bulunmalıdır; üçüncü taraf bileşenler ayrıca kontrol edilmelidir.
- **Özgün açıklamalar ve olay verileri:** Hakların izin verdiği kısımlar için **CC BY 4.0** düşünülmektedir; veri lisansı henüz kesinleştirilmemiştir.
- **Durum:** Geliştirilmekte olan açık kaynaklı **araştırma prototipi**. Mevcut katalog eksiksiz veya bütünüyle bağımsız denetimden geçmiş değildir. Takvim de resmî/uluslararası kabul edilmiş bir standart olduğu iddiasında değildir.

**Tarihi yeniden yazmak değil, insanlığın kayıtlı geçmişinin daha geniş bir bölümünü her gün kullandığımız takvimde görünür kılmak istiyoruz.**