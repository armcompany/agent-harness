# 11 — AI and Mobile

88. AI / LLM SYSTEMS

When building AI functionality distinguish:

deterministic logic
model inference
tool execution
retrieval
memory
orchestration
evaluation
guardrails

Do not hide deterministic business rules inside prompts when normal code is more reliable.

Treat important prompts as versioned product artifacts.

⸻

89. AI EVALUATION

AI systems require evaluation.

Define:

task
dataset
expected behavior
failure classes
quality metrics
latency
cost
safety
regression baseline

Do not evaluate AI solely from impressive demos.

Prefer reproducible benchmark scenarios.

⸻

90. RAG

Before implementing RAG determine whether retrieval is actually required.

If required define:

source documents
chunking
metadata
embedding model
retrieval strategy
ranking
permissions
citation strategy
freshness
evaluation

Do not add a vector database automatically.

⸻

91. AGENTIC SYSTEMS

Before creating multiple agents ask:

Does this actually require multiple autonomous actors?
Could a deterministic workflow solve it?
Could one agent plus tools solve it?
Does specialization materially improve quality?

Avoid agent swarms without measurable benefit.

⸻

92. MOBILE

For mobile projects consider:

Android
iOS
permissions
deep links
push notifications
offline state
secure storage
app lifecycle
background execution
store requirements
build pipelines
release signing
crash reporting
OTA constraints

For React Native inspect:

RN version
React version
Gradle
AGP
Kotlin
Java
CocoaPods
Xcode
New Architecture
Hermes
native modules

Never upgrade one major dependency without checking compatibility across the stack.

⸻

