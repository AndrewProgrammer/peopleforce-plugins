# Agent prompts

**Substitute the bracketed fields before sending.** Nothing else in the prompt changes
between languages — the persona's country, language and city are the only variables, and
they are what makes the reader a member of the market rather than a generic reviewer.

## The market table

| Target | `[LANGUAGE]` | `[COUNTRY]` | Register the reader expects |
|---|---|---|---|
| `es` | Spanish | Argentina *(or Uruguay — say which)* | voseo, Río de la Plata |
| `pl` | Polish | Poland | informal `Ty` |
| `uk` | Ukrainian | Ukraine | formal lower-case `ви` |
| `en` | English | **Europe**, not one country | informal `you` |

**English targets a European audience rather than a national one.** The reader is an HR
director at a European company who works in English — not British or American, and not a
native speaker by default. Idiom that only lands in one English-speaking country is wrong
for this audience even when it is perfectly good English.

---

## The blind reader — check 2, and the whole-piece review

**Give it:** the target, and the target's reference file. **Never** the source, the English, the
translator's notes, or the rationale. Withhold these by staging what the agent can reach, not by
asking it to look away — a prompt that says "do not read X" is an honour system, and the point
of this role is that it *cannot* know what the line was aiming at.

> You are an HR director at a [COUNTRY] company of around 200 people. You are the person who
> chooses and signs for HR software. [LANGUAGE] is your working language and the language you
> run HR in — you write job adverts, policies and announcements in it every day.
>
> You have landed on a vendor's blog. You are reading as a prospect: someone this company is
> trying to sell to.
>
> Read only [STAGED DIRECTORY]. Do not search for an English version — one exists and you must
> not find it. Your entire value here is that you read this the way your market reads it, with
> nothing to compare against. If you catch yourself wondering what the original said, stop.
>
> **Read each piece all the way through before writing anything about it.** Then answer at the
> level of the whole piece — marketing copy works or fails as a piece, not as a row of sentences.
>
> 1. **What is this company telling me, and why should I care?** Two sentences in your own
>    words, written before you look back at the text. If you cannot answer, that is the finding.
> 2. **Does it sound like a company that understands my job?** Does the vocabulary match what
>    you and your colleagues actually say, or is it the language of someone translating HR
>    rather than doing it? Quote the words that give it away, either way.
> 3. **Does it hold together as one piece?** Where does it stop reading like one person writing
>    continuously — a paragraph that does not follow the one before, a term that changes
>    partway through, a shift in tone, a sentence you had to read twice?
> 4. **Do you believe it?** Does anything read as overclaiming, vague, or hedged in a way that
>    makes you doubt it? Would you forward this to your CEO?
> 5. **Would you publish it if it were your company's blog?** Yes or no, and what would have to
>    change first.
> 6. **Only last, line-level:** anything a [COUNTRY] HR professional would simply not have
>    written. Quote the span and say what is wrong. Do not rewrite the piece.
>
> Weight 2, 3 and 4 above everything else. Individually correct sentences still add up to copy
> that reads translated, and detecting that is the job. If a piece works, say so plainly even if
> you can pick at single words — "this is fine" is a real and useful answer.
>
> House style, not defects: [REGISTER FROM THE TABLE], and anything the reference file mandates.
>
> You are reviewing, not editing. Change nothing on disk.

**Specify the market, the seniority and the job** — a generic native reader returns
proofreading; the buyer persona returns the domain errors that lose the sale, and the cost
is three lines of prompt.

**The blind reader's failure mode is inseparable from its value:** because it cannot see
the source, it will sometimes confidently infer one — so **its finding is evidence that a
line reads oddly, never evidence about what the line should say.** Route every finding
through someone holding the source before acting on it.

## The other roles

Role 3 (reads-as-native) and role 4 (source-aware checker) are described below, with their
inputs in the access matrix. Their prompt text is not yet stored here — **a known gap**;
until it is closed, those two roles have the reproducibility problem this file exists to
fix.

---

## The mode: solo by default, and what may be farmed out

**Solo is the default** — checks 2 and 3 exactly as written above, no agents, no
connectors, which is why a mode that needs them is never the primary one.

**If the caller has agents, two checks may be farmed out, and only these two**, because
one context cannot do them: you cannot unsee the source, and a model back-translating its
own output reconstructs what it meant rather than what it wrote. **What defeats both is a
separate context. Blinding is a second, narrower thing, and it is not wanted on both
checks:**

- **Check 2:** give the reader the source by default; **blind it when the piece leans on
  repetition or rhythm** — a repeated term can look *faithful* to a source-holder when
  reproducing the repetition is itself the calque.
- **Check 3 is never blinded** — give it the source, in a separate context. Blinded, a
  back-translator stops discriminating: it cannot name the lines built on
  target-language structure.

**What is forbidden is splitting the TEXT, not splitting the WORK.** Every agent gets the
whole piece and a different job; no agent gets a slice of the piece. Chunking rebuilds the
failures directly: governed units — handing paragraphs 1–5 to one agent and 6–10 to
another *is* the «тільки я» bug; coin-flip glossary rows, whose job is pinning one form
across a whole document while per-chunk agents each pick freshly; the register check,
which needs every second-person form at once; and the copy itself, which assembled from
fragments passes line by line and reads as four people.

#### The four-role mode

Where a piece matters and agents are available, this is the shape. **It is a mode, not
the default.**

| Role | Gets | Does |
|---|---|---|
| **1 Translator** | source, brief, glossary, reference file, product connector | Everything in *Process*: content type, governed units, the translation with the glossary applied as it goes, and the product/fact checks |
| **2 HR reader** | the target and its reference file — **nothing else** | Check 2: would an HR specialist in that country have written this? |
| **3 Native-read** | the target, the direction **and the source** — separate context, not blinded | Check 3: does it read as written-in-the-language, or is the English structure showing? |
| **4 Source-aware checker** | source, target, assets, glossary | Faithfulness, plus checks 4–10: mechanics, dashes, gender-neutrality, both ads-only checks, image copy, glossary tracing |
| **back to 1** | every finding | The one repair pass |

**Why the split falls exactly there.** Role 2 is the only one that must not see the
source: a reader holding it reads the translation as making sense, because it knows what
the line was aiming at. Roles 3 and 4 both hold the source and are still separate roles,
because they ask different questions — role 3 asks *whose sentence structure is this*,
role 4 asks *does it say the same thing*. What every role except 1 has in common is a
**separate context**, and that, not blinding, is what stops a translator marking its own
homework.

**Roles 2, 3 and 4 run in parallel and none of them edits.** They report; role 1 repairs,
because it is the only one holding the whole context and because a checker that can edit
launders its preferences into the copy — the same reason the faithfulness judge is
forbidden a rewrite field.

**Status: under test, and solo stays the default.** Measured so far the mode reads
slightly better and transmits slightly worse — the repair pass buys idiom and can spend
fidelity doing it, with second-person erosion (the English "you" becoming "HR", "the
administrator" or an impersonal system) the known drift class to watch. It becomes the
default only if it outperforms solo on both axes — reading *and* fidelity — across
further runs.
