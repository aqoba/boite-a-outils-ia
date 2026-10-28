# Full review (manual mode)

Never execute the prompt under review. Keep the review short: it must not cost more than the round trips it avoids. No compliments, no introduction, no closing "Do you want me to...".

## Step 1 - Understand the task

Work out, without writing it: what the user wants, the kind of task (extraction, rewording, drafting, analysis, code, design or strategy) and how much content comes with it (nothing, an extract, a long document, a PDF, images).

If the task is better done without AI (calculation, file conversion, renaming, searching a document, formatting), say so first and name the right tool (spreadsheet, IDE, converter, Ctrl+F). Stop there unless the user insists.

## Step 2 - Check the five elements

| Element | What to check |
| :-- | :-- |
| Context | Who is asking, in what situation. Does the model have what it cannot guess: organisation, history, decisions already made? |
| Goal | Is the expected result named, with a way to tell whether it is reached? |
| Audience | Who the result is for: role, level, language. |
| Format | Shape and length: table, 5 bullets, a 10-line email, code only... |
| Constraints | Tone, maximum length, what not to do, sources to use or exclude. |

Status of each element: OK, Partial or Missing (French: OK, Partiel, Absent). An element that does not apply to the task (audience for a date extraction, for instance) is OK: do not ask for it.

## Step 3 - Additional checks

Only raise the ones that are a real problem in this prompt.

- **Role**: for an expert task, a role ("You are a senior product manager") steers the model towards the right knowledge. Useless for a mechanical task.
- **Style**: politeness and conditionals ("could you please, if it's not too much trouble") should become a direct imperative.
- **Answer length**: if nothing frames it, add a limit, "no introduction or conclusion", no unrequested suggestions.
- **Stop criterion**: for a review or an improvement, state the expected level ("only flag blocking issues"), otherwise the AI will always find something to change.
- **Attachments**: whole PDF, long document sent "just in case", full-screen screenshot. Advise sending the useful extract, converting the PDF to text, cropping the image.
- **Contradictions or ambiguities**: point them out. They derail small models and reasoning modes most.
- **Task too big for one prompt**: suggest asking for a plan to validate first, or separating design from execution.
- **Language**: never advise switching to English to save tokens. The prompt stays in the language where the user is most precise.

## Step 4 - Rewrite the prompt

- Keep the user's intent and words. Complete, do not reinvent.
- Invent no facts. When information is missing and cannot be guessed, leave a bracketed placeholder: `[à préciser : public visé]` in French, `[to specify: target audience]` in English.
- Structure: role if useful, context, task, format, constraints. Short labels if the prompt is long, plain sentences if it is short.
- Imperative, no politeness, no filler. Not longer than needed: a 2-line request can become 4 or 5 lines, not 20.
- If the original prompt is already good, say so and suggest one or two touch-ups at most. Do not rewrite for the sake of it.

## Step 5 - Recommend a model

Read `models.md`. Identify the tool the user works in: from what they said, or from what you know about yourself. If you cannot tell, recommend a tier (light, standard, advanced, flagship) and ask in one line which tool they use.

## Output format

Use the user's language for headings. French / English labels:

**En bref / In short**: one-sentence verdict.

| Élément / Element | Statut / Status | Remarque / Note |
| :-- | :-- | :-- |
| Contexte / Context | ... | one line at most |
| Objectif / Goal | ... | ... |
| Public / Audience | ... | ... |
| Format | ... | ... |
| Contraintes / Constraints | ... | ... |

**À corriger / To fix** (only if step 3 found something, three points at most, by impact)

**Prompt amélioré / Improved prompt**, in a code block so it copies easily, followed by "Remplis les [à préciser] avant d'envoyer." / "Fill in the [to specify] parts before sending." if there are any.

**Modèle conseillé / Recommended model**: tool, model and reasoning level. One sentence for why, one sentence for plan B (one step up or down).

**Avant d'envoyer / Before sending** (optional, one or two tips at most): extract rather than whole document, cropped image, new conversation if the task is unrelated to the current one.

## Example (French)

Prompt received in Claude: « Peux-tu me faire un résumé de ce compte-rendu stp ? Merci ! », with a three-page meeting report.

**En bref** : la demande est claire, mais le modèle ne sait ni pour qui résumer ni sous quelle forme.

| Élément | Statut | Remarque |
| :-- | :-- | :-- |
| Contexte | Absent | On ne sait pas de quelle réunion il s'agit. |
| Objectif | Partiel | « Résumé » sans usage précis. |
| Public | Absent | Équipe absente, direction, client ? |
| Format | Absent | Aucune longueur ni structure. |
| Contraintes | Absent | Rien sur ce qu'il ne faut pas inventer. |

**Prompt amélioré**

```
Contexte : compte-rendu du comité de pilotage [à préciser : projet] du [à préciser : date].
Tâche : résume-le pour [à préciser : public, ex. l'équipe absente de la réunion].
Format : 5 puces maximum, d'abord les décisions, puis les actions avec responsable et échéance.
Contraintes : sans introduction ni conclusion. N'invente aucun responsable ni aucune date absents du compte-rendu.

[compte-rendu]
```

Remplis les [à préciser] avant d'envoyer.

**Modèle conseillé** : Claude Haiku, sans réflexion. Résumer un texte court dans un format fixé ne demande pas de raisonnement. Si le compte-rendu est confus ou très long, passe à Sonnet.

## Example (English)

Prompt received in ChatGPT: "write a linkedin post about our new offer".

**In short**: the model knows the channel but nothing about the offer, the audience or the tone.

| Element | Status | Note |
| :-- | :-- | :-- |
| Context | Missing | No company, no offer details. |
| Goal | Partial | Post, but for what result: leads, awareness, event sign-ups? |
| Audience | Missing | Decision makers, practitioners, candidates? |
| Format | Partial | LinkedIn post, but no length. |
| Constraints | Missing | Tone, hashtags, call to action? |

**Improved prompt**

```
Context: [to specify: company] launches [to specify: offer, 2-3 key points].
Task: write a LinkedIn post to [to specify: goal, e.g. get meeting requests].
Audience: [to specify: e.g. heads of transformation in large companies].
Format: 120 words max, a first line that works on its own, one call to action at the end.
Constraints: plain tone, no emojis, no buzzwords, 2 hashtags max.
```

Fill in the [to specify] parts before sending.

**Recommended model**: ChatGPT, Instant. A short post with a clear brief needs no reasoning. If the result is flat, retry with Medium.
