---
description: Extinguish the light — stop background tasks and watchers
allowed-tools: Bash, BashOutput, KillShell
---
Cast **Nox**.

List every background shell / task this session started, then stop them all:
dev servers, file watchers, test runners, `tail -f`, polling loops.

Report what was running and confirm each is now stopped. If nothing was
running, say so.
