---
name: bitbucket-review
description: Review Pull Request on Kaopiz Bitbucket Server. Use when user wants to review a PR, list open PRs, analyze code changes, assess code quality, or post comments on a PR. Triggers on: review PR, review pull request, list PRs, check code, evaluate code, open PRs, review diff, PR feedback, "review this PR", "check PR #X", "any PRs to review", "check new code", "review changes".
---

# Bitbucket Review Skill

This skill helps the agent systematically review Pull Requests on Kaopiz Bitbucket Server: fetch PR info, read the diff, and deliver structured quality feedback.

**Required tools:**
- `bitbucket` MCP: list PRs, fetch diff, get PR details, post comments (see `references/mcp-setup.md` if not installed)
- Bash/git: checkout branch, grep codebase for impact analysis

---

## 1. Identify the PR to Review

### If no PR number is provided

Use Bitbucket MCP to list open PRs:

```
list_pull_requests:
  project: <project key>
  repository: <repo slug>
  state: OPEN
```

Display the list in this format:
```
#<id>  [<source>] → [<target>]  —  <title>
       Author: <author>  |  Updated: <date>
```

Ask the user which PR they want to review.

### If a PR number is provided

Fetch PR details:

```
get_pull_request:
  project: <project key>
  repository: <repo slug>
  pullRequestId: <id>
```

If project/repo is unknown, use `list_repositories` to find it, or ask the user.

---

## 2. Checkout the PR Branch Locally

After obtaining PR info, **checkout the source branch locally before reading the diff**. The diff only shows changed lines — the actual codebase is needed to grep callers, consumers, and indirectly affected code.

Save the current branch to return to later, then fetch and checkout the source branch.

**If checkout fails** (uncommitted changes, conflicts...):
> "Cannot checkout `<source-branch>` due to local uncommitted changes. Would you like to stash them first? (`git stash`)"

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

Get an overview of changed files with stats first, then read the full diff.

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

## 7. Post Comments to the PR (if user wants)

Ask: "Would you like me to post this review to the PR? (general comment, inline comments, or both)"

### General comment (PR overview)

Used to post the summary, impact analysis, and conclusion:

```
add_comment:
  project: <project key>
  repository: <repo slug>
  pullRequestId: <id>
  text: <overall review content>
```

### Inline comment (directly on code lines)

For each issue with a specific `<file>:<line>`, post an inline comment for easy traceability:

```
add_comment_inline:
  project: <project key>
  repository: <repo slug>
  pullRequestId: <id>
  filePath: <file path, e.g.: src/services/UserService.java>
  line: <line number in the file after diff>
  text: <comment content including severity [Critical/Important/Suggestion] and suggested fix>
```

**Inline comment strategy:**
- Prioritize inline for **Critical** and **Important** issues with clear file/line locations
- **Suggestions** can be mentioned in the general comment — no need to inline each one
- Keep tone constructive: explain *why* it's an issue, suggest a concrete fix
- If multiple issues exist in the same file, consolidate them into one comment instead of spamming

---

## 8. Flow Summary

```
User requests PR review
         ↓
  PR number provided?
  ├── No  → list_pull_requests → ask user to choose
  └── Yes → get_pull_request (get source branch)
         ↓
  git fetch + checkout <source-branch> locally
  (ask to stash if uncommitted changes exist)
         ↓
  Read CLAUDE.md / AGENTS.md / .cursor/rules → extract project coding rules
         ↓
  git diff <target-branch>...HEAD → exclude irrelevant files
         ↓
  Analyze diff: correctness, code quality, architecture, documentation, perf, security, tests
  (HIGH SIGNAL only: compile errors, definite logic bugs, exact rule violations)
         ↓
  Impact analysis: grep local codebase for callers/consumers outside diff
         ↓
  Write review using template (including impact table)
         ↓
  Ask if user wants to post comments
  ├── General comment → add_comment (overview + conclusion)
  └── Inline comment  → add_comment_inline (Critical/Important issues)
         ↓
  Remind user to checkout previous branch
```

---

## 9. Special Cases

**Project/repo unknown:**
> "Which repo are you working with? (or let me list them via Bitbucket MCP)"

**Diff too large (>500 files):**
> "This PR has too many changes. Which part would you like me to focus on? (e.g., only backend, or files related to feature X)"

**Bitbucket MCP not installed:**
Read `references/mcp-setup.md` and guide the user through installation first.

**PR already closed/merged:**
> "PR #<id> has been <merged/closed>. Would you like to review its history or review a different PR?"

**Local repo not found / not cloned:**
> "No local repo found for `<repo-slug>`. Would you like to clone it first? (`git clone <url>`). Alternatively, I can still review based on the Bitbucket MCP diff alone, but impact analysis will be limited."

**Branch not found on remote:**
Run `git fetch origin` first. If still not found → inform the user the branch may have been deleted.

---

## Reference files

- `references/mcp-setup.md` — Bitbucket Server MCP installation guide