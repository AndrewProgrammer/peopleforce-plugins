# Product screens and locale lookup

**For any PeopleForce UI screen in a graphic, and for any noun an HR person clicks, sees
on a screen or files a request for** (overtime, absence, request, dashboard, leave
balance…), **the translation is the product's own locale string** — look it up through
`peopleforce-sources` (`config/locales/crowdin/<locale>/`), take the value by key, and
paste it exactly. It outranks the glossary, the register and your ear; where they
disagree, ship the product's string and flag the split in the handover. Never render text
read off the crop — the screenshot is the subject, not the source.

**A key with no translation, or no connector:** use the glossary form, flag the line
*"product string unverified: no locale access"*, and list the keys the lookup would have
covered — a delivery never blocks on a lookup, and an unverified name ships flagged,
never false.
