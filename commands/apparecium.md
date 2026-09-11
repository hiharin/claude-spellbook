---
description: Reveal the hidden signals — connect to the Saleae Logic2 analyzer over MCP
allowed-tools: Bash
---
Cast **Apparecium**.

Connect this session to the Saleae Logic2 logic analyzer's MCP server:

1. Check whether an `mcp` server named `logic2` is already registered
   (`claude mcp list`). If it's already there and pointed at
   `http://127.0.0.1:10530`, report that and stop — don't re-add it.
2. Otherwise, register it:
   ```
   claude mcp add --transport http logic2 http://127.0.0.1:10530
   ```
3. Confirm it was added and reachable (`claude mcp list` / `claude mcp get logic2`).
   If the connection fails, that almost always means the Logic2 desktop app
   isn't running or its API server isn't enabled on port 10530 — say so plainly
   rather than retrying blindly.

Report the final state in one or two sentences.
