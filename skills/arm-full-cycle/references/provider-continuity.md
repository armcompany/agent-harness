# Provider continuity

Operational extension to the 109-block methodology. Use for discovery, provider failures, and resuming work across executors. It defines decisions and handoff data; this package does not implement a provider router or background monitor.

## OpenCode as the preferred verification coordinator

At continuity setup, on provider failure, and when a primary-provider recheck is due, check OpenCode first through available documented status/discovery interfaces. Use it as the preferred verification and recovery coordinator when the installed version and host integration support that role. This preference is independent of the task model order: OpenAI → Kimi → Claude → other eligible models.

Verify that OpenCode is reachable and has the required control capabilities. If verification itself requires model inference, verify a usable configured model as well. An installed executor, a running process, or a previously successful response is not a guarantee of future responses. OpenCode using the same exhausted account cannot supply an independent inference fallback.

For unattended recovery, a surviving host/controller must invoke these checks even when the task model stops responding. Do not assume OpenCode provides an automatic monitoring loop merely because it is installed. If OpenCode is absent, unresponsive, or lacks the required integration, use another available supported host/controller; otherwise preserve the checkpoint and report that automatic recovery is unavailable. Bound OpenCode checks and apply cooldowns as for other candidates.

## Discover and select

- Inspect available host tools and installed executors through documented, read-only discovery/status commands. Consult installed help before using unfamiliar commands. Do not install software, change accounts, purchase credits, or rewrite global configuration to create an alternative.
- Identify each candidate as executor + provider + model + account/quota scope. OpenCode is an executor; inspect its configured models. The same exhausted account reached through another executor is not a fresh alternative.
- Record only sanitized metadata: candidate ID, authentication status, availability evidence and timestamp, required capabilities, failure category, and next eligible check. Never print, copy, or persist credentials or raw authentication files.
- Installation or a saved credential does not prove readiness. Prefer documented status checks; a minimal probe must fit existing authorization and budget and contain no project content. Unknown balance stays unknown; do not invent access to subscription quotas.
- Filter for valid access, task-required tools, context capacity, workspace access, and existing budget/data-sharing constraints. Discovering an account does not itself authorize sending project data to it.
- Among eligible candidates prefer OpenAI → Kimi → Claude → other configured models, including those reached through OpenCode. Explicit user ordering wins. Skip unavailable or incompatible candidates; select the least costly sufficient option within a tier when cost is known. If no candidate qualifies, preserve progress and report what is missing.

## Classify before retrying

| Evidence | Decision |
| --- | --- |
| Explicit exhausted balance or quota | Mark that account unavailable and choose the next eligible candidate. Recheck only after a reported reset, credit change, or controller cooldown. |
| Temporary rate limit | Honor documented retry timing such as `Retry-After`; use bounded retries. If waiting exceeds the task budget, try another eligible candidate. A bare 429 does not prove exhausted balance. |
| Timeout, connection failure, or service outage | Use bounded backoff; then consider an independent available route. Reconcile uncertain tool outcomes before replaying anything. |
| Invalid authentication or permission | Exclude that candidate until access changes; do not loop or bypass permissions. |
| Context/tool incompatibility | Select a compatible model or prepare a smaller factual handoff preserving required context. |
| Unknown error | Record sanitized evidence, diagnose with bounded checks, and keep its cause unknown until established. |

The controller must bound retries, probes, total spend, and switching attempts. Respect server retry timing; avoid cycling indefinitely through failed candidates. If all options fail, report a recoverable blocked state.

## Checkpoint and resume

During authorized project work, update `.harness/status.md` after meaningful steps and before risky operations; a model may stop before it can save a final checkpoint. Include:

- Goal, user constraints, active phase, and next action.
- Workspace/branch, changed files, decisions, and relevant artifact paths.
- Completed work and verification evidence; unresolved failures.
- In-flight tool/process identifiers and operations with unknown outcomes.
- Active candidate, sanitized switch reason, and next eligible primary check.

### Low-balance handoff

If the host exposes a remaining-balance or quota estimate, treat it as an operational signal:

- At or below 20%, finish only the smallest safe step and schedule a checkpoint soon.
- At or below 10%, stop starting new work and write a complete handoff before another model call.
- At or below 5%, write the handoff immediately, then request the smallest continuation needed to save it. Do not spend the remaining budget on explanation, refactoring, or optional checks.

If no reliable estimate exists, use explicit quota errors, repeated failures, or the controller's configured threshold. Never claim a percentage that the host did not report. A checkpoint must be saved before switching whenever the host can still write; if the model may terminate before writing, a surviving controller must maintain the checkpoint.

The handoff must tell the next model exactly what to do: read the project instructions and `.harness/status.md`, inspect the current diff and unresolved operations, verify the last known state, then continue at the recorded next action. It must not repeat completed steps or replay an operation with an unknown result. The next model may be OpenAI, Kimi, Claude, or an eligible model through OpenCode, selected by the discovery policy above.

Respect the main skill's AUDIT/RESEARCH write restrictions; use an authorized host checkpoint or the requested deliverable when project writes are out of scope.

At handoff the controller stops or reconciles the previous worker before granting another worker write access. The successor reads project instructions, this skill, and the checkpoint; verifies actual workspace and operation state; then resumes the next unfinished step. Never blindly replay a migration, deployment, payment, or message with an unknown result. Credentials and hidden model reasoning are not handoff content.

## Return to the preferred candidate

An external controller may recheck OpenAI after cooldown or documented recovery. Return only after fresh access/capability evidence and at a safe checkpoint, with no unresolved mutation or competing writer. Do not interrupt a healthy operation just to change models. If the primary fails again, resume cooldown and keep the eligible fallback. Announce actual switches and remaining limitations briefly.

## Example

OpenAI has exhausted quota; Kimi lacks required tools; Claude is authenticated and compatible; OpenCode has no configured model. Select Claude through a supported host/controller, checkpoint progress, and reconcile any pending operation. If OpenAI recovers during a migration, resolve its outcome before returning. Without switching support, provide the checkpoint and explain that automatic continuation is unavailable.
