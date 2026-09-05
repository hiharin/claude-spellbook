---
description: Raise a shield — add input validation and tests around a risky path
argument-hint: "[function, endpoint, or path]"
---
Cast **Protego** on $ARGUMENTS.

Harden the code against bad input and misuse:
- validate arguments at the boundary (type, range, shape, required fields)
- fail fast with clear, actionable error messages
- handle empty / null / malformed input explicitly
- add defensive checks for the assumptions the code currently makes silently
- add tests covering each new guard, including the failure cases

Match the project's existing validation approach (schema library, guard
helpers, etc.) rather than inventing a new one. Show the diff and run the tests.
