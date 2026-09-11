#!/usr/bin/env bash
# Installs the spellbook commands directly into ~/.claude/commands/ so they
# run as /accio, /lumos, etc. — no "spells:" namespace prefix.
#
# Copies files (doesn't symlink), so this repo can move or be deleted after
# install without breaking anything. Re-run any time to pick up updates.
set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
dest_dir="${CLAUDE_CONFIG_DIR:-${HOME}/.claude}/commands"

mkdir -p "$dest_dir"
cp "$repo_dir"/commands/*.md "$dest_dir"/

echo "Installed $(ls "$repo_dir"/commands/*.md | wc -l | tr -d ' ') spells to $dest_dir"
