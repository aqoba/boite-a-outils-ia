# Model guide

Last updated: October 2026. Models and prices change every month: update this file rather than SKILL.md. Lines marked "(to check)" come from secondary sources and have not been confirmed by the vendor.

## Choosing a tier

| Tier | Typical tasks | Reasoning level |
| :-- | :-- | :-- |
| Light | Fixing an email, extracting dates, sorting verbatims, rewording, short factual question | Off or low |
| Standard (default) | Drafting a document, analysing a meeting report, writing a script, a synthesis | Medium |
| Advanced | Complex reasoning, designing a transformation, choosing between options, architecture | Medium to high |
| Flagship | A problem the advanced tier could not solve, very high stakes | Medium |

Rules:

- Recommend the cheapest tier with a reasonable chance of success, and name the tier to move up to if the result is not good enough.
- Exception: for heavy design work (architecture, strategy, transformation plan), go straight to Advanced.
- A small model on a complex task is a false saving: more iterations, so more expensive in the end.
- Task mixing design and execution: plan with an advanced model, execute with a lighter one.
- Reasoning tokens are billed at the output price, about 5 times the input price. More reasoning does not always give a better answer: recommend a high level only for a multi-step problem, never the maximum by default.
- Always recommend within the tool the user works in. If they say a model is not available on their plan, suggest the closest one.
- Name the model the way the user sees it in their tool's model picker.

## Claude (claude.ai, Claude Code, API)

| Tier | Model | API price, $ per million tokens (input / output) |
| :-- | :-- | :-- |
| Light | Haiku 5.5 | 0.10 / 0.50 |
| Standard | Sonnet 5.5 | 2 / 10 |
| Advanced | Opus 5.5 | 4 / 20 |
| Flagship | Fable 5.1 | 10 / 50 |

Reasoning: extended thinking on or off, and an effort level (low / medium / high) where the tool offers it. Haiku 5.5 costs 5 times more when the prompt exceeds 100,000 tokens (roughly 70,000 words): for long contexts, recommend Sonnet 5.5.

## ChatGPT (to check)

In the main Chat picker, the levels are shown as Instant, Medium, High, Extra High and Pro.

| Tier | Choice in the picker | Notes |
| :-- | :-- | :-- |
| Light | Instant | |
| Standard | Medium | |
| Advanced | High, or Extra High for long multi-step problems | |
| Flagship | Pro (GPT-6 Astra) | Pro, Business and Enterprise plans only |

In Work and Codex, models are picked by name (GPT-6 Luna, GPT-6.1 Sol, GPT-6.1 Terra, GPT-6 Astra) with a level from Light to Ultra. Map them as: Luna = Light tier, Sol or Terra at Light/Medium = Standard, Sol or Terra at High = Advanced, Astra = Flagship.

## Gemini (to check)

The model names available in the Gemini app vary by plan and change often. Map what the user sees:

| Tier | Model family |
| :-- | :-- |
| Light | Flash-Lite, or Flash without thinking (often labelled "Fast") |
| Standard | Flash with thinking |
| Advanced | Pro (Gemini 3.1 Pro) |
| Flagship | Gemini 4 Argon, where available |

## GitHub Copilot

Since June 1, 2026, Copilot is billed per token in GitHub AI Credits, at each model's rate. Free and Student plans only get automatic model selection ("Auto").

| Tier | Models | Price, $ per million tokens (input / output) |
| :-- | :-- | :-- |
| Light | Claude Haiku 5.5, GPT-6 Luna | 0.10 / 0.50 |
| Light | Gemini 3.8 Flash | 0.75 / 3.75 |
| Standard | Claude Sonnet 5.5, GPT-6.1 Sol, Gemini 4 Argon | 2 / 10 |
| Advanced | Claude Opus 5.5 | 4 / 20 |
| Flagship | GPT-6 Astra, Claude Fable 5.1 | 10 / 50 |

Several standard and flagship models are not available on the Pro plan (Pro+, Business or Enterprise needed). "Auto" lets Copilot pick the model: a good default when the user does not know which one to choose.

## Sources

- Claude: Anthropic API pricing page, October 2026.
- ChatGPT: secondary article on GPT-6 Astra reasoning levels (logicweb.com, September 2026) and OpenAI release notes relayed by releasebot.io (October 2026).
- Gemini: gradually.ai model overview (October 2026). The consumer app picker could not be confirmed.
- Copilot: Copilot model list based on GitHub documentation (digintoai.com, October 21, 2026).
