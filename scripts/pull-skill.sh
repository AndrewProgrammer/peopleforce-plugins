#!/bin/bash
# Re-sync the plugin's skill files from the canonical copy in PeopleForce Content.
# Run the corpus checks there FIRST (check_glossary_sync.py, check_skill_refs.py),
# then this, then bump version in .claude-plugin/plugin.json before pushing.
set -euo pipefail

CANON="/Users/andrewkapusta/Desktop/PeopleForce Content/.claude/skills/translate-peopleforce"
HERE="$(cd "$(dirname "$0")/.." && pwd)"
DEST="$HERE/skills/translate-peopleforce"

if [ ! -f "$CANON/SKILL.md" ]; then
  echo "canonical skill not found at: $CANON" >&2
  exit 1
fi

rsync -a --delete --exclude .DS_Store "$CANON/" "$DEST/"
find "$DEST" -name .DS_Store -delete 2>/dev/null || true

echo "synced $(find "$DEST" -name '*.md' | wc -l | tr -d ' ') md files from canonical copy"

# The subagent prompts are stored twice on purpose: agents/*.md is what the plugin
# runs, references/agent-prompts.md is what makes a run reproducible. They are the
# same text, so an edit to one that misses the other puts the installs out of step —
# which is exactly what happened on 2026-08-11. Compare them here rather than trusting
# anyone to remember; the skill file wraps its copy in blockquotes, so compare the
# prose with '> ' stripped and blank lines dropped.
# Compare on normalised text, not lines: the stored copy is re-wrapped inside
# blockquotes, so a line-by-line diff reports drift on every line and tells you nothing.
python3 - "$CANON/references/agent-prompts.md" "$HERE/agents" <<'PY'
import re, sys, pathlib
prompts, agents = pathlib.Path(sys.argv[1]), pathlib.Path(sys.argv[2])
def norm(t):
    t = re.sub(r'(?m)^>[ ]?', '', t)          # unquote
    t = re.sub(r'\*\*|\*|`', '', t)           # emphasis is per-file styling
    return re.sub(r'\s+', ' ', t).strip()
stored = norm(prompts.read_text())
drift = False
for name in ('native-read', 'source-checker'):
    f = agents / f'{name}.md'
    if not f.exists():
        print(f'  MISSING agents/{name}.md'); drift = True; continue
    body = f.read_text().split('---', 2)[-1]          # drop the frontmatter
    # every sentence of the agent prompt must survive in the stored copy
    gone = [s for s in re.split(r'(?<=[.!?])\s+', norm(body))
            if len(s) > 45 and s not in stored]
    if gone:
        drift = True
        print(f'  DRIFT agents/{name}.md: {len(gone)} sentence(s) absent from '
              f'references/agent-prompts.md')
        for s in gone[:2]:
            print(f'    {s[:96]}…')
if not drift:
    print('agent prompts match the stored copies')
PY

echo "next: bump version in $HERE/.claude-plugin/plugin.json, commit, push"
