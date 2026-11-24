# The Bur-Sagale epoch: astronomical uncertainty and the 791 BCE alternative

*Research note — 24 November 2026 (BS 2789). Applies to the current System A epoch; it does not change any year numbering or application code.*

**Conclusion:** The solar eclipse of **15 June 763 BCE (BS 1; proleptic Julian date)** remains the project's chosen historical anchor. The identification is supported by a recorded Assyrian eclipse, a continuous eponym sequence, other dated ancient astronomical observations, and modern eclipse calculations. This is a strong, widely adopted chronological correlation, **not** an error-free measurement of every ancient event, a global scholarly vote, or proof that no earlier well-dated event exists.

## 1. What NASA's pre-1500 BCE caution means

NASA's [*Eclipse Predictions and Earth's Rotation*](https://eclipse.gsfc.nasa.gov/SEhelp/rotation.html) explains that the Earth's rotation is not perfectly uniform. The accumulated difference between a dynamical time scale and time tied to Earth's rotation is called **ΔT (delta T)**. In reconstructing very old eclipses, uncertainty in historical ΔT translates into uncertainty in **the geographic longitude of the eclipse track**. NASA states that reliable reconstructions of *eclipse paths* before approximately **1500 BCE** are not possible with the assumptions discussed there.

NASA's [*Uncertainty in Delta T*](https://eclipse.gsfc.nasa.gov/SEcat5/uncertainty.html) also emphasizes the growing reliance on theoretical models before approximately **1000 BCE**, and provides numerical uncertainties that depend on the particular model. The estimates on these two NASA pages are **not identical**; do not present a particular longitude uncertainty as a model-independent physical constant.

**Crucial distinction:** This is **not** a claim that the planets' orbital speeds in antiquity are unknown, nor that ancient eclipses cannot be calculated at all. Eclipses can be modeled, but exactly **where and how** one was visible on Earth becomes less certain farther back in time. The approximate 1500 BCE threshold is a caution about **path reconstruction**, not a sharp limit on astronomy or the historical record.

**Implication for the calendar:** Dates much earlier than 763 BCE may remain useful, but a proposed match between an ancient **local observation** and a calculated eclipse must account for ΔT and documentary uncertainties together. The fact that a simulation produces an eclipse on a date is insufficient to identify a specific ancient text with it.

## 2. The proposed 791 BCE redating

The Assyrian Eponym Chronicle records a solar eclipse **in the month of Simānu during the eponymate of Bur-Sagalê**, governor of Guzana. It does **not** supply a modern calendar date or the eclipse's magnitude, exact observing location, or duration. Hence the historical identification is a **correlation** between a human record and astronomical/chronological evidence.

A minority proposal identifies the recorded eclipse instead with **24 June 791 BCE (BS −27)** rather than **15 June 763 BCE (BS 1)**. The former eclipse is astronomically real, and Hermann Hunger notes that a partial eclipse near sunset could have been visible in Assyria. He also notes that an estimated local magnitude around **0.75** would have made it less conspicuous than the traditional 763 BCE identification.

The harder question is **not whether an eclipse occurred in 791 BCE**. It is how to reconcile this substitution—**28 years earlier**—with the intervening Assyrian eponym counts and other dated evidence. To adopt 791 BCE as the anchor, an alternative chronology needs independent, defensible explanations for the required shifts or omissions; the existence of royal political conflict alone does not establish precisely 28 missing years.

**Primary scholarly response:** Hermann Hunger, [“Zur Datierung der neuassyrischen Eponymenliste” (2008), pp. 323–325](https://ucrisportal.univie.ac.at/de/publications/zur-datierung-der-neuassyrischen-eponymenliste/). An [English translation published with the scholar's permission](https://www.mentesbereanas.info/en/about-the-dating-of-the-neo-assyrian-eponym-list/) reproduces his main reasoning. The university repository is the bibliographical source; the translation is supplied by an independent site.

## 3. Hunger's independent chronological checks

Hunger's counterargument is **convergent evidence**, not merely an appeal to the intensity of the 763 BCE eclipse.

| Chronological check | Reported ancient evidence and calculation | Relevance |
|---|---|---|
| **731 BCE (BS 33)** | A Babylonian lunar-eclipse text refers to an eclipse in **year 1 of Mukīn-zēri**; Hunger dates this **predicted, not locally observed**, eclipse to **9 April 731 BCE (BS 33)**. A Babylonian Chronicle links that first regnal year to **year 14 of Tiglath-pileser III**. | Counting **32 eponym years** back from 731 BCE gives **763 BCE**. |
| **679 BCE (BS 85)** | A Mars–Mercury approach is associated with **Simānu 16, year 2 of Esarhaddon**, corresponding approximately to early June 679 BCE. Hunger notes the wording is incomplete and the astronomical approach occurred a few days later. | Counting **84 eponym years** back from 679 BCE gives **763 BCE**. |
| **651 and 649 BCE (BS 113, 115)** | Additional Mars–Mercury records associated with years **17 and 19 of Šamaš-šum-ukin** are correlated with **28 April 651 BCE (BS 113)** and **15 September 649 BCE (BS 115)**, respectively. | Cross-check the regnal-year framework used to place the eclipse and surrounding eponyms. |

These sources differ in character and strength: a predicted lunar eclipse is not an eyewitness sighting; a planetary approach with a partially lost text is not a second precisely dated solar eclipse. Yet together with regnal synchronisms and the preserved eponym sequence they make an arbitrary 28-year shift substantially harder to defend. The dates and computations above follow **Hunger (2008)**; they should not be presented as an independent modern re-analysis of the tablets by this project.

## 4. What the 2026 Assyrian research changes—and does not change

Alexander Johannes Edmonds and Eckart Frahm, [“Three New Kings of Assyria,” *Journal of Cuneiform Studies* (2026)](https://doi.org/10.1086/741239), argue that the **Assyrian King List (AKL)** omitted several short-lived or rival rulers, including a rebel king connected with events following the 763 BCE eclipse.

**An incomplete king list is not necessarily an incomplete year-by-year eponym sequence.** Edmonds and Frahm distinguish these kinds of sources and explicitly note that their revisions do **not** affect the period covered by the unbroken eponym list and chronicle (from about 911 BCE); they **do** affect discussion of earlier chronology. The new findings should neither be ignored nor falsely treated as proof that the eclipse belongs in 791 BCE.

## 5. How strong is scholarly agreement?

The **763 BCE identification is standard in mainstream Assyriological chronology**; this is reflected in Alan Millard's eponym study, Hunger's critical defense, NASA's [historical catalogue](https://eclipse.gsfc.nasa.gov/SEhistory/SEhistory.html) (which labels the eclipse “Assyrian Eclipse”), and Edmonds–Frahm (2026).

However, **there is no identified survey counting exactly how many historians accept it**. Citations or publications must not be converted into an invented percentage, headcount, or claim of unanimity. Scholarly consensus means a strong and commonly used working chronology, still open to new textual or astronomical evidence.

## 6. Project decision and reproducibility rules

1. **Keep System A unchanged:** 1 January 763 BCE (proleptic Julian) is **BS 1, day 1**; the historical eclipse of **15 June 763 BCE (BS 1)** motivates the choice of **year**, but is not System A's first day. Experimental System B begins on the eclipse itself.
2. **Do not silently revise the epoch** in the README, code, or historical-event database. Any proposed change requires explicit versioning and a separately documented decision.
3. **Distinguish four claims:** an astronomical eclipse calculation; visibility at a given site (with ΔT uncertainty); identification of an ancient textual reference; and placement within a continuous historical chronology.
4. **Record alternatives fairly:** the 791 BCE identification is **contested**, not an equally established replacement. Where sources disagree, preserve citations, original date wording, models and justified uncertainty.
5. **Prefer independent constraints over apparent age:** a much earlier but weakly matched eclipse is not automatically a better epoch. Older human history remains representable by pre-epoch/negative years.
6. **Be precise about dates:** early Julian dates are *proleptic*, and astronomical year −762 is conventional **763 BCE**, not the Assyrian document's own date.

### Sources and reading

- [NASA Goddard — Eclipse Predictions and Earth's Rotation](https://eclipse.gsfc.nasa.gov/SEhelp/rotation.html)
- [NASA Goddard — Uncertainty in ΔT](https://eclipse.gsfc.nasa.gov/SEcat5/uncertainty.html)
- [NASA Goddard — Solar Eclipses of History](https://eclipse.gsfc.nasa.gov/SEhistory/SEhistory.html)
- [Hermann Hunger (2008), University of Vienna publication record](https://ucrisportal.univie.ac.at/de/publications/zur-datierung-der-neuassyrischen-eponymenliste/)
- [Hunger article, English translation hosted externally](https://www.mentesbereanas.info/en/about-the-dating-of-the-neo-assyrian-eponym-list/)
- [Alexander J. Edmonds & Eckart Frahm (2026), “Three New Kings of Assyria”](https://doi.org/10.1086/741239)
- [Alan Millard, *The Eponyms of the Assyrian Empire* (1994), introduction](https://oracc.museum.upenn.edu/saao/aebp/downloads/millard_saas_2_intro_1994.pdf)

*This note evaluates the present choice; it does not claim the 763 BCE eclipse is the world's earliest dateable historical event. Interpretation of older observations remains an open research topic.*
