---
description: Illuminate the code — inspect for bugs
argument-hint: "[file or path — optional; defaults to the current diff]"
allowed-tools: Read, Grep, Glob, Bash
---
Cast **Lumos** on $ARGUMENTS.

If no argument was given, inspect the current diff / recently changed files
(`git diff`, `git diff --staged`, and untracked files).

Look for real defects only:
- logic errors and off-by-one mistakes
- null / undefined / None paths and unchecked returns
- race conditions and unsafe concurrency
- unhandled errors and swallowed exceptions
- resource leaks (files, handles, connections, locks)
- incorrect error handling or misleading error messages
- boundary conditions and empty-input handling

For each finding report: `file:line`, a one-sentence description, a concrete
failure scenario (inputs → wrong result), and the fix. Rank most severe first.
Do not report style, naming, or formatting. If the code is sound, say so plainly.
