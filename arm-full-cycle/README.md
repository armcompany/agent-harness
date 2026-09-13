# ARM Full Cycle

`arm-full-cycle` is a reusable Product Engineering operating system. It guides work from business context through production readiness while keeping the project state in `.harness/`.

## Status

This is version 1.0.0 of the functional reusable skill. Its approved 109-block methodology is distributed across progressive references and routed by execution mode from the orchestrator.

## Install and use

Package this repository with your preferred skill distribution workflow, then invoke `arm-full-cycle` for product, design, engineering, audit, or incident work. The skill has no mandatory external-tool dependency: companion skills are detected when available and otherwise their responsibilities are handled normally.

When starting work in a target project, the skill initializes or resumes `.harness/`. Read `.harness/status.md` first to continue the active phase.

## Contents

- `skills/arm-full-cycle/`: the installable skill and its progressive references.
- `.harness/`: reusable persistent engineering-state templates.
- `templates/`: reusable ADR and project-state templates.
- `tests/validate-structure.sh`: a dependency-free package contract check.

## Maintaining the methodology

Maintain the approved 109-block source in `skills/arm-full-cycle/references/`, retaining the routing used by `SKILL.md`. Do not add inferred rules when the source is silent.
