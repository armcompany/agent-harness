#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
required_files=(
  README.md
  skills/arm-full-cycle/SKILL.md
  skills/arm-full-cycle/assets/harness/README.md
  skills/arm-full-cycle/assets/harness/status.md
  skills/arm-full-cycle/assets/harness/decisions/README.md
  .harness/README.md
  .harness/status.md
  .harness/business.md
  .harness/product.md
  .harness/domain.md
  .harness/design-research.md
  .harness/design-system.md
  .harness/ux.md
  .harness/architecture.md
  .harness/data.md
  .harness/security.md
  .harness/infrastructure.md
  .harness/plan.md
  .harness/quality-gates.md
  .harness/decisions/README.md
)

for reference in \
  01-business-product.md 02-design-research.md 03-design-system.md 04-ux.md \
  05-architecture.md 06-data-api.md 07-security.md 08-infrastructure.md \
  09-implementation.md 10-testing-validation.md 11-ai-mobile.md 12-production.md; do
  required_files+=("skills/arm-full-cycle/references/$reference")
done

for file in "${required_files[@]}"; do
  test -f "$root/$file" || { echo "Missing: $file" >&2; exit 1; }
done

grep -q '^name: arm-full-cycle$' "$root/skills/arm-full-cycle/SKILL.md"
grep -q 'Business context before design, architecture before implementation, evidence before claims.' "$root/skills/arm-full-cycle/SKILL.md"
grep -q 'GREENFIELD' "$root/skills/arm-full-cycle/SKILL.md"
grep -q 'not_applicable' "$root/skills/arm-full-cycle/assets/harness/status.md"
grep -q '^1\. PRIME DIRECTIVE$' "$root/skills/arm-full-cycle/references/01-business-product.md"
grep -q '^30\. DESIGN RESEARCH OUTPUT$' "$root/skills/arm-full-cycle/references/02-design-research.md"
grep -q '^109\. FINAL RULE$' "$root/skills/arm-full-cycle/references/12-production.md"
if grep -R -q 'Methodology content pending' "$root/skills/arm-full-cycle/references"; then
  echo 'Unexpected pending methodology marker' >&2
  exit 1
fi
grep -q '## Reference loading by mode' "$root/skills/arm-full-cycle/SKILL.md"
grep -q 'Figma and Stitch' "$root/skills/arm-full-cycle/SKILL.md"
grep -q 'not prerequisites' "$root/skills/arm-full-cycle/SKILL.md"
grep -q 'If `find-skills` is unavailable' "$root/skills/arm-full-cycle/SKILL.md"
grep -q 'Do not install skills automatically' "$root/skills/arm-full-cycle/SKILL.md"
grep -q 'assets/harness' "$root/skills/arm-full-cycle/SKILL.md"
grep -q 'Do not mutate a project during AUDIT or RESEARCH' "$root/skills/arm-full-cycle/SKILL.md"
grep -q 'after visual direction and the Design System are established' "$root/skills/arm-full-cycle/SKILL.md"

awk '
  /^[0-9]+\.[[:space:]]/ && $0 !~ /[a-z]/ {
    section = $1
    sub(/\./, "", section)
    seen[section]++
    count++
  }
  END {
    if (count != 109) exit 1
    for (section = 1; section <= 109; section++)
      if (seen[section] != 1) exit 1
  }
' "$root"/skills/arm-full-cycle/references/*.md

echo "arm-full-cycle structure is valid"
