---
description: End the enchantment — revert uncommitted changes from this session
argument-hint: "[file — optional; defaults to all working-tree changes]"
allowed-tools: Bash, Read
---
Cast **Finite Incantatem** on $ARGUMENTS.

Revert uncommitted work:
1. Show `git status` and `git diff --stat` first so the user sees exactly what
   will be lost.
2. List untracked files that would be removed.
3. **Ask for explicit confirmation before running anything destructive.**
4. On confirmation, restore tracked files (`git restore`) and, only if asked,
   remove untracked ones.

Never touch committed history. Never force-push. If a stash would be safer than
a discard, offer that instead.
