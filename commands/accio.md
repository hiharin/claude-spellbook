---
description: Summon it — find where a symbol, file, or config lives
argument-hint: "<name or thing to find>"
allowed-tools: Read, Grep, Glob, Bash
---
Cast **Accio** for: $ARGUMENTS

Locate it in the codebase:
- the definition (`file:line`) and every call site / usage
- for config or env vars: where it's read, where it's set, its default
- for a feature or behavior: the entry point and the files that implement it

Report as a short list of `file:line` with a phrase of context each. Lead with
the single most likely answer. Don't change anything.
