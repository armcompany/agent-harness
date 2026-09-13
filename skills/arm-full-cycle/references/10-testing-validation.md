# 10 — Testing, Browser Validation, and Dogfooding

65. TESTING STRATEGY

Use the smallest useful validation level.

Unit

Use for:

pure business logic
calculations
rules
transformations
state machines

Integration

Use for:

database
API
repositories
queues
service boundaries
external adapters

Component

Use for:

UI behavior
forms
states
interactions

End-to-End

Use for:

critical business journeys
authentication
payments
permissions
core workflows

Do not chase arbitrary coverage percentages.

Test risk.

⸻

66. HIGH-RISK TESTING

Prioritize:

money
authentication
authorization
permissions
tenant isolation
destructive actions
critical calculations
core business rules
data migrations
external integrations
regressions

⸻

67. FRONTEND VALIDATION

After significant UI work:

Start Application
 ↓
Open Browser
 ↓
Inspect Rendered Interface
 ↓
Exercise Workflow
 ↓
Test States
 ↓
Inspect Console
 ↓
Inspect Network When Relevant
 ↓
Test Responsive Layouts
 ↓
Identify Defects
 ↓
Fix
 ↓
Repeat

A successful compile is not proof of a successful interface.

⸻

68. DESIGN VALIDATION LOOP

After implementation compare the rendered product against the design principles.

Use:

DESIGN RESEARCH
      ↓
VISUAL DIRECTION
      ↓
DESIGN SYSTEM
      ↓
IMPLEMENTATION
      ↓
BROWSER SCREENSHOT
      ↓
VISUAL REVIEW
      ↓
REFINE

Evaluate:

hierarchy
density
clarity
balance
brand expression
usability
consistency
professional quality

Do not compare solely for pixel similarity.

⸻

70. DOGFOODING

Behave like a real user.

Try:

invalid input
empty input
large input
duplicate submission
refresh
back navigation
direct URL
empty database
large datasets
slow responses
API failure
session expiration
unauthorized access
unexpected state
mobile viewport
desktop viewport

Do not validate only the happy path.

⸻

73. QUALITY GATES

A meaningful task is not complete until relevant gates pass.

Product

requirement satisfied
scope preserved
critical journey works

Design

visual direction respected
DS used consistently
interface fits business context

Architecture

architecture matches real needs
boundaries are clear
unnecessary complexity avoided

Code

project conventions followed
duplication reasonable
no unnecessary abstractions

Build

passes

Types

passes

Lint

passes
or pre-existing failures documented

Tests

relevant tests pass

Security

no obvious regression

UI

visually inspected when applicable

Browser

critical workflow validated when applicable

Production

migration and infrastructure implications understood

⸻

74. PONYTAIL FINAL PASS

Before declaring completion ask:

Can code be deleted?
Can an abstraction disappear?
Can a dependency disappear?
Can existing code replace new code?
Can platform functionality replace custom code?
Did we implement something the product never requested?
Did we create premature scalability?
Did we create unnecessary configuration?
Did we duplicate an existing project pattern?

Simplify where correctness and maintainability remain intact.

⸻

104. DEFINITION OF DONE

A task is done when:

The Real Business / Product Requirement Is Satisfied
AND
The Design Fits the Product Context
AND
The Implementation Is Complete
AND
Relevant Validations Pass
AND
The Real Workflow Works
AND
No Critical Known Security Regression Exists
AND
The Architecture Is Not More Complex Than Necessary

Generating code is not completion.

Planning code is not completion.

Creating a Design System is not completion.

A green build alone is not completion.

Working product behavior is completion.

⸻

