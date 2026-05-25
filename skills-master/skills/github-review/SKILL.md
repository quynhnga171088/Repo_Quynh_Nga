---
name: github-review
description: Review Pull Request on GitHub. Use when user wants to review a GitHub PR, list open GitHub PRs, analyze code changes, assess code quality, or post comments on a GitHub PR. Triggers on: review github PR, review pull request github, list github PRs, check github code, "review this PR", "check PR #X on github", "any PRs to review on github", "review changes on github".
---

# GitHub Review Skill

This skill helps the agent systematically review Pull Requests on GitHub: fetch PR info, read the diff, and deliver structured quality feedback.

**Required tools:**
- `gh` CLI: list PRs, fetch diff, get PR details, post reviews and comments
- Bash/git: checkout branch, grep codebase for impact analysis

---

## 1. Identify the PR to Review

### If no PR number is provided

List open PRs in the current repo:

```
gh pr list --state open
```

If a specific repo is needed:
```
gh pr list --repo <owner/repo> --state open
```

Display the list in this format:
```
#<id>  [<source>] → [<target>]  —  <title>
       Author: <author>  |  Updated: <date>
```

Ask the user which PR they want to review.

### If a PR number is provided

Fetch PR details including description and existing comments:

```bash
# PR metadata
gh pr view <number> --json number,title,author,headRefName,baseRefName,body,url,createdAt

# Existing review comments (for context)
gh pr view <number> --comments
```

If repo is not the current directory's remote, add `--repo <owner/repo>`.

---

## 2. Checkout the PR Branch Locally

After obtaining PR info, **checkout the source branch locally before reading the diff**. The diff only shows changed lines — the actual codebase is needed to grep callers, consumers, and indirectly affected code.

Save the current branch to return to later, then fetch and checkout the source branch:

```bash
gh pr checkout <number>
```

This command handles fetch + checkout automatically.

**If checkout fails** (uncommitted changes, conflicts...):
> "Cannot checkout PR branch due to local uncommitted changes. Would you like to stash them first? (`git stash`)"

**After the review**, remind the user to switch back:
> "Review complete. Would you like me to checkout `<previous-branch>` again?"

---

## 3. Read Project Rules

Before analyzing the diff, **read the project's rule files** to understand coding standards and conventions that apply to this codebase:

- Check for `CLAUDE.md` / `AGENTS.md` at repo root
- Check for Cursor rules at `.cursor/rules` (file or directory of `.md` files)

**What to extract from rules:**
- Naming conventions (files, functions, variables)
- Architectural patterns (folder structure, module boundaries)
- Banned or required patterns
- Language/framework-specific standards

These extracted rules become the **primary source of truth** when flagging violations in step 5.

> If no rule files exist, skip this step and rely on the project's existing code patterns.

---

## 4. Read the PR Diff

Get the diff via `gh`:

```bash
gh pr diff <number>
```

Or use git directly after checkout:

```bash
git diff origin/<base-branch>...HEAD --stat   # overview
git diff origin/<base-branch>...HEAD          # full diff
```

**Skip these files** as they carry no business logic:
- Lock files: `package-lock.json`, `yarn.lock`, `pnpm-lock.yaml`
- Minified files: `*.min.js`, `*.min.css`
- Build output: `dist/`, `build/`, `vendor/`, `node_modules/`
- Auto-generated DB migrations (long timestamp in filename)
- Binary files, images

If the diff is very large, focus on business logic files and skip infrastructure files.

---

## 5. Analyze and Write the Review

> **HIGH SIGNAL rule — applies to [Critical] and [Important] only.**
>
> Only raise a Critical/Important issue when you are **certain** at least one of these is true:
> - The code will **fail to compile or parse** (syntax errors, type errors, missing imports, unresolved references)
> - The code will **definitely produce wrong results** regardless of inputs (clear logic errors)
> - There is a **clear, unambiguous project rule violation** — you must be able to quote the exact rule being broken
>
> If you are not certain → do not flag it. **False positives erode trust and waste reviewer time.**
>
> **[Suggestion]** is not bound by this rule — style, quality, readability, and refactoring observations are welcome at the Suggestion level.

After reading the diff, evaluate the PR using the criteria in `references/review-criteria.md`:
- Overview (what the PR does, scope)
- Code Quality (conventions, error handling, length/complexity, reuse, new dependencies)
- Correctness (logic, edge cases, bugs)
- Architecture and Design (SOLID, separation of concerns, integration)
- Performance (N+1 queries, loops, memory)
- Security (input validation, auth, data exposure)
- Documentation and Standards
- Test Coverage
- Impact Analysis (grep callers/consumers outside the diff)

Read `references/review-criteria.md` for the full checklist and impact analysis strategy.

---

## 6. Review Output Format

Present the review using this template:

```markdown
## Review PR #<id>: <title>

**Author:** <author>  |  **Branch:** `<source>` → `<target>`
**URL:** <pr-url>

### Overview
<Brief description of what the PR does>

### Strengths ✅
- <strength 1>
- <strength 2>

### Impact Analysis
| Component | Impact | Notes |
|-----------|--------|-------|
| `<module/file>` | <Yes / No / Needs Check> | <details> |

### Issues

**[Critical]** — must fix before merge:
- `<file>:<line>` — <description and suggested fix>

**[Important]** — should fix to ensure quality:
- `<file>:<line>` — <description and suggested fix>

**[Suggestion]** — nice to have, not required:
- `<file>:<line>` — <suggestion>

### Conclusion
<Approve / Request Changes / Needs Discussion> — <brief reason>
```

Severity levels:
- **Critical** (must fix): bugs, security vulnerabilities, incorrect logic, serious architectural violations — must be fixed before merge
- **Important** (should fix): error handling issues, type safety problems, missing critical tests, significant convention violations — should be fixed
- **Suggestion** (nice to have): readability improvements, minor performance gains, refactoring, naming — up to the developer

---

## 7. Post Review to GitHub (if user wants)

Ask: "Would you like me to post this review to the PR? (approve, request changes, or comment only)"

### General review (summary + conclusion)

```bash
# Comment only (no approval decision)
gh pr review <number> --comment -b "<review content>"

# Approve
gh pr review <number> --approve -b "<review content>"

# Request changes
gh pr review <number> --request-changes -b "<review content>"
```

### Inline comments (directly on code lines)

For each Critical/Important issue with a specific `<file>:<line>`, post inline via GitHub API:

```bash
# Get head commit SHA
HEAD_SHA=$(gh pr view <number> --json headRefOid -q '.headRefOid')

# Post review with inline comments
gh api repos/{owner}/{repo}/pulls/<number>/reviews \
  -f body="<overall summary>" \
  -f event="COMMENT" \
  -f "comments[][path]=<file-path>" \
  -f "comments[][line]=<line-number>" \
  -f "comments[][body]=<comment-text>"
```

Get `{owner}/{repo}` from: `gh repo view --json nameWithOwner -q '.nameWithOwner'`

**Inline comment strategy:**
- Prioritize inline for **Critical** and **Important** issues with clear file/line locations
- **Suggestions** can be mentioned in the general comment — no need to inline each one
- Keep tone constructive: explain *why* it's an issue, suggest a concrete fix
- If multiple issues exist in the same file, batch them into a single API call

---

## 8. Flow Summary

```
User requests PR review
         ↓
  PR number provided?
  ├── No  → gh pr list → ask user to choose
  └── Yes → gh pr view + gh pr view --comments (get description + context)
         ↓
  gh pr checkout <number> (fetch + checkout source branch)
  (ask to stash if uncommitted changes exist)
         ↓
  Read CLAUDE.md / AGENTS.md / .cursor/rules → extract project coding rules
         ↓
  gh pr diff / git diff <base>...HEAD → exclude irrelevant files
         ↓
  Analyze diff: correctness, code quality, architecture, documentation, perf, security, tests
  (HIGH SIGNAL only: compile errors, definite logic bugs, exact rule violations)
         ↓
  Impact analysis: grep local codebase for callers/consumers outside diff
         ↓
  Write review using template (including impact table)
         ↓
  Ask if user wants to post review
  ├── General → gh pr review --comment/--approve/--request-changes
  └── Inline  → gh api .../reviews (batch inline comments per file)
         ↓
  Remind user to checkout previous branch
```

---

## 9. Special Cases

**Repo not detected:**
> "Which GitHub repo is this? (e.g., owner/repo — or let me detect it with `gh repo view`)"

**Diff too large (>500 files):**
> "This PR has too many changes. Which part would you like me to focus on? (e.g., only backend, or files related to feature X)"

**gh CLI not authenticated:**
> "Please run `gh auth login` first to authenticate with GitHub."

**PR already closed/merged:**
> "PR #<id> has been <merged/closed>. Would you like to review its history or review a different PR?"

**Local repo not found / not cloned:**
> "No local repo found. Would you like to clone it first? (`gh repo clone <owner/repo>`). Alternatively, I can still review based on `gh pr diff` alone, but impact analysis will be limited."

**Branch not found after checkout:**
Run `gh pr checkout <number>` — if it fails, the PR branch may have been deleted by the author.

---

## Reference files

- `references/review-criteria.md` — Full review checklist (code quality, architecture, security, impact analysis)
