# Review Criteria

Use these criteria when analyzing the PR diff in step 5. Apply the HIGH SIGNAL rule from SKILL.md — only raise Critical/Important when certain; Suggestions are open.

---

## Code Quality

- Does the code follow established patterns and conventions of the project?
- Is error handling correct? Is type safety and defensive programming applied?
- Are code organization, naming conventions, and maintainability acceptable?
- Is there dead code, redundant code, or debug artifacts (e.g., `console.log`)?
- Are there potential security vulnerabilities or performance concerns?

**Length and Complexity:**
- Lines should not exceed **120 characters** (except string literals and import paths)
- Functions/methods should not exceed **50 lines** — if longer, consider splitting
- Cyclomatic complexity should not exceed **10** (too many nested if/else, complex switch cases)
- Files should not exceed **300–400 lines** — if too long, consider splitting into modules

**Code Reuse:**
- Is there logic duplicated ≥ 2 times that should be extracted into a helper/utility?
- Are there magic numbers, constants, or string literals that should be named and shared?
- Common logic should live in a shared module/service rather than being copy-pasted

**New Libraries / Dependencies:**
- If the PR adds a new package (`package.json`, `pom.xml`, `build.gradle`, `requirements.txt`...): **check the license** — is it commercial/paid? (e.g., Commercial, BSL, SSPL licenses need approval)
- Is the dependency actively maintained? (check last release, open issues)
- Can an existing library already in the project replace it?

---

## Correctness

- Is the business logic correct?
- Are there unhandled edge cases?
- Are there potential bugs?

---

## Architecture and Design

- Does the code follow SOLID principles and established architectural patterns?
- Are separation of concerns and loose coupling maintained?
- Does the code integrate well with existing systems?
- Are scalability and extensibility considered?

---

## Performance

- Are there N+1 queries, unnecessary loops, or memory leaks?
- Are there significant optimization opportunities?

---

## Security

- Is sensitive information exposed?
- Is input properly validated and sanitized?
- Is authentication/authorization implemented correctly?

---

## Documentation and Standards

- Does the code include appropriate comments and documentation?
- Are file headers, function documentation, and inline comments present and accurate?
- Does the code adhere to project-specific coding standards and conventions?

---

## Test Coverage

- Are there unit tests / integration tests for new code?
- Do test cases cover important scenarios and edge cases?

---

## Impact Analysis

For each changed function/class/API, grep the source to find all usages.

**Shared components / utilities:**
- Grep changed function/class names → list all calling files → assess if anything breaks.
- Prioritize files outside the PR (not in the diff) as they are regression risks.

**Database / API contracts:**
- DB schema or API response format changes → grep consumers in frontend, other services, or test fixtures.

**Configuration / environment:**
- New env variables → check `.env.example`, deployment config, README for updates.

**Hidden side effects:**
- Changes that trigger events, jobs, notifications → grep event names or job classes.
- Cache invalidation: search for related `@Cacheable`, `Redis.set`, `cache.put`.

If impact outside the PR scope is found, flag it clearly under **[Critical]** or **[Important]** in the review.
