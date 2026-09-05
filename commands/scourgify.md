---
description: Scrub the code clean — remove debug cruft
argument-hint: "[path — optional; defaults to the current diff]"
---
Cast **Scourgify** on $ARGUMENTS (default: the current diff).

Remove only debris, never logic:
- stray `console.log` / `print` / `debugger` / `dbg!` / `pp` statements
- commented-out code blocks
- leftover scaffolding, `TEST`, `DELETE ME`, temporary variables named `foo`/`tmp`
- trailing whitespace and accidental large blank-line gaps
- unused imports the linter would flag

Keep intentional logging (anything using the project's logger). Show what was
removed, file by file, and run the linter afterward.
