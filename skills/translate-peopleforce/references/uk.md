# Ukrainian

## 1. Register — formal, lower-case `ви`

**Ukrainian is the only one of the four languages that addresses the reader
formally.** Use `ви` and its forms, **lower case**: `ви`, `ваш`, `вашої`. The
site sets this convention ("Розумійте вашу команду", "Ціни, що враховують ваші
потреби"), and capitalising mid-sentence reads like correspondence, not marketing.

**Holding `ви` also keeps the copy gender-neutral, at no cost.** Formal `ви` takes
plural agreement, and the plural past carries no gender marking — so the mandated
register is the neutral one. Ukrainian gets for free what Polish has to work around.

English, Spanish and Polish marketing copy are all informal. **Translating into
Ukrainian means shifting register up; translating out of Ukrainian means shifting
down.** Carrying the source's register across produces copy that reads either
rudely familiar or stiffly distant, which is the most common way a Ukrainian
translation goes wrong.

---

## 2. Explicitation

English and Spanish strip words Ukrainian has to state, so a word-for-word render
comes out grammatical and foreign; short copy is where it shows. A Polish source
already marks aspect and case and supplies the relative pronoun with its comma, so
from PL those carry across — check them rather than rebuilding them.

**Case and gender are governed across a line break, not only inside a sentence** — the
rule is `SKILL.md` step 3, along with the «тільки я» failure it came from. What is
Ukrainian is the forms. The English answer `Only me` is invariant; the Ukrainian one is
not: `Тільки мені` under `Кому PeopleForce показує…?`, never `Тільки я`. A subhead
agreeing with a headline's noun takes `Одна платформа.` → `Створена`.

| The source drops | Ukrainian states it | Not |
|---|---|---|
| the verb's aspect | `Спробуйте` for a one-off act, `розвивайте` for an ongoing one | `Пробуйте`, `розвиньте` |
| the relative pronoun, and the comma before it | `інструменти, які потрібні вашій команді` | `інструменти потрібні команді` |
| the case links in a noun stack | `управління життєвим циклом співробітника` | bare nominatives |

Aspect is the one an English or Spanish source gives no signal for at all — each has
a single *try* and Ukrainian makes you choose. **Meaning picks it, not the fact that
it's a CTA** — the same rule as Polish, so it carries across PL↔UK unchanged:

- **Perfective** for a single completed act — `Спробуйте`, `Забронюйте`,
  `Дізнайтеся`. Most CTAs are this, which is why the perfective looks like the
  default.
- **Imperfective** for something ongoing or habitual — a verb list like
  `наймайте, адаптуйте, розвивайте, утримуйте` is right, because those name
  continuing activities, not one action to complete.
- **After a negation, imperfective** — `Не управляйте`. A negated perfective reads
  as a warning about an accident (*не впадіть* — don't fall), which is almost never
  what the copy means.

The site's own copy shows the comma pattern — *«Ціни, що враховують ваші
потреби»*. English relative clauses arrive with neither the pronoun nor the comma;
Spanish brings *que* but no comma. Add whatever the source is missing.

**In an imperative, the possessive is `ваш`.** If an imperative needs a possessive,
write `ваш` and leave it there — the site does exactly this (*«Розумійте вашу
команду»*), so the non-reflexive form is the house form and needs no adjusting.

**`відсутність` is the system's noun, not a word you put in a sentence about a person.**
The product records a `відсутність`; a human takes a `вихідний` or a `відпустка`. Ukrainian
therefore renders *time off* and *leave* as **verb phrases rather than as single nouns**, and
the noun the system uses is the one that must not appear in them:

| The source says | Write | Not |
|---|---|---|
| request time off | `оформити вихідний`, `подати заявку на вихідний` | `оформити відсутність` |
| take a day off | `взяти вихідний` | `взяти відсутність` |
| take leave / annual leave | `взяти відпустку`, `оформити відпустку` | |
| days off, time-off balance | `вихідні`, `залишок днів відпустки` | |
| the record, policy or calendar | `відсутність`, `політика відсутностей` | |

`вихідний` runs 105 hits/22 docs and `день відпустки` 16/6, so the noun is what our copy
writes; the bare verb phrases are thinner (`взяти відпустку` 5, `взяти вихідний` 3) and
belong to speech more than to print. The distinction that matters: `відпустка` is the
counted entitlement, `вихідний` is a single day away.

**English `the same` is two different words in Ukrainian, so the source cannot tell you
which.** Identity — one and the same thing — is `той самий`. Similarity — another one like
it — is `такий самий` or `однаковий`. Decide from what the sentence actually refers to:

| The source says | Write | Because |
|---|---|---|
| the same checklist (one document, reused) | `той самий чек-лист` | there is one checklist |
| the same first week (each new hire has their own) | `такий самий перший тиждень` | `той самий` would claim one literal week everybody shares |
| the same result (matching, not shared) | `однаковий результат` | two results that match are not one result |

**Identity is the unmarked default** — `той самий` runs 138r/14p across 56 calls against
`такий самий` 20r/0p in 15, about 7:1 — so it is right more often than not, and wrong
exactly where the source means *a similar one*. That makes it a judgement per sentence and
**never a find-and-replace**: an arm wrote `той самий перший тиждень` and so claimed a
single week shared by every hire. 🚩 three list items in published copy await a native read.

---

## 4. Anglicism policy

Ukrainian **transliterates** borrowings into Cyrillic where Polish keeps them in
latin script. That is the sharpest divergence between the two files, so if the target
is Ukrainian, take the policy from here rather than from `pl.md`.

That is a description, not a licence. A borrowing is the house form once it passes the three
tests below.

**Test 1 — document spread beats hit count.** Count the articles a form appears in, not
the times it appears. A form with hundreds of hits across three or four documents is one
writer's habit; a form spread across dozens is house usage. This is the test that matters,
and it is the one that caught `воркфлоу`, which looked safe on raw hits.

**Test 2 — the form must decline.** An indeclinable transliteration that forces an
arbitrary singular agreement (`воркфлоу, що стоїть за ним`) is a defect even when it is
frequent. If the loan cannot inflect where the sentence needs it to, write the Ukrainian
form.

**Test 3 — a word the corpus stops to explain needs a look, not an automatic pass.** If the
attestations gloss the term (`Розберемо, що таке абсентеїзм`, `під абсентеїзмом
розуміють…`), the writer did not assume the reader knew it — so a high hit count may be one
explainer article repeating its own subject. Check what the hits actually are before treating
the number as usage. This flags a term for a decision; it does not settle it. `абсентеїзм`
was reviewed on exactly this evidence and **kept**: a term of art is
still the right word in professional HR copy, and glossing it on first mention is normal.

If a borrowing has no attested Ukrainian form and no native rival, **flag the gap — do not
coin a transliteration** on the strength of the pattern.

**Where both a loan and a Ukrainian rival are attested, both are house forms and the
context picks.** Neither one is the default and neither is a
defect, so **leave whichever form a piece already carries** and choose per sentence in new
copy, then stay consistent inside the piece.

What makes the context pick:

- **Does the word have to inflect or agree?** Take the Ukrainian form. This is where an
  indeclinable loan breaks (`воркфлоу, що стоїть за ним`).
- **Is the line a UI label, a heading or a chip?** The loan is usually shorter and is what
  the reader sees on screen.
- **Is the sentence about the statutory or the discretionary version of the thing?** That
  is a sense split, not a style choice — see `бенефіти` below.

Measured over the 180-document uk-UA corpus:

| Loan | hits / docs | Ukrainian rival | rival hits / docs | Notes |
|---|---|---|---|---|
| `рекрутинг` | 915 / 81 | — | | no rival — the loan |
| `онбординг` | 767 / 63 | — | | no rival — the loan |
| `офбординг` | 151 / 16 | — | | no rival — the loan |
| `воркфлоу` | 240 / 25 | `робочий процес` | 300 / 57 | both. Prefer `робочий процес` where the word must agree or inflect — the loan is indeclinable, and three of four source-blind native passes flagged it for that. Short form `процес` once context has fixed which process |
| `релокейт` | 110 / 12 | `переїзд` | 30 / 8 | both, but check the sense: `переїзд` is the plain physical move, `релокейт` the employment arrangement |
| `дашборд` | 87 / 21 | `панель` | 20 / 5 | both |
| `скринінг` | 84 / 11 | `відбір` | 39 / 9 | both |
| `бенефіти` | 113 / 20 | `пільги` | 179 / 22 | both, and the split is by sense — see the glossary's `employee benefits`/uk row |
| `абсентеїзм` | 119 / 4 | `прогул` | 69 / 12 | both, and the loan is a term of art: **gloss it on first mention**. Sense split and the concentrated count are on the glossary's `absenteeism` row |
| `тригер` | 39 / 4 | — | | 🚩 four documents. Attested, but too concentrated to call house usage |

Staying latin: **acronyms** — the glossary's do-not-translate list, kept latin even
inside Cyrillic copy — and product, brand and customer names. `AI` and `ШІ` are
interchangeable — neither is the default.

Corpus-measured, replacing an earlier derived policy: the ten forms are now
attested rather than inferred, and the policy is a **test** rather than a description of
what the glossary happens to do. That was the flag's actual complaint, and it is answered —
so extend the pattern to a new borrowing by **running the three tests**, not by pointing at
this list. One 🚩 remains, and it is about concentration rather than about which word is right.

---

## 5. Punctuation and formatting

| Convention | Rule |
|---|---|
| Primary quotes | **`« »`** |
| Secondary quotes | `„ ”` — nested quotes only |
| Apostrophe | `’` (as in *п’ять*, *об’єкт*) |
| Percent | `30%` — unspaced |
| Thousands | **`1 000`** — space |
| Decimal | `4,6` — comma |

Quote marks are the target's own: whatever shape the source used, set `« »` in
Ukrainian, and `„ ”` for a nested quote inside it.

### Punctuation around a quotation, and the colon before it

**The sentence-final period goes AFTER the closing guillemet, not inside it.** English
puts it inside; Ukrainian does not. So `…не має бути гадання».` and never
`…не має бути гадання.»`

**`?`, `!` and `…` are the exception — those stay inside**, because they belong to the
quoted sentence rather than to the one carrying it: `«Скільки це коштує?» — запитала
вона.` Where a quotation ending in `?` or `!` closes the carrying sentence, it takes no
additional period.

**An attribution before direct speech ends in a colon, not a full stop.** Write
`Марія, HR-директорка Nova Post: «…»` — a full stop there leaves the quotation standing
as an orphan paragraph with nothing linking it to the speaker.

**Where the attribution follows the quote, a comma sits after the closing guillemet,
before the dash:** `«Ми нарешті бачимо тиждень наперед», — каже Марія.` The comma is not
optional. The exception is the same one as above — a quote ending in `?`, `!` or `…`
keeps that mark inside the guillemets and takes **no** comma: `«Скільки це коштує?» —
запитала вона.`

**Settled in `SKILL.md`'s register check:** the house register governs how the
copy addresses **the reader**, not how a quoted person speaks about themselves. Inside an
attributed quotation a real person describing their own experience takes `я / ми`. Two
independent arms put `ви / ваш` inside a named customer's testimonial, and the register
check as previously worded argued for it — which is why the carve-out now sits on the check
itself rather than here.

**What is still open** is narrower and it is not a Ukrainian question: whether the **English
source** should be writing testimonials in the second person at all. Where it does, translate
the person's own voice and say so in the handover.

### The copula тире is grammar

Ukrainian drops the present-tense "is", so an omitted copula (*«Це — наш підхід»*) and
a definition sentence (*X — це Y*) have no correct dash-free form. If a sentence omits
the copula, write the тире.

If you are reaching for a dash for style rather than for the copula, use a comma,
a colon, or split the sentence.

---

## 6. Structure

**Sentence case, question-led headings, and this section applying to articles only are all
set once, in `SKILL.md` step 1.** What follows is only what is Ukrainian.

Ukrainian question openers: `Що таке…`, `Чи може…`

If the content is a comparison article, use the conventional explicit
`Плюси:` / `Мінуси:` blocks.

For the closing heading, take the form from the glossary's *summary* row: `висновки`
and `підсумки` are both attested as the final h2 — either is correct, so pick one and
hold it through the piece.

---

## 7. Calques

Source away, read each line as an HR specialist in Kyiv would — someone who buys this
software. Then check the calques below **against the rule, not by ear**: they get past
precisely because they are grammatical Ukrainian. Of the four languages this is where
calques bite hardest — the list is where it happens most often, not the whole set.

**`кожен`.** Keep it wherever the source has a distributive: governed by a preposition
(`для кожного члена команди`, `на кожному етапі`, `у кожному з шести модулів`) and when
it opens a clause (`Кожна метрика має свою розрахункову формулу`). Only one case takes
a plural instead — a verbless pair whose other half states a count, where the point is
one-against-many: `Одна платформа, усі етапи`, **not** `кожен етап`. Bare nominative
with nothing governing it is exactly where the English structure slides through intact.

Leave these to Ukrainian idiom, they are not distributives:

| Construction | Ukrainian | Not |
|---|---|---|
| time span | `щомісяця`, `щосекунди` | `кожного місяця` as a default |
| numeral above one | `кожні шість місяців` | `кожен шість` |
| ratio | `троє з чотирьох співробітників` | `з кожних чотирьох` |
| reciprocal | `між собою`, `одне одному` | `кожен одному` |

**Aspect and the relative pronoun with its comma** are the other two silent calques —
see §2.

**`у той самий час` as a connective is English *at the same time* in Ukrainian clothing.**
Where the source uses it to mean *meanwhile* or *however* — pivoting to a contrasting point
rather than saying two things happened simultaneously — write **`водночас`** or `при цьому`.
Reserve `у той самий час` for genuine simultaneity. Found in published copy
(*«Але у той самий час менеджери не задумуються…»*), where the sentence is contrasting, not
timing anything.

**Bookish words that pass the grammar check and fail the ear.** A word can be correct,
dictionary-attested and still not something a Kyiv HR specialist says. Test the
collocation, not the word: if the pairing describes ordinary work, the word has to be
ordinary too.

| If the source says | Write |
|---|---|
| `milestone` / `krok milowy` / `hito` | `великий крок уперед` — `важливий крок` where the canvas will not take the full phrase, and `переломний момент` only where the source really means a turning point |
| `contractor` / `kontraktor` / `B2B contractor` | **`підрядник`** — the default for all three. Add `на B2B` only where the arrangement itself is the point, keeping `B2B` as the foreign term it is |
| the sole-trader status itself, where that status is what the sentence is about | `ФОП` |
| `workflow` / `proces` | `робочий процес`, or bare `процес` once the context has established which process. `воркфлоу` is a house form too (§4) — but where the word has to agree or inflect, take the Ukrainian one, because the loan is indeclinable and forces an arbitrary agreement (`воркфлоу, що стоїть за ним`) |

The tell is a word that marks an era sitting in a sentence about an ordinary working
month.

**Do not nominalise a bare neuter adjective.** English *what matters* and Polish
`na to, co ważne` both compress comfortably; Ukrainian does not. Write the relative
clause out, and note the predicate goes to the impersonal `важливо`, not the adjective:

| Not | Write |
|---|---|
| `звільняє час на важливе` | `звільняє час на те, що справді важливо` |
| `focus на головне` | `зосередитися на тому, що справді має значення` |

The tell is a preposition followed
directly by a neuter adjective with no noun and no `те, що`. Adjective-plus-noun
(`важливе питання`) and predicative use inside an existing relative clause
(`те, що для неї важливе`) are both fine — the defect is only the bare nominalisation.

---

## 8. Two English words, one Ukrainian word

`employee` and `staff member` both go to **`співробітник`**. This is deliberate, not a
table error: English routinely distinguishes where Ukrainian does not, and dropping a
distinction the target lacks is correct behaviour. Polish does the same thing with
`pracownik`, for the same reason.

So do not hunt for a second lexeme. Where a piece genuinely needs the two senses apart,
**the construction carries it, not the noun**:

| Sense | Write |
|---|---|
| the person as a member of your company | `наш співробітник`, `співробітники компанії` |
| one individual picked out of the group | `один із співробітників`, `окремий співробітник` |
| the group as a body | `команда`, or the `workforce` row's `працівники` |

Do not reach for `персонал` to break the tie — it is the `staff` cell and carries its own
row, and it is rare in speech (16r/5p). Recorded after this pattern was
raised as an open cell.

---

## 9. Long and short forms

Where English has one term and Ukrainian needs a long form in prose but a short one in a
heading, chip or repeat mention, **the short form has to be an ellipsis of the long one —
the same head noun with the modifier dropped.** A different head noun is a different
concept, not a shortening.

**`performance review`.** Full `оцінка ефективності`; short **`оцінка`** on second mention,
in headings and in tight layouts (`цикл оцінки`). Both share the head `оцінка`, so the
short form is a true ellipsis.

**`оцінювання` is a different head and a wider concept**, so it does not ellipse the same
way. Our copy uses it for candidate assessment as much as performance (`критерії
оцінювання`, `платформи оцінювання`, `оцінювання навичок`) — dropping its complement moves
the referent to assessment-in-general rather than shortening *performance review*. Keep it
for that generic sense, where it is the right word.

`перформанс-ревю` is attested in speech (44r/8p across 11 calls) and stays there — spoken
register, not published copy.
