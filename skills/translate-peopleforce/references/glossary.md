# Glossary

One row per concept, one column per language. To translate between any two
languages, read those two cells of the same row. Only terms that encode a house
choice are listed — ordinary vocabulary any translator gets right is deliberately
absent: rows exist for legally-loaded near-misses, coin-flip pairs (pinning one form so
paragraph nine matches paragraph one) and deliberate house deviations.

| Marker | Meaning |
|---|---|
| 🚩 | **On a cell, not a row.** That language's term is not settled — either never examined for this language, or examined and disputed. Use it and stay consistent. A flag on Spanish says nothing about Polish. Evidence per flag: `translation-corpus/open-flags.md` |
| 🚩 *inside a Notes cell* | **Scoped to whatever the sentence around it says**, which is often not this row's term. A cell can be settled while its note flags a different language, or a secondary question — most commonly that the term is decided but the product's own string for that screen is unverified. Read the sentence; do not read a note flag as a flag on the term |
| — | No established form. If a cell holds this, then ask before choosing a form. |
| `a (x) / b (y)` | Several established terms, **chosen by context**. The bracket is the trigger, not a gloss. |
| `a / b` | Several established terms, **interchangeable**. No bracket means no rule — either is correct, so pick one and stay consistent within the piece. |

**This file is a render, not the source.** Edits go to
`translation-corpus/glossary.tsv`, which carries per-cell status and evidence, and the
evidence behind each flag lives in `translation-corpus/open-flags.md`. Both are
maintainer-only and sit outside the skill, so a translator needs neither — read this
file and stop here. An unflagged cell means no open question is recorded against it,
which is not the same as verified.

**What the flag renders from, so the marker and the source cannot drift.** The TSV carries
seven per-cell statuses, and exactly three of them print a 🚩:

| Status | Renders a flag | Means |
|---|---|---|
| `contested` | **yes** | examined, and the right form is disputed |
| `inherited` | **yes** | carried over from an earlier pass, never checked |
| `assumed` | **yes** | assigned by reading prose rather than by a person deciding |
| `unset` | no | never examined — queryable in the TSV, deliberately quiet here so the view is not a wall of flags |
| `resolved` | no | checked against evidence |
| `decided` | no | a person made the call |
| `absent` | no | no established form exists; the cell holds `—` |

So a translator reading this file sees a flag on every cell somebody has doubted, and no
flag on cells that are either settled or simply unexamined. **`unset` is the resting state
of an unexamined cell, not `assumed`** — most of the table sits there.

## The EN column

The English cell is normally the row's own key — English is the hinge the other
three hang off, not a translation of anything. It differs from the key only where
the key cannot carry the English form:

- the key holds a disambiguator the copy never includes — `assets (company
  property)` is written **`assets`**
- English has more than one established term and a key can hold only one —
  **`resume / CV`**

**Capitalisation is not recorded anywhere in this table.** If a term needs casing,
echo the source's — `Talent Development` versus `talent development` is decided
per piece, not a property of the term. Terms appear lowercase here unless they are a
name or an acronym.

## Polish and Ukrainian are inflected

Both cells give the **lexeme to choose**, not a string to paste. So pick the word,
then inflect it for the slot it lands in. That second step is the one that decides
whether the line reads Polish or Ukrainian at all.

## Do not translate

### PeopleForce product and module names

A module name is a name, not a description, so it stays as the source writes it, casing
included: `PeopleForce`, every `People…` compound, and the bare module names they
shorten to. The localized help centre keeps every module heading English in all three
targets.

Four do not look like names, and those are the ones translated by accident:
`job multiposting`, `Safe Speak`, `Prospector`, `Companion`.

**A module name that is also an ordinary English word — `Desk`, `Time`, `Perform`,
`Pulse`, `Recruit` — resolves by what the line is doing.** Naming the module → keep it.
Using the ordinary word (*time off*, *at the front desk*) → translate it. None of them
are in the do-not-ship string list on purpose: a list matching a bare capitalised `Time`
would fail far more good lines than bad ones.

### Acronyms

**This list is the single authority — the language files point here and do not
restate it.** In Polish, Ukrainian and Spanish alike an acronym stays latin, uppercase
and unexpanded, and the expansion is never printed:

`HR` · `HRIS` · `HRMS` · `HRM` · `ATS` · `KPI` · `OKR` · `eNPS`, and role acronyms —
`CEO`, `CFO`, `COO`, `CMO`.

In Ukrainian this **overrides §4's transliteration pattern**: latin stays latin inside
Cyrillic copy.

Two are not verbatim and live as glossary rows instead: **GDPR** (Polish `RODO`) and
**AI** (Spanish `IA`; Ukrainian `ШІ` and latin `AI` interchangeably).

### English terms kept as-is

**Which terms these are is a table question, not a prose one** — they are rows, with a
cell per language like everything else. `manager` is a row too, because it splits by
script rather than staying English.

One rule the rows cannot carry: **a frozen loanword still inflects.** If a kept term
lands in a slot that takes a case ending, give it one — `onboarding` → `onboardingu`.
An undeclined loanword is the classic machine-translation tell.

### Vendor, competitor, platform and customer names

Keep exactly as the source writes them, capitalisation included. No list here —
it would never be complete. If a token reads like an ordinary word but names a
vendor, competitor, platform or customer, it still counts: `Lever`, `Optima`,
`robota.ua`, `enova365`.

### Personal names — the script follows the person, not the source

**Ukrainian copy** — owner decision:

- Ukrainian person → Cyrillic, whatever script the source used.
- Anyone else → their own script, unchanged. Never invent a transliteration.
- Cyrillic name → inflect it, and the role title beside it.
- One answer for the whole piece. The defect this prevents is a Cyrillic byline with a
  Latin executive nine lines later.

**Polish copy — a Ukrainian name in Polish text.** Two traditions compete, and the fork is
decided **by referent, not once for the whole language**:

| Whose name it is | Write | Example |
|---|---|---|
| A living, contemporary person — a customer, an executive, an employee, anyone named in a case study or quoted | **official romanisation**: the spelling on their own documents, and what modern Polish press uses for contemporary people | `Shevchenko` |
| A historical or literary figure, part of the cultural canon | **Polish transcription**, the editorial tradition for that class of name | `Szewczenko` |

The passport argument and the Polish editorial tradition were never actually in conflict —
they answer about different referents. A contemporary person has a documented spelling of
their own and it wins; a canonical figure has a Polish spelling that predates any passport.
Polish still **declines** whichever form you land on.

Spanish does not transliterate, so it takes the source spelling and stays outside this rule.

### Company and brand names

**Foreign companies keep the Latin original, with their diacritics.** A source that has
mangled one gets it repaired rather than reproduced — `Zabka` → `Żabka`. This holds inside
Cyrillic copy too, so a Polish or Spanish brand stays Latin in a Ukrainian article.

**A Ukrainian company with a Ukrainian name follows the language of the copy** — owner
decision:

| Copy language | Write | Example |
|---|---|---|
| Ukrainian | **Cyrillic** | `Нова Пошта`, `Розетка` |
| Polish, Spanish, English | **Latin** | `Nova Post`, `Rozetka` |

This is a different question from the foreign-name rule above, which was decided on evidence
about foreign names sitting in Cyrillic copy. A domestic company writes its own name in
Cyrillic at home, so Ukrainian copy that Latinises it reads like a translation of itself —
while every other language takes the Latin form its own readers will recognise.

Product and module names are **not** covered here: they stay Latin in all four languages, and
in-image strings come from the product's locale files (`references/product-screens.md`).

## People and roles

| EN | ES | PL | UK | Notes |
|---|---|---|---|---|
| **employee** | empleado / colaborador (the person in the system whatever their contract form (mixed dependent + monotributista/freelance populations), per-seat pricing lines, and engagement or culture copy — where published articles skew it 62% culture) | pracownik | співробітник | **The split is scope and register, not law.** `empleado` is the written default and the product agrees. `colaborador` is the sales floor's word, and it is the right one where the population is mixed-contract — it covers people `empleado` excludes — and in per-seat pricing lines and culture copy. |
| **employees** | empleados | pracownicy | співробітники |  |
| **employer** | empleador | pracodawca | роботодавець |  |
| **staff** | personal 🚩 | personel | персонал | es: not plantilla, which means template |
| **staff member** | colaborador 🚩 | pracownik | співробітник | the product uses colaborador for "collaborator" |
| **workforce** | fuerza laboral | pracownicy | працівники | **Restructure rather than reach for a noun** — `workforce` bare almost always paraphrases: *your workforce* → `tu equipo` / `twoi ludzie` / `ваші люди`. In compounds take the attested compound (`workforce planning` → `planificación de plantilla` / `planowanie zatrudnienia` / `планування штату`). Where written copy genuinely needs a noun, `fuerza laboral` — written register only, since it is dead in speech. Both other candidates collide: `personal` is the `staff`/es cell, and `plantilla` means *template* nearly everywhere in our copy |
| **candidate** | candidato | kandydat | кандидат | Product string, verified. |
| **applicant** | candidato | kandydat | кандидат | pl and uk do not distinguish applicant from candidate |
| **recruiter** | reclutador | rekruter | рекрутер |  |
| **hiring manager** | líder de contratación | manager ds. zatrudnienia | менеджер із найму | product role label if UI-adjacent: pl Właściciel procesu rekrutacyjnego, uk Відповідальний за найм |
| **colleague** | compañero | współpracownik | колега |  |
| **team member** | miembro del equipo | członek zespołu | член команди |  |
| **leader** | líder | lider | лідер |  |
| **specialist** | especialista | specjalista | спеціаліст |  |
| **HR professional** | profesional de RRHH | specjalista HR | HR-спеціаліст |  |
| **HR specialist** | especialista en RRHH | specjalista HR | HR-спеціаліст |  |
| **HR department** | departamento de RRHH | dział HR | HR-відділ |  |
| **people operations** | People Operations | People Operations | People Operations | **Keep the English.** `People Operations` is a house-style rename of HR and functions as a proper noun, so it stays in source form like a product or module name — no target language has an attested equivalent. In running prose, describe the function instead (`recursos humanos`, or the specific activity the sentence is about) |
| **approver** | aprobador | zatwierdzający | схвалювач | From the corpus: es 19/26 calls, pl `zatwierdzający` 17/12 (also `osoba zatwierdzająca`), uk `схвалювач` 24/13. uk `погоджувач` also occurs — hold one form per piece |
| **officer** | officer | officer | officer | Kept latin in all three targets, and in pl and uk it takes case endings like any loanword |
| **manager** | líder / gerente (where the org-chart level is the point rather than the person's role) | manager (the head form — decline it: `managerowi`, `managera`, `managerów`) / menedżer (the Polish spelling, where a line wants one instead of the latin loan) / przełożony (the line-manager RELATIONSHIP — who someone reports to, rather than the job title) / kierownik (a team or unit head, where Polish would name the post rather than borrow) | менеджер | **es:** Splits by language, which is why it is not a frozen loanword. es prefers `líder` in copy; the bare English word is call register. pl writes `menedżer`. uk writes `менеджер` in Cyrillic, standalone and inside compounds. · **pl:** The latin loan is common in our Polish copy, but it is not the house form: **write `menedżer`.** Owner ruling, and PWN and the Rada Języka Polskiego agree. Where a line genuinely wants the loan, decline it — `managerowi`, `managera`, `managerów`. · **pl:** Use it where the sentence is about the reporting line |

## Core HR

| EN | ES | PL | UK | Notes |
|---|---|---|---|---|
| **HR** | RRHH / Recursos Humanos (a heading, or the first mention in a piece) / HR (inside a job title: HRBP, HRVP, HR Manager) | kadry (personnel records and administration specifically) / HR | кадри (the department, or personnel records) / HR | **en:** The two letters, every instance, never expanded. The Acronyms list in this glossary is the single authority for script and casing, and the language files must not restate it. Addedso the en-hr-two-letters eval rule has a cell to stand on. · **es:** Pick one shape per piece and hold it, repetitions included. The interchangeable-forms rule in the marker legend already covers that, so the language file does not restate it. Migrated from es.md HR terminology. · **es:** Role titles keep the English acronym even where the surrounding concept takes RRHH. Not house forms and deliberately absent from this row: Gestion del Talento, Gestion de Personas, Capital Humano - all three are live in the market but are proposals only, recorded in open-flags. |
| **HR management** | gestión de RRHH | zarządzanie zasobami ludzkimi | управління персоналом / HR-менеджмент (where the general meaning is what matters rather than the formal name of the discipline) | **es:** uk 🚩: the owner questions it (`персонал` = staff), but it is the standard name of the discipline and the dominant form in our own copy — pending the owner; changing it rewrites published copy · **uk:** Owner ruling: acceptable in general use when the sense is the concept. Does not displace управління персоналом as the head form. |
| **HR processes** | procesos de RRHH | procesy HR | HR-процеси |  |
| **HR platform** | plataforma de RRHH | platforma HR | HR-платформа |  |
| **HR audit** | auditoría de RRHH | audyt HR | HR-аудит |  |
| **HRM system** | sistema HRM | system HRM | HRM-система |  |
| **management** | gestión | zarządzanie | управління |  |
| **hiring** | contratación | rekrutacja (the sense is finding and attracting candidates) / zatrudnianie (the sense is the act of employing — offer, terms, contract) | найм | pl split is an owner decision: candidates, adverts, pipeline → `rekrutacja`; choosing the person, terms, formalities → `zatrudnianie` |
| **hiring process** | proceso de contratación 🚩 | proces rekrutacji (the default, and any candidate-facing sense) / proces zatrudniania (the formalities sense only — offer, terms, contract) | процес найму 🚩 | **es:** pl is settled — see that cell · **pl:** So **bare *hiring process* takes `proces rekrutacji`**, and `proces zatrudniania` is reserved for the formalities sense per the `hiring` split (offer, terms, contract). `proces rekrutacyjny` (138/30) is a live adjectival variant and interchangeable with the genitive — hold one across a piece |
| **recruitment** | reclutamiento 🚩 | rekrutacja | рекрутинг | Sourcing and attracting. Distinct from screening/selección |
| **screening** | selección / filtrar / primer filtro (the ACT of screening, as a verb or as the named step) / preselección (the narrowing pass specifically — filtering a candidate pool down before interviews) | screening | скринінг / відбір (where the word has to inflect or agree, and in formal register) | `selección` is the head form and names **the stage**. The open question was never the head but a part-of-speech split: `filtrar` performs the screening, `preselección` is the narrowing pass before interviews. |
| **onboarding** | onboarding (the lifecycle stage, the product module, the named process) / incorporación (general meaning — flowing prose, and the experience of joining) | onboarding | онбординг | **es:** `onboarding` is what our marketing writes for the **stage and the system** — `Onboarding y baja` as the module pair, `proceso de onboarding`. `incorporación` is the **act of joining** in flowing prose. The two are not rivals; they answer different sentences. · **es:** The verb `incorporar` is live too (`incorpora fácilmente a nuevos empleados`). Use this for the general sense and `onboarding` for the stage or the system |
| **onboarding process** | proceso de incorporación 🚩 | proces onboardingu 🚩 | процес онбордингу 🚩 | Prose form — same 🚩 as onboarding |
| **induction** | inducción | — | — | **A document, not a process.** It appears only in `plantillas de inducción` — the onboarding templates a new hire is given. Never the word for onboarding itself, and not a general alternative to `incorporación`. |
| **offboarding** | offboarding | offboarding | офбординг |  |
| **termination** | desvinculación | zwolnienie | звільнення |  |
| **performance** | rendimiento (the practice and the lifecycle stage) / desempeño (reviews and evaluations) / Performance (the product module name) | efektywność | ефективність / Продуктивність (the product module and section name) / результативність (attainment measured against a target, and the name of the discipline in `управління результативністю`) | **es:** pl and uk also render *efficiency* with this lexeme, and pl drops it at *performance review*. es keeps the label beside the concept — `rendimiento` beside `Performance` — and uk does the same, three ways; see the uk cells. **Prose takes the concept; the label stays on the screen.** pl and uk deliberately diverge on the screen name (pl `efektywność`). 🚩 reps reach for `продуктивність` while customers reach for the bare English `performance` more than any Ukrainian form — a native's view is wanted on the uk label itself · **uk:** `Ефективність` and `Продуктивність` are a **concept and a label**, not a contradiction: this cell is the concept, and the module name has its own row below. Reps and prospects reach for `продуктивність` when they are reading the screen and `ефективність` when they mean the thing itself. pl and uk diverge on the screen name by design. 🚩 the product locale keys were never checked — that file is in the product repo · **uk:** what the screen says, and what prospects therefore say when they are reading it (`Продуктивність що таке?`). Use in UI-facing lines and never let prose inherit it — the module label and the concept are separate cells on purpose |
| **performance management** | gestión del rendimiento | zarządzanie efektywnością 🚩 | управління ефективністю 🚩 | pl/uk inherit the performance lexeme; uk splits it three ways — see the `performance` uk cells |
| **performance review** | evaluación del desempeño 🚩 | ocena pracownicza / ocena okresowa (where the cycle's periodicity is the point (annual, half-yearly)) / ocena efektywności (where the subject is measured performance rather than the review event) | оцінка ефективності / оцінка (second mention, headings, chips and tight layouts — `цикл оцінки`) / перформанс-ревю (spoken register only — quotes and interviews, never published copy) | **es:** pl: *ocena pracownicza* and *okresowa ocena pracownika* are equally standard; bare *ocena* is the tight-layout candidate. **uk: the short form is the point.** Full form `оцінка ефективності`; short form **`оцінка`** on second mention, in headings and in tight layouts (`цикл оцінки`). The two share the head noun, so the short form is a true ellipsis. `оцінювання` is a **different head and a wider concept**, used for candidate assessment as much as performance (`критерії оцінювання`, `платформи оцінювання`, `оцінювання навичок`), so dropping the complement changes the referent to assessment-in-general instead of shortening the term. `перформанс-ревю` stays spoken register. Rule in uk.md §9 · **pl:** From the corpus: owner ruling to match the source's own form `oceny pracownicze`. The old cell had this backwards |
| **engagement** | compromiso | zaangażowanie | залученість |  |
| **employee engagement** | compromiso de los empleados | zaangażowanie pracowników | залученість співробітників |  |
| **employee experience** | experiencia del empleado | doświadczenie pracownika | досвід співробітника |  |
| **employee lifecycle** | ciclo de vida del empleado 🚩 | cykl życia pracownika | життєвий цикл співробітника | the canonical six stages each have their own row: recruitment, onboarding, talent development, engagement + retention, performance management, offboarding. Ad headlines shorten to "el ciclo del empleado" |
| **talent development** | desarrollo del talento | rozwój talentów | розвиток талантів | es: *del talento*; the graphics' *de talento* is a known error — fix on redraw |
| **feedback** | feedback / retroalimentación (formal and legal register, where a borrowing would read out of place) / comentarios (literal survey comments — a different concept) | feedback | зворотний зв’язок | **es:** OWNER: **keep both forms and favour `feedback`.** It is the head form now, not a conditioned variant — the borrowing is fully current in LatAm HR speech and reads natural in prose (`dar feedback`, `feedback de desempeño`). `retroalimentación` is kept below rather than retired, so nothing published has to change · **es:** This is not a synonym of the two cells above — it is the comment text a respondent typed. Do not use it for the practice |
| **retention** | retención | retencja | утримання | The strongest of the three. `rotación` is the **inverse** concept — turnover — and is frequent enough to be reached for by mistake, so check the direction the source means |
| **turnover** | rotación | rotacja | плинність кадрів | **es:** uk: the full phrase, not кадрів alone · **uk:** **Write the full collocation in copy.** Speech drops the modifier to bare `плинність`, which is register rather than a rival — recognise it coming in, restore the modifier going out. `текучість` is a Russian-leaning spoken variant: do not print it. |
| **absenteeism** | ausentismo 🚩 | absencja | абсентеїзм / прогул (where the word must inflect, and wherever plain register is wanted) 🚩 | es: ausentismo, not the Peninsular absentismo. uk: **both `абсентеїзм` and `прогул` are usable, context picks.** `абсентеїзм` is a term of art rather than everyday vocabulary — the right register for professional HR copy, so **gloss it on first mention**. Senses differ: `прогул` is one unexcused absence, `абсентеїзм` the pattern or metric. Produced `uk.md` §4 test 3 |
| **absence** | ausencia | nieobecność | відсутність |  |
| **attendance** | asistencia | obecność | відвідуваність |  |
| **time off** | tiempo libre (the request and the notifications around it) / ausencia (the record, the policy and the calendar view) / licencia (the entitlement in running prose — see the leave row) | nieobecność (the record, the policy and the calendar view) / wolne / czas wolny / dni wolne (the thing an employee takes or asks for, in prose) | відсутність (the record, the policy and the calendar view) / вихідний / день відпустки (the day itself, and the request for one, in prose) | **es:** **Three roles, not three synonyms**, and every language carries the same split. The **request** is `tiempo libre` — what an employee takes, so the verb goes with it. The **record, policy and calendar** sense is `ausencia` (`Ausencias de hoy`). The **entitlement** is `permiso` / `licencia`. For the policy label see the *absence policy* row, where the product uses two forms and the glossary picks. **Keep the split even though the product collapses it** — our published copy makes the distinction the UI lost. · **pl:** Write the verb phrase: `wnioskować o czas wolny`, `wziąć wolne`, `dni wolne`. `wziąć wolne` is spoken (0 written hits), so prose prefers `wnioskować o` + noun. Full map in pl.md §2 · **uk:** Write `взяти вихідний`, `оформити день відпустки`, or name the day. Full map in uk.md §2 |
| **leave** | permiso / licencia (running prose, and any LatAm-facing copy) | urlop | відпустка | **es:** `Permiso` is the product string. **In prose write `licencia`** — the spoken default for both the entitlement and the request (`licencia por enfermedad`, `solicitud de licencia`) — because `permiso` collides: about a third of its uses mean access permissions. · **es:** The spoken default for the entitlement and the request. Keep `permiso` for the product string, and note its collision with access permissions. |
| **payroll** | nómina | płace | нарахування заробітної плати (the process — accruing and calculating pay, in prose) / Платіжна відомість (the module, the screen and the report) | **es:** `nómina` is the default; `liquidación de sueldos` is dead in every oracle, so route around it. One hazard inside `nómina` itself: a minority of its uses name the **employee roster** rather than the pay function (`la nómina que van a tener cargada`) — where the source means the list of people, write `directorio` or `listado de colaboradores` and keep `nómina` for pay. Qualify it if a CA/PE piece needs it · **uk:** **The module and the process take different words.** The product names the screen `Платіжна відомість`; `нарахування заробітної плати` is what the process is called in prose. Use the product's form when the line names the module or the report. |
| **payroll changes** | novedades | — | — | What gets sent to payroll or accounting each period **Not a product string** — the locale files have no `novedades` for this. Market vocabulary for the monthly payroll deltas, correct in copy and absent from the UI. |
| **payslip** | recibo de sueldo | odcinek wypłaty / pasek wynagrodzeń / pasek płacowy / pasek wypłaty | розрахунковий лист 🚩 | es: distinct from the payroll-run term · **pl:** **All four name the same document and are interchangeable** — none splits off a distinct sense, and every use is an employee viewing, downloading or signing their own payslip. Pick one and hold it through the piece. |
| **salary** | salario / sueldo / remuneración | wynagrodzenie | зарплата (marketing, product and prose copy) / заробітна плата (statutory or contractual text) | Three live synonyms, chosen by context. `salario` is the neutral default. `sueldo` is the everyday word for what a person is paid across LatAm and heads the compounds — `recibo de sueldo`, `planillas de sueldo`. `remuneración` is formal or contractual register. |
| **compensation** | compensación | wynagrodzenie | компенсація |  |
| **competency** | competencia | kompetencja | компетенція |  |
| **employee benefits** | beneficios 🚩 | świadczenia / benefity | бенефіти / пільги | **es:** pl: świadczenia, not korzyści, which means advantages · **pl:** Both are current and both sides of a call use both. `świadczenia` leans formal or statutory; `benefity` leans to the package a company advertises. Pick by which of those the sentence is doing, and hold it through the piece. · **uk:** Speech gives no signal at all, 2r/0p each way. Pick one and hold it across a piece. 🚩 the product's own uk string for this screen is unverified — no locale access from this repo |
| **skill** | habilidad | umiejętność | навичка |  |
| **talent** | talento | talent | талант |  |
| **training** | capacitación (LatAm norm, and what sales calls say) / formación (website-preferred 788:111, reads Peninsular) 🚩 | szkolenie | навчання |  |
| **assessment** | evaluación | ocena | оцінка |  |
| **resume / CV** | currículum | CV | резюме |  |
| **interview** | entrevista | rozmowa kwalifikacyjna | співбесіда | uk: співбесіда is the job interview; інтерв’ю is a media interview |
| **new hire** | nuevo empleado | nowy pracownik | новий співробітник |  |
| **position** | puesto | stanowisko | посада |  |
| **responsibility** | responsabilidad | obowiązek | обов’язок |  |
| **probation period** | periodo de prueba | okres próbny | випробувальний термін | Corrected after a no-glossary arm produced `випробувальний` and both corpora backed it against the cell, which had held the rarer form. |
| **employee profile** | perfil del empleado | profil pracownika | профіль співробітника | The profile screen, distinct from the employee file |
| **employee file** | legajo | teczka pracownika | картка співробітника | es: `legajo` is the market term; the product says `perfil del empleado`, so match the product where the line names that screen. **uk is `картка співробітника`, not `профіль`** — different product objects, and reps say `картка` 59 times against 4 · **pl:** **Not a product string** — the locale files have no `teczka` anywhere. This is the Polish market and legal term (the e-teczka standard), which is what makes it right for copy; just do not expect to find it on a screen. |
| **tenure** | antigüedad 🚩 | staż pracy | стаж роботи | es: the row used to split by country — `antigüedad` for Argentina and Uruguay, `permanencia` elsewhere — and the neutral-LatAm register removed the condition that decided it. `antigüedad` heads the row as the term LatAm HR actually uses; `permanencia` stays available where the sentence is about *staying* rather than about accrued service. 🚩 in the owner's vocabulary pass |
| **headcount** | dotación | liczba pracowników | кількість співробітників | Attested, so the flag comes off. Reps also count in plain language (`cantidad de colaboradores`), which is usually what a pricing line wants. pl keeps `liczba pracowników` in copy even though reps say the English `headcount` — that borrowing is call register. |
| **salary bands (the pay structure — the band system itself) / salary range (the published number on a job ad)** | bandas salariales (the pay structure) / rango salarial (the published number on a job ad) 🚩 | widełki płacowe | зарплатні діапазони | **en:** Owner ruling: ruling. · **en:** Keep the two senses apart · **pl:** **The source's own `widełki stanowiskowe` has 0 corpus hits** — translate it to this, do not mirror it · **uk:** Owner ruling: ruling. 3 corpus hits; `діапазон зарплат` has 6 and is the commoner shape, so 🚩 a native could reasonably prefer that. Product uses `Діапазон оплати праці` (`b2b-uk-UA.yml:990`) and `Діапазон базової компенсації` for the field labels — use the product's form when the line points at a screen |
| **overtime** | horas extras | nadgodziny | понаднормова робота / понаднормові | **uk:** The product says `Понаднормово` and `понаднормова робота` throughout and **never** `надурочні`. Elliptical `понаднормові` is fine as a standalone noun in a list. · **pl:** `godziny nadliczbowe`, the Labour Code wording, has zero hits — use it only when quoting the statute |
| **employee request** | solicitud | wniosek | запит / заявка (a submitted form instance, which is what the product calls it) | The most-spoken product noun on every market — what an employee submits from self-service, before it enters an approval chain. es `solicitud`, pl `wniosek`, uk `запит` |
| **approval chain** | cadena de aprobación | ścieżka akceptacji 🚩 | ланцюжок схвалення | Up to eight or nine approvers is a normal ask. The PL cell is the weak one: reps mostly say bare `akceptacja` and name `ścieżka akceptacji` only twice, and the locale carries neither |
| **job requisition** | solicitud de vacante / requisición | wniosek o rekrutację 🚩 | запит на вакансію |  |
| **hiring pipeline** | embudo | lejek | воронка |  |
| **rejection reason** | motivo de rechazo 🚩 | powód odrzucenia 🚩 | причина відхилення | So the es and pl cells are the ones to confirm; uk follows the product |
| **job profile** | perfil de puesto / descripción de puesto (running prose) | profil stanowiskowy | профіль посади | The product names this `perfil de puesto`, so that heads the cell and `descripción de puesto` is prose. The reusable role definition carrying level and pay band — not the person's own profile, and not a job ad. |
| **sick leave** | licencia por enfermedad | zwolnienie chorobowe (the product's own wording) / L4 / zwolnienie lekarskie (speech, and formal written copy respectively) | лікарняний | pl carries three forms and the product picks the one reps do not: `zwolnienie chorobowe` is the product's wording, `L4` is what reps and clients say out loud, `zwolnienie lekarskie` is the formal written register. Follow the product for product lines, `zwolnienie lekarskie` in formal copy, and expect `L4` in quotes and interviews. |
| **absence policy** | política de licencias (the product label) / política de vacaciones (spoken register, and copy where the policy really is about holiday) | polityka nieobecności | політика відсутностей | **The product carries both forms, three lines apart** — `política de licencias` in the two UI titles and `política de ausencias` in the error phrase beside them. Two live forms means the product does not settle it, so the glossary does: `política de licencias` heads the cell because it is what the screen titles say. Reps say `política de vacaciones`, which names the commonest leave type rather than the category. The `time off` row's `ausencia` is the record sense and is not evidence for the policy label. |
| **timesheet** | registro de horas | karta pracy | табель обліку робочого часу | **es:** The filled record, distinct from *time tracking* the capability. es `registro de horas`, pl `karta pracy`, uk `табель обліку робочого часу` — **uk takes the full form always, by owner decision; see that row before shortening it**. · **uk:** **Owner: the full form only.** This overrides the product, which shortens to `Табель` in buttons and mail subjects and uses the full form where the object is named. Bare `табель` is not wrong on a screen, but it is not what we write — do not reintroduce it as a short variant. |
| **self-assessment** | autoevaluación | samoocena | самооцінка |  |
| **review cycle** | ciclo de evaluación (the product label) / proceso de evaluación (running prose, which is where reps put it) | cykl ocen | цикл оцінювання | `proceso de evaluación` is what ES reps say and is fine in prose |
| **evaluation template** | plantilla de evaluación | arkusz oceny | — | From the corpus: the question set an evaluator fills. pl says `arkusz oceny` — a sheet, not a template; do not back-translate it to `szablon`. No uk form attested |
| **performance score** | puntuación de desempeño 🚩 | wskaźnik efektywności | показник ефективності (copy) / Performance Score (latin, only where the line labels the product toggle) | **es:** The composite number, not the review event. pl `wskaźnik efektywności` is PeopleForce's own indicator. Mind the collision: uk `оцінка ефективності` is this glossary's form for *performance review*, so the uk cell for the score is deliberately different. · **uk:** es and pl translated this and **uk did not**: the uk product leaves the latin term in the toggle and paraphrases elsewhere as `загальна ефективність` or `оцінювання ефективності`, which collides with *performance review*. So write `показник ефективності` in copy, and keep the toggle latin when the line labels it. |
| **competency gap** | brecha de habilidades (the organisation-level skills gap, as our articles use it) / brecha (the 360 indicator, following the product's severity grades) | luka kompetencyjna / luka kompetencji / luka (the 360 indicator, following the product's severity grades) | розрив / GAP (latin, and only where the line labels the formula the product labels `GAP` — reps voice this as `геп`, which is not a Ukrainian word and must not be written in Cyrillic) | **Two senses; the product names only one.** The 360 review's per-competency delta keeps the formula label latin `GAP` in every locale, and only the severity grades translate — es `brecha crítica / moderada / insignificante`, pl `luka krytyczna / umiarkowana / nieistotna`, uk `критичний / помірний / незначний розрив`. The organisation-level skills gap is the separate, copy-only sense: es `brecha de habilidades` — habilidades, not competencias — and pl `luka kompetencyjna`. |
| **career development plan** | plan de desarrollo | plan rozwoju (the product label) / indywidualny plan rozwoju zawodowego (formal HR register, where the full name of the instrument is the point) | план розвитку | **es:** All three ship the short form: es `plan de desarrollo`, pl `plan rozwoju`, uk `план розвитку`. pl `indywidualny plan rozwoju zawodowego` is formal HR register — correct, but longer than any screen, so use it only where the full name of the instrument is the point. · **pl:** From the product locale: all three ship the short form — pl `plan rozwoju` (`mailers-pl-PL.yml:621`, `:625`), es `plan de desarrollo` (`mailers-es-ES.yml:624-628`), uk `план розвитку` (`mailers-uk-UA.yml:627-631`). `indywidualny plan rozwoju zawodowego` is HR-department register from a 1,200-seat call — correct, but longer than any screen |
| **one-on-one meeting** | reunión uno a uno / 1:1 (where the source writes the token rather than the phrase) | spotkanie jeden na jeden / 1:1 (where the source writes the token rather than the phrase) | зустріч один на один / 1:1 (where the source writes the token rather than the phrase) | No conflict with the frozen-loanword list: that keeps the token `1:1` where the source writes it, this row is the phrase |
| **survey** | encuesta | ankieta | опитування | Keep it apart from *questionnaire* — uk holds `опитування` and `анкета` strictly separate |
| **questionnaire** | — | kwestionariusz | анкета | From the corpus: the data-collection form a new hire fills before day one — pl `kwestionariusz (osobowy)` 31/21, uk `анкета` 50/23. es reps say only the generic `formulario`, so no ES cell is recorded |
| **payroll deduction** | deducción | potrącenie | утримання | Filled from published copy after `retención` was removed as an error: `deducción` is the payroll sense (`beneficios, impuestos, bonos, deducciones`), while `retención` in our copy is employee retention and in the product is data retention. Reps say `descuento`, which is fine in spoken register anywhere in LatAm and is not the written form. |
| **payroll run** | liquidación (Argentina only) / nómina (every other Spanish market, and any pan-regional piece) | lista płac / naliczanie wynagrodzeń | цикл розрахунку 🚩 | Pick by the reader's country; pan-regional copy takes `nómina`. This is the periodic calculation, not *payroll* the function. pl `lista płac` 4 / `naliczanie wynagrodzeń`. 🚩 the uk cell is weak — reps mostly borrow (`payroll-ран`, `GROSS-цикл`) |
| **HR administration** | — | kadry | кадрове адміністрування / кадрові процеси | From the corpus: the statutory personnel-records layer — orders, applications, the P-2 card — a separate module in UA. pl calls the function `kadry`, and `kadry i płace` when paired with payroll. es has no counterpart layer |
| **talent acquisition** | talent acquisition | talent acquisition | talent acquisition | Kept latin in all three. The function, not a job title — a title built on it still keeps the English core |
| **soft skills** | soft skills | soft skills | soft skills | Kept latin in all three. uk reps also say `софт-скіли` and pair it with `харди` — speech only, do not ship either |
| **preboarding** | preboarding | preboarding | пребординг | Kept latin in es and pl, and it inflects: pl `preboardingu`. The step before day one, distinct from onboarding — uk reps say `форма прибордингова` for its form. **Owner ruling 2026-08-12:** the key and the en/es/pl cells are `preboarding`, replacing `pre-onboarding` outright — the older form is not kept as a variant. **uk transliterates**: `пребординг` declines (`пребордингу`), which the latin string cannot, and it is attested in Ukrainian HR writing outside our corpus (work.ua, itexpert.work, a 2024 *БІЗНЕСІНФОРМ* paper), so it is a borrowing rather than a coinage |

## Culture and workplace

| EN | ES | PL | UK | Notes |
|---|---|---|---|---|
| **corporate culture** | cultura corporativa | kultura organizacyjna 🚩 | корпоративна культура | pl: organizacyjna, not korporacyjna |
| **work environment** | entorno de trabajo | środowisko pracy | робоче середовище |  |
| **transparency** | transparencia 🚩 | transparentność | прозорість 🚩 | pl: *przejrzystość* for transparency as a value; **`jawność wynagrodzeń` once the subject is disclosing pay** — the standard term around Directive (EU) 2023/970. 🚩 loan-versus-native register call pending |
| **wellbeing** | bienestar 🚩 | dobrostan 🚩 | добробут | **es:** All three languages now settle the same way: **the native form and the English loan are both house forms and the context picks.** pl `dobrostan` for the programme or discipline, the loan where the source says *well-being* — our own copy carries both in one page, anchor text `well-being zespołu` on the slug `jak-dbac-o-dobrostan-pracownikow`. uk `добробут`. **`samopoczucie` and `самопочуття` are a different concept** — how a person feels on the day — so keep them out of this slot · **uk:** `добробут` is the word our copy uses for the HR sense — `програми добробуту`, `добробут працівників/співробітників`, `турбота про добробут`, `надає пріоритет добробуту`, and `добробут команди` appears verbatim. `благополуччя` is calque-flavoured and sits in older articles — **deprecated rather than wrong**, so leave it where it is already published. `самопочуття` is a **different concept** — how a person feels on the day, not the programme — so do not use it here even though it reads natural |
| **burnout** | burnout 🚩 | wypalenie zawodowe 🚩 | вигорання 🚩 | es keeps the English form |
| **personal development** | desarrollo personal | rozwój osobisty | особистісний розвиток |  |
| **leadership** | liderazgo 🚩 | przywództwo 🚩 | лідерство 🚩 |  |
| **relocation** | reubicación | relokacja | релокейт / переїзд (the physical move itself, and wherever the word has to inflect) | **es:** uk: **both `релокейт` and `переїзд` are house forms and the context picks** (owneron loan-versus-native pairs). Check the sense before swapping — `переїзд` is the physical move, `релокейт` the employment arrangement around it. · **uk:** Equal house form rather than a fallback, but **check the sense before swapping** — `переїзд` is the move, `релокейт` the employment arrangement around it, so they are not always substitutable in the same sentence |
| **recognition** | reconocimiento | kudosy | кудоси / подяка |  |
| **employer branding** | employer branding | employer branding | employer branding | Kept latin in all three |

## Product and system vocabulary

| EN | ES | PL | UK | Notes |
|---|---|---|---|---|
| **applicant tracking** | seguimiento de candidatos | śledzenie kandydatów | відстеження кандидатів |  |
| **time tracking** | seguimiento del tiempo | rejestracja czasu pracy (the product tab, and any line about employees logging their own hours) / śledzenie czasu pracy (where the source is about monitoring rather than the product tab) | облік робочого часу | `rejestracja czasu pracy` is the product tab and what reps say for the feature, because `śledzenie` reads as surveillance of the employee. Keep `śledzenie` only where the source really is about monitoring. |
| **document management** | gestión de documentos | zarządzanie dokumentami | управління документами | Product string, verified. |
| **case management** | gestión de casos | zarządzanie sprawami | управління кейсами | The Cases module |
| **workflow** | flujo de trabajo | proces | робочий процес / воркфлоу (interchangeable with `робочий процес` — but not where the word has to agree or inflect) | **es:** All three translate: es `flujo de trabajo`, pl `proces`, uk `робочий процес` (with `воркфлоу` an equal variant — see that row). **Measure each language separately** — the three agree here, but by three different routes, and inheriting an answer across languages is what this row exists to prevent. Speech in es and uk prefers the English word; that is register and does not reach print · **uk:** Head form; the loan sits beside it as an equal (row below). Our written copy prefers it by document spread and source-blind native readers pick it, so it heads the row. Short form: bare `процес` once the context has fixed which process. |
| **AI** | IA | AI | ШІ / AI |  |
| **Companion (AI assistant)** | Companion 🚩 | Companion 🚩 | Companion | the product locales disagree — pl/es translate (`Towarzysz`, `Compañero`), six locales keep `Companion`; reads as translator drift, and `Towarzysz` carries communist-era *comrade* register. Keep `Companion`, flag it in the handover; owner decides |
| **job multiposting** | 🚩 | job multiposting (keep English, usually after funkcja/funkcji) | мультипостинг вакансій | handled per locale by the product: pl keeps the English (`funkcja`/`funkcji` lets the indeclinable noun sit in a case slot), uk translates, es carries neither form — genuinely open. Don't generalise across locales |
| **workflow trigger** | activación | sposób uruchomienia | тригер | pl also keeps the English "trigger" in some copy — either is established |
| **dashboard** | panel 🚩 | Pulpit (the product screen, and any line where the source says `pulpit`) / dashboard (flowing marketing copy that names no product screen) / panel (only inside an established compound the product already uses, e.g. `panel ocen`) / Strona główna (the home screen sense only, not a data dashboard) 🚩 | дашборд (marketing prose that names no product screen) / Головна сторінка (the product's home screen) / панель (inside an established compound, e.g. `панель оцінювання`) | **es:** two senses live in the product in all three targets (home page vs control panel); the sense line is a decision, not a lookup · **pl:** **If the source says `pulpit`, leave `pulpit`** — never normalise it to the loan · **pl:** Do not propagate; pick `pulpit` and file the product string · **pl:** `application-pl-PL.yml:3317` renders `dashboard` as `Strona główna` where it means the landing nav item. A separate sense — do not swap it for `Pulpit` · **uk:** Owner ruling: ruling: keep the loan in our own copy. **But the product never uses it** — see the two rows below; if a line points at a screen, use the product's word |
| **metrics** | métricas | wskaźniki 🚩 | показники 🚩 | the loans (*metryki* / *метрики*) are concentrated in a few pieces — one-writer artifacts. 🚩 whether an HR audience says the loan for a dashboard figure is a native's call |
| **report** | informe | raport | звіт | es: informe, not reporte |
| **template** | plantilla 🚩 | szablon | шаблон | es: plantilla is correct here — it is wrong for staff |
| **functionality** | funcionalidad | funkcjonalność | функціонал |  |
| **feature** | función 🚩 | funkcja | функція | es: función, not característica |
| **implementation** | implementación | wdrożenie | впровадження |  |
| **spreadsheet** | hoja de cálculo (the default, now unconditional for published copy) / planilla (Southern-Cone spoken register only — never bare where `planilla de horas` (timesheet) could be read instead) | arkusz kalkulacyjny / arkusze (once the surrounding copy has already established that a spreadsheet is meant) / spreadsheet (declined per Polish grammar: spreadsheeta, spreadsheetow, w spreadsheecie, and never with an apostrophe) / w Excelu / excele (conversational register only) 🚩 | таблиця | **es:** **`hoja de cálculo` heads the row** — we publish far more than we speak, so the written form takes the default. `planilla` was conditioned on Río de la Plata copy and speech; with the register now neutral LatAm it drops out of published copy entirely and survives only as Southern-Cone spoken register. It also carries a second sense (`planilla de horas` is a timesheet), so never leave it bare where that could be read. · **pl:** The head form itself has never been confirmed by a native, so the flag stays on it. The two variants below ARE owner-confirmed. |
| **self-service** | autogestión / autoservicio 🚩 | samoobsługa (the concept, in prose) / dostęp / zarządzanie dostępem (the product toggle and its screen) | самообслуговування 🚩 | **es:** Both are correct; prefer `autogestión`. pl `samoobsługa` stands for copy even though reps say the English `self-service` on calls (25 hits against 5) — that borrowing is call register · **pl:** Answered from the locale file the flag was waiting on. `samoobsługa` is attested (`Możliwość samoobsługi`), but **the product reframes the feature as access**: its own labels are `Zarządzanie dostępem`, `Dostęp`, `Włącz dostęp`. So write `samoobsługa` for the concept and follow the product when the line names the toggle. |
| **electronic signature** | firma electrónica | podpis elektroniczny | електронний підпис |  |
| **org chart** | organigrama | struktura organizacyjna (the longer form, website-preferred 21:9) / schemat organizacyjny (also in use in the product) | організаційна структура (the full form) / орг. структура (the short form, corpus-preferred 34:26) |  |
| **assets** | activos | narzędzia | активи | es/uk confirmed. pl is contradicted: the help centre says *zasoby* — *narzędzia* may be the UI label only; do not ship narzędzia until the pl locale file confirms |
| **tab (UI)** | pestaña | zakładka | вкладка | es: the product UI form; solapa is Argentine spoken register only |
| **Work type** | Tipo de trabajo | Forma współpracy | Тип роботи | Read off the app source, not inferred |
| **Contractor** | Contratista | Contractor 🚩 | підрядник | **en:** From the product locale: one of only three seeded `employment_types` — Full-time, Part-time, Contractor (`app/services/seeds/data.yml.erb:211-232`). **There is no B2B value in the product** · **pl:** Polish market copy says `kontraktor` / `współpraca B2B`; the product does not. Do not cite the product as authority for the PL form · **uk:** From the corpus: owner ruling: **`контрактор` is an anglicism, not a Ukrainian word** — do not use it. Applied across all deliverables (32 forms swapped) |
| **sole trader** |  |  | ФОП | The closest real Ukrainian counterpart to the Polish `JDG` behind a B2B arrangement — but an institution in its own right, so name it only where the sole-trader status is the point, not as a translation of `B2B` |
| **B2B** |  |  |  | NOT A PRODUCT VALUE. A Polish-market contract form (`umowa B2B`), carried as a tenant-created work type or as marketing vocabulary. Keep the acronym in all four; never present it as a PeopleForce field value |
| **B2B contractor** | 🚩 NO ATTESTED FORM |  | підрядник | OWNER: **`підрядник` is the default here too**, same as the plain `contractor` row — add `на B2B` only where the arrangement itself is the point, and say `ФОП` where the sole-trader status is what the sentence is about. Earlier note: `B2B-контрактор` was a coinage AND carried the anglicism, twice wrong. That form keeps `B2B` as the acronym it is (a Polish arrangement, not a Ukrainian legal form) and uses the attested noun for the person. Where the sole-trader status is the actual point, say `ФОП` instead |
| **knowledge base** | base de conocimientos | baza wiedzy | база знань | The product uses the plural `base de conocimientos`, not the singular reps say in speech. The tenant's own article space — reps also offer `biblioteca`, which is not a product string. |
| **help centre** | centro de ayuda | centrum pomocy 🚩 | довідковий центр | PeopleForce's own public docs, **not** the tenant's knowledge base — the two must not be merged. The pl cell stays weak: reps collapse both into `baza wiedzy`, `centrum pomocy` appears once in speech and not at all in the locale |
| **employee directory** | directorio | katalog pracownika | директорія (the product screen) / довідник (a reference list inside the employee card, e.g. `довідник фізичних осіб`) 🚩 | From the corpus: es `directorio` 152/82, pl `katalog pracownika` 22/15. uk is split and unsettled — `директорія` 12 for the screen against `довідник` 9 for a reference list; hold one per piece |
| **merge field** | campos variables | pola zmienne | замінники | The placeholder a document template fills from the employee card. **uk `замінники` is the only product-confirmed cell**; es `campos variables` and pl `pola zmienne` come from calls, so a native could still overrule them. Never transliterate `merge field`. |
| **audit trail** | historial de cambios / registro de auditoría (prose about compliance or evidence, never as the product's label) | historia zmian | історія змін | The product frames this as *history of changes* per object rather than as an audit log. `registro de auditoría` is call register and belongs in prose about compliance. uk `історія змін` has no product string behind it. |
| **geolocation** | geolocalización / geofencing |  |  | From the corpus: es only, 1 call but explicit — and it is a partner capability (Clock), not ours. Reps say so outright, so never let copy imply PeopleForce does geofencing. Zero pl and uk attestation |

## Compliance and legal

| EN | ES | PL | UK | Notes |
|---|---|---|---|---|
| **compliance** | cumplimiento | zgodność | дотримання |  |
| **GDPR** | GDPR | RODO | GDPR | pl: RODO is the official Polish name |
| **security** | seguridad | bezpieczeństwo | безпека |  |
| **information security** | seguridad de la información | bezpieczeństwo informacji | інформаційна безпека |  |
| **policy** | política | polityka | політика |  |
| **sworn declaration** | declaración jurada | — | — |  |
| **external accounting firm** | estudio contable | — | — |  |
| **private health cover** | prepaga | — | — |  |
| **EU Pay Transparency Directive** | — | dyrektywa o jawności wynagrodzeń | Директива про прозорість оплати праці 🚩 | es and uk forms need confirming |
| **mandate contract** | 🚩 NO ATTESTED FORM | umowa zlecenie | цивільно-правовий договір | **en:** the established English rendering of Polish `umowa zlecenie`. Gloss on first use — it means nothing to a reader without one. Per the MR-328 hr-leaders note · **uk:** The Ukrainian umbrella category for non-employment work contracts, and the closest true institutional match to Polish `umowa zlecenie`. **Nothing in our own copy attests it** — it is recorded as a legal-category match, not a corpus finding. In running copy: `людина за цивільно-правовим договором`. |
| **qualified electronic signature** | firma electrónica avanzada | kwalifikowany podpis elektroniczny / podpis kwalifikowany | КЕП | **The two locales do not even use the same key**: es labels this tier `advanced` → `Firma Electrónica Avanzada`, uk labels it `qualified` → `КЕП`, and `Український КЕП` names the integration. The tier is named for what each market's law recognises, which is why this is a separate concept from *electronic signature*, and why ES reps refuse the label `firma digital`. In the product the pl path is the Autenti integration, named as such. |
| **legal entity** | entidad legal | podmiot prawny | юридична особа | Multi-entity tenants are normal in all three markets and documents are generated per entity, so the term carries weight in product copy |
| **whistleblowing channel** | canal de denuncias | narzędzie dla sygnalistów | — | **The feature has a name and it is `Safe Speak`** — on the do-not-translate list. So these cells describe the concept, not the button: es `canal de denuncias`, pl `narzędzie dla sygnalistów` with `sygnalista` the term the PL implementing act made everyone learn. No uk form — the UA market does not raise it. |
| **job evaluation** | — | wartościowanie stanowisk | — | Not a *performance review*, and not *job profile*. No ES or UK form: the concept does not come up in those markets |
| **pay gap** | brecha salarial | luka płacowa (copy, and the directive's own vocabulary) / luka wynagrodzeń / różnica wynagrodzeń (quoting or labelling the in-product report) 🚩 | розрив в оплаті | **pl:** **The pl product does not say `luka płacowa`** — it wavers between `luka (w) wynagrodzeniach` (`:7324`, `:7349`, `:7361`) and `różnica wynagrodzeń` (`:7325`, `:7411-7414`), so the product contradicts itself while our copy, our reps and Polish directive practice all say `luka płacowa`. **Keep `luka płacowa` for copy; match the screen where the line names the report** · **uk:** The product says `розрив в оплаті` without `праці`, gendered as `гендерний розрив в оплаті` — follow the product. Note the collision: uk `розрив` also carries the 360-review competency gap, so this cell only works with `в оплаті` attached |
| **staffing table** | — | — | штатний розпис | Only 2 calls, but structurally load-bearing in the kadrove module. No PL or ES counterpart institution |
| **personnel order** | — | — | наказ | No PL or ES equivalent document |
| **military registration** |  |  | військовий облік | From the corpus: UA-only employee-card section, a wartime requirement. Never generalise it to another market |
| **work-permit legalisation** |  | legalizacja pracownika |  |  |
| **occupational health check** |  | badania okresowe |  | Do not flatten it to a generic medical check |
| **health and safety training** |  | szkolenie BHP |  | `BHP` stays an acronym |
| **contract addendum** |  | aneks do umowy |  |  |

## Business vocabulary

| EN | ES | PL | UK | Notes |
|---|---|---|---|---|
| **business** | negocio 🚩 | biznes 🚩 | бізнес 🚩 | es: empresa where it means the company |
| **organization** | organización | organizacja | організація |  |
| **growth** | crecimiento | wzrost (business or metric growth) / rozwój (personal or career growth — then collides with development) | зростання | pl rozwój collides with development — check context |
| **efficiency** | eficiencia | wydajność 🚩 | ефективність | pl and uk overlap with performance here — check context, and see the performance row |
| **cost** | costo 🚩 | koszt | витрати | es: costo, not coste |
| **pricing** | precios | cennik | ціноутворення |  |
| **guide** | guía 🚩 | przewodnik 🚩 | посібник 🚩 |  |
| **tip** | consejo | wskazówka | порада |  |
| **summary** | conclusión 🚩 | podsumowanie 🚩 | Висновки (the piece argued something — the closing section draws a conclusion from it) / Підсумки (the piece listed things — the closing section recaps steps, points or takeaways) | **es:** the closing-section heading in each locale. uk: висновки and підсумки both attested as the final h2 — pick one and hold it through the piece · **uk:** Owner ruling: ruling: decide by context, not one form everywhere. Use this for articles that make a case (opinion, analysis, legal explainer). It promises a judgement, so the section must contain one · **uk:** use this for how-tos, checklists, step guides and lead magnets. It promises a recap, not a verdict. Hold whichever you pick through the whole piece |
| **milestone** | hito | krok milowy / 🚩 NO ATTESTED FORM | великий крок уперед / великий крок уперед (as a verb phrase — `стати великим кроком уперед для…`, not the copula `це великий крок уперед у…`) 🚩 | **en:** the figurative sense: a significant step forward. pl source is usually *krok milowy*. For a dated project checkpoint this is a different concept — see the *checkpoint* rows · **pl:** Owner ruling: ruling, reversing the earlier rejection: keep it. Attested, and it is what the Autenti customer actually said. For a project or roadmap milestone `kamień milowy` is the commoner Polish idiom; `duży krok naprzód` fits warm customer-voice copy |
| **checkpoint 🚩** | 🚩 NO ATTESTED FORM | 🚩 NO ATTESTED FORM | 🚩 NO ATTESTED FORM | a dated control point in a process, not the figurative *milestone*. EN only — the one language where the term appears in our own copy |
| **stakeholders** | interesados 🚩 | interesariusze | стейкхолдери (🚩 NOT SETTLED) / зацікавлені сторони 🚩 | **pl:** No competing form attested · **uk:** Owner ruling: asked for the rowfollowing `uk.md` §4's transliteration pattern — but **§4 is itself marked "derived, not decided"**, so this inherits that doubt. A native should choose between this and `зацікавлені сторони` |
| **trial account** | cuenta de prueba | okres testowy / konto demonstracyjne | тестовий акаунт | The 14–15 day evaluation account every market offers, free and unconditional. pl reps also say `konto demonstracyjne`; the pl and uk cells are corpus-only |
| **subscription** | suscripción | subskrypcja | підписка |  |
| **discount** | descuento | zniżka | знижка | From the corpus: pl `zniżka` 9 against `rabat` 1 — do not prefer `rabat`. uk `знижка`, es `descuento` |
| **plan** | plan | plan | пакет / тариф | From the corpus: the Standard / Professional tier, not a project plan. es and pl keep `plan`; uk reps say `пакет` and `тариф` interchangeably. Module names stay English per the do-not-translate list |
| **quote** | cotización | — | комерційна пропозиція |  |
| **price list** | — | cennik | — | From the corpus: PL only. uk `тариф` names the tier, not a list, and ES reps quote (`cotización`) rather than publish one |
| **customer success** | customer success | customer success | customer success | Kept latin in all three, the role and the function alike (`Customer Success Manager` is how reps name the person on every market) |
| **contact center** | contact center | contact center | contact center | Kept latin in all three |
