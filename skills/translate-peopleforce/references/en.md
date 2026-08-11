# English

English is the most common source language, so this file matters mostly for
writing *into* English — from Ukrainian or Spanish — and for recognising what to
strip when translating out.

---

## 1. Register — informal second person, for a European reader

Address the reader directly as `you`.

**The audience is Europe, not one English-speaking country.** The reader is an HR
professional at a European company who works in English — frequently not a native
speaker, and not British or American by default. Two consequences for the copy:

- **Idiom that only lands in one country is wrong here even when it is perfectly good
  English.** A phrase a Londoner reads as ordinary and a Warsaw HR director reads as
  opaque has failed, because the second one is the reader.
- **Nothing needs localising to a national market** — no British-versus-American spelling
  question to settle, no national institutions to gloss. Where a national reference is
  unavoidable, make the sentence carry it.
- **Unless the source country is the subject.** This English serves readers across Europe,
  not one country, which is exactly why an institution that *is* the topic has to stay:
  the Polish pay-transparency bill, `umowa zlecenie`, `L4`, ЄДРПОУ, Ukrainian
  military-registration duties. Keep the source market's own name for it and gloss it on
  first mention, because the reader sits in a different market. The rule above is about
  incidental national colour; generalising away the subject is the failure mode here.

**Ukrainian sources are formal** (lower-case `ви`, per `uk.md` §1). If the source reads
deferential, still write `you` — English carries the register shift down, and `you` is
correct there too.

---

## 2. Explicitation

English is on the receiving end of two opposite problems, so this section cuts
both ways: explicitation coming from the inflected languages, and *implicitation* —
dropping a distinction English does not have — going the other way.

**Polish and Ukrainian have no articles**, and both let case carry work that
English needs word order and prepositions for. Coming from either, English has to
supply what was never there:

| The source drops | English states it | Not |
|---|---|---|
| the article | `the employee lifecycle`, `a demo`, `the team` | bare nouns as subjects |
| the subject pronoun | `we help you hire` | `helps you hire` |
| fixed word order | `HR teams trust PeopleForce` | source order preserved |

**Spanish, Polish and Ukrainian also force distinctions English does not have.** If
the source marks one of these, let it go and use English's single form:

- **Aspect.** `Wypróbuj` and `Wypróbowuj` are both just *try* — a paraphrase like
  *keep on trying* would be adding a distinction English does not mark.
- **The reflexive possessive.** `swoim` / `своєю` versus `Twoim` / `вашою` is one
  word in English: *your*.
- **Formal register.** Ukrainian `ви` has no English equivalent — write *you* and
  carry any seriousness in word choice instead (§1).

**Governance across a line break inverts here** (the inverse of `SKILL.md` step 3,
which still owns which pairs count as linked and how you spot them): the governed line
arrives already marked, and English has to *drop* the marking, so the English failure is
**over-supply**. If an answer option answers a question whose English form already spends
the marking (`Who does PeopleForce show your salary data to?`), write the bare pronoun
the question leaves room for: «тільки мені» / `Tylko mnie` is `Only me` — not `Only to
me`, which re-states what the question already said, and not `Only I`, which answers a
question nobody asked.

---

## 5. Punctuation and formatting

*(No §4 — there is no anglicism question when English is the target. The gap stays so
section numbers align across all four files.)*

| Convention | Rule |
|---|---|
| Dash | see below — no count, no budget |
| En dash `–` | ranges only (`2020–2024`) |
| Quotes | `“ ”`; pick one style per piece and hold it |
| Percent | `30%` — unspaced |
| Thousands | `1,000` — comma |
| Decimal | `4.6` — period |

**Em dashes: no budget, no count, no matching the source.** Owner decision 2026-08-10 —
this replaces the previous "reported in the handover, never scored" line and any counting
rule. The only test is whether the English reads as though it was written in English.

- Do **not** count them, in the source or the target.
- Do **not** try to resemble the source's dash count. The source's punctuation is the
  source's; a Polish `–` is not a licence for an English `—`.
- Do **not** add an em dash the sentence does not need. If a comma, a colon or
  parentheses does the job, use it — those are the default, not a fallback.
- Do **not** strip one that is genuinely the right mark.

The failure mode this guards against is the machine habit of splicing clauses with dashes
because the source had a mark somewhere near. Write the sentence a native would write.

---

## 6. Structure

**Sentence case, question-led headings, and this section applying to articles only are all
set once, in `SKILL.md` step 1.** What follows is only what English adds.

Question-led headings are consistent across all four languages (`¿Qué es…`,
`Czym jest…`, `Що таке…`) — if the source heading is a question, keep it a question in
English. Common openers: `What is…`, `How to…`, `What are…`, `Why is…`.

---

## 7. Calques

Source away, read each line as an HR specialist working in English at a European company
would — someone who buys this software. Then check the calques below **against the rule,
not by ear**: they get past precisely because they are grammatical English. They are
where it happens most often, not the whole set.

**`every` / `each`.** English runs the opposite way from the other three in one slot:
in a verbless pair whose other half states a count, English wants the **singular
distributive** where Spanish, Polish and Ukrainian want a plural totality. So
`Una plataforma, todas las etapas` / `Jedna platforma, wszystkie etapy` /
`Одна платформа, усі етапи` all come into English as **`One platform, every stage`** —
not *all stages*. Everywhere else keep whatever the source had: governed by a
preposition (`for every team member`, `at every stage`) and opening a clause
(`Each module covers a different process`).

Leave these to English idiom:

| Construction | English | Not |
|---|---|---|
| time span | `monthly`, `16 hours saved every month` | `each month` mechanically |
| ratio | `three out of four employees` | `three of each four` |
| any size | `companies of any size` | `of every size` |
| reciprocal | `each other`, `compared against each other` | `between themselves` |

**Articles and possessives** arrive over-specified from the inflected languages. If a
Polish or Ukrainian phrase links nouns through case, restructure it to a bare English
noun stack: `zarządzanie cyklem życia pracownika` is `employee lifecycle management`,
where an `of`-chain would give *management of the lifecycle of the employee*.
