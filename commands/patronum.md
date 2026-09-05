---
description: Cast a defense — security review of the current branch
argument-hint: "[path or PR — optional; defaults to the branch diff]"
allowed-tools: Read, Grep, Glob, Bash
---
Cast **Expecto Patronum** on $ARGUMENTS (default: changes on the current branch
vs. the base branch).

Review for security issues introduced or touched by these changes:
- injection (SQL, command, template, path traversal)
- authn / authz gaps — missing checks, broken object-level authorization
- unsafe deserialization, SSRF, XXE
- secrets in code or logs
- weak crypto, missing TLS verification, predictable randomness
- unvalidated input reaching a sink; unsafe HTML / XSS
- dependency risks in anything newly added

For each issue: severity, `file:line`, the attack scenario, and the fix. If the
project has a `/security-review` command or skill, defer to it and add anything
it misses. Only report issues you can substantiate.
