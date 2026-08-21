# PeopleForce Translation plugin

House translation system for PeopleForce content — English, Spanish, Polish and
Ukrainian, in any direction. Ships the `translate-peopleforce`
skill (process, checks, concept-keyed glossary, per-language reference files) plus three
reviewer subagents.

## What's inside

```
.claude-plugin/
  plugin.json          # manifest (name: peopleforce-translation)
  marketplace.json     # this repo doubles as a private marketplace
skills/
  translate-peopleforce/
    SKILL.md           # process + checks
    references/        # the glossary, the four language files, and the
                       # conditional rule files (ads, product-screens, agent-prompts)
agents/
  blind-hr-reader.md   # reads the translation as a local HR buyer would
  native-read.md       # does it read as written-in-the-language, or translated?
  source-checker.md    # faithfulness, mechanics, glossary
```

The three agents are the optional four-role review mode. They only report findings —
the translator makes the changes. Use them when a piece is worth a second and third
opinion; a solo run is the default and needs none of them.

## Install

```bash
claude
# inside Claude Code:
#   /plugin marketplace add AndrewProgrammer/peopleforce-plugins
#   /plugin install peopleforce-translation@peopleforce-plugins
```

The repo is public — no git credentials needed to install.
Installs and `autoUpdate` follow the repo's **default branch, `main`** — that is the
release line; nothing ships from side branches.

Public here means readable, not reusable: the contents stay proprietary to PeopleForce
under the terms in `LICENSE`.

Once installed, just ask for a translation or a review — the skill picks itself up. It
also answers to `/peopleforce-translation:translate-peopleforce`.

## Team install, and keeping it current

Commit this to the project's `.claude/settings.json`. Claude Code offers teammates the
install when they trust the folder, and `autoUpdate` is what makes later versions arrive
on their own:

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

**`autoUpdate` has to be set explicitly.** It is on by default only for Anthropic's own
marketplaces — every other one, including this, defaults to off. Without it an install
freezes on whatever version it first got, and a change like the move from voseo to `tú`
never reaches that person.

Updates land **in the background shortly after Claude Code starts**, so a new version
shows up in the next session rather than the one already open. You may be prompted to run
`/reload-plugins`. Anyone without `autoUpdate` can pull on demand:

```bash
# inside Claude Code:
#   /plugin marketplace update peopleforce-plugins
#   /plugin update peopleforce-translation
```

## Holding a version

If a release misbehaves, set `"autoUpdate": false` in the snippet above (or in your own
settings) — the install then freezes on the version it has. Return to current later with:

```bash
# inside Claude Code:
#   /plugin marketplace update peopleforce-plugins
#   /plugin update peopleforce-translation
```

## One thing that can silently stop updates

A project with its own `.claude/skills/translate-peopleforce/` folder uses that copy and
ignores the plugin's. Everything looks fine — the skill works, it is just the old one. If
you want the plugin's version in such a project, delete the local folder.

The same applies to a personal copy in `~/.claude/skills/translate-peopleforce/` — check
both. Asking Claude to list its skills shows the duplicate: the plugin's copy is the one
namespaced `peopleforce-translation:translate-peopleforce`.
