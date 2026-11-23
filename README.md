# Bur-Sagale Calendar

**An open-source historical calendar and source-based chronology project.**  
**Historical reference:** the Assyrian solar eclipse of **15 June 763 BCE** (proleptic Julian calendar).  
**Everyday calendar:** **System A**, an extended Julian–Gregorian calendar.  
**Experimental alternative:** **System B**, a 13-month calendar beginning on the eclipse date.

> **Our idea:** The ancient world belongs to the same uninterrupted sequence of days as the present. By making securely dated events visible within a continuous, familiar calendar, we hope to reconnect modern readers with parts of recorded human history that often feel remote or disconnected.

*Türkçe: [README.tr.md](README.tr.md)*

## Contents

- [Purpose and philosophy](#purpose-and-philosophy)
- [Why Bur-Sagale? Why 763 BCE?](#why-bur-sagale-why-763-bce)
- [What this epoch does—and does not—mean](#what-this-epoch-doesand-does-notmean)
- [The two calendar systems](#the-two-calendar-systems)
  - [System A: Extended Julian–Gregorian](#system-a-extended-juliangregorian)
  - [System B: Eclipse-based 13-month calendar](#system-b-eclipse-based-13-month-calendar)
- [One continuous day count: JDN](#one-continuous-day-count-jdn)
- [Historical events, uncertainty, and anniversaries](#historical-events-uncertainty-and-anniversaries)
- [Current application and installation](#current-application-and-installation)
- [Contributing and research priorities](#contributing-and-research-priorities)
- [Sources and further reading](#sources-and-further-reading)
- [License and project status](#license-and-project-status)

## Purpose and philosophy

A large part of recorded human history is conventionally written in **BCE**, with year numbers counting backward toward the Common Era. These dates are indispensable to historians, but the discontinuity in year numbering can make events across centuries and civilizations harder to place intuitively on a single mental timeline.

The Bur-Sagale Calendar proposes an alternative *display of dates*, not an alternative physical passage of time:

1. **Keep the continuity of real days.** Use the astronomical Julian Day Number (JDN) as the common arithmetic axis.
2. **Begin the positive year count at a historically documented anchor.** We selected the Assyrian eclipse of 763 BCE as the reference event for the epoch.
3. **Preserve familiar dates where possible.** Our main System A keeps the conventional months, weekdays, and historical Julian-to-Gregorian transition, changing the *year number* rather than reinventing daily life.
4. **Connect civilizations rather than isolate them.** Historical records from Mesopotamia, Egypt, Persia, Greece, Rome, India, China, and beyond can be studied on one timeline, even when their original calendars were different.
5. **Never mistake calculability for evidence.** A date may be converted perfectly while the ancient event attributed to that date remains uncertain. Each claim needs its own sources and uncertainty assessment.
6. **Remain open and correctable.** Our calculations, calendar specifications, source references, and event catalog should be inspectable and open to well-documented corrections.

This project is neither an attempt to erase BCE/CE dating nor a claim that existing historical chronology is wrong. It offers a new way to **see the continuity of recorded history**.

## Why Bur-Sagale? Why 763 BCE?

### A historical record linked to a calculable astronomical event

The Neo-Assyrian **eponym chronicle** organized years by named officials (*limmu*). Under the eponym **Bur-Sagale** (also transcribed *Bur-Saggilê* or *Bur-Sagalê*), governor of Guzana, it records a **solar eclipse in the month of Simānu**. The chronicle does **not** use the modern expression “15 June 763 BCE.” That date is the result of correlating the ancient record with later chronological research and modern astronomical calculations.

The match with the solar eclipse of **15 June 763 BCE (Julian)** is an established reference point in Neo-Assyrian chronology. Independent lines of evidence matter here:

- **Human record:** an Assyrian text associates an eclipse with a particular eponym year.
- **Relative chronology:** the eponym sequence and related king lists situate that year among recorded reigns and events.
- **Astronomical identification:** historical eclipse calculations identify the eclipse of **15 June 763 BCE**; NASA lists it as the **Assyrian Eclipse**.
- **Scholarly use:** Assyriological literature treats the correlation as a cornerstone for anchoring Neo-Assyrian dates.

**Key references:** [Millard, *The Eponyms of the Assyrian Empire* (1994), introduction](https://oracc.museum.upenn.edu/saao/aebp/downloads/millard_saas_2_intro_1994.pdf); [NASA, *Solar Eclipses of History*](https://eclipse.gsfc.nasa.gov/SEhistory/SEhistory.html); [Stephenson, *Historical Eclipses and Earth's Rotation* (1997)](https://doi.org/10.1017/CBO9780511525186); [*Three New Kings of Assyria* (2026)](https://www.journals.uchicago.edu/doi/10.1086/741239).

### Why not an even earlier beginning?

Our criterion is **not** simply “choose the oldest possible year.” It is to choose an **early human-documented event for which a specific absolute day can be defended convincingly**. A mathematically computable date, by itself, is not evidence that someone recorded an event on that day.

We considered several alternatives:

| Proposed epoch | Why it is attractive | Why we did not adopt it |
|---|---|---|
| An arbitrary ancient year, such as a Holocene-style epoch | Puts many ancient years into positive numbering | Its first day is a convention rather than an event established through a surviving human record |
| JDN zero (4713 BCE, proleptic Julian) | A consistent mathematical origin | A mathematical origin is not itself a documented historical event |
| Earlier eclipse candidates, including the **Mari Eponym Chronicle** | Could provide an older connection between an ancient text and astronomy | The identification and absolute chronology remain debated; proposed matches include eclipses in **1838** and **1833 BCE** |
| The Nabonassar era (747 BCE) | Important in historical astronomical chronology | It is a later era, chosen for a different purpose |
| Bur-Sagale eclipse (763 BCE) | Early record, strong chronological context, identifiable astronomical event | **Adopted as the project's reference event** |

A particularly important research source is **Werner Nahm and Michael Roaf (eds.), *Eclipses, Volcanoes, and Eponyms* (2025)**. Its preface discusses competing interpretations of the earlier Mari eclipse, including 1838 and 1833 BCE. The book is part of the reason we have **not** treated an earlier candidate as equally secure without further source analysis. See the [publisher's record](https://www.peeters-leuven.be/detail.php?search_key=9789042957077) and [de Jong's related research](https://dare.uva.nl/id/f84694a6-a8f2-408f-a3dc-d5e1368523e7).

### Our choice, precisely stated

> **The eclipse of 15 June 763 BCE is the earliest securely anchored historical day identified and adopted by this project's research to date.** It is **not** a demonstrated global record for the earliest precisely dateable human event. Earlier events may be documented or newly identified, and research remains open.

If stronger earlier evidence is established, we should **expand the catalog**. We should **not silently renumber every year**: altering a published calendar epoch would require an explicit, versioned decision.

**Important distinction:** In System A, **Year 1 starts on 1 January 763 BCE**, not on the eclipse itself. The **15 June** eclipse is the *historical reason for selecting that year*. System B instead begins on the actual eclipse day.

## What this epoch does—and does not—mean

The Bur-Sagale epoch is a **chronological reference**, not the origin of humanity, civilization, writing, or history. Vast amounts of human experience precede 763 BCE. This calendar does not render those earlier periods nonexistent or unimportant.

It also does **not** claim that ancient Assyrians used Julian dates, that every historic event can already be assigned to an exact day, or that a calendar conversion can establish an event's authenticity. The project extends a standard date-labeling convention backward while retaining original ancient calendar expressions as evidence.

“Bur-Sagale” describes the Assyrian eponym whose year supplied the record; it does not mean that this person invented the calendar or personally observed the eclipse.

## The two calendar systems

Both systems refer to **the same sequence of days**. Their differences concern how those days are labeled.

| Rule | **System A — primary** | **System B — experimental** |
|---|---|---|
| First date | **1 Jan 763 BCE (Julian) = 01/01/0001** | **15 Jun 763 BCE (Julian) = 01/01/0001** |
| Epoch JDN | **1,442,738** | **1,442,903** |
| Months | Existing **12** month names and lengths | **13 numbered** months |
| Month lengths | Historical Julian/Gregorian rules | Months 01–12: **28 days** each; month 13: **29 or 30** days |
| Week | Continuous seven-day week | Continuous seven-day week |
| Year numbering | Astronomical year + **763** | Years begin on the day corresponding to **7 June** in the proleptic Gregorian calendar |
| Reform | Standardized 1582 Julian–Gregorian cutover | No 1582 interruption in its own labels |
| Current role | **Default daily-use calendar** | Advanced/optional calendar |

### System A: Extended Julian–Gregorian

**Design objective:** make the oldest date ranges more intuitively accessible while preserving the familiar civil calendar's month/day structure, the weekday sequence, and the historical Julian–Gregorian transition.

#### Definition

- **Epoch:** 1 January 763 BCE in the **proleptic Julian calendar**, JDN **1,442,738**, is **1 January, Year 1**.
- **Historical reference event:** 15 June 763 BCE (Julian), JDN **1,442,903**, falls in **Year 1**.
- **Year mapping:** `System A year = astronomical year + 763`.
- **Year zero:** astronomical numbering has year 0 (= 1 BCE), but conventional BCE/CE notation does **not** have a year zero.
- **Calendar labels through 4 October 1582 (Julian):** use the **Julian** calendar.
- **Next date:** **15 October 1582 (Gregorian)**. In System A numbering, the corresponding year is **2345**.
- **Calendar labels from 15 October 1582 onward:** use the **Gregorian** calendar.
- **Leap years:** determine them from the underlying astronomical **Julian or Gregorian year**, never by applying leap-year tests to the offset System A year.
- **Seven weekdays:** preserve the normal uninterrupted sequence. Neither the year offset nor the reform creates new weekdays.

The cutover is a **single standardized project-wide convention** based on the original 1582 reform. Countries adopted the Gregorian calendar on different dates; the date used by a particular historical document must therefore still be recorded separately. Likewise, *proleptic Julian* labels before Julius Caesar's reform are mathematical representations, **not calendar names contemporary Assyrians, Egyptians, or Greeks used**.

#### What does “parallel with our current calendar” mean?

**Exactly this:** System A retains the **Julian-to-Gregorian historical sequence** familiar from the conventional chronology and **changes the year number only**. It does **not** replace all pre-1582 dates with a purely proleptic Gregorian calendar.

| Conventional date and its calendar | System A |
|---|---|
| 15 June **763 BCE**, Julian (Bur-Sagale eclipse) | **15 June 1** |
| 22 June **168 BCE**, Julian (Battle of Pydna) | **22 June 596** |
| 1 January **1 CE**, Julian | **1 January 764** |
| 29 May **1453 CE**, Julian (Fall of Constantinople) | **29 May 2216** |
| 4 October **1582 CE**, Julian | **4 October 2345** |
| 15 October **1582 CE**, Gregorian | **15 October 2345** |
| 29 October **1923 CE**, Gregorian | **29 October 2686** |
| 23 November **2026 CE**, Gregorian | **23 November 2789** |

**The 1582 gap does not remove elapsed time.** The Julian 4 October 1582 has JDN **2,299,160** and the Gregorian 15 October 1582 has JDN **2,299,161**: consecutive days. Only the ten **date labels** 5–14 October were omitted in the standardized reform calendar. See the [U.S. Naval Observatory](https://aa.usno.navy.mil/data/JulianDate) and the [Royal Observatory of Belgium](https://robinfo.oma.be/en/astro-info/calendar/the-gregorian-calendar/).

### System B: Eclipse-based 13-month calendar

**Design objective:** explore a numerically regular calendar whose **first day is the historically documented eclipse**, not the January beginning of its year.

- **Epoch:** 15 June 763 BCE (proleptic Julian), JDN **1,442,903**, is **01/01/0001**.
- **Months:** numbered **01–13**, intentionally without culturally specific names.
- **Months 01–12:** exactly **28 days** each (= 336 days).
- **Month 13:** **29 days** in normal years; **30 days** in leap years.
- **Year:** **365 or 366 days**. Seven-day weeks continue without resetting at month or year boundaries.
- **Seasonal alignment:** the eclipse date corresponds to **7 June 763 BCE** in the **proleptic Gregorian** calendar. Consequently, each later System B year begins at the proleptic Gregorian **7 June**, keeping its year boundary near the same seasonal position.
- **Leap-year rule:** for System B year `B`, its starting astronomical Gregorian year is `G = B − 763`. The B year extends from **7 June G** through **6 June (G + 1)**. Therefore **B has 366 days if and only if `B − 762` is a Gregorian leap year**.

For example, System B **2786** runs from 7 June 2023 through 6 June 2024 and includes 29 February 2024, so it has 366 days. System B **2789** starts on 7 June 2026 and is a normal year.

| Gregorian civil date | System A | System B |
|---|---|---|
| 15 June 763 BCE (Julian; eclipse) | `15/06/0001` | `01/01/0001` |
| 22 June 168 BCE (Julian; Pydna) | `22/06/0596` | `13/01/0596` |
| 23 November 2026 | `23/11/2789` | `02/07/2789` |

**Why retain the Gregorian leap cycle?** It is transparent, interoperable, and keeps the year approximately seasonally aligned. We have **not** adopted a speculative 128-year correction or claimed that System B tracks equinoxes more precisely. System B is **not** an officially adopted civil calendar, a lunar calendar, or a scheme in which each of the four seasons occupies an equal number of months.

**Current decision:** **System A is the default** for everyday use. System B remains available in an advanced view and the date converter, rather than complicating the main interface.

## One continuous day count: JDN

**Julian Day Number (JDN)** is a continuous integer day index used for chronological calculations. Despite the similar name, **Julian Day Number is not the Julian calendar**. Astronomical Julian Dates (JD) use a noon-based starting convention and can contain fractional days; this project uses **integer JDNs for date-level calculations**.

| Reference | JDN |
|---|---:|
| System A epoch: 1 Jan 763 BCE (Julian) | `1,442,738` |
| Bur-Sagale eclipse: 15 Jun 763 BCE (Julian) | `1,442,903` |
| Lunar eclipse before Pydna: 21 Jun 168 BCE (Julian) | `1,660,233` |
| Battle of Pydna: 22 Jun 168 BCE (Julian) | `1,660,234` |
| Fall of Constantinople: 29 May 1453 (Julian) | `2,251,915` |
| Julian 4 Oct 1582 | `2,299,160` |
| Gregorian 15 Oct 1582 | `2,299,161` |
| Gregorian 23 Nov 2026 | `2,461,368` |

Two important rules:

```text
elapsed_days = JDN(later_date) - JDN(earlier_date)
ordinal_day_from_eclipse = JDN(date) - 1442903 + 1
```

For example, **1,018,465 days** elapsed between the Bur-Sagale eclipse and **23 November 2026** (counting elapsed days, not including the starting day). A date converter can calculate this difference exactly once the input calendar labels are specified. **It cannot, by arithmetic alone, establish the accuracy of the historical claim.**

Sources for these methods include the [USNO Julian Date Converter](https://aa.usno.navy.mil/data/JulianDate), [USNO conversion notes](https://aa.usno.navy.mil/faq/JD_formula), and [NASA/JPL's JD Date/Time Converter](https://ssd.jpl.nasa.gov/tools/jdc/).

## Historical events, uncertainty, and anniversaries

### Evidence and calculation must remain separate

An ancient inscription may accurately preserve a day and month **within its own calendar**, yet a modern conversion can still depend on a debated regnal year, local sunset, first crescent observation, or calendar reconstruction. Conversely, a precisely calculated eclipse is not proof that every proposed ancient mention refers to it.

Our working event record distinguishes:

1. **Event identity:** what allegedly happened, where, and to whom.
2. **Original source date (`kaynak_tarih`):** the wording or calendar date actually given by the historical document, where established.
3. **Documentary provenance:** original source, edition, translation, publication, and stable links.
4. **Absolute-day mapping:** JDN or a justified **range** of possible JDNs.
5. **Display dates:** System A, System B, Julian, and proleptic Gregorian equivalents.
6. **Evidence quality and conversion certainty:** assess these separately; a reliable document does not necessarily imply an unambiguous modern day.
7. **Anniversary convention:** what day should appear in the modern calendar's yearly remembrance view.

### Working certainty grades

These are **project research labels**, not certifications by an external academic authority:

| Grade | Interpretation | Presentation |
|---|---|---|
| **A** | Strong evidence links the recorded event to **one specific day**; this may be astronomical **or reliable documentary evidence** | Eligible for the main timeline, with citations |
| **A\*** | A day is strongly **derived from** a nearby securely dated event, such as the eclipse preceding Pydna | Show the reasoning explicitly |
| **B**, **B±1**, **B?** | A credible event/date has a limited conversion or contextual uncertainty, often one or two days | Show the possible range and reason |
| **C** | The event, textual identification, or absolute date is materially contested | Research-only; never display as an unquestioned exact day |

**Do not require an eclipse for Grade A.** A clear, credible dated charter, inscription, diary, or other documentary record may be sufficient, provided its calendar can be mapped securely to a single day. Different periods require different source expertise, **not different standards of honesty**.

### Original dates, standard labels, and anniversaries are different

A historical event can legitimately have **three different date fields**:

- **Original date in the source:** for example a Babylonian, Egyptian, Roman, Hijri, or Rumi date. Preserve the actual wording and calendar where established; never invent this field from a modern conversion.
- **System A date:** the project's standardized Julian-to-Gregorian date label, with its renumbered year.
- **Proleptic Gregorian equivalent:** a computational rendering of the **same JDN**, useful for cross-checking, **not necessarily** the date used by contemporary witnesses.

**Default anniversary policy:** use the **System A day and month**. For example, the Battle of Pydna is remembered on **22 June**, with its proleptic Gregorian equivalent (**19 June**) visible in the details. The Fall of Constantinople is remembered on **29 May**, with its proleptic Gregorian equivalent (**7 June 1453**) separately recorded. An event can specify a documented override. The current application places a 29 February anniversary on **28 February** in non-leap years.

The original date of an Ottoman event written in the **Hijri calendar** must not be mislabeled as a “Julian source date” merely because a historian has converted it to a Julian label. Hijri lunar month starts, sunset boundaries, and reforms of the Ottoman Rumi calendar require source-specific scrutiny.

### Current catalog

The **V3/V3.4 working inventory** contains **122 records or candidates**:

| Grade group | Count |
|---|---:|
| A | 53 |
| A* | 1 |
| B-family | 39 |
| C | 29 |
| **Total** | **122** |

These counts report **internal working classifications**, **not 122 verified exact-day discoveries**. The catalog is currently concentrated on **BCE events and eclipses**. A major next step is to audit all event-level citations, fill original-source date fields only after inspecting documents, and expand securely dated events from the Common Era. Our ambitions include records from Roman, Greek, Egyptian, Indian, Chinese, Persian, Mesopotamian, Islamic, and later global history; the existing sample does **not** yet cover all these regions equally.

### Examples of connections the calendar can make

| Historical subject | Standardized historical date | System A date | Evidence path |
|---|---|---|---|
| Bur-Sagale eclipse | 15 Jun 763 BCE (Julian) | 15 Jun 1 | [Assyrian eponym lists](https://oracc.museum.upenn.edu/saao/aebp/downloads/millard_saas_2_intro_1994.pdf) + [NASA eclipse catalog](https://eclipse.gsfc.nasa.gov/SEhistory/SEhistory.html) |
| Battle of Gaugamela | 1 Oct 331 BCE (Julian; working attribution) | 1 Oct 433 | [Contemporary Babylonian account](https://www.livius.org/sources/content/oriental-varia/a-contemporary-account-of-the-battle-of-gaugamela/) |
| Battle of Pydna | 22 Jun 168 BCE (Julian) | 22 Jun 596 | [Ancient testimony and modern discussion](https://www.livius.org/articles/battle/pydna-168-bce/) |
| Memphis decree / Rosetta Stone | 27 Mar 196 BCE (Julian; working conversion) | 27 Mar 568 | [British Museum](https://www.britishmuseum.org/sites/default/files/2022-10/Hieroglyphs_unlocking_ancient_Egypt_large_print_guide_The_British_Museum_2.pdf) |
| Fall of Constantinople | 29 May 1453 (Julian) | 29 May 2216 | Original-source documentation to be added to the event catalog |

*These examples illustrate research and conversion workflows. Individual source-to-JDN mappings remain subject to event-level review; in particular, do not infer an ancient source's calendar merely from a modern date label.*

## Current application and installation

The working **Windows package V3.6** lives in the [`Bur_Sagale_Takvimi/`](Bur_Sagale_Takvimi/) folder. It combines a browser-based HTML/JavaScript calendar, an event-data file, and an optional PowerShell notification-area utility. The interface is currently in Turkish.

**Current features:**

- System A monthly view, with System B optionally enabled under settings.
- A timeline ribbon from 763 BCE to today showing every catalog event; click an event or a year to jump there.
- Date conversion among System A, System B, Julian, Gregorian, and JDN representations.
- Source-linked event search, filters, and event details.
- Personal notes stored locally in the browser, with JSON backup/import.
- Event-entry form with calculated preview and draft records; export a replacement `olaylar.js` to persist edits in the application files.
- Optional Windows notification-area icon, calendar shortcut, and historical-anniversary notifications.

**Files:**

| File | Role |
|---|---|
| `Bur_Sagale_Takvimi.html` | The calendar application (works offline in any modern browser) |
| `olaylar.js` | The event catalog and source list; the only place event data is stored |
| `bur_sagale_simgesi.ps1` | Optional Windows notification-area icon and shortcut installer |
| `Kur.cmd` / `Kaldir.cmd` | Install / remove the shortcuts created by the icon utility |
| `KULLANIM.txt` | Turkish user guide |

**Windows quick start (V3.6):**

1. Download this repository (**Code → Download ZIP**) from the official repository only. **Do not download or execute unknown builds.**
2. Extract the `Bur_Sagale_Takvimi` folder into a permanent location.
3. Review the scripts if desired, then run `Kur.cmd` on Windows to install shortcuts and start the optional notification-area utility.
4. Click the notification-area icon to open the calendar in an Edge application window, or open `Bur_Sagale_Takvimi.html` directly in a browser.
5. Personal notes stay in browser storage: **export a JSON backup** if you rely on them. New event drafts are exported by generating a new `olaylar.js` file; the app does not automatically overwrite arbitrary files on your computer.

**Limitations:** The project is an **in-development prototype**; Windows tray behavior, permissions, and deployment should be tested on a real Windows system before a stable release is advertised. Installation must **not** alter Windows' system date, clock, or regional calendar settings. GitHub Pages or cross-platform packaging may be added after the source layout and deployment process are verified.

## Contributing and research priorities

Contributions are welcome from historians, Assyriologists, classicists, astronomers, archivists, calendar specialists, translators, educators, and developers. We especially welcome corrections that **improve accuracy**, including cases where the right answer is “the day remains uncertain.”

**Priorities, in order:**

1. **Audit the existing 122 candidates:** verify original texts, calendar labels, eclipse identifications, references, and JDNs.
2. **Document the chronology engine:** test the BCE/CE boundary, absence of a historical year zero, leap years, 1582 transition, weekday continuity, System B's leap rule, and round-trip conversions.
3. **Expand the event catalog:** securely dated political, social, scientific, military, literary, and everyday-history events from BCE and CE periods.
4. **Preserve the original evidence:** record source-native dates (including Hijri and Rumi dates), discrepancies, and alternatives alongside their interpreted dates.
5. **Improve accessibility:** Turkish and English documentation first; additional localizations, usable filters, and cross-platform delivery thereafter.

For a proposed event, please supply **at minimum** its name, location/civilization, historical source, exact original date if available, calendar used, proposed conversion or JDN, uncertainty rationale, and a stable citation or bibliographic reference. Claims without defensible evidence can remain research suggestions but should not automatically enter the “secure” timeline.

**Versioning principle:** an existing calendar epoch must not be silently changed; corrections to event dates require a traceable explanation. The data catalog, calendar algorithm, and UI should evolve independently where practical.

## Sources and further reading

These references support the **historical premise, calendar mathematics, and examples**. They do **not** certify every row of the working catalog. Each historical event should retain its own more specific bibliography.

### Bur-Sagale and Assyrian chronology

1. **Alan Millard**, *The Eponyms of the Assyrian Empire, 910–612 BC* (1994), State Archives of Assyria Studies II. [Introduction hosted via ORACC](https://oracc.museum.upenn.edu/saao/aebp/downloads/millard_saas_2_intro_1994.pdf). Assyrian eponym framework and the 763 BCE eclipse anchor.
2. **NASA Goddard Space Flight Center**, [*Solar Eclipses of History*](https://eclipse.gsfc.nasa.gov/SEhistory/SEhistory.html). Lists the Assyrian eclipse at **−0762 June 15** (astronomical year −762 = 763 BCE).
3. **F. Richard Stephenson**, *Historical Eclipses and Earth's Rotation* (Cambridge University Press, 1997). [DOI](https://doi.org/10.1017/CBO9780511525186).
4. **“Three New Kings of Assyria”** (2026), University of Chicago Press journal article. [DOI](https://www.journals.uchicago.edu/doi/10.1086/741239). Discusses the eponym text and the historical chronology it anchors.
5. **Werner Nahm and Michael Roaf (eds.)**, *Eclipses, Volcanoes, and Eponyms: New Perspectives on the Chronology of the Early Second Millennium BC in Mesopotamia* (Peeters, 2025). [Publisher](https://www.peeters-leuven.be/detail.php?search_key=9789042957077). Discusses unresolved earlier chronology, including Mari eclipse alternatives.
6. **Teije de Jong**, [*Further Astronomical Fine-tuning of the Old Assyrian and Old Babylonian Chronologies*](https://dare.uva.nl/id/f84694a6-a8f2-408f-a3dc-d5e1368523e7). Research on older eclipse candidates and chronological uncertainties.

### Day counts, calendars, and astronomical uncertainty

7. **U.S. Naval Observatory**, [Julian Date Converter](https://aa.usno.navy.mil/data/JulianDate).
8. **U.S. Naval Observatory**, [Converting Between Julian Dates and Gregorian Calendar Dates](https://aa.usno.navy.mil/faq/JD_formula).
9. **NASA/JPL**, [JD Date/Time Converter](https://ssd.jpl.nasa.gov/tools/jdc/).
10. **Royal Observatory of Belgium**, [The Gregorian Calendar](https://robinfo.oma.be/en/astro-info/calendar/the-gregorian-calendar/).
11. **NASA Goddard**, [Historical solar-eclipse computation uncertainty and ΔT](https://eclipse.gsfc.nasa.gov/SEcat5/uncertainty.html).
12. **NASA Goddard**, [Calendars and Their History](https://eclipse.gsfc.nasa.gov/SEhelp/calendars.html).

### Broader documented history and dated events

13. **Stephenson & Yau (1992)**, [study of Spring and Autumn period astronomical records](https://doi.org/10.1177/002182869202300103), *Journal for the History of Astronomy*.
14. **ORACC**, [Open Richly Annotated Cuneiform Corpus](https://oracc.museum.upenn.edu/), for digital editions and projects involving Mesopotamian sources.
15. **Edition Topoi**, [Babylonian Astronomical Diaries collection](https://repository.edition-topoi.org/collection/BDIA/overview).
16. **Livius**, [A Contemporary Account of the Battle of Gaugamela](https://www.livius.org/sources/content/oriental-varia/a-contemporary-account-of-the-battle-of-gaugamela/).
17. **Plutarch**, [*Life of Aemilius Paullus*](https://penelope.uchicago.edu/Thayer/E/Roman/Texts/Plutarch/Lives/Aemilius%2A.html); and **Livius**, [Pydna (168 BCE)](https://www.livius.org/articles/battle/pydna-168-bce/).
18. **British Museum**, [*Hieroglyphs: Unlocking Ancient Egypt* exhibition guide](https://www.britishmuseum.org/sites/default/files/2022-10/Hieroglyphs_unlocking_ancient_Egypt_large_print_guide_The_British_Museum_2.pdf), including the date of the Memphis decree.
19. **Livius**, [Behistun inscription, Persian text T07](https://www.livius.org/sources/content/behistun-persian-text/behistun-t-07/).

All linked material remains subject to its **own copyright and reuse terms**. A citation is not permission to redistribute a publisher's text, scanned book, or photograph.

## License and project status

- **Code:** The intended license is the **MIT License**. The repository should include a `LICENSE` file containing that license before the code is distributed as MIT-licensed. Third-party code/assets must be checked before inclusion.
- **Original research descriptions and curated data:** Licensing is **to be finalized separately** (CC BY 4.0 is under consideration where rights permit). Historical facts are not themselves copyrighted; modern editorial text and database arrangements may have distinct rights.
- **Status:** **Open-source development / research prototype**. The V3.6 catalog, software, and documentation should not be represented as a peer-reviewed exhaustive chronology or an official international calendar standard.

**We are not trying to rewrite history. We are trying to make more of humanity's recorded history visible within the calendar we use every day.**