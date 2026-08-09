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
echo "next: bump version in $HERE/.claude-plugin/plugin.json, commit, push"
