---
description: Reveal what's hidden — secrets, TODOs, dead code, risky deps
argument-hint: "[path — optional; defaults to the whole repo]"
allowed-tools: Read, Grep, Glob, Bash
---
Cast **Revelio** on $ARGUMENTS (default: the whole repo).

Surface things that are easy to miss:
- hardcoded secrets, API keys, tokens, passwords, connection strings
- `TODO`, `FIXME`, `HACK`, `XXX`, and commented-out code left behind
- unreachable / dead code and unused exports
- `console.log` / `print` / debugger statements shipped by accident
- dependencies that look unmaintained, duplicated, or pinned to odd versions
- config that differs suspiciously between environments

Group findings by category with `file:line` references. Flag anything that
looks like a real secret at the top, urgently. Don't fix anything — just reveal.
