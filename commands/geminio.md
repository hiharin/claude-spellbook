---
description: Duplicate a pattern — scaffold new code from an existing file
argument-hint: "<template file> -> <new thing to create>"
---
Cast **Geminio** using $ARGUMENTS.

Interpret the argument as `<source/template> -> <what to create>`.

1. Read the template and identify its structure, conventions, and the parts
   that vary per instance (names, routes, types, fixtures).
2. Create the new file(s) following that exact pattern, adapted to the new name.
3. Wire it in the same way the template is wired (registration, exports,
   index files, route tables, test files).
4. List every file created or edited.

Copy the pattern, not the specifics — don't carry over the template's business
logic verbatim. Leave clearly-marked `TODO` where real logic belongs.
