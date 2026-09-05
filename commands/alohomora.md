---
description: Unlock the blockage — get a failing test or build passing
argument-hint: "[test name or build command — optional]"
allowed-tools: Read, Grep, Glob, Bash, Edit
---
Cast **Alohomora** on $ARGUMENTS.

Get the blocked thing working:
1. Run the failing test / build / command and read the actual error.
2. Trace the failure to its root cause — don't pattern-match the symptom.
3. Fix the underlying problem. Do **not** delete assertions, skip tests, loosen
   matchers, add blanket try/catch, or `--force` past the check to make it green.
4. Re-run to confirm it passes, and run the surrounding suite to check for
   regressions.

If the correct fix is out of scope or needs a decision, stop and explain what's
wrong and what the options are.
