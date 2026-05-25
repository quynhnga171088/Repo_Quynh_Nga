# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repo overview

This is a **Claude Code plugin marketplace** for Kaopiz SBU1. It contains skills that team members install into their Claude Code instances. There is no build system, test runner, or application code — the "output" is SKILL.md files and install scripts.

The plugin is registered as a single plugin (`sbu1-skills`) containing multiple skills:
- `skills/kaopiz-git/` — Git workflow (branch, commit, PR) via Bitbucket MCP
- `skills/bitbucket-review/` — PR review with inline comments and impact analysis
- `skills/basic-design-docs/` — Japanese-style BD01–BD17 design documents
- `skills/presale-proposal/` — Pre-sale proposal generation for Japanese clients

## Plugin structure

```
.claude-plugin/
  plugin.json       ← plugin metadata (name, version)
  marketplace.json  ← lists plugin + skills paths
skills/<name>/
  SKILL.md          ← required entrypoint
  references/       ← supporting docs loaded on demand
agents/
  translator.agent.md
scripts/
  install.sh / install.ps1   ← team installation
  update.sh / update.ps1     ← team update
```

## SKILL.md conventions

Frontmatter fields:
- `name` — lowercase, hyphens only, max 64 chars
- `description` — triggers model invocation; front-load key use case; max 250 chars shown in listing

Skills in this repo are model-invoked (no `disable-model-invocation: true`) and written in Vietnamese since the team is Vietnamese.

Large reference material goes in `references/` and is linked from SKILL.md rather than inlined, to keep SKILL.md under 500 lines.

## Adding a new skill

1. Create `skills/<skill-name>/SKILL.md` with `name` and `description` frontmatter
2. Add the path to `skills` array in `.claude-plugin/marketplace.json`
3. Commit and push — existing installs update via `./scripts/update.sh`

No need to modify `plugin.json` or install scripts for new skills.

## MCP dependency

Several skills (`kaopiz-git`, `bitbucket-review`) require the `bitbucket` MCP server pointing to `https://bitbucket.kaopiz.com`. Setup instructions are in `skills/kaopiz-git/references/mcp-setup.md`.

## Installation for team

```bash
# macOS / Linux / WSL
bash <(git archive --remote=ssh://git@bitbucket.kaopiz.com:7999/coba/sbu1-skills.git master scripts/install.sh | tar -xO)

# Windows PowerShell
$tmp = "$env:TEMP\sbu1"; git clone --depth=1 ssh://git@bitbucket.kaopiz.com:7999/coba/sbu1-skills.git $tmp; & "$tmp\scripts\install.ps1"; Remove-Item $tmp -Recurse -Force
```

Requires Claude Code to be installed first: `curl -fsSL https://claude.ai/install.sh | bash`
