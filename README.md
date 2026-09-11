# claude-spellbook

Harry Potter-themed slash commands for [Claude Code](https://claude.com/claude-code).
See **[SPELLBOOK.md](./SPELLBOOK.md)** for what each spell does.

| Spell | Does |
|---|---|
| `/lumos` | Inspect code for bugs |
| `/nox` | Stop background tasks & watchers |
| `/revelio` | Reveal secrets, TODOs, dead code, risky deps |
| `/reparo` | Fix bugs and apply the patch |
| `/reducio` | Simplify / de-nest without changing behavior |
| `/scourgify` | Strip debug prints and commented-out code |
| `/legilimens` | Explain what code actually does |
| `/accio` | Find where a symbol / file / config lives |
| `/patronum` | Security review of the current branch |
| `/protego` | Add input validation + tests to a risky path |
| `/priori` | Summarize recent git history |
| `/finite` | Revert uncommitted changes (asks first) |
| `/geminio` | Scaffold new code from an existing file |
| `/alohomora` | Get a failing test / build passing |
| `/apparecium` | Connect to the Saleae Logic2 analyzer over MCP |

---

## Install — pick one

### A. Copy the commands (simplest, works anywhere)

**Just you, every project:**
```bash
./install.sh
```
Copies `commands/*.md` straight into `~/.claude/commands/`, so the spells run
as `/lumos`, `/accio`, etc. — no prefix. It's a plain copy, not a symlink, so
this repo can move or be deleted afterward without breaking anything. Re-run
it any time to pick up updates.

**One project / a team, checked into the repo:**
```bash
mkdir -p .claude/commands
cp /path/to/claude-spellbook/commands/*.md .claude/commands/
git add .claude/commands && git commit -m "Add spellbook commands"
```
Anyone who works in that repo with Claude Code gets the commands automatically —
no per-person setup, works on any Claude account.

To avoid name clashes with other commands, drop them in a subfolder instead
(`.claude/commands/spells/`) and they become `/spells:lumos` etc.

### B. Install as a plugin (best for sharing across teams)

Each person runs:
```
/plugin marketplace add hiharin/claude-spellbook
/plugin install spellbook@spellbook-marketplace
```
Updates propagate with `/plugin marketplace update spellbook-marketplace`.
Forking? Edit the `author` / `owner` fields in `.claude-plugin/` and the repo
path above.

Unlike Option A's `install.sh`, plugin-installed commands run under the
plugin's namespace — `/spellbook:lumos` instead of `/lumos` — since Claude
Code prefixes commands by plugin name to avoid clashes. If you want the
no-prefix names, use Option A instead.

---

## Portability notes

- Nothing here is account-specific — no API keys, no org IDs, no absolute paths.
- Commands are plain Markdown; they work on Claude Code CLI, desktop, and web.
- `allowed-tools` in the frontmatter only *narrows* what a command may do
  without prompting. If your team uses tools by different names, remove that
  line and the command still works (Claude just asks before acting).
- Safe to share publicly.
