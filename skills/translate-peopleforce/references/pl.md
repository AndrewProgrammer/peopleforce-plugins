# Polish

## 1. Register — informal

Address the reader as **`Ty`**. Capitalise `Ty`, `Twój`, `Ci` when addressing the
reader directly.

Second-person imperatives are standard: `Zarezerwuj`, `Sprawdź`, `Pobierz`,
`Wypróbuj`, `Umów`, `Dowiedz się`.

This matches English and Spanish. **Ukrainian is formal** — watch the shift when
translating PL↔UK.

---

## 2. Explicitation

English and Spanish strip words Polish has to state, so a word-for-word render
comes out grammatical and foreign; short copy is where it shows. A Ukrainian source
already marks aspect and case, so from UK those two carry across — check them rather
than rebuilding them.

**Possession does not carry across from Ukrainian.** Ukrainian writes non-reflexive
`ваш` by house rule, so it gives no signal for the reflexive choice Polish needs. If
the source is Ukrainian, rebuild `swój` from the sentence's own logic.

**Gender.** Polish marks gender in the **finite past and in predicate adjectives, and
nowhere else** — present, future, infinitive, imperative, dative experiencer and possessive
are all gender-free with the reader still in the line. Even `Pan/Pani` is gendered, so
there is no formal escape. That narrow scope is the whole point: the fix is to leave the
finite past, **not** to remove the reader.

So if a line would put the reader in the past tense or a predicate adjective, use one
of these — **and check the condition on each, because two of them change what the sentence
says**:

| Escape | Use it when | The trap |
|---|---|---|
| **Verbal noun**, or a possessive on one — `Twoje zatwierdzenia: trzy wnioski` | always available; the safest option | none |
| **Dative experiencer** — `udało Ci się skonfigurować` | the reader did something and you want to say so | demotes the reader grammatically, nominative to dative; the meaning is intact |
| **Present-tense state** — `Nie masz jeszcze uzupełnionego profilu` | reporting a state rather than an act | the act becomes agentless — the actor moves to *nobody*, which is usually fine for a nudge |
| **Imperative** — `Uzupełnij profil` | you actually want a command | **changes the speech act.** A statement becomes an instruction. Gender-clean and short, but it is different copy — a decision for whoever owns the line, not a silent substitution |
| **Past tense on us** — `Zapisaliśmy Cię` | **only when the PRODUCT did the acting** | **reassigns agency, and is a FALSE STATEMENT when the reader is the actor.** `Zatwierdziliśmy trzy wnioski` claims we approved them — applied to a reader-as-actor line it reads as good Polish and fails faithfulness as a mistranslation |

That last row is why this is a conditional list, not a menu: the gender rule never
forces the agency change, and the imperative is one escape among five, not the default.
🚩 Masculine-personal plural agreement (`pracownicy zalogowali się`) has no neutral form
at all; avoid the construction, say so in the handover, and see
`translation-corpus/open-flags.md` — a native reviewer has to confirm what is acceptable
in marketing register.

**Case and gender are governed across a line break, not only inside a sentence** — the
rule is `SKILL.md` step 3; what is Polish is the forms. The English answer `Only me` is
invariant; the Polish one is not: `Tylko mnie` under `Komu PeopleForce pokazuje…?`,
never `Tylko ja`. A subhead agreeing with a headline's noun takes `Jedna platforma.` →
`Stworzona`, not `Stworzony`.

| The source drops | Polish states it | Not |
|---|---|---|
| the verb's aspect | `Wypróbuj` for a one-off act, `rozwijaj` for an ongoing one | `Wypróbowuj`, `rozwiń` |
| that the subject owns the thing | `Zarządzaj swoim zespołem` | `Zarządzaj Twoim zespołem` |
| the case links in a noun stack | `zarządzanie cyklem życia pracownika` | bare nominatives |

Aspect is the one an English or Spanish source gives no signal for at all — each has
a single *try* and Polish makes you choose. **Meaning picks it, not the fact that it's a
CTA:**

- **Perfective** for a single completed act — `Wypróbuj`, `Zarezerwuj`, `Pobierz`,
  `Dowiedz się`. This is why §1's established imperatives are perfective.
- **Imperfective** for something ongoing or habitual — a verb list like
  `zatrudniaj, wdrażaj, rozwijaj, zatrzymuj` is right, because those name
  continuing activities, not one action to complete.
- **Imperfective after a negation, always** — `Nie zarządzaj`. A perfective negated
  imperative such as `Nie zarządź` is not a form Polish has.

`swój` vs `Twój` is the other frequent slip — English has only *your* and Spanish only
*tu*, so translators reach for `Twój` where Polish wants the reflexive. Capitalised
`Twój` is correct when the reader owns something the sentence is *about*, not when they
are the one acting on it.

**And the step before that choice: an English possessive often has no Polish counterpart
at all.** Polish does not mark possession obligatorily, and supplying one where the
relationship is already obvious is itself a calque:

- If the possessor is obvious from the verb or the context, **drop the possessive** —
  `zmienisz zdanie`, not `zmienisz swoje zdanie`.
- If dropping it would leave the owner genuinely ambiguous, keep it — and only then
  does the `swój` / `Twój` choice apply.

Dropping is the default: the test is whether a Polish reader would have written it
unprompted. A dropped possessive is often also the cleanest way to keep the reader out
of a predicate adjective.

---

## 3. HR terminology

When the source says *HR*, *human resources*, *RRHH* or *кадри*, pick the Polish form
by which sense is meant — the sense decides, and the default is the short form:

- if the sense is the function or the department, then `HR` / `dział HR` — the
  established default
- if the sense is personnel records and administration specifically, then `kadry`
- if the slot needs the formal discipline name, then `zasoby ludzkie` — it reads
  bureaucratic, so that slot is where it belongs

---

## 4. Anglicism policy

Polish keeps noticeably more English than Spanish does. Established as-is:

`onboarding`, `offboarding`, `ATS`, `OKR`, `KPI`, `HRIS`, `HRMS`,
`feedback`, `1:1`, `AI`, `ChatGPT`, `screening`.

*workflow* is **not** on that list — Polish translates it: `proces` (the product locale
renders it that way uniformly; Ukrainian is the language that borrows it — see the
glossary's *workflow* row). 🚩 *well-being* is not on it either: the glossary cell is
`dobrostan`, the established term across Polish HR press; the loan-versus-native
register call stays with a native reviewer.

For *payroll* and *compliance* the glossary lexemes win (*płace*, *zgodność*) — the
English words circulate in Polish HR speech, but the house copy translates them.
🚩 *performance* → `efektywność`, and `wydajność` renders *efficiency* (output volume,
against results-per-resources). Which of the two senses each lexeme covers awaits a
native call — open-flags 8b; at *performance review* Polish drops the lexeme entirely
(`ocena okresowa` and `ocena pracownicza` are both live).

**Each language's anglicism policy stands on its own.** Target Polish → this file;
target Spanish → `es.md`. *dashboard* (Polish keeps it) against *workflow* (Polish
translates it, Ukrainian borrows it) shows the pattern: per-word, per-language,
checked — never generalised from a neighbouring word.

---

## 5. Punctuation and formatting

| Convention | Rule |
|---|---|
| Quotes | **`„ ”`** |
| Dash | **`–` (en dash)** — the Polish myślnik. Any dash that survives is written this way |
| Percent | `30%` — unspaced |
| Thousands | **`1 000`** — space |
| Decimal | `4,6` — comma |

The only Polish-specific part is the glyph: if a dash survives into Polish, write the
myślnik `–`. The dash count is reported in the handover, never scored.

---

## 6. Structure

**Sentence case, question-led headings, and this section applying to articles only are all
set once, in `SKILL.md` step 1.** What follows is only what is Polish.

Polish question openers: `Czym jest…`, `Jakie są…`

Comparison and "alternatives" articles follow a fixed skeleton, most rigidly in
Polish:

`Czym jest X` → `Najważniejsze funkcje` → `Cennik` → `Oceny użytkowników`

If the content is a comparison or "alternatives" article, preserve that skeleton
and close with `Podsumowanie`.

---

## 7. Calques

Source away, read each line as an HR specialist in Warsaw would — someone who buys this
software. Then check the calques below **against the rule, not by ear**: they get past
precisely because they are grammatical Polish. They are where it happens most often, not
the whole set.

**`każdy`.** Keep it wherever the source has a distributive: governed by a preposition
(`dla każdego pracownika`, `na każdym etapie`, `w każdym z sześciu modułów`) and when
it opens a clause (`Każde państwo członkowskie UE definiuje własne sankcje`). Only one
case takes a plural instead — a verbless pair whose other half states a count, where
the point is one-against-many: `Jedna platforma, wszystkie etapy`, not `każdy etap`.

Leave these to Polish idiom, they are not distributives:

| Construction | Polish | Not |
|---|---|---|
| time span | `co miesiąc`, `miesięcznie` | `każdy miesiąc` |
| ratio | `trzech na czterech pracowników` | `z każdych czterech` |
| reciprocal | `ze sobą`, `pomagajcie sobie` | `każdy drugiemu` |

On time span, the condition decides: a rate or a recurrence takes the adverbial
(`co miesiąc`, `miesięcznie`); counting one specific month, the distributive is right.

**One named exception, and it runs the other way.** If the source says *of any size*,
write `firmy każdej wielkości` — a slot where Polish keeps `każdy` and Spanish and
English drop it (`empresas de cualquier tamaño`, `companies of any size`).
🚩 Awaiting native confirmation that this is the idiom; do not generalise from it.

**Aspect and `swój`** are the other two silent calques — see §2.
