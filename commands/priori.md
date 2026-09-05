---
description: Show the last spells cast — summarize recent changes
argument-hint: "[count or ref range — optional; defaults to last 20 commits]"
allowed-tools: Bash, Read
---
Cast **Priori Incantatem** over $ARGUMENTS (default: the last 20 commits).

Summarize recent history:
- the themes of what changed (features, fixes, refactors, deps)
- notable or risky commits, with hashes
- files / areas with the most churn
- anything that looks unfinished, reverted, or hastily merged

Keep it to a tight briefing someone could read before starting work. Use
`git log`, `git shortlog`, and `git diff --stat` as needed.
