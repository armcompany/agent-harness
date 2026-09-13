# 03 — Design System

31. PHASE 4 — DESIGN SYSTEM

Only create or significantly evolve the DS after:

Business Understood
        ↓
Product Understood
        ↓
Audience Understood
        ↓
Design Research Completed
        ↓
References Analyzed
        ↓
Visual Direction Established
        ↓
Design Principles Defined

First inspect whether a Design System already exists.

Search for:

tokens
theme
components
styles
Tailwind config
CSS variables
Figma references
Storybook
shared UI
design documentation

If one exists:

reuse and evolve it.

Do not create a competing DS.

If none exists:

create the minimum necessary foundation.

⸻

32. DESIGN TOKENS

Define semantic tokens.

Consider:

Typography
Colors
Spacing
Radii
Borders
Elevation
Breakpoints
Icons
Motion
Opacity
Z-index

Prefer semantic naming.

Good:

surface-primary
surface-secondary
text-primary
text-muted
border-subtle
status-success
status-warning
status-danger

Avoid coupling the entire DS directly to raw color names.

⸻

33. TYPOGRAPHY SYSTEM

Typography must reflect:

brand
readability
density
platform
content type
language support
numeric requirements
accessibility

Define:

font families
display
heading
body
label
caption
monospace if required
numeric styles if relevant
line heights
weights
letter spacing

Do not use many font families without justification.

⸻

34. COLOR SYSTEM

Color serves function before decoration.

Define:

background
surface
foreground
muted
border
accent
interactive
focus
success
warning
danger
information

Ensure accessible contrast.

Avoid meaningless color proliferation.

⸻

35. SPACING AND LAYOUT

Define a consistent spacing system.

Establish:

base spacing unit
content widths
container behavior
grid
gutters
section spacing
component spacing
responsive rules

Do not choose spacing independently in every component.

⸻

36. COMPONENT PRIMITIVES

Build primitives when justified by product needs.

Possible primitives:

Button
Input
Textarea
Select
Checkbox
Radio
Switch
Dialog
Sheet
Card
Table
Tabs
Toast
Badge
Tooltip
Skeleton
Navigation
Breadcrumb
Pagination
Dropdown
Command Menu

Do not create a massive UI library before the product requires it.

⸻

37. COMPONENT STATES

Relevant components should consider:

default
hover
focus
active
selected
disabled
loading
success
warning
error
empty

Interaction states are part of the DS.

⸻

38. PRODUCT-SPECIFIC COMPONENTS

After primitives exist create domain components where appropriate.

Examples:

PatientCard
MedicalTimeline
TradePosition
PortfolioSummary
DeliveryStatus
DriverCard
AIExecution
ProjectHealth

Do not force product concepts into overly generic components.

⸻

39. DESIGN SYSTEM VALIDATION

Before scaling implementation validate the DS against representative screens.

Prefer coverage of:

one simple screen
one data-heavy screen
one form-heavy screen
one critical workflow

The DS must prove it supports the real product.

Do not design it only in isolation.

⸻

40. DESIGN SYSTEM EVOLUTION

The DS is not immutable.

During implementation:

Discover Recurring Pattern
        ↓
Validate Recurrence
        ↓
Promote to Reusable Component / Token

Do not prematurely generalize.

⸻

