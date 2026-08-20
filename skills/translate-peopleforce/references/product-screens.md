# Product screens and locale lookup

**Read this when the job carries a graphic showing a PeopleForce screen, or any noun an HR
person clicks.** Nothing here applies to a text-only job.

**In-image copy for a product screen comes from the product's own locale files — always, and
it outranks every register rule in this skill.**

If a graphic shows a PeopleForce screen, the strings inside it are not ours to translate. They
already exist, translated, at `config/locales/crowdin/<locale>/`. Look up the **key**, take the
value, paste it. This holds even when the product's string breaks a rule we otherwise enforce:

- **Register loses.** A screenshot may say `ти` where our copy says `ви`, or keep a loan our
  glossary rejects — ship the product's string anyway. The reader is looking at the tool, and
  a caption that disagrees with the screen is worse than a caption in the wrong register.
- **The glossary loses.** Where the glossary and the product disagree on a screen string, the
  product wins and the glossary row gets a note recording the split.
- **Your ear loses.** Paste the product's string exactly as it stands.
- **Only when the key genuinely has no translation** do you translate it — and flag it, because
  an untranslated key is a product gap worth a ticket.

**A screenshot is the subject, not the source.** Whatever language the crop is in, take each
label from the target's own locale file by key — reading labels off the crop and rendering
them produced seven wrong labels on one chart.

**Ordinary HR nouns take the same locale lookup as module names.** A noun that reads like
general vocabulary is the one that slips past a product check scoped to feature claims, and
that is how `overtime` and `dashboard` both shipped wrong.

If a noun names anything an HR person clicks, sees on a screen or files a request for —
overtime, absence, approval, request, leave balance, work type, dashboard, department, level —
**grep `config/locales/crowdin/<locale>/` before shipping it.** The product's own translated
string wins over your instinct and over the corpus, because it is what the reader sees in the
tool. Where the product and the corpus disagree, record both and flag it.

**The lookup runs through the `peopleforce-sources` connector** — that path lives in the
product's repo, not in this one. **No connector, no locale access:** do not guess a screen
string and do not render one from the crop — use the glossary form, flag the line *"product
string unverified: no locale access"*, and list the keys the lookup would have covered. The
same degraded rule as *Product claims* in `SKILL.md`: a delivery never blocks on a lookup,
and an unverified name ships flagged, never false.
