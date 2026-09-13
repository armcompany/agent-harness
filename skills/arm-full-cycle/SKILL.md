---
name: arm-full-cycle
description: Use when starting, resuming, or reviewing product and engineering work spanning business, design, architecture, implementation, validation, security, or production.
---

# ARM Full Cycle

## Mission

Run one end-to-end Product Engineering methodology. Preserve this invariant: **Business context before design, architecture before implementation, evidence before claims.**

The objective is the smallest correct, secure, observable, maintainable solution to the real product problem—not the most code, files, dependencies, or services.

## Persistent state

1. Determine the execution mode.
2. Check for `.harness/` at the target project root. If absent, initialize it from this installed skill's `assets/harness/` templates.
3. If present, read `.harness/status.md` and the artifacts for the active phase; resume rather than repeat completed planning.
4. Update status with `pending`, `in_progress`, `completed`, `blocked`, or `not_applicable`. Record consequential decisions in `.harness/decisions/`.
5. Plan before implementing greenfield products and large features. Use a proportional fast path for small bugs.

Do not mutate a project during AUDIT or RESEARCH unless the user explicitly requests a change. Record findings in the requested deliverable; create or update `.harness/` only when that persistence work is within the authorized scope.

## References

Read only the modules needed for the current decision. The twelve references are modules of one methodology; none establishes a separate doctrine.

| Module | Focus |
| --- | --- |
| [01-business-product.md](references/01-business-product.md) | Doctrine, business, product, domain, modes, and existing-project context |
| [02-design-research.md](references/02-design-research.md) | Research, benchmarking, and visual direction |
| [03-design-system.md](references/03-design-system.md) | Design System and components |
| [04-ux.md](references/04-ux.md) | Journeys, UX, accessibility, and responsiveness |
| [05-architecture.md](references/05-architecture.md) | Architecture, ADRs, and diagrams |
| [06-data-api.md](references/06-data-api.md) | Data, APIs, integrations, and migrations |
| [07-security.md](references/07-security.md) | Security, authorization, and multi-tenancy |
| [08-infrastructure.md](references/08-infrastructure.md) | Infrastructure and observability |
| [09-implementation.md](references/09-implementation.md) | Planning, implementation, and operational discipline |
| [10-testing-validation.md](references/10-testing-validation.md) | Testing, browser validation, dogfooding, and quality gates |
| [11-ai-mobile.md](references/11-ai-mobile.md) | AI, RAG, agents, and mobile |
| [12-production.md](references/12-production.md) | Production, releases, and completion |

## Reference loading by mode

Use progressive disclosure: load the smallest set that enables a safe decision, then add modules as the actual scope requires.

- **GREENFIELD:** 01; 02, 03, and 04 when UI is relevant; 05; 06; 07; 08; 09; 10; 11 when applicable; 12.
- **FEATURE:** 01 for product/domain impact; 05, 06, 07, and 08 when affected; 09 and 10; 02–04 for UI work.
- **BUGFIX:** 09 and 10; load only the affected domain module. Reproduce, find the root cause, make the smallest repair, and validate at runtime.
- **REFACTOR / MIGRATION:** 05, 06, 09, 10, and 12 when production risk exists.
- **ARCHITECTURE:** 01 when needed; 05; 06 when needed; 07; 08; 12 when needed.
- **DESIGN:** 01 when needed; 02; 03; 04; 10.
- **AUDIT / PERFORMANCE:** 01 for context, the directly audited modules, and 10 for evidence.
- **SECURITY:** 05 when needed; 06; 07; 10; 12 when needed.
- **PRODUCTION INCIDENT:** 08, 09, 10, 12, and the affected domain module.
- **RESEARCH:** 01 for context and only the modules being researched.

## Research and visual creation

For a UI-relevant greenfield project, complete design research before the Design System: understand business, audience, positioning, competitors, adjacent products, strong references, extracted principles, and visual direction. Use references to derive patterns and strategies; never copy an interface or identity wholesale.

### Figma and Stitch

Figma and Stitch are optional visual-creation accelerators, not prerequisites. They do not replace research, UX, the Design System, accessibility, or real browser validation.

- Use **Figma MCP** when a Figma URL or node is supplied and the connector is available. Figma may inform research early; create or implement screens only after visual direction and the Design System are established. Fetch structured context and a screenshot before implementation; adapt the result to the project's tokens, components, and conventions instead of blindly copying generated code.
- Use **Stitch MCP** only when it is configured and when generating or iterating a screen or visual variation materially reduces work. Use it after visual direction and the Design System are established; translate its output into project-consistent components.
- If Figma, Stitch, or another MCP is unavailable, continue with the available artifacts and tools. Never invent unknown skill or tool behavior.
- Choose the route that reduces implementation and review effort without increasing dependencies, visual drift, or token cost. Validate the resulting UI in a browser.

## Skill coordination

`harness-engineering` is the primary doctrine when available; specialist skills augment it and never replace it. Detect availability before invoking any skill.

- `find-skills`: discover a missing specialty only when it materially improves the result; evaluate source, maintenance, overlap, and conflicts.
- `frontend-design`: visual synthesis and UI/Design System implementation.
- `agent-browser`: runtime, browser, E2E, and dogfooding validation.
- `ponytail`: final simplification and anti-overengineering review.
- `caveman`: concise communication only; it must not reduce precision, risk reporting, or evidence.

If `find-skills` is unavailable, first inspect installed skills. If no suitable specialist exists, use the repository, official documentation, and native agent capability; record the limitation when it materially affects confidence. Do not install skills automatically or fabricate unknown skill behavior.

## Guardrails

- Respect existing conventions and architecture; a localized feature does not justify rewriting the repository.
- Prefer a modular monolith to microservices unless a concrete, recorded justification exists.
- Never claim success, a fix, testing, or production readiness without fresh build, test, runtime, or browser evidence as applicable.
- Never silently substitute a real integration with fake data.
- Never perform destructive production, database, or cloud operations without explicit approval.
- Before completion, review simplification, the diff, risks, and applicable quality gates.
