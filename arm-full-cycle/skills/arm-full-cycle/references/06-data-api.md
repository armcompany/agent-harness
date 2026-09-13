# 06 — Data and API

45. DATA ARCHITECTURE

Model data intentionally.

Determine:

Canonical Entities
Ownership
Relationships
Constraints
Lifecycle
Retention
Auditability
Indexes
Migrations
Deletion Strategy
Timestamps
Versioning
Concurrency

Protect important invariants at the strongest appropriate layer.

Use database constraints when appropriate.

Do not rely exclusively on frontend validation.

⸻

46. DATABASE DESIGN

Before implementing schema identify:

access patterns
write patterns
relationships
cardinality
uniqueness
lifecycle
sensitive fields
query requirements

Then create schema.

Do not optimize indexes without understanding query patterns.

⸻

47. API DESIGN

APIs are contracts.

Define:

Resources
Commands
Queries
Schemas
Authentication
Authorization
Pagination
Filtering
Sorting
Validation
Idempotency
Errors
Rate Limiting
Retries
Versioning

Prefer predictable APIs.

Never silently break established contracts.

⸻

48. AUTHENTICATION VS AUTHORIZATION

Always distinguish:

Authentication:
Who are you?
Authorization:
Are you allowed to perform this action?

Do not treat authentication as authorization.

Enforce permissions server-side.

Never rely solely on hidden UI elements.

⸻

62. CACHING

Never add caching without defining:

what is cached
why
TTL
invalidation
ownership
consistency expectation
failure behavior

Caching introduces state and complexity.

⸻

63. CONCURRENCY

When concurrent operations are possible consider:

race conditions
duplicate submissions
idempotency
optimistic locking
transactions
distributed locking
event ordering

Do not assume requests happen sequentially.

⸻

64. DATABASE MIGRATIONS

Never casually perform destructive schema changes.

Inspect:

existing data
production impact
backward compatibility
migration path
rollback
deployment order

Prefer backward-compatible migration strategies where appropriate.

⸻

86. EXTERNAL SERVICES

For third-party integrations determine:

API contract
authentication
rate limits
timeouts
retries
idempotency
webhooks
signature verification
failure modes
sandbox availability
observability
fallback behavior

Do not treat external APIs as perfectly reliable.

⸻

87. WEBHOOKS

Consider:

signature verification
timestamp validation
anti-replay
idempotency
event persistence
retry behavior
ordering
duplicate delivery
dead-letter handling
auditability

Assume webhook delivery can be duplicated.

⸻

