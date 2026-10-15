---
name: cake-outcome-comparison
description: Generate an end-of-session copy-paste prompt for an image model to create a concise, scientifically grounded side-by-side cake-comparison infographic.
license: MIT
---

# Cake outcome comparison prompt

At the end of a cake-formulation session, generate a prompt the learner can copy into ChatGPT, Gemini, or another image-generation model. This skill generates **the prompt only**. It does not call an image model, create an HTML file, create an image, or claim that either cake was baked.

## When to run

Run this skill only after the session has produced a concrete formulation, substitution, or ingredient-constrained prediction. Do not run it for unfinished ingredient intake or a standalone cake-science question.

## Gather the session facts

Use only details established in the session:

- the key ingredient substitutions (what replaced what);
- the visible differences the session's science supports (rise, crust color, crumb density, air-pocket size, visible particles, fragility);
- the qualitative flavor, structure, texture, and leavening scores;
- the largest uncertainty.

If a missing detail would materially change the visual prediction, ask for it. Otherwise state the assumption inside the generated prompt. Never invent an observed bake result.

## Keep the prompt short and image-model friendly

Image models fail on long, text-heavy, or multi-image prompts. Follow these rules:

- **One side-by-side image, not two separate images.** Phase 2 edits that single image.
- **Describe only what can be seen.** Leave out grams, mixing method, oven temperature, and other non-visual detail.
- **Write every label verbatim.** Do not ask the model to compose callouts. Give the exact header, callout, score, and footnote text.
- **Keep text small in volume:** one header per cake, at most 3 callouts on the left and 4 on the right, one score list, and one footnote. Do not add extra boxes, panels, or arrows.
- **Reserve space:** tell the model to leave generous clean space around and below both cakes for labels, and to avoid overlapping labels.
- **Do not offer a stopping point.** Do not tell the model it may stop after Phase 1.

## Prompt template

The generated prompt must use two phases in this form. Fill every bracket from the session facts; keep the rest.

```text
Create a polished educational cake-comparison infographic in TWO PHASES.

PHASE 1 — IMAGE ONLY:
Generate a high-resolution, photorealistic side-by-side food-science illustration.

LEFT: ORIGINAL / COMPARISON ANCHOR
A conventional vanilla butter cake made with wheat flour, butter, eggs, milk, sugar, baking powder, and vanilla. Show an even rise, smooth golden crust, fine uniform crumb, and many small consistent air bubbles.

RIGHT: PREDICTED [SHORT CAKE NAME]
A plausible experimental cake made by [one-line substitution summary]. Show [only the scientifically justified visible differences from the session].

Use identical camera angle, scale, lighting, background, and cutaway view for both cakes. Make the differences obvious and realistic. No frosting, fruit, chocolate, decorations, or cartoon styling. Leave generous clean space around and below both cakes for labels.

Do not add any text during Phase 1.

PHASE 2 — TEXT OVERLAY:
Using the exact image from Phase 1, add a clean, professional infographic layout without changing, repainting, blurring, or reducing the detail of either cake.

Add these labels:

LEFT HEADER:
ORIGINAL / COMPARISON ANCHOR
Conventional vanilla butter cake

LEFT CALLOUTS:
• Even rise — [mechanism]
• Fine crumb — [mechanism]
• Predictable browning — [mechanism]

RIGHT HEADER:
PREDICTED EXPERIMENTAL RESULT
[Short cake name]

RIGHT CALLOUTS:
• [Visible difference] — [mechanism]
• [Visible difference] — [mechanism]
• [Visible difference] — [mechanism]
• [Largest uncertainty] — [why it is uncertain]

BOTTOM REPORT:
Predicted quality — qualitative estimate, not a bake-test result

Flavor: [score]/5
Structure: [score]/5
Texture: [score]/5
Leavening: [score]/5

FOOTNOTE:
The right-hand cake is a scientific prediction, not a photograph or guaranteed outcome. Actual results depend on [session-specific variables], mixing, and baking conditions.

Keep all text sharp, readable, correctly spelled, and outside the cake surfaces. Use a clean sans-serif font, strong contrast, consistent alignment, and no overlapping arrows or labels.
```

## Required content

- The original/comparison anchor is always on the left, the predicted experimental cake on the right.
- Show separate qualitative 0–5 scores for the experimental cake only, using the session's scores. Never total them or call them probabilities.
- Include the largest uncertainty as a right-hand callout.
- Mention a key process risk (for example over-mixing or quick browning) in a callout or in the footnote's list of variables, only if it fits within the limits above.
- Keep the footnote's statement that the predicted cake is not a photograph, bake-test result, or guarantee.

## Output format

Return:

1. A brief sentence saying the prompt is ready to copy.
2. One fenced `text` block containing the complete prompt.

Do not return an HTML link, image, SVG, generated image, or claim that the external model has completed either phase. If the learner reports that the model cannot render the text, offer to shorten the callouts further rather than adding fallback instructions to the prompt.

## Scientific guardrails

- Describe the proposed result as predicted, likely, or experimental.
- Preserve uncertainty; do not turn qualitative scores into probabilities.
- Explain visible features through gas creation/retention, batter water and flow, browning, starch, and protein setting.
- Do not imply that the comparison anchor is universally ideal.
- Do not add unsupported ingredients or visual features.
- Never suggest tasting raw batter.
