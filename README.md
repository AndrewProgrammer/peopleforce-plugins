# PeopleForce Translation plugin

House translation system for PeopleForce content — English, Spanish (neutral Latin
American, `tú`), Polish and Ukrainian, in any direction. Ships the `translate-peopleforce`
skill (process, checks, concept-keyed glossary, per-language reference files) plus three
read-only reviewer subagents.

## What's inside

```
.claude-plugin/
  plugin.json          # manifest (name: peopleforce-translation)
  marketplace.json     # this repo doubles as a private marketplace
skills/
  translate-peopleforce/
    SKILL.md           # process + checks
    references/        # glossary.md, es.md, en.md, pl.md, uk.md, agent-prompts.md
agents/
  blind-hr-reader.md   # check 2  — target only, never the source (blinding by staging)
  native-read.md       # check 3  — target + source, fresh context, not blinded
  source-checker.md    # checks 4–10 — faithfulness, mechanics, glossary trace
scripts/
  pull-skill.sh        # re-sync skill files from the canonical copy (maintainer only)
```

The agents are the four-role mode from `references/agent-prompts.md` as installable
subagent definitions. All three are read-only (`tools: Read, Grep, Glob`) — they report,
the translator repairs. The blind reader's blinding is enforced by **staging** (give it a
directory containing only the target + reference file), not by the tool list — tool
limits cannot hide files.

## Install (private marketplace)

Push this directory to a private GitHub repo (e.g. `AndrewProgrammer/peopleforce-plugins`), then:

```bash
claude
# inside Claude Code:
#   /plugin marketplace add AndrewProgrammer/peopleforce-plugins
#   /plugin install peopleforce-translation@peopleforce-plugins
```

Private repos work with your existing git credentials (`gh auth login` or SSH).

**Team auto-install and auto-update.** Commit this to the target project's
`.claude/settings.json` — Claude Code prompts teammates to install when they trust the
folder, and `autoUpdate` is what makes new versions arrive without anyone running a
command:

```json
{
  "extraKnownMarketplaces": {
    "peopleforce-plugins": {
      "source": { "source": "github", "repo": "AndrewProgrammer/peopleforce-plugins" },
      "autoUpdate": true
    }
  },
  "enabledPlugins": {
    "peopleforce-translation@peopleforce-plugins": true
  }
}
```

**`autoUpdate` must be set explicitly.** It defaults to `true` only for official Anthropic
marketplaces; every other marketplace, this one included, defaults to **`false`**. Without
it, installs freeze at whatever version they got and a register change like the 2026-08-20
tuteo switch never reaches them.

How the refresh behaves, so nobody files a bug against it: Claude Code refreshes the
marketplace and updates installed plugins **in the background after startup, with a random
delay of up to ten minutes**. The session you are in keeps the version it launched with —
you get a prompt to run `/reload-plugins`, or the new version simply loads next launch. So
a push is visible to the team on their next session, not inside the one they have open.

Two escape hatches: `DISABLE_AUTOUPDATER` turns off all automatic updating including Claude
Code's own, and `FORCE_AUTOUPDATE_PLUGINS=1` alongside it keeps plugin updates while
freezing Claude Code.

## Try it locally without installing

```bash
claude --plugin-dir "/Users/andrewkapusta/Desktop/Work/PeopleForce Work/Skills & Translation/translate-peopleforce-plugin"
```

Skill invokes as `peopleforce-translation:translate-peopleforce`; agents appear as
`peopleforce-translation:blind-hr-reader` etc. `/reload-plugins` picks up edits.

## Shadowing — read before adopting

A project-local `.claude/skills/translate-peopleforce/` **shadows** the plugin's skill in
that project. The canonical copy in the `Skills & Translation` workspace stays authoritative
for development; any *other* machine or project should get the skill from this plugin only.
When the team adopts the plugin inside `Skills & Translation` itself, delete the local
`.claude/skills/translate-peopleforce/` copy — otherwise updates never reach that repo.

This is not hypothetical. The shadowing copy is where every edit lands, so the plugin can
sit months behind while every local run looks correct — which is exactly what happened when
`pull-skill.sh` pointed at a directory that no longer existed.

## Release flow (maintainer)

The skill is developed in the `Skills & Translation` workspace, one level up from this
repo. To cut a release:

1. There, run `python3 translation-corpus/scripts/check_skill_refs.py` — green means no
   dangling pointer and no rule stated at two sites.
2. `./scripts/pull-skill.sh` here — finds the canonical copy relative to this repo, copies
   the skill files in, and diffs `agents/*.md` against `references/agent-prompts.md` so the
   installed subagents cannot drift from the reproducible prompts.
3. Bump `version` in `.claude-plugin/plugin.json`. **Users only receive updates when this
   changes** — a push without a version bump ships nothing.
4. Commit, push. Marketplaces with `autoUpdate` pick it up on their next session; anyone
   without it pulls manually with `/plugin marketplace update peopleforce-plugins` +
   `/plugin update peopleforce-translation`.

⚠️ **Step 1 is currently one check short.** `check_glossary_sync.py` — which asserts the
glossary source still reproduces `references/glossary.md` exactly — cannot run: the source
was renamed from `translation-corpus/glossary.tsv` to `glossary.migrated` mid-migration and
seven scripts plus `glossary.md`'s own header still name the old path. The renamed file
renders (`SRC=…/glossary.migrated DEST=… python3 render_glossary_long.py`) but comes out
about 60 lines behind the shipped render, because later hand passes edited the render
directly. Until that is reconciled, **treat `references/glossary.md` as the authority and
mirror any glossary edit into `glossary.migrated` by hand** — otherwise whoever fixes the
pipeline will silently revert it.
