# 12 — Quality Review and Production

93. PRODUCTION READINESS

Before declaring production readiness inspect:

environment configuration
secrets
database migrations
backup
monitoring
error tracking
health checks
security
rate limits
logging
CI/CD
rollback
DNS
SSL
storage
email
external integrations
scheduled jobs

Production readiness is more than deployment success.

⸻

94. RELEASE STRATEGY

For risky releases consider:

feature flags
progressive rollout
canary
backward compatibility
database compatibility
rollback
monitoring window

Prefer reversible changes.

⸻

95. FAST PATH

Not every task requires the entire lifecycle.

For small changes:

UNDERSTAND
 ↓
INSPECT
 ↓
FIX
 ↓
TEST
 ↓
VALIDATE

Examples:

typo
small UI bug
simple validation
localized calculation bug
minor configuration fix

Do not manufacture architecture work where none is required.

⸻

96. FEATURE PATH

For meaningful features:

UNDERSTAND PRODUCT REQUIREMENT
 ↓
INSPECT EXISTING ARCHITECTURE
 ↓
IDENTIFY DOMAIN IMPACT
 ↓
IDENTIFY DESIGN / UI IMPACT
 ↓
IDENTIFY API / DATA IMPACT
 ↓
PLAN VERTICAL SLICE
 ↓
IMPLEMENT
 ↓
TEST
 ↓
BROWSER VALIDATE
 ↓
SIMPLIFY

⸻

97. BUGFIX PATH

For bugs:

REPRODUCE
 ↓
TRACE
 ↓
ROOT CAUSE
 ↓
MINIMAL FIX
 ↓
REGRESSION TEST
 ↓
RUNTIME VALIDATION

Do not redesign the system while fixing an isolated bug unless architecture is the root cause.

⸻

98. REFACTOR PATH

For refactoring:

DEFINE WHY
 ↓
ESTABLISH CURRENT BEHAVIOR
 ↓
ESTABLISH TEST SAFETY
 ↓
MAKE INCREMENTAL CHANGES
 ↓
VERIFY BEHAVIOR PRESERVED
 ↓
SIMPLIFY

Refactoring must have concrete benefit.

Examples:

reduce duplication
improve testability
remove obsolete abstraction
improve performance
reduce coupling
enable required feature

“Cleaner” alone is not enough for large rewrites.

⸻

102. FULL GREENFIELD EXECUTION ALGORITHM

Apply design-research and visual-source steps only when the product has relevant UI or design scope; otherwise mark those phases `not_applicable` and continue proportionally.

For substantial greenfield work execute:

01 Understand request
02 Inspect available context
03 Inspect repository if one exists
04 Load Harness Engineering when installed; otherwise inspect installed skills and continue with repository evidence, official documentation, and native capability
05 Discover/select relevant skills
06 Understand business
07 Challenge business assumptions
08 Define value proposition
09 Define product
10 Define actors and permissions
11 Define scope: MUST / SHOULD / LATER / NOT NOW
12 Define domain
13 Create design research brief
14 Research relevant market products
15 Research direct competitors
16 Research Behance
17 Research Pinterest
18 Research Figma Community
19 Research other relevant design sources
20 Research adjacent products solving similar UX problems
21 Select strong references
22 Build visual benchmark
23 Extract design principles
24 Define visual direction
25 Create conceptual moodboard when useful
26 Inspect existing Design System
27 Create or evolve Design System
28 Validate DS against representative screens
29 Define UX architecture
30 Define golden paths
31 Define software architecture
32 Define data model
33 Define API contracts
34 Define authentication and authorization
35 Define security model
36 Define infrastructure
37 Define observability
38 Create implementation plan
39 Implement vertical slices
40 Write relevant tests
41 Build
42 Typecheck
43 Lint
44 Run application
45 Validate using browser
46 Compare implementation against design principles
47 Validate responsive behavior
48 Validate accessibility
49 Dogfood critical workflows
50 Test failure states
51 Fix discovered defects
52 Perform security review
53 Perform Ponytail simplification review
54 Inspect git diff
55 Validate production implications
56 Update necessary documentation
57 Report completion

⸻

103. FINAL ENGINEERING QUESTIONS

Before declaring substantial work complete ask:

Did we solve the actual business problem?
Does the product match the business model?
Did we correctly identify the target user?
Did we research the visual context before designing?
Does the visual direction fit the business?
Does the DS derive from actual design principles?
Does the UX make sense?
Does the business logic match the requirement?
Does the architecture fit expected scale?
Is data ownership clear?
Are permissions enforced server-side?
Did we introduce unnecessary dependencies?
Did we create unnecessary abstractions?
Are critical paths tested?
Did we actually run the software?
Did we inspect the UI in a browser?
Did we test responsive behavior?
Did we test failure states?
Did we check security implications?
Did we check migrations?
Did we inspect the final diff?
Could the solution be simpler without losing quality?

If an important answer is “no”, the task may not be complete.

⸻

105. OUTPUT STYLE

Default communication:

concise
technical
precise
evidence-driven

During execution report only meaningful milestones.

Example:

✓ business model reviewed
✓ visual benchmark completed
✓ design direction defined
✓ DS established
✓ architecture defined
✓ API implemented
✓ tests passing
✗ browser exposed auth redirect issue
→ fixing redirect state

Do not narrate every file read or command executed.

⸻

106. COMPLETION REPORT

When finished report:

DONE
Product
- ...
Design
- ...
Implemented
- ...
Architecture
- ...
Validated
- build
- types
- lint
- tests
- browser / E2E
Important Decisions
- ...
Remaining Risks
- ...

If nothing meaningful remains, do not invent future work.

⸻

107. HARNESS ENGINEERING PHILOSOPHY

Harness exists to prevent:

PROMPT
 ↓
CODE
 ↓
COMPILE
 ↓
DONE

Harness replaces it with:

WHY
 ↓
WHO
 ↓
WHAT
 ↓
BUSINESS
 ↓
PRODUCT
 ↓
DOMAIN
 ↓
RESEARCH
 ↓
DESIGN
 ↓
ARCHITECTURE
 ↓
PLAN
 ↓
BUILD
 ↓
TEST
 ↓
RUN
 ↓
OBSERVE
 ↓
BREAK
 ↓
FIX
 ↓
SIMPLIFY
 ↓
SHIP

⸻

109. FINAL RULE

Never confuse:

code generated

with:

problem solved

Never confuse:

UI generated

with:

product designed

Never confuse:

build passed

with:

product validated

The final unit of success is a:

working, validated, maintainable, secure and contextually well-designed product capability.

Harness owns the path from idea to that result.
