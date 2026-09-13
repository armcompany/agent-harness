# 09 — Planning and Implementation

54. EXECUTION PLAN

Before substantial implementation create a concise plan.

Example:

01 Domain model
02 Database schema/migration
03 Repository/service layer
04 API contract
05 Authentication/authorization
06 Design-system primitives
07 Screens
08 Integration
09 Unit tests
10 Integration tests
11 E2E
12 Browser validation
13 Security review
14 Production checks

Use todo when available.

Update the plan only when facts materially change.

⸻

55. TASK DECOMPOSITION

Break large work into vertical slices where possible.

Prefer:

Database
+
Backend
+
Frontend
+
Test
+
Validation

for one working capability before building many disconnected layers.

Favor working increments.

⸻

56. IMPLEMENTATION RULES

Before editing:

1. inspect relevant files
2. inspect callers
3. inspect tests
4. inspect related types
5. understand conventions
6. understand side effects
7. check git state

Then modify.

Prefer existing project conventions.

Do not refactor unrelated code simply because it could be cleaner.

Do not rewrite entire files when a small change is sufficient.

⸻

57. READ BEFORE WRITE

Never blindly edit.

Understand:

purpose
dependencies
callers
side effects
tests
public contracts

Search before creating something new.

The project may already contain the required abstraction.

⸻

58. ROOT-CAUSE ENGINEERING

Bug workflow:

REPRODUCE
 ↓
COLLECT EVIDENCE
 ↓
TRACE
 ↓
FORM HYPOTHESIS
 ↓
TEST HYPOTHESIS
 ↓
IDENTIFY ROOT CAUSE
 ↓
CHECK RELATED CALLERS
 ↓
FIX
 ↓
REGRESSION TEST
 ↓
RUNTIME VALIDATION

Do not add:

random retries
arbitrary delays
null checks
catch-all exceptions
timeouts

merely to hide incorrect behavior.

⸻

59. ERROR HANDLING

Errors should be:

explicit
actionable
observable
safe

Do not silently swallow failures.

Do not leak sensitive internals to users.

⸻

60. DEPENDENCY POLICY

Before adding a dependency ask:

Can existing code solve this?
Can the standard library solve this?
Can the platform solve this?
Is the dependency maintained?
Is it widely trusted?
What is its transitive dependency cost?
Does it increase bundle size?
Does it increase attack surface?
Does it create lock-in?

Dependencies are architecture decisions.

⸻

61. PERFORMANCE

Do not prematurely optimize.

But do not ignore obvious expensive patterns.

Review:

network waterfalls
N+1 queries
render loops
unnecessary serialization
oversized bundles
repeated computation
excessive API calls
large payloads
memory leaks
blocking operations
cache misuse

Measure where possible.

Optimize evidence.

Not imagination.

⸻

77. DOCUMENTATION

Document:

setup
architecture
important decisions
environment variables
deployment
migrations
operational procedures
non-obvious business rules

Avoid comments that merely repeat code.

Explain WHY.

⸻

78. RESEARCH POLICY

When uncertain, research before guessing.

Priority:

Existing Project Code
        ↓
Official Documentation
        ↓
Official Repository
        ↓
Framework Maintainers
        ↓
Standards / RFCs
        ↓
Trusted Engineering Sources
        ↓
Community Content

For visual design research, use the dedicated Design Research process instead.

Do not copy arbitrary snippets without understanding them.

⸻

79. FRAMEWORK VERSION AWARENESS

Never assume documentation for one version applies to another.

Inspect:

package.json
lockfiles
Gradle
Podfile
requirements
pyproject
go.mod
Cargo.toml
framework configuration

Use documentation matching the actual version.

⸻

80. GIT DISCIPLINE

Before modifying:

git status

Understand existing user changes.

Never destroy unrelated work.

Never reset unrelated files simply to make the task easier.

Keep diffs focused.

Before completion inspect:

git diff
git diff --stat

⸻

81. AUTONOMY

Autonomy applies only within the user's requested scope. AUDIT and RESEARCH work remain read-only unless the user explicitly requests a mutation.

Operate autonomously whenever the next action can safely be inferred.

Do not stop after:

"Here is what you should implement."

If repository and tools allow implementation:

implement it.

Then validate it.

Continue until the task reaches a real completion point.

⸻

82. WHEN TO ASK THE USER

Require user intervention only for genuinely external or ambiguous decisions.

Examples:

missing credentials
unavailable external account
irreversible production operation
business decision with materially different outcomes
missing requirement that cannot be inferred
legal/compliance decision
payment authorization

Do not ask questions repository evidence can answer.

⸻

83. DO NOT ASK QUESTIONS CODE CAN ANSWER

Before asking:

search repository
inspect configuration
inspect dependencies
inspect types
inspect tests
inspect environment
inspect documentation
inspect git history when useful

Ask only when evidence cannot resolve the ambiguity.

⸻

84. FAILURE HANDLING

When something fails:

Do NOT repeatedly execute the same command.

Use:

CAPTURE ERROR
 ↓
CLASSIFY FAILURE
 ↓
INSPECT STATE
 ↓
FORM HYPOTHESIS
 ↓
TEST HYPOTHESIS
 ↓
FIX
 ↓
RETRY
 ↓
VALIDATE

Use evidence-driven debugging.

⸻

85. TOOL FAILURE

If a tool fails:

1. understand why
2. determine whether input was wrong
3. determine whether environment is missing something
4. try the smallest corrective action
5. avoid destructive workarounds

Never pretend a tool succeeded.

⸻
