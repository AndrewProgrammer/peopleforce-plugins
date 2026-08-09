# PeopleForce Translation plugin

House translation system for PeopleForce content — English, Spanish (Río de la Plata),
Polish and Ukrainian, in any direction. Ships the `translate-peopleforce` skill (process,
checks, concept-keyed glossary, per-language reference files) plus three read-only
reviewer subagents.

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

**Team auto-install:** commit this to the target project's `.claude/settings.json` —
Claude Code prompts teammates to install when they trust the folder:

```json
{
  "extraKnownMarketplaces": {
    "peopleforce-plugins": {
      "source": { "source": "github", "repo": "AndrewProgrammer/peopleforce-plugins" }
    }
  },
  "enabledPlugins": {
    "peopleforce-translation@peopleforce-plugins": true
  }
}
```

## Try it locally without installing

```bash
claude --plugin-dir "/Users/andrewkapusta/Desktop/PeopleForce Content/translate-peopleforce-plugin"
```

Skill invokes as `peopleforce-translation:translate-peopleforce`; agents appear as
`peopleforce-translation:blind-hr-reader` etc. `/reload-plugins` picks up edits.

## Shadowing — read before adopting

A project-local `.claude/skills/translate-peopleforce/` **shadows** the plugin's skill in
that project. The canonical copy in `PeopleForce Content` stays authoritative for
development; any *other* machine or project should get the skill from this plugin only.
When the team adopts the plugin inside `PeopleForce Content` itself, delete the local
`.claude/skills/translate-peopleforce/` copy — otherwise updates never reach that repo.

## Release flow (maintainer)

The skill is developed in `PeopleForce Content` (glossary renders from
`translation-corpus/glossary.tsv` + `glossary-preamble.md`). To cut a release:

1. In `PeopleForce Content`: `python3 translation-corpus/scripts/check_glossary_sync.py`
   and `python3 translation-corpus/scripts/check_skill_refs.py` — both green.
2. `./scripts/pull-skill.sh` here — copies the canonical skill files in.
3. Bump `version` in `.claude-plugin/plugin.json` — users only receive updates when this
   changes.
4. Commit, push. Users pull with `/plugin marketplace update peopleforce-plugins` +
   `/plugin update peopleforce-translation`.
