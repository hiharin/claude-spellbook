# 🪄 The Spellbook

A set of Harry Potter-themed slash commands for Claude Code. Each spell is a
single Markdown file in `commands/` — Claude runs the instructions in the file
when you type the command.

Type `/` in Claude Code to see them all, or `/help` for built-ins.

---

## The spells

### `/lumos` — *illuminate the code*
Inspects code for real bugs: logic errors, null paths, race conditions, leaks,
bad error handling. Reports `file:line`, a failure scenario, and a fix for each.
Style nits are explicitly out of scope.

```
/lumos                 # the current diff
/lumos src/auth.ts     # a specific file or directory
```

### `/nox` — *put out the light*
Stops every background task this session started — dev servers, watchers, test
runners, tailing logs. The counter-charm to a session full of `&`.

### `/revelio` — *reveal what's hidden*
Sweeps for things easy to miss: hardcoded secrets, `TODO`/`FIXME`, dead code,
stray debug prints, sketchy dependencies. Reports only — fixes nothing.

```
/revelio               # whole repo
/revelio config/       # one area
```

### `/reparo` — *repair*
Fixes bugs and applies the patch — smallest correct change, a regression test,
and it runs the suite. Defaults to fixing whatever `/lumos` just found.

```
/reparo                        # fix findings from this session
/reparo the off-by-one in pager # fix something specific
```

### `/reducio` — *shrink it*
Simplifies and de-nests code **without changing behavior**: guard clauses,
removing duplication, preferring standard-library idioms. Shows before/after and
keeps public APIs intact.

```
/reducio src/parse.py
```

### `/scourgify` — *scrub it clean*
Removes debug debris only — `console.log`, `debugger`, commented-out blocks,
`tmp`/`foo` scaffolding, unused imports. Leaves real logging alone.

```
/scourgify             # the current diff
```

### `/legilimens` — *read its mind*
Explains what code **actually does** vs. what its names imply: inputs, outputs,
side effects, control flow, edge cases, footguns. No rewrite.

```
/legilimens src/scheduler.go
```

### `/accio` — *summon it*
Finds where something lives: a symbol's definition and call sites, where a
config value is read and set, the entry point for a feature.

```
/accio RETRY_LIMIT
/accio the rate limiter
```

### `/patronum` — *cast a defense*
Security review of the current branch: injection, authz gaps, unsafe
deserialization, secrets, weak crypto, XSS, risky new deps. Severity + attack
scenario + fix per finding. Defers to a project `/security-review` if present.

```
/patronum
```

### `/protego` — *raise a shield*
Adds input validation and defensive checks around a risky path, plus tests for
each new guard. Matches the project's existing validation style.

```
/protego POST /api/upload
```

### `/priori` — *show the last spells cast*
Summarizes recent git history into a briefing: themes, risky commits, high-churn
files, anything unfinished or hastily merged.

```
/priori                # last 20 commits
/priori 50
/priori main..HEAD
```

### `/finite` — *end the enchantment*
Reverts uncommitted working-tree changes — **shows you what will be lost and
asks before doing anything destructive.** Never touches committed history.

```
/finite                # all working-tree changes
/finite src/broken.js  # one file
```

### `/geminio` — *duplicate a pattern*
Scaffolds new code from an existing file: copies the structure and wiring
(exports, route tables, test files), not the business logic. Marks `TODO` where
real logic goes.

```
/geminio src/routes/users.ts -> src/routes/teams.ts
```

### `/alohomora` — *unlock the blockage*
Gets a failing test or build passing by fixing the **root cause** — explicitly
will not skip tests, loosen assertions, or `--force` past the check.

```
/alohomora
/alohomora test_checkout_flow
```

---

## Casting well

- **Arguments are optional** for most spells — they fall back to the current
  diff or the whole repo.
- Spells **compose**: `/lumos` then `/reparo`, or `/revelio` then `/scourgify`.
- Spells that only read (`/lumos`, `/revelio`, `/legilimens`, `/accio`,
  `/patronum`, `/priori`) never change files.
- Spells that write (`/reparo`, `/reducio`, `/scourgify`, `/protego`,
  `/geminio`, `/alohomora`) show a diff and run tests; `/finite` always
  confirms first.

## Making your own

Add a file to `commands/`. The filename is the command name (`accio.md` →
`/accio`). Optional frontmatter:

```markdown
---
description: One line shown in the / menu
argument-hint: "[what to type after the command]"
allowed-tools: Read, Grep, Glob, Bash   # omit to allow everything
---
The prompt. Use $ARGUMENTS for everything typed after the command,
or $1 $2 for positional args. A line starting with ! runs in bash and
its output is inlined. @path inlines a file.
```

Put a file in `commands/spells/` and it becomes `/spells:accio` instead —
handy for namespacing if it's shared.
