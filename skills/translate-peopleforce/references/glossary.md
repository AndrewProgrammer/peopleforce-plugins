# Glossary

One row per concept, one column per language. To translate between any two
languages, read those two cells of the same row. Only terms that encode a house
choice are listed — ordinary vocabulary any translator gets right is deliberately
absent: rows exist for legally-loaded near-misses, coin-flip pairs (pinning one form so
paragraph nine matches paragraph one) and deliberate house deviations.

| Marker | Meaning |
|---|---|
| 🚩 | **On a cell, not a row.** That language's term is not settled — either never examined for this language, or examined and disputed. Use it and stay consistent. A flag on Spanish says nothing about Polish. Evidence per flag: `translation-corpus/open-flags.md` |
| — | No established form. If a cell holds this, then ask before choosing a form. |
| `a (x) / b (y)` | Several established terms, **chosen by context**. The bracket is the trigger, not a gloss. |
| `a / b` | Several established terms, **interchangeable**. No bracket means no rule — either is correct, so pick one and stay consistent within the piece. |

**Source of truth: `translation-corpus/glossary.tsv`** (per-cell status and evidence);
this file is the render, and evidence per flag lives in
`translation-corpus/open-flags.md`. An unflagged cell means no open question is
recorded against it — not the same as verified.

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

## People and roles

| EN | ES | PL | UK | Notes |
|---|---|---|---|---|
| **employee** | empleado / colaborador (the person in the system whatever their contract form (mixed dependent + monotributista/freelance populations), per-seat pricing lines, and engagement or culture copy — where published articles skew it 62% culture) | pracownik | співробітник | CORRECTED — an earlier version of this row had the two forms the wrong way round. **The split is scope and register, not law.** Published ES copy runs `empleado` 1,898 hits/145 articles against `colaborador` 189, and the product's own es-ES locale says `empleado` (`b2b-es-ES.yml:1187`, `attributes-es-ES.yml:401`), so `empleado` is the written default. `colaborador` is the sales floor's word — 1,686/109 against 1,313/113 in speech — and its job is **coverage**: one rep states the platform's own definition, `entendemos a todos como colaboradores, no importa si es en relación de dependencia, si es monotributista`. So `colaborador` includes people `empleado` excludes. Marker analysis kills the legal reading: legal/contract context sits at 8% of `colaborador` hits against 7% of `empleado` hits — statistically the same. **pl and uk share a lexeme with `staff member` deliberately** (`pracownik`, `співробітник`): English distinguishes where these two do not, and dropping a distinction the target lacks is correct behaviour, so this is a decision and not a table error. Where a piece needs the senses apart, the construction carries it rather than the noun — `наш співробітник` against `один із співробітників`. Rule recorded in uk.md §8; do not reach for `персонал`, which is the `staff` cell |
| **employees** | empleados | pracownicy | співробітники |  |
| **employer** | empleador | pracodawca | роботодавець |  |
| **staff** | personal 🚩 | personel | персонал | es: not plantilla, which means template |
| **staff member** | colaborador 🚩 | pracownik | співробітник | the product uses colaborador for "collaborator" |
| **workforce** | fuerza laboral | pracownicy | працівники | **Restructure rather than reach for a noun** — `workforce` bare almost always paraphrases: *your workforce* → `tu equipo` / `twoi ludzie` / `ваші люди`. In compounds take the attested compound (`workforce planning` → `planificación de plantilla` / `planowanie zatrudnienia` / `планування штату`). Where written copy genuinely needs a noun, `fuerza laboral` — written register only, since it is dead in speech. Both other candidates collide: `personal` is the `staff`/es cell, and `plantilla` means *template* nearly everywhere in our copy |
| **candidate** | candidato | kandydat | кандидат |  |
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
| **HR director** | director de RRHH 🚩 | dyrektor HR | HR-директор | uk keeps `HR` latin (uk.md §4). es 🚩: `director` is gendered — prefer the department or the function where the person is unnamed |
| **people operations** | People Operations | People Operations | People Operations | **Keep the English.** `People Operations` is a house-style rename of HR and functions as a proper noun, so it stays in source form like a product or module name — no target language has an attested equivalent. In running prose, describe the function instead (`recursos humanos`, or the specific activity the sentence is about) |
| **works council** | comité de empresa 🚩 | rada pracowników | рада працівників 🚩 | es: `comité de empresa` is the Spanish institution; Argentina's `comisión interna` is a different body with different powers — the AR/UY form needs confirming |
| **approver** | aprobador | zatwierdzający | схвалювач | From the corpus: es 19/26 calls, pl `zatwierdzający` 17/12 (also `osoba zatwierdzająca`), uk `схвалювач` 24/13. uk `погоджувач` also occurs — hold one form per piece |
| **officer** | officer | officer | officer | MOVED OUT OF THE PREAMBLE: the frozen-English list was prose; which terms stay English is a table question, so each is now a row with a cell per language. Kept latin in all three targets, and in pl and uk it takes case endings like any loanword |
| **manager** | líder / gerente (where the org-chart level is the point rather than the person's role) | manager (decline it — `managerowi`, `managera`) / menedżer (🚩 only if a native rules for the Polish spelling; `menadżer` is the misspelling and is never correct) 🚩 | менеджер | MOVED OUT OF THE PREAMBLE, where this sat as a prose flag, plus corpus evidence the prose did not have. **It splits by language, which is why it was never a frozen loanword.** es: published copy prefers `líder` (216 hits/70 articles) over English `manager` (174/50) and `gerente` (92/25) — reps say the English word constantly (922/117) but that is call register. pl: published copy says `manager` 220/56 against `menedżer` 63/21, which backs what the preamble told translators to do provisionally; in speech the spelling `menadżer` dominates (481/70) and is the non-standard form, so do not follow speech here. uk: `менеджер` in Cyrillic, 542 hits/125 articles, standalone and inside compounds |

## Core HR

| EN | ES | PL | UK | Notes |
|---|---|---|---|---|
| **HR** | RRHH / Recursos Humanos (a heading, or the first mention in a piece) / HR (inside a job title: HRBP, HRVP, HR Manager) | kadry (personnel records and administration specifically) / HR | кадри (the department, or personnel records) / HR | The two letters, every instance, never expanded. The Acronyms list in this glossary is the single authority for script and casing, and the language files must not restate it. Addedso the en-hr-two-letters eval rule has a cell to stand on. |
| **HR management** | gestión de RRHH | zarządzanie zasobami ludzkimi | управління персоналом / HR-менеджмент (where the general meaning is what matters rather than the formal name of the discipline) | uk 🚩: the owner questions it (`персонал` = staff), but it is the standard name of the discipline and the dominant form in our own copy — pending the owner; changing it rewrites published copy |
| **HR processes** | procesos de RRHH | procesy HR | HR-процеси |  |
| **HR platform** | plataforma de RRHH | platforma HR | HR-платформа |  |
| **HR audit** | auditoría de RRHH | audyt HR | HR-аудит |  |
| **HRM system** | sistema HRM | system HRM | HRM-система |  |
| **management** | gestión | zarządzanie | управління |  |
| **hiring** | contratación | rekrutacja (the sense is finding and attracting candidates) / zatrudnianie (the sense is the act of employing — offer, terms, contract) | найм | pl split is an owner decision: candidates, adverts, pipeline → `rekrutacja`; choosing the person, terms, formalities → `zatrudnianie` |
| **hiring process** | proceso de contratación 🚩 | proces rekrutacji / proces zatrudniania 🚩 | процес найму 🚩 | pl inherits the hiring split; which sense a bare *hiring process* takes needs a native call |
| **recruitment** | reclutamiento 🚩 | rekrutacja | рекрутинг | Sourcing and attracting. Distinct from screening/selección |
| **screening** | selección / preselección (the narrowing pass specifically — filtering a candidate pool down before interviews) 🚩 | screening | скринінг / відбір (where the word has to inflect or agree, and in formal register) | Choosing among candidates, and distinct from recruitment — though most of this form's uses in our copy are `proceso de selección`, the recruitment process, so the *screening* sense is unconfirmed and a native owns the head form. `preselección` (77/14) is added as a conditioned cell for the narrowing pass specifically — filtering a pool down before interviews — and **not** as a replacement for `selección`. `cribado` was considered and rejected at 3 hits/1 doc. uk: **`скринінг` (84/11) and `відбір` (39/9) are both house forms, context picks** (owner; prefer `відбір` where the word has to inflect or the register is formal |
| **onboarding** | onboarding (the named process or capability) / incorporación (flowing prose, the experience of joining) 🚩 | onboarding | онбординг | es gloss contested — open-flags 8. uk confirmed against the localized help centre |
| **onboarding process** | proceso de incorporación 🚩 | proces onboardingu 🚩 | процес онбордингу 🚩 | Prose form — same 🚩 as onboarding |
| **induction** | inducción | — | — | The first-days process specifically |
| **offboarding** | offboarding | offboarding | офбординг |  |
| **termination** | desvinculación | zwolnienie | звільнення |  |
| **performance** | rendimiento (the practice and the lifecycle stage) / desempeño (reviews and evaluations) / Performance (the product module name) | efektywność | ефективність / Продуктивність (the product module and section name) / результативність (attainment measured against a target, and the name of the discipline in `управління результативністю`) | pl and uk also render *efficiency* with this lexeme, and pl drops it at *performance review*. **uk splits three ways, by job:** `ефективність` is the concept (`показники ефективності`, `ефективність співробітників`), `Продуктивність` is the product's module and section name — what prospects say because they are reading the screen — and `результативність` is attainment against a target, giving `управління результативністю` for *performance management*. `Ефективність` and `Продуктивність` are a label beside a concept, exactly as es keeps `rendimiento` beside `Performance`. **Prose takes the concept; the label stays on the screen.** This makes pl and uk deliberately diverge on the screen name (pl `efektywność`), which is intended. 🚩 reps reach for `продуктивність` while customers reach for the bare English `performance` more than any Ukrainian form — a native's view is wanted on the uk label itself |
| **performance management** | gestión del rendimiento | zarządzanie efektywnością 🚩 | управління ефективністю 🚩 | pl/uk inherit the performance lexeme — open-flags 8b |
| **performance review** | evaluación del desempeño 🚩 | ocena pracownicza / ocena okresowa (where the cycle's periodicity is the point (annual, half-yearly)) / ocena efektywności (where the subject is measured performance rather than the review event) | оцінка ефективності / оцінка (second mention, headings, chips and tight layouts — `цикл оцінки`) / перформанс-ревю (spoken register only — quotes and interviews, never published copy) | uk: no house form established — our copy mostly keeps the English or uses *оцінювання*; the cell is a candidate, not settled. pl: *ocena pracownicza* and *okresowa ocena pracownika* are equally standard; bare *ocena* is the tight-layout candidate. **uk: the short form is the point.** Full form `оцінка ефективності`; short form **`оцінка`** on second mention, in headings and in tight layouts (`цикл оцінки`). The two share the head noun, so the short form is a true ellipsis. `оцінювання` is a **different head and a wider concept**, used for candidate assessment as much as performance (`критерії оцінювання`, `платформи оцінювання`, `оцінювання навичок`), so dropping the complement changes the referent to assessment-in-general instead of shortening the term. `перформанс-ревю` stays spoken register. Rule in uk.md §9 |
| **engagement** | compromiso | zaangażowanie | залученість |  |
| **employee engagement** | compromiso de los empleados | zaangażowanie pracowników | залученість співробітників |  |
| **employee experience** | experiencia del empleado | doświadczenie pracownika | досвід співробітника |  |
| **employee lifecycle** | ciclo de vida del empleado 🚩 | cykl życia pracownika | життєвий цикл співробітника | the canonical six stages each have their own row: recruitment, onboarding, talent development, engagement + retention, performance management, offboarding. Ad headlines shorten to "el ciclo del empleado" |
| **talent development** | desarrollo del talento | rozwój talentów | розвиток талантів | es: *del talento*; the graphics' *de talento* is a known error — fix on redraw |
| **feedback** | feedback / retroalimentación (formal and legal register, where a borrowing would read out of place) / comentarios (literal survey comments — a different concept) | feedback | зворотний зв’язок | OWNER: **keep both forms and favour `feedback`.** It is the head form now, not a conditioned variant — the borrowing is fully current in LatAm HR speech and reads natural in prose (`dar feedback`, `feedback de desempeño`). `retroalimentación` is kept below rather than retired, so nothing published has to change |
| **retention** | retención | retencja | утримання | The strongest of the three. `rotación` is the **inverse** concept — turnover — and is frequent enough to be reached for by mistake, so check the direction the source means |
| **turnover** | rotación | rotacja | плинність кадрів | uk: the full phrase, not кадрів alone |
| **absenteeism** | ausentismo 🚩 | absencja | абсентеїзм / прогул (where the word must inflect, and wherever plain register is wanted) 🚩 | es: ausentismo, not the Peninsular absentismo. uk: **`абсентеїзм` and `прогул` are both usable, context picks** — reviewed and keptafter the count was challenged. The evidence is worth knowing: of 119 hits, **110 sit in a single explainer article** which glosses the word (`Розберемо, що таке абсентеїзм`), and three other documents repeat one boilerplate bullet, against `прогул` at 69 hits across 12 documents. So `абсентеїзм` is a term of art, not everyday vocabulary — which is the right register for professional HR copy, so **gloss it on first mention**. The senses also differ: `прогул` is one unexcused absence, `абсентеїзм` the pattern or metric. This case produced `uk.md` §4 test 3 |
| **absence** | ausencia | nieobecność | відсутність |  |
| **attendance** | asistencia | obecność | відвідуваність |  |
| **time off** | tiempo libre (the request and the notifications around it) / ausencia (the record, the policy and the calendar view) / licencia (the entitlement in running prose — see the leave row) | nieobecność (the record, the policy and the calendar view) / wolne (the request, and the thing an employee takes — `wziąć wolne`, `wniosek o wolne`) 🚩 | відсутність (the record, the policy and the calendar view) / вихідний (the day itself, and the request for one — `взяти вихідний`) 🚩 | **Three roles, not three synonyms**, and every language carries the same split. The **request** is `tiempo libre` — what an employee takes, so the verb goes with it. The **record, policy and calendar** sense is `ausencia` (`Ausencias de hoy`, `política de ausencias`). The **entitlement** is `permiso`/`licencia` — see the `leave` row. Match the role before you pick the word.pl and uk split the same way: record is `nieobecność` / `відсутність`, request is `wolne` / `вихідний`. The verb follows the request form — `wziąć wolne`, `взяти вихідний`. 🚩 the full verb map across all three needs a native |
| **leave** | permiso / licencia (running prose, and any LatAm-facing copy) | urlop 🚩 | відпустка 🚩 | es `Permiso` confirmed against the product locales. **In prose write `licencia`** — 683 hits/104 calls, the spoken default for both the entitlement and the request (`licencia por enfermedad`, `solicitud de licencia`) — because `permiso` collides: about a third of its 584 hits are access permissions (`roles y permisos`). Keep `permiso` for the product string, `licencia` everywhere else |
| **payroll** | nómina | płace | нарахування заробітної плати | `nómina` is the default; `liquidación de sueldos` is dead in every oracle, so route around it. One hazard inside `nómina` itself: a minority of its uses name the **employee roster** rather than the pay function (`la nómina que van a tener cargada`) — where the source means the list of people, write `directorio` or `listado de colaboradores` and keep `nómina` for pay. 🚩 `planilla` is held back as a CA/PE variant: it already carries *template* and *spreadsheet* senses here, and our corpus is AR/UY-facing. Qualify it if a CA/PE piece needs it |
| **payroll changes** | novedades | — | — | What gets sent to payroll or accounting each period |
| **payslip** | recibo de sueldo | pasek wypłaty 🚩 | розрахунковий лист 🚩 | es: distinct from the payroll-run term |
| **salary** | salario | wynagrodzenie | зарплата (marketing, product and prose copy) / заробітна плата (statutory or contractual text) | uk split is an owner decision: `заробітна плата` reads legal in marketing copy. Not examined for pl or es |
| **compensation** | compensación | wynagrodzenie | компенсація |  |
| **competency** | competencia | kompetencja | компетенція |  |
| **employee benefits** | beneficios 🚩 | świadczenia 🚩 | бенефіти (perks) / пільги (statutory entitlements) 🚩 | pl: świadczenia, not korzyści, which means advantages |
| **skill** | habilidad | umiejętność | навичка |  |
| **talent** | talento | talent | талант |  |
| **training** | capacitación (LatAm norm, and what sales calls say) / formación (website-preferred 788:111, reads Peninsular) 🚩 | szkolenie | навчання |  |
| **assessment** | evaluación | ocena | оцінка |  |
| **resume / CV** | currículum | CV | резюме |  |
| **interview** | entrevista | rozmowa kwalifikacyjna | співбесіда | uk: співбесіда is the job interview; інтерв’ю is a media interview |
| **new hire** | nuevo empleado | nowy pracownik | новий співробітник |  |
| **position** | puesto | stanowisko | посада |  |
| **responsibility** | responsabilidad | obowiązek | обов’язок |  |
| **probation period** | periodo de prueba | okres próbny | випробний термін |  |
| **employee profile** | perfil del empleado | profil pracownika | профіль співробітника | The profile screen, distinct from the employee file |
| **employee file** | legajo | teczka pracownika | картка співробітника | es: legajo is the market term; the product says `perfil del empleado`, so match the product when the line names that screen. **Not a regionalism by customer country:** attested in Mexico (18 hits), Uruguay (20), Argentina (10), Colombia (5), the Dominican Republic, Bolivia and Ecuador, while the textbook alternative `expediente` has 2 hits in the whole corpus. 419 hits/87 calls overall makes it the strongest ES term here, so the flag comes off. **uk is `картка співробітника`, not `профіль`**: the two are different product objects and this cell used to repeat the *employee profile* string, collapsing them. Reps say `картка` 59 times against 4  |
| **tenure** | permanencia 🚩 | staż pracy | стаж роботи | es: antigüedad in Argentine and Uruguayan copy; permanencia elsewhere |
| **headcount** | dotación | liczba pracowników | кількість співробітників | From the corpus: attested 21 hits/14 calls, so the flag comes off. Reps also count in plain language (`cantidad de colaboradores`), which is what a pricing line usually wants. pl keeps `liczba pracowników` in copy even though reps say the English `headcount` on calls (12 hits) — that borrowing is call register, not publishable Polish |
| **salary bands (the pay structure — the band system itself) / salary range (the published number on a job ad)** | bandas salariales (the pay structure) / rango salarial (the published number on a job ad) 🚩 | widełki płacowe | зарплатні діапазони | Owner ruling: ruling. Corpus: `salary bands`/`salary band` 6, `pay bands` 8. Product says `Vacancy pay band` (`b2b.yml:1052`) and `Banda`/`Diapazon` forms elsewhere, so `bands` is safe for the structure sense |
| **overtime** | horas extras | nadgodziny | понаднормова робота / понаднормові | PRODUCT-DERIVED after the owner flagged `надурочні` as strange |
| **employee request** | solicitud | wniosek | запит | CALL-CORPUS (304 Glyphic sales-call transcripts: 118 es / 80 pl / 68 uk, `analysis/glyphic-transcripts/`). The most-spoken product noun on every market — what an employee submits from self-service, before it enters an approval chain. es `solicitud`, pl `wniosek`, uk `запит` |
| **approval chain** | cadena de aprobación | ścieżka akceptacji 🚩 | ланцюжок схвалення | PRODUCT-DERIVED for es and uk: `cadena de aprobación` (`application-es-ES.yml:8335`, `:8343`, `:8492`, `:8562`) and uk **`ланцюжок схвалення`** (`application-uk-UA.yml:8514`, `:8522`) — the product names the chain, not the people in it, so not `ланцюжок схвалювачів`, which is what one rep said. Up to eight or nine approvers is a normal ask. The PL cell is the weak one: reps mostly say bare `akceptacja` and name `ścieżka akceptacji` only twice, and the locale carries neither |
| **job requisition** | solicitud de vacante / requisición | wniosek o rekrutację 🚩 | запит на вакансію | From the corpus: uk `запит на вакансію` 98 hits/33 calls — the best-attested recruiting term in the whole corpus. es `solicitud de vacante` 26 / `requisición` 16. The PL cell is weak: 3 hits, and reps reach for the anglicism `zarequestować` instead |
| **hiring pipeline** | embudo | lejek | воронка | From the corpus: es `embudo` 73/38 — `pipeline` (8) is call register, not copy. pl `lejek` 8, uk `воронка`. uk reps name the whole thing `цикл найму` and the stages `етапи` |
| **rejection reason** | motivo de rechazo 🚩 | powód odrzucenia 🚩 | причина відхилення | From the corpus: real concept, thin attestation — 1–2 calls per language, and the es and pl locales carry nothing. **uk is the exception and is settled:** `signing_reject_reason: Причина відхилення` (`attributes-uk-UA.yml:1239`). So the es and pl cells are the ones to confirm; uk follows the product |
| **job profile** | perfil de puesto / descripción de puesto (running prose) | profil stanowiskowy | профіль посади | PRODUCT-DERIVED for es: `previous_job_profile_effective_date: Fecha de vigencia del perfil de puesto (anterior)` (`application-es-ES.yml:2263`), so `perfil de puesto` heads the cell and `descripción de puesto` — 7 call hits — is prose. The reusable role definition carrying level and pay band, not the person's own profile and not a job ad. pl `profil stanowiskowy` (library: `katalog ról`) and uk `профіль посади` stay corpus-only, both from enterprise calls |
| **sick leave** | licencia por enfermedad | zwolnienie chorobowe (the product's own wording) / L4 / zwolnienie lekarskie (speech, and formal written copy respectively) | лікарняний | From the call corpus and the product locale. pl has **three** forms and the product picks the one reps do not: `zwolnienie chorobowe` (`b2b-pl-PL.yml:167`) is the product's wording, `L4` 39 hits/26 calls is what reps and clients say out loud, `zwolnienie lekarskie` (7) is the formal written register. Follow the product for product lines, `zwolnienie lekarskie` in formal copy, and expect `L4` in quotes and interviews. uk `лікарняний` is product-derived (`application-uk-UA.yml:2996`, `:3122`, `:7506`) |
| **absence policy** | política de licencias (the product label) / política de vacaciones (spoken register, and copy where the policy really is about holiday) | polityka nieobecności | політика відсутностей | From the product locale: which reorders what the calls suggested: the es product says `política de licencias` (`Editar la política de licencias`, `Asignar política de licencias`, `application-es-ES.yml:1860`, `:1873`), while reps say `política de vacaciones` 32 times against 6 — speech names the commonest leave type, the product names the category. pl `Polityka nieobecności` and uk `Політика відсутностей` are both product strings too (`attributes-pl-PL.yml:1351-1352`, `attributes-uk-UA.yml:1351-1352`) |
| **timesheet** | registro de horas | karta pracy | табель обліку робочого часу | From the corpus: the filled record, distinct from *time tracking* the capability. es `registro de horas` 9 hits and product-confirmed (`application-es-ES.yml:1375-1377`, `:1390`), pl `karta pracy`, uk `табель обліку робочого часу` — **uk takes the full form always, by owner decision; see that row before shortening it** |
| **self-assessment** | autoevaluación | samoocena | самооцінка | From the corpus: the half of a 180 the employee fills in. uk `самооцінка` 16/6, pl `samoocena`, es `autoevaluación` |
| **review cycle** | ciclo de evaluación (the product label) / proceso de evaluación (running prose, which is where reps put it) | cykl ocen | цикл оцінювання | From the product locale: and it fills the uk cell an earlier pass left empty. All three are product strings: es `ciclo de evaluación` (`b2b-es-ES.yml:350`, `:509`), pl `Cykl ocen` / `Cykl ocen efektywności` (`errors-pl-PL.yml:415-416`, `mailers-pl-PL.yml:322-329`), uk `цикл оцінювання` (`b2b-uk-UA.yml:352`, `:511`). `proceso de evaluación` is what ES reps say and is fine in prose |
| **evaluation template** | plantilla de evaluación | arkusz oceny | — | From the corpus: the question set an evaluator fills. pl says `arkusz oceny` — a sheet, not a template; do not back-translate it to `szablon`. No uk form attested |
| **performance score** | puntuación de desempeño 🚩 | wskaźnik efektywności | показник ефективності (copy) / Performance Score (latin, only where the line labels the product toggle) | From the corpus: CORRECTED against the written corpus the same day. The composite number, not the review event. pl `wskaźnik efektywności` is PeopleForce's own indicator and rep-attested. **The UK cell is no longer empty** — `показник ефективності` runs 10 hits/8 published articles and 5/5 in calls. Mind the collision that creates: `оцінка ефективності` (28 hits/15 articles) is this glossary's uk form for *performance review*, so the score is `показник` and the review is `оцінка`; using `оцінка` for both is the defect. `рейтинг` is taken by candidate ranking, and `тотал-скоринг` / `середня зважена` are call register |
| **competency gap** | brecha de habilidades (the organisation-level skills gap, as our articles use it) / brecha (the 360 indicator, following the product's severity grades) | luka kompetencyjna / luka kompetencji / luka (the 360 indicator, following the product's severity grades) | розрив / GAP (latin, and only where the line labels the formula the product labels `GAP` — reps voice this as `геп`, which is not a Ukrainian word and must not be written in Cyrillic) | PRODUCT-DERIVED + CORPUS, third version of this row and the first with the product in it. **Two senses, and the product only names one.** The 360 review's per-competency delta is `gap_explanation_html`, where the formula label stays latin `GAP` in all three locales and only the severity grades are translated: es `brecha crítica / moderada / insignificante` (`application-es-ES.yml:5142-5147`), pl `luka krytyczna / umiarkowana / nieistotna` (`application-pl-PL.yml:5295-5301`), uk `критичний / помірний / незначний розрив` (`application-uk-UA.yml:5294-5300`). The organisation-level skills gap is a separate, copy-only sense: es `brecha de habilidades` 8 hits/7 articles — **habilidades, not competencias**, which has zero attestation — and pl `luka kompetencyjna` 13 calls. This also retires the `ГЕП` cell an earlier pass added: the product writes `GAP` in latin, so `геп` is reps voicing a latin label, not a Ukrainian term |
| **career development plan** | plan de desarrollo | plan rozwoju (the product label) / indywidualny plan rozwoju zawodowego (formal HR register, where the full name of the instrument is the point) | план розвитку | From the product locale: all three ship the short form — es `plan de desarrollo` (`mailers-es-ES.yml:624-628`), pl `plan rozwoju` (`mailers-pl-PL.yml:621`, `:625`), uk `план розвитку` (`mailers-uk-UA.yml:627-631`). pl `indywidualny plan rozwoju zawodowego` is formal HR register from a 1,200-seat call: correct, but longer than any screen, so use it only where the full name of the instrument is the point |
| **one-on-one meeting** | reunión uno a uno / 1:1 (where the source writes the token rather than the phrase) | spotkanie jeden na jeden / 1:1 (where the source writes the token rather than the phrase) | зустріч один на один / 1:1 (where the source writes the token rather than the phrase) | From the corpus: reps in all three languages spell the phrase out rather than say `1:1` — pl `spotkanie jeden na jeden`, uk `зустріч один на один`. No conflict with the frozen-loanword list: that keeps the token `1:1` where the source writes it, this row is the phrase |
| **survey** | encuesta | ankieta | опитування | From the corpus: Pulse's object. uk `опитування` 113/31, pl `ankieta`, es `encuesta`. Keep it apart from *questionnaire* — uk holds `опитування` and `анкета` strictly separate |
| **questionnaire** | — | kwestionariusz | анкета | From the corpus: the data-collection form a new hire fills before day one — pl `kwestionariusz (osobowy)` 31/21, uk `анкета` 50/23. es reps say only the generic `formulario`, so no ES cell is recorded |
| **payroll deduction** | — | potrącenie | утримання | CORRECTED — **the ES cell said `retención` and that was my error.** Re-reading the hits, they were employee retention (`útil para el reconocimiento o retención`), and the product uses the word for data retention (`período de retención`, `application-es-ES.yml:5480`, `:9573`). Three senses, none of them payroll. So ES has no attested form for this concept — ask before choosing, and never reach for `retención`. uk `утримання` is product-derived (`Коригування — утримання`, `application-uk-UA.yml:2288`); pl `potrącenie (z wypłaty)` is corpus-only |
| **payroll run** | liquidación (Argentina only) / nómina (every other Spanish market, and any pan-regional piece) | lista płac / naliczanie wynagrodzeń | цикл розрахунку 🚩 | PER-MARKET SPLIT by bucketing the ES calls on the customer's country: **`liquidación` is Argentine and nothing else** — all 16 hits are AR calls, zero in Colombia, Mexico, Uruguay, Paraguay, Bolivia, Ecuador or the Dominican Republic. Those markets say `nómina` for the run (CO 10, UY 4, PY 4, MX 3). So the two ES cells are not synonyms in different registers, they are different markets — pick by the reader's country, and where the piece is pan-regional use `nómina`. The periodic calculation, not *payroll* the function. pl `lista płac` 4 / `naliczanie wynagrodzeń`; the uk cell is weak, reps mostly borrow (`payroll-ран`, `GROSS-цикл`) |
| **HR administration** | — | kadry | кадрове адміністрування / кадрові процеси | From the corpus: the statutory personnel-records layer — orders, applications, the P-2 card — a separate module in UA. pl calls the function `kadry`, and `kadry i płace` when paired with payroll. es has no counterpart layer |
| **talent acquisition** | talent acquisition | talent acquisition | talent acquisition | Kept latin in all three. The function, not a job title — a title built on it still keeps the English core |
| **soft skills** | soft skills | soft skills | soft skills | Kept latin in all three. uk reps also say `софт-скіли` and pair it with `харди` — speech only, do not ship either |
| **pre-onboarding** | pre-onboarding | pre-onboarding | pre-onboarding | Kept latin in all three, and it inflects: pl `pre-onboardingu`. The step before day one, distinct from onboarding — uk reps say `форма прибордингова` for its form |

## Culture and workplace

| EN | ES | PL | UK | Notes |
|---|---|---|---|---|
| **corporate culture** | cultura corporativa | kultura organizacyjna 🚩 | корпоративна культура | pl: organizacyjna, not korporacyjna |
| **work environment** | entorno de trabajo | środowisko pracy | робоче середовище |  |
| **transparency** | transparencia 🚩 | transparentność | прозорість 🚩 | pl: *przejrzystość* for transparency as a value; **`jawność wynagrodzeń` once the subject is disclosing pay** — the standard term around Directive (EU) 2023/970. 🚩 loan-versus-native register call pending |
| **wellbeing** | bienestar 🚩 | dobrostan 🚩 | добробут | UPDATED. uk is settled — see that cell. **pl is now the open half, and the measurement inverted the assumption**: `dobrostan` is the established HR-press term but it is the *thinnest* of the three forms in our own pl copy — the English loan `wellbeing`/`well-being` runs 197 hits/14 docs, `samopoczucie` 90/15, `dobrostan` 64/9. So the cell holds the least-attested candidate, the loan leads on hits and `samopoczucie` on document spread. Native call, and note it is not a straight three-way: `dobrostan` is the discipline, `samopoczucie` is how a person feels, so part of this is a sense split rather than a rivalry |
| **burnout** | burnout 🚩 | wypalenie zawodowe 🚩 | вигорання 🚩 | es keeps the English form |
| **personal development** | desarrollo personal | rozwój osobisty | особистісний розвиток |  |
| **leadership** | liderazgo 🚩 | przywództwo 🚩 | лідерство 🚩 |  |
| **relocation** | reubicación | relokacja | релокейт / переїзд (the physical move itself, and wherever the word has to inflect) | uk: **both `релокейт` and `переїзд` are house forms and the context picks** (owneron loan-versus-native pairs). Corpus: `релокейт` 110 hits/12 docs, `переїзд` 30/8. Check the sense before swapping — `переїзд` is the physical move, `релокейт` the employment arrangement around it. `релокація` was proposed and **rejected**: 5 hits/2 docs, effectively absent |
| **recognition** | reconocimiento | kudosy | кудоси / подяка | From the corpus: es `reconocimiento` 252 hits/63 calls. pl and uk name the product feature with the loanword instead and inflect it — `kudosy` 60/38, `кудоси` — while `podziękowanie` / `подяка` are the prose forms |
| **employer branding** | employer branding | employer branding | employer branding | Kept latin in all three |

## Product and system vocabulary

| EN | ES | PL | UK | Notes |
|---|---|---|---|---|
| **applicant tracking** | seguimiento de candidatos | śledzenie kandydatów | відстеження кандидатів |  |
| **time tracking** | seguimiento del tiempo | rejestracja czasu pracy (the product tab, and any line about employees logging their own hours) / śledzenie czasu pracy (where the source is about monitoring rather than the product tab) | облік робочого часу | From the corpus: `rejestracja czasu pracy` 19 hits/16 calls against `śledzenie czasu pracy` 7 — and reps use `rejestracja` for the feature because `śledzenie` reads as surveillance of the employee. Keep `śledzenie` only where the source really is about monitoring |
| **document management** | gestión de documentos | zarządzanie dokumentami | управління документами |  |
| **case management** | gestión de casos | zarządzanie sprawami | управління кейсами | The Cases module |
| **workflow** | flujo de trabajo | proces | робочий процес / воркфлоу (interchangeable with `робочий процес` — but not where the word has to agree or inflect) | All three translate: es `flujo de trabajo`, pl `proces`, uk `робочий процес` (with `воркфлоу` an equal variant — see that row). **Measure each language separately** — the three agree here, but by three different routes, and inheriting an answer across languages is what this row exists to prevent. Speech in es and uk prefers the English word; that is register and does not reach print |
| **AI** | IA | AI | ШІ / AI |  |
| **Companion (AI assistant)** | Companion 🚩 | Companion 🚩 | Companion | the product locales disagree — pl/es translate (`Towarzysz`, `Compañero`), six locales keep `Companion`; reads as translator drift, and `Towarzysz` carries communist-era *comrade* register. Keep `Companion`, flag it in the handover; owner decides |
| **job multiposting** | 🚩 | job multiposting (keep English, usually after funkcja/funkcji) | мультипостинг вакансій | handled per locale by the product: pl keeps the English (`funkcja`/`funkcji` lets the indeclinable noun sit in a case slot), uk translates, es carries neither form — genuinely open. Don't generalise across locales |
| **workflow trigger** | activación | sposób uruchomienia | тригер | pl also keeps the English "trigger" in some copy — either is established |
| **dashboard** | panel 🚩 | Pulpit (the product screen, and any line where the source says `pulpit`) / dashboard (flowing marketing copy that names no product screen) / panel (only inside an established compound the product already uses, e.g. `panel ocen`) / Strona główna (the home screen sense only, not a data dashboard) 🚩 | дашборд (marketing prose that names no product screen) / Головна сторінка (the product's home screen) / панель (inside an established compound, e.g. `панель оцінювання`) | two senses live in the product in all three targets (home page vs control panel); the sense line is a decision, not a lookup |
| **metrics** | métricas | wskaźniki 🚩 | показники 🚩 | the loans (*metryki* / *метрики*) are concentrated in a few pieces — one-writer artifacts. 🚩 whether an HR audience says the loan for a dashboard figure is a native's call |
| **report** | informe | raport | звіт | es: informe, not reporte |
| **template** | plantilla 🚩 | szablon | шаблон | es: plantilla is correct here — it is wrong for staff |
| **functionality** | funcionalidad | funkcjonalność | функціонал |  |
| **feature** | función 🚩 | funkcja | функція | es: función, not característica |
| **implementation** | implementación | wdrożenie | впровадження |  |
| **spreadsheet** | hoja de cálculo (published copy, and any non-regional register) / planilla (Río de la Plata copy and spoken register — never bare where `planilla de horas` (timesheet) could be read instead) 🚩 | arkusz kalkulacyjny / arkusze (once the surrounding copy has already established that a spreadsheet is meant) / spreadsheet (declined per Polish grammar: spreadsheeta, spreadsheetow, w spreadsheecie, and never with an apostrophe) / w Excelu / excele (conversational register only) 🚩 | таблиця | es: the two forms split by channel across both corpora. Published articles say `hoja de cálculo` 37 hits/27 articles against `planilla` 9/7; sales calls invert it, `planilla` 51/28 against 45/19. So `hoja de cálculo` is the written house form and `planilla` is what Río de la Plata speech uses — the earlier note calling `planilla` mere rep UI-narration had it backwards. `planilla` also carries a second sense (`planilla de horas` = timesheet, `planillas de sueldo` = pay sheets), so it needs the qualifier when the reader could take it either way. Which form heads the row is still an owner call. The pl guidance that used to sit in this note has moved to the pl rows where it belongs. |
| **self-service** | autogestión / autoservicio 🚩 | samoobsługa 🚩 | самообслуговування 🚩 | From the corpus: `autogestión` 31 hits/20 calls leads `autoservicio` 21/14, and it is what reps say for the employee doing things for themselves in the system. Both are correct; prefer `autogestión`. pl `samoobsługa` stands for copy even though reps say the English `self-service` on calls (25 hits against 5) — that borrowing is call register |
| **electronic signature** | firma electrónica | podpis elektroniczny | електронний підпис |  |
| **org chart** | organigrama | struktura organizacyjna (the longer form, website-preferred 21:9) / schemat organizacyjny (also in use in the product) | організаційна структура (the full form) / орг. структура (the short form, corpus-preferred 34:26) |  |
| **assets** | activos | narzędzia | активи | es/uk confirmed. pl is contradicted: the help centre says *zasoby* — *narzędzia* may be the UI label only; do not ship narzędzia until the pl locale file confirms |
| **tab (UI)** | pestaña | zakładka | вкладка | es: the product UI form; solapa is Argentine spoken register only |
| **Work type** | Tipo de trabajo | Forma współpracy | Тип роботи | From the product locale: authoritative: the `employment_type` / `work_type` field label, `config/locales/attributes.yml:45-47`. Read off the app source, not inferred |
| **Contractor** | Contratista | Contractor 🚩 | підрядник | From the product locale: one of only three seeded `employment_types` — Full-time, Part-time, Contractor (`app/services/seeds/data.yml.erb:211-232`). **There is no B2B value in the product** |
| **sole trader** |  |  | ФОП | From the corpus: 9 corpus hits, used exactly for companies contracting with sole traders. The closest real Ukrainian counterpart to the Polish `JDG` behind a B2B arrangement — but an institution in its own right, so name it only where the sole-trader status is the point, not as a translation of `B2B` |
| **B2B** |  |  |  | NOT A PRODUCT VALUE. A Polish-market contract form (`umowa B2B`), carried as a tenant-created work type or as marketing vocabulary. Keep the acronym in all four; never present it as a PeopleForce field value |
| **B2B contractor** | 🚩 NO ATTESTED FORM |  | підрядник | OWNER: **`підрядник` is the default here too**, same as the plain `contractor` row — add `на B2B` only where the arrangement itself is the point, and say `ФОП` where the sole-trader status is what the sentence is about. Earlier note: `B2B-контрактор` was a coinage AND carried the anglicism, twice wrong. That form keeps `B2B` as the acronym it is (a Polish arrangement, not a Ukrainian legal form) and uses the attested noun for the person. Where the sole-trader status is the actual point, say `ФОП` instead |
| **knowledge base** | base de conocimientos | baza wiedzy | база знань | From the corpus: corrected to the product's own plural the same day: the es-ES locale says `base de conocimientos` throughout (`attributes-es-ES.yml:2425-2430`), not the singular reps use in speech. The tenant's own article space. pl `baza wiedzy` 27/24 and `attributes` agrees, uk `База знань` (`attributes-uk-UA.yml:444`). Reps also offer `biblioteca`, which is not a product string |
| **help centre** | centro de ayuda | centrum pomocy 🚩 | довідковий центр | From the product locale: same key both locales: `help_center` → es `Centro de ayuda` (`application-es-ES.yml:3263`, and in body copy at `:3056`), uk `Довідковий центр` (`application-uk-UA.yml:3400`). PeopleForce's own public docs, **not** the tenant's knowledge base — the two must not be merged. The pl cell stays weak: reps collapse both into `baza wiedzy`, `centrum pomocy` appears once in speech and not at all in the locale |
| **employee directory** | directorio | katalog pracownika | директорія (the product screen) / довідник (a reference list inside the employee card, e.g. `довідник фізичних осіб`) 🚩 | From the corpus: es `directorio` 152/82, pl `katalog pracownika` 22/15. uk is split and unsettled — `директорія` 12 for the screen against `довідник` 9 for a reference list; hold one per piece |
| **merge field** | campos variables | pola zmienne | замінники | The placeholder a document template fills from the employee card. **uk is the only product-confirmed cell:** `Як використовувати замінники в шаблоні?` (`application-uk-UA.yml:9666`). es `campos variables` 15 hits/12 calls and pl `pola zmienne` are corpus-only — the locale files carry neither, so a native could still overrule them. Never transliterate `merge field` |
| **audit trail** | historial de cambios / registro de auditoría (prose about compliance or evidence, never as the product's label) | historia zmian | історія змін | PRODUCT-DERIVED for es and pl: es `historial de cambios` runs through the locale (`b2b-es-ES.yml:1034`, `:1049`, `application-es-ES.yml:7035`, `:7297`, `:7363`, `:7428`), pl `Historia zmian` likewise (`b2b-pl-PL.yml:1113`, `application-pl-PL.yml:7302`, `:7476`, `:7605`). So the product frames this as *history of changes* per object, not as an audit log — `registro de auditoría` is call register only (half of the 30 ES hits) and belongs in prose about compliance. uk `історія змін` is corpus-only: the uk locale has no such string |
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
| **mandate contract** | 🚩 NO ATTESTED FORM | umowa zlecenie | цивільно-правовий договір | the established English rendering of Polish `umowa zlecenie`. Gloss on first use — it means nothing to a reader without one. Per the MR-328 hr-leaders note |
| **qualified electronic signature** | firma electrónica avanzada | kwalifikowany podpis elektroniczny / podpis kwalifikowany | КЕП | PRODUCT-DERIVED and the two locales do not even use the same key: es labels it `advanced` → `Firma Electrónica Avanzada` (`attributes-es-ES.yml:646`), uk labels it `qualified` → `КЕП` (`attributes-uk-UA.yml:653`, plus `Український КЕП` at `application-uk-UA.yml:3090-3091` and `:5786`). So the tier is named for what each market's law recognises, which is why this is a separate concept from *electronic signature* — and why ES reps refuse the label `firma digital`. pl `podpis kwalifikowany` is corpus-only here; in the product the pl path is the Autenti integration by name |
| **legal entity** | entidad legal | podmiot prawny | юридична особа | From the corpus: es 34/18, uk `юридична особа` 23/9, pl `podmiot prawny` 4. Multi-entity tenants are normal in all three markets and documents are generated per entity, so the term carries weight in product copy |
| **whistleblowing channel** | canal de denuncias | narzędzie dla sygnalistów | — | **The feature has a name and it is `Safe Speak`** — on the do-not-translate list, confirmed in the pl locale where the surrounding prose is translated but the name is not (`application-pl-PL.yml:9992-9997`). So these cells describe the concept, not the button: es `canal de denuncias` 30 hits/18 calls, pl `narzędzie dla sygnalistów` with `sygnalista` at 23/21 — product-corroborated (`:5717` `przepisy UE dotyczące ochrony sygnalistów`) because the PL implementing act made firms buy tooling. No uk form: the UA market does not raise it |
| **job evaluation** | — | wartościowanie stanowisk | — | From the corpus: pl 24 hits/14 calls — grading a role to a level and a pay band, the core of PL pay-transparency readiness. Not a *performance review*, and not *job profile*. No ES or UK form: the concept does not come up in those markets |
| **pay gap** | brecha salarial | luka płacowa (copy, and the directive's own vocabulary) / luka wynagrodzeń / różnica wynagrodzeń (quoting or labelling the in-product report) 🚩 | розрив в оплаті | From the product locale: and this supersedes both earlier versions of this row: **the product ships a `gender_pay_gap` compliance report in every locale**, so no cell here needed guessing. es `Brecha salarial de género` (`application-es-ES.yml:7144-7145`, `Brecha salarial no ajustada` `:7179`, `Brecha salarial de compensación adicional` `:7191`). uk `Гендерний розрив в оплаті` (`application-uk-UA.yml:7311-7312`, `Нескоригований розрив в оплаті` `:7348`, `:7410-7411`). **The pl product does not say `luka płacowa`** — it wavers between `luka (w) wynagrodzeniach` (`:7324`, `:7349`, `:7361`) and `różnica wynagrodzeń` (`:7325`, `:7411-7414`), so the product is internally inconsistent while our copy, our reps and Polish directive practice all say `luka płacowa`. Keep `luka płacowa` for copy; match the screen when the line names the report |
| **staffing table** | — | — | штатний розпис | From the corpus: UA-specific — the approved establishment list a requisition is validated against. Only 2 calls, but structurally load-bearing in the kadrove module. No PL or ES counterpart institution |
| **personnel order** | — | — | наказ | From the corpus: UA statutory document pair — the employee files a `заява`, the company issues a `наказ`, and both are generated and signed in-product. No PL or ES equivalent document |
| **military registration** |  |  | військовий облік | From the corpus: UA-only employee-card section, a wartime requirement. Never generalise it to another market |
| **work-permit legalisation** |  | legalizacja pracownika |  | From the corpus: PL-specific — the residence-and-work-permit trail kept per foreign employee, with expiry dates that trigger workflows |
| **occupational health check** |  | badania okresowe |  | From the corpus: PL statutory periodic medical exam; a dated field that drives reminder processes. Do not flatten it to a generic medical check |
| **health and safety training** |  | szkolenie BHP |  | From the corpus: PL statutory induction training. `BHP` stays an acronym |
| **contract addendum** |  | aneks do umowy |  | From the corpus: PL — what a fixed-term extension or a pay change produces, and the trigger behind the most-cited PL workflow example |

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
| **summary** | conclusión 🚩 | podsumowanie 🚩 | Висновки (the piece argued something — the closing section draws a conclusion from it) / Підсумки (the piece listed things — the closing section recaps steps, points or takeaways) | the closing-section heading in each locale. uk: висновки and підсумки both attested as the final h2 — pick one and hold it through the piece |
| **milestone** | hito | krok milowy / 🚩 NO ATTESTED FORM | великий крок уперед / великий крок уперед (as a verb phrase — `стати великим кроком уперед для…`, not the copula `це великий крок уперед у…`) 🚩 | the figurative sense: a significant step forward. pl source is usually *krok milowy*. For a dated project checkpoint this is a different concept — see the *checkpoint* rows |
| **checkpoint 🚩** | 🚩 NO ATTESTED FORM | 🚩 NO ATTESTED FORM | 🚩 NO ATTESTED FORM | a dated control point in a process, not the figurative *milestone*. EN only — the one language where the term appears in our own copy |
| **stakeholders** | interesados 🚩 | interesariusze | стейкхолдери (🚩 NOT SETTLED) / зацікавлені сторони 🚩 | 23 corpus hits |
| **trial account** | cuenta de prueba | okres testowy / konto demonstracyjne | тестовий акаунт | PRODUCT-CONFIRMED for es: `su cuenta de prueba de PeopleForce ha terminado` (`mailers-es-ES.yml:428`) — the expiry mail, so this is the term a customer has already seen. The 14–15 day evaluation account every market offers, free and unconditional. pl reps also say `konto demonstracyjne`; the pl and uk cells are corpus-only |
| **subscription** | suscripción | subskrypcja | підписка | From the corpus: monthly or annual, and the annual one carries the 20% discount in all three markets |
| **discount** | descuento | zniżka | знижка | From the corpus: pl `zniżka` 9 against `rabat` 1 — do not prefer `rabat`. uk `знижка`, es `descuento` |
| **plan** | plan | plan | пакет / тариф | From the corpus: the Standard / Professional tier, not a project plan. es and pl keep `plan`; uk reps say `пакет` and `тариф` interchangeably. Module names stay English per the do-not-translate list |
| **quote** | cotización | — | комерційна пропозиція | From the corpus: es `cotización` 156 hits/62 calls — the most-repeated commercial noun in the ES corpus. uk `комерційна пропозиція`. pl reps promise a `cennik` instead, so no PL cell for the quote itself |
| **price list** | — | cennik | — | From the corpus: PL only. uk `тариф` names the tier, not a list, and ES reps quote (`cotización`) rather than publish one |
| **customer success** | customer success | customer success | customer success | Kept latin in all three, the role and the function alike (`Customer Success Manager` is how reps name the person on every market) |
| **contact center** | contact center | contact center | contact center | Kept latin in all three |
