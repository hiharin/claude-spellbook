---
description: Repair — fix the bugs and apply the patch
argument-hint: "[what to fix — optional; defaults to findings from this session]"
---
Cast **Reparo** on $ARGUMENTS.

If no argument, fix the bugs already identified in this conversation (e.g. from
`/lumos`). Otherwise investigate and fix what was described.

For each fix:
1. State the root cause in one sentence.
2. Make the smallest change that correctly fixes it — match surrounding style.
3. Add or update a test that would have caught it, if the project has tests.
4. Run the relevant tests / linter / build and report the result.

Summarize every file changed and why. If a fix is risky or ambiguous, stop and
ask before applying it.
