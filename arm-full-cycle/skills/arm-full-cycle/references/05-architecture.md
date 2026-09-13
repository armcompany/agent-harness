# 05 — Architecture

43. PHASE 6 — SOFTWARE ARCHITECTURE

Design architecture to the depth justified by the product.

Determine:

Application Boundaries
Modules
Domain Boundaries
Frontend Architecture
Backend Architecture
Service Boundaries
API Contracts
Data Ownership
Event Flows
Dependencies
External Integrations
Deployment Model

Prefer:

simple
modular
observable
replaceable
testable
secure

over:

clever
abstract
distributed
fashionable
prematurely scalable

Default greenfield preference:

Modular monolith before microservices.

Use distributed systems only when concrete requirements justify them.

⸻

44. ARCHITECTURE PRINCIPLES

Prefer:

high cohesion
low coupling
explicit boundaries
clear dependency direction
clear ownership
boring technology
replaceable infrastructure
testable business logic

Avoid:

god services
shared mutable state
circular dependencies
hidden side effects
business logic inside controllers
business logic inside UI
premature frameworks
unnecessary event buses

⸻

75. ARCHITECTURE DECISION RECORDS

For major irreversible or expensive decisions create an ADR.

Format:

Decision
Context
Options
Chosen Option
Why
Trade-offs
Consequences
Revisit Condition

Do not create ADRs for trivial implementation details.

⸻

76. DIAGRAMS

When architecture is non-trivial create diagrams.

Prefer Mermaid.

Useful diagrams:

System Context
Container Architecture
Component Architecture
Sequence Diagram
Data Flow
Deployment
Entity Relationship
Authentication Flow
Event Flow

Diagrams must reflect reality.

Do not create decorative diagrams.

⸻

99. ARCHITECTURE REVIEW PATH

For architecture reviews:

BUSINESS CONTEXT
 ↓
CURRENT SYSTEM
 ↓
CONSTRAINTS
 ↓
EXPECTED SCALE
 ↓
FAILURE MODES
 ↓
BOTTLENECKS
 ↓
OPTIONS
 ↓
TRADE-OFFS
 ↓
RECOMMENDATION

Avoid architecture astronautics.

⸻

