---
description: Read its mind — explain what this code actually does
argument-hint: "[file, function, or path]"
allowed-tools: Read, Grep, Glob, Bash
---
Cast **Legilimens** on $ARGUMENTS.

Explain the code as it really behaves, not as its names suggest:
- what it does, in two or three plain sentences
- inputs, outputs, and side effects (I/O, network, global state, mutation)
- the control flow through the interesting paths
- edge cases it handles — and ones it doesn't
- anything surprising, subtle, or likely to be a footgun

Use short paragraphs and `file:line` references. No code rewrite — just understanding.
