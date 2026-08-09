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

`PeopleForce`, `Recruit`, `Perform`, `Pulse`, `Core HR`, `CoreHR`, `PeopleHR`, `PeopleRecruit`, `PeoplePerform`, `PeoplePulse`, `PeopleTime`, `PeopleDesk`, `PeopleSign`, `Prospector`, `Companion`, `Safe Speak`, `job multiposting`.

These are names, not descriptions.

**`Desk` and `Time` belong on that list too**, and they are the two that need care,
because each is also an ordinary English word. The localized help centre keeps every
module heading English in Polish, Ukrainian and Spanish alike. So if the line names the
module, keep `Desk` / `Time` as they stand; if it uses the ordinary word (*time off*,
*at the front desk*), translate it normally. Neither is in the do-not-ship string list
on purpose: a list matching a bare capitalised `Time` would fail far more good lines
than bad ones.

### Acronyms

If a term is an acronym, keep it in latin script, uppercase and unexpanded — in
Polish, Ukrainian and Spanish alike. This matters most in Ukrainian, where §4's
pattern would otherwise transliterate it: write `HR`, `KPI`, `ATS` in latin letters
even in Cyrillic copy.

Two are **not** verbatim — they have per-language forms and live as glossary
rows: **GDPR** (Polish uses `RODO`) and **AI** (Spanish uses `IA`; Ukrainian uses
`ШІ` and latin `AI` interchangeably).

### English terms kept as-is in all three target languages

`officer`, `talent acquisition`, `customer success`, `contact center`, `employer branding`, `soft skills`, `pre-onboarding`, `1:1`.

A frozen loanword **still inflects**. So if a kept term lands in a slot that takes a
case ending, give it one: `onboarding` → `onboardingu`, `pre-onboarding` →
`pre-onboardingu`. Declining the loanword is what separates house copy from the
classic machine-translation tell.

**`manager` is not on that list, because it splits by script.** Ukrainian writes
`менеджер` in Cyrillic — standalone as well as inside compounds; the *hiring manager*
row and `uk.md` §4 agree. 🚩 The Polish side is genuinely open — `manager` and
`menedżer` are both current, and the *hiring manager* row does **not** settle it:
`manager ds. zatrudnienia` is a role title and licenses nothing about the bare noun.
Until a native reviewer answers, write `manager`, decline it (`managerowi`,
`managera`), and say in the handover that you did. Spanish translates *hiring manager*
outright; the row gives *líder de contratación*.

**The rows win over this list wherever they differ.**

### Vendor, competitor, platform and customer names

Keep exactly as the source writes them, capitalisation included. No list here —
it would never be complete. If a token reads like an ordinary word but names a
vendor, competitor, platform or customer, it still counts: `Lever`, `Optima`,
`robota.ua`, `enova365`.

### Personal names — the script follows the person, not the source

**If the person is Ukrainian, write the name in Cyrillic**, whatever script the source
used — `Natalia Denikeeva` → `Наталія Денікєєва`, `Kyrylo Bondar` → `Кирило Бондар`. A
Ukrainian name in Latin letters inside Ukrainian copy is the classic machine-translation
tell.

**If the person is not Ukrainian, keep their own script** — `Laima Balchune`,
`Larry O'Donoghue`, `Andrew Cetinic` stay as written. Do not invent a transliteration of
a name you would be guessing at.

**Hold one answer across the whole piece.** The defect this rule exists to prevent is a
byline in Cyrillic and a quoted executive in Latin nine lines later.

Names still inflect: a Cyrillic personal name takes the case its slot requires, and so
does the role title beside it — `вітання членам відбіркового журі: Наталії Денікєєвій…`.

**Scope: Ukrainian only** (owner decision). Polish and Spanish stay open — Polish
declines personal names and Spanish does not transliterate at all, so neither follows
from the Ukrainian answer.

## People and roles

| EN | ES | PL | UK | Notes |
|---|---|---|---|---|
| **employee** | empleado | pracownik | співробітник |  |
| **employees** | empleados | pracownicy | співробітники |  |
| **employer** | empleador | pracodawca | роботодавець |  |
| **staff** | personal 🚩 | personel | персонал | es: not plantilla, which means template |
| **staff member** | colaborador 🚩 | pracownik | співробітник | the product uses colaborador for "collaborator" |
| **workforce** | fuerza laboral 🚩 | kadra 🚩 | 🚩 | uk cell emptied by the owner — `персонал` is *staff* and already lives on the staff row. Candidates: `штат` / `кадри` / rephrasing the concept away; native reviewer picks, and says whether marketing copy needs the row at all. pl `kadra` unconfirmed |
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
| **people operations** | 🚩 | 🚩 | 🚩 | open in all three. The English is a house-style rename of HR and may not want a calque at all; uk `управління персоналом` was wrong here (`персонал` = staff). Native reviewer |
| **works council** | comité de empresa 🚩 | rada pracowników | рада працівників 🚩 | es: `comité de empresa` is the Spanish institution; Argentina's `comisión interna` is a different body with different powers — the AR/UY form needs confirming |

## Core HR

| EN | ES | PL | UK | Notes |
|---|---|---|---|---|
| **human resources** | RRHH | HR | HR | es: `RRHH`, unconditional (owner) — `RH` banned; headings may use *Recursos Humanos*; variation: *gestión de personas*. Speech evidence does not transfer to an abbreviation's written form |
| **HR management** | gestión de RRHH | zarządzanie zasobami ludzkimi | управління персоналом 🚩 | uk 🚩: the owner questions it (`персонал` = staff), but it is the standard name of the discipline and the dominant form in our own copy — pending the owner; changing it rewrites published copy |
| **HR processes** | procesos de RRHH | procesy HR | HR-процеси |  |
| **HR platform** | plataforma de RRHH | platforma HR | HR-платформа |  |
| **HR audit** | auditoría de RRHH | audyt HR | HR-аудит |  |
| **HRM system** | sistema HRM | system HRM | HRM-система |  |
| **management** | gestión | zarządzanie | управління |  |
| **hiring** | contratación | rekrutacja (the sense is finding and attracting candidates) / zatrudnianie (the sense is the act of employing — offer, terms, contract) | найм | pl split is an owner decision: candidates, adverts, pipeline → `rekrutacja`; choosing the person, terms, formalities → `zatrudnianie` |
| **hiring process** | proceso de contratación 🚩 | proces rekrutacji / proces zatrudniania 🚩 | процес найму 🚩 | pl inherits the hiring split; which sense a bare *hiring process* takes needs a native call |
| **recruitment** | reclutamiento 🚩 | rekrutacja | рекрутинг | Sourcing and attracting. Distinct from screening/selección |
| **screening** | selección 🚩 | screening | скринінг | Choosing among candidates. Distinct from recruitment |
| **onboarding** | onboarding (the named process or capability) / incorporación (flowing prose, the experience of joining) 🚩 | onboarding | онбординг | es gloss contested — open-flags 8. uk confirmed against the localized help centre |
| **onboarding process** | proceso de incorporación 🚩 | proces onboardingu 🚩 | процес онбордингу 🚩 | Prose form — same 🚩 as onboarding |
| **induction** | inducción | — | — | The first-days process specifically |
| **offboarding** | offboarding | offboarding | офбординг |  |
| **termination** | desvinculación | zwolnienie | звільнення |  |
| **performance** | rendimiento (the practice and the lifecycle stage) / desempeño (reviews and evaluations) / Performance (the product module name) | efektywność | ефективність 🚩 | pl/uk also render *efficiency*, and pl drops the lexeme at *performance review* — which sense each lexeme covers is open-flags 8b |
| **performance management** | gestión del rendimiento | zarządzanie efektywnością 🚩 | управління ефективністю 🚩 | pl/uk inherit the performance lexeme — open-flags 8b |
| **performance review** | evaluación del desempeño 🚩 | ocena okresowa 🚩 | оцінка ефективності 🚩 | uk: no house form established — our copy mostly keeps the English or uses *оцінювання*; the cell is a candidate, not settled. pl: *ocena pracownicza* and *okresowa ocena pracownika* are equally standard; bare *ocena* is the tight-layout candidate. Both open |
| **engagement** | compromiso | zaangażowanie | залученість |  |
| **employee engagement** | compromiso de los empleados | zaangażowanie pracowników | залученість співробітників |  |
| **employee experience** | experiencia del empleado | doświadczenie pracownika | досвід співробітника |  |
| **employee lifecycle** | ciclo de vida del empleado 🚩 | cykl życia pracownika | життєвий цикл співробітника | the canonical six stages each have their own row: recruitment, onboarding, talent development, engagement + retention, performance management, offboarding. Ad headlines shorten to "el ciclo del empleado" |
| **talent development** | desarrollo del talento | rozwój talentów | розвиток талантів | es: *del talento*; the graphics' *de talento* is a known error — fix on redraw |
| **feedback** | feedback (the named practice or capability) / retroalimentación (the act of giving or receiving it) / comentarios (literal survey comments — a different concept) 🚩 | feedback | зворотний зв’язок |  |
| **retention** | retención 🚩 | retencja 🚩 | утримання 🚩 |  |
| **turnover** | rotación | rotacja | плинність кадрів | uk: the full phrase, not кадрів alone |
| **absenteeism** | ausentismo 🚩 | absencja | абсентеїзм | es: ausentismo, not the Peninsular absentismo |
| **absence** | ausencia | nieobecność | відсутність |  |
| **attendance** | asistencia | obecność | відвідуваність |  |
| **time off** | licencia / ausencia 🚩 | nieobecność | відсутність | cells give the module/UI sense; prose "take time off" differs. es: the product carries both `Licencias` and `Ausencia` (`tiempo libre` is wrong) — which of the two is the house form is an open two-way pick |
| **leave** | permiso | urlop 🚩 | відпустка 🚩 | es `Permiso` confirmed against the product locales |
| **payroll** | nómina 🚩 | płace | нарахування заробітної плати | es regional split |
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
| **employee file** | legajo 🚩 | teczka pracownika | профіль співробітника | es: legajo is the market term but the product says perfil del empleado. Confirm before customer-facing use |
| **tenure** | permanencia 🚩 | staż pracy | стаж роботи | es: antigüedad in Argentine and Uruguayan copy; permanencia elsewhere |
| **headcount** | dotación 🚩 | liczba pracowników | кількість співробітників |  |

## Culture and workplace

| EN | ES | PL | UK | Notes |
|---|---|---|---|---|
| **corporate culture** | cultura corporativa | kultura organizacyjna 🚩 | корпоративна культура | pl: organizacyjna, not korporacyjna |
| **work environment** | entorno de trabajo | środowisko pracy | робоче середовище |  |
| **transparency** | transparencia 🚩 | przejrzystość (default) / transparentność (formal register) | прозорість 🚩 | pl: *przejrzystość* for transparency as a value; **`jawność wynagrodzeń` once the subject is disclosing pay** — the standard term around Directive (EU) 2023/970. 🚩 loan-versus-native register call pending |
| **wellbeing** | bienestar 🚩 | dobrostan 🚩 | добробут 🚩 | pl: *dobrostan pracowników* is the established HR-press term. uk: *добробут* confirmed; *благополуччя* is a near-even alternative — pick pending. Both flags stay |
| **burnout** | burnout 🚩 | wypalenie zawodowe 🚩 | вигорання 🚩 | es keeps the English form |
| **personal development** | desarrollo personal | rozwój osobisty | особистісний розвиток |  |
| **leadership** | liderazgo 🚩 | przywództwo 🚩 | лідерство 🚩 |  |
| **relocation** | reubicación | relokacja | релокейт 🚩 | uk: the borrowing, not переїзд |

## Product and system vocabulary

| EN | ES | PL | UK | Notes |
|---|---|---|---|---|
| **applicant tracking** | seguimiento de candidatos | śledzenie kandydatów | відстеження кандидатів |  |
| **time tracking** | seguimiento del tiempo | śledzenie czasu pracy | облік робочого часу |  |
| **document management** | gestión de documentos | zarządzanie dokumentami | управління документами |  |
| **case management** | gestión de casos | zarządzanie sprawami | управління кейсами | The Cases module |
| **workflow** | flujo de trabajo | proces | воркфлоу | each language goes its own way: es translates, pl translates (the product locale is uniform — `proces`), uk borrows. Never generalise across languages |
| **AI** | IA | AI | ШІ / AI |  |
| **Companion (AI assistant)** | Companion 🚩 | Companion 🚩 | Companion | the product locales disagree — pl/es translate (`Towarzysz`, `Compañero`), six locales keep `Companion`; reads as translator drift, and `Towarzysz` carries communist-era *comrade* register. Keep `Companion`, flag it in the handover; owner decides |
| **job multiposting** | 🚩 | job multiposting (keep English, usually after funkcja/funkcji) | мультипостинг вакансій | handled per locale by the product: pl keeps the English (`funkcja`/`funkcji` lets the indeclinable noun sit in a case slot), uk translates, es carries neither form — genuinely open. Don't generalise across locales |
| **workflow trigger** | activación | sposób uruchomienia | тригер | pl also keeps the English "trigger" in some copy — either is established |
| **dashboard** | panel 🚩 | dashboard | дашборд | two senses live in the product in all three targets (home page vs control panel); the sense line is a decision, not a lookup |
| **metrics** | métricas | wskaźniki 🚩 | показники 🚩 | the loans (*metryki* / *метрики*) are concentrated in a few pieces — one-writer artifacts. 🚩 whether an HR audience says the loan for a dashboard figure is a native's call |
| **report** | informe | raport | звіт | es: informe, not reporte |
| **template** | plantilla 🚩 | szablon | шаблон | es: plantilla is correct here — it is wrong for staff |
| **functionality** | funcionalidad | funkcjonalność | функціонал |  |
| **feature** | función 🚩 | funkcja | функція | es: función, not característica |
| **implementation** | implementación | wdrożenie | впровадження |  |
| **spreadsheet** | hoja de cálculo 🚩 | arkusz kalkulacyjny 🚩 | таблиця | pl variations: plain *arkusze* once context is set; *w Excelu* / *excele* conversational; *spreadsheetów* (no apostrophe) legal but reads startup-slang. es contested |
| **self-service** | autoservicio 🚩 | samoobsługa 🚩 | самообслуговування 🚩 |  |
| **electronic signature** | firma electrónica | podpis elektroniczny | електронний підпис |  |
| **org chart** | organigrama | struktura organizacyjna (the longer form, website-preferred 21:9) / schemat organizacyjny (also in use in the product) | організаційна структура (the full form) / орг. структура (the short form, corpus-preferred 34:26) |  |
| **assets** | activos | narzędzia | активи | es/uk confirmed. pl is contradicted: the help centre says *zasoby* — *narzędzia* may be the UI label only; do not ship narzędzia until the pl locale file confirms |
| **tab (UI)** | pestaña | zakładka | вкладка | es: the product UI form; solapa is Argentine spoken register only |

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
| **EU Pay Transparency Directive** | — | dyrektywa o jawności wynagrodzeń 🚩 | Директива про прозорість оплати праці 🚩 | es and uk forms need confirming |

## Business vocabulary

| EN | ES | PL | UK | Notes |
|---|---|---|---|---|
| **business** | negocio 🚩 | biznes 🚩 | бізнес 🚩 | es: empresa where it means the company |
| **organization** | organización | organizacja | організація |  |
| **growth** | crecimiento | wzrost (business or metric growth) / rozwój (personal or career growth — then collides with development) | зростання | pl rozwój collides with development — check context |
| **efficiency** | eficiencia | wydajność 🚩 | ефективність 🚩 | pl and uk overlap with performance here — check context, and see the performance row |
| **cost** | costo 🚩 | koszt | витрати | es: costo, not coste |
| **pricing** | precios | cennik | ціноутворення |  |
| **guide** | guía 🚩 | przewodnik 🚩 | посібник 🚩 |  |
| **tip** | consejo | wskazówka | порада |  |
| **summary** | conclusión 🚩 | podsumowanie 🚩 | висновки / підсумки | the closing-section heading in each locale. uk: висновки and підсумки both attested as the final h2 — pick one and hold it through the piece |
