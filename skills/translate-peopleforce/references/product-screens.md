# Product screens and locale lookup

**For any PeopleForce UI screen in a graphic, and for any noun an HR person clicks, sees
on a screen or files a request for** (overtime, absence, request, dashboard, leave
balance…), **the translation is the product's own locale string** — look it up through
`peopleforce-sources` (the PeopleForce Sources connector; locale strings live under
`config/locales/crowdin/<locale>/`), take the value by key, and paste it exactly.
Reachable means one test query answered — record a failed probe in the handover. It outranks the glossary, the register and your ear; where they
disagree, ship the product's string and flag the split in the handover. Never render text
read off the crop — the screenshot is the subject, not the source.

**The product outranks only where it agrees with itself — judged inside the target locale
alone.** One key, one value there is a fact; where the locale carries two live forms for
the same concept, that is an open question, not a licence — use the glossary form and
flag the split. Other locales' choices are never evidence about the target's form; a
cross-locale ruling lives on its glossary row (*Companion*). And a glossary row may record a
deliberate house deviation from a product string — the row says so explicitly, and in
copy the row wins; inside a screenshot the product's own string still stands.

**A key with no translation, or no connector:** use the glossary form, flag the line
*"product string unverified: no locale access"* — the per-line form of `SKILL.md`'s
handover line *"product check not run: connector unavailable"*, one family — and list the
keys the lookup would have covered. A delivery never blocks on a lookup, and an
unverified name ships flagged, never false.
