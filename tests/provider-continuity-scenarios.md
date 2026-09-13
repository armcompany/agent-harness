# Provider continuity instruction checks

Reviewed on 2026-09-13 using separate baseline and post-change agents. These are simulated instruction-application checks, not live provider integration tests.

Baseline: the existing skill supplied general project status and evidence rules but no provider selection, retry classification, handoff, or return policy. Baseline report: “current SKILL.md defines persistent project status and evidence requirements, but no provider continuity policy.”

| Scenario | Expected and observed post-change decision |
| --- | --- |
| Five-minute deadline, three hours already spent; OpenAI quota exhausted; Kimi lacks required tools; Claude authenticated/compatible/authorized; OpenCode has no model | Choose Claude conditional on readiness, budget, and supported switching. Preserve goal, constraints, workspace, progress, evidence, pending outcomes, and next action. |
| 429 with Retry-After 30 seconds, no quota evidence, waiting fits budget despite urgency | Honor retry timing and bounded retries; do not infer exhausted balance. |
| Primary recovers during a fallback migration whose result is unknown | Reconcile the result before returning; no blind replay or competing writer. |
| Host cannot switch and the active model stops responding | Automatic continuation is unavailable without a surviving controller; use the previously saved checkpoint. |
| OpenCode uses the same exhausted account; another discovered account has unknown sharing authorization | Neither is an eligible fallback on that evidence. Preserve progress and report the missing access/authorization. |
| Host reports 5% remaining balance | Write the complete handoff immediately, spend no budget on optional work, and let a surviving controller select the next eligible model. |

All six decisions matched the intended policy in this run. This does not establish reliability across repeated model samples or functioning automatic switching. Retry/cooldown/spend limits must be supplied by the host/controller; no controller is included in this package.
