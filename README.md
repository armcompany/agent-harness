```
@@@@@@   @@@@@@@   @@@@@@@@@@      @@@  @@@   @@@@@@   @@@@@@@   @@@  @@@  @@@@@@@@   @@@@@@    @@@@@@
@@@@@@@@  @@@@@@@@  @@@@@@@@@@@     @@@  @@@  @@@@@@@@  @@@@@@@@  @@@@ @@@  @@@@@@@@  @@@@@@@   @@@@@@@
@@!  @@@  @@!  @@@  @@! @@! @@!     @@!  @@@  @@!  @@@  @@!  @@@  @@!@!@@@  @@!       !@@       !@@
!@!  @!@  !@!  @!@  !@! !@! !@!     !@!  @!@  !@!  @!@  !@!  @!@  !@!!@!@!  !@!       !@!       !@!
@!@!@!@!  @!@!!@!   @!! !!@ @!@     @!@!@!@!  @!@!@!@!  @!@!!@!   @!@ !!@!  @!!!:!    !!@@!!    !!@@!!
!!!@!!!!  !!@!@!    !@!   ! !@!     !!!@!!!!  !!!@!!!!  !!@!@!    !@!  !!!  !!!!!:     !!@!!!    !!@!!!
!!:  !!!  !!: :!!   !!:     !!:     !!:  !!!  !!:  !!!  !!: :!!   !!:  !!!  !!:            !:!       !:!
:!:  !:!  :!:  !:!  :!:     :!:     :!:  !:!  :!:  !:!  :!:  !:!  :!:  !:!  :!:           !:!       !:!
::   :::  ::   :::  :::     ::      ::   :::  ::   :::  ::   :::   ::   ::   :: ::::  :::: ::   :::: ::
 :   : :   :   : :   :      :        :   : :   :   : :   :   : :  ::    :   : :: ::   :: : :    :: : :
```

# ARM Full Cycle

`arm-full-cycle` is a reusable Product Engineering operating system. It guides work from business context through production readiness while keeping the project state in `.harness/`.

## Status

This is version 1.0.0 of the functional reusable skill. Its approved 109-block methodology is distributed across progressive references and routed by execution mode from the orchestrator.

## Install and use

From the published package:

```sh
npx skills add armcompany/agent-harness
```

From a local checkout (verified with skills CLI 1.5.26, which installs `skills/arm-full-cycle/` including `assets/harness/` and `references/`):

```sh
npx skills add /path/to/agent-harness
```

Then invoke `arm-full-cycle` for product, design, engineering, audit, or incident work. The skill has no mandatory external-tool dependency: companion skills are detected when available and otherwise their responsibilities are handled normally.

When starting work in a target project, the skill initializes or resumes `.harness/`. Read `.harness/status.md` first to continue the active phase.

For a manual handoff, run `skills/arm-full-cycle/scripts/arm-resume /path/to/project` (or the same `scripts/arm-resume` path inside the installed skill). It checks the Git status, shows the saved harness state, and prints a ready-to-use continuation prompt. It does not switch models itself; the executor or an external controller must perform that step.

## Contents

Provider continuity is documented in `skills/arm-full-cycle/references/provider-continuity.md`: check OpenCode first as the preferred verification and recovery coordinator, discover configured candidates, prefer OpenAI → Kimi → Claude → other eligible options for task execution, preserve progress, and return to the preferred provider at a safe checkpoint. At 20%, 10%, and especially 5% remaining balance, the agent progressively stops new work and writes a handoff for another model. OpenCode candidates are evaluated by their configured provider/model; OpenCode availability and control capabilities must be verified. Automatic discovery, switching, and recovery monitoring require compatible host support or an external controller; this package does not ship that controller.

- `skills/arm-full-cycle/`: the installable skill and its progressive references.
- `.harness/`: reusable persistent engineering-state templates.
- `templates/`: reusable ADR and project-state templates.
- `tests/validate-structure.sh`: a dependency-free package contract check.

## Maintaining the methodology

Maintain the approved 109-block source in `skills/arm-full-cycle/references/`, retaining the routing used by `SKILL.md`. Do not add inferred rules when the source is silent.
