---
description: Shrink it — simplify and de-nest without changing behavior
argument-hint: "[file, function, or path]"
---
Cast **Reducio** on $ARGUMENTS.

Reduce complexity while preserving behavior exactly:
- flatten deep nesting with early returns / guard clauses
- remove redundant branches, dead conditions, and needless intermediates
- collapse duplicated logic into one place
- replace clever code with plain code
- prefer the language's idioms and standard library over hand-rolled versions

Show a before/after for each change and confirm tests still pass. Do not change
public APIs or observable behavior. If a simplification would, list it as a
suggestion instead of applying it.
