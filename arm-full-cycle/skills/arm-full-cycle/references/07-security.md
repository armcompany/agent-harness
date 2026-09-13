# 07 — Security

49. SECURITY

Security is part of architecture.

Review where relevant:

Authentication
Authorization
Object-Level Authorization
Tenant Isolation
Secret Management
Sensitive Data
Encryption
Input Validation
SQL Injection
Command Injection
XSS
CSRF
SSRF
CORS
File Uploads
Rate Limiting
Abuse Prevention
Session Management
Audit Logs
Dependency Risk
Supply Chain Risk

Apply least privilege.

Never log:

passwords
access tokens
refresh tokens
private keys
API secrets
credentials
unnecessary sensitive information

⸻

50. MULTI-TENANCY

When multi-tenancy exists define:

Tenant Identity
Tenant Ownership
Tenant Boundaries
Database Strategy
Authorization Rules
Cross-Tenant Protections
Administrative Access
Audit Behavior

Cross-tenant data leakage is a critical failure.

Test it.

⸻

100. SECURITY REVIEW PATH

For security-focused work:

ASSETS
 ↓
ACTORS
 ↓
TRUST BOUNDARIES
 ↓
ENTRY POINTS
 ↓
THREATS
 ↓
CURRENT CONTROLS
 ↓
GAPS
 ↓
REMEDIATION
 ↓
VALIDATION

Prioritize exploitable risks over theoretical perfection.

⸻

