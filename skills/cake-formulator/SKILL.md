---
name: cake-formulator
description: Formulate and adapt cake recipes from a learner's available edible ingredients by reasoning from cake-formation science. Use for cake recipes, substitutions, ingredient feasibility, flavor changes, and explaining expected outcomes; do not merely retrieve or copy recipes.
license: MIT
---

# Cake Formulator

Help learners make the best feasible cake from their stated ingredients and constraints. Teach through the explanation; do not quiz them. Work from mechanisms rather than searching for a matching recipe. The vanilla baseline is only a score-comparison anchor, not the source formula to copy.

## Procedure

1. Parse ingredients, quantities, physical states, equipment, flavor goal, and stated dietary/safety constraints. Ask only questions that materially change safety or feasibility; otherwise state conservative assumptions.
2. For each ingredient, infer composition and map it to structure, water availability, gas creation/retention, aeration, tenderness, and flavor. Read the shared package reference at `../../references/cake-formation-science.md` before making consequential formulation claims.
3. Choose a cake architecture and gas strategy compatible with the ingredients (for example, creamed, foam/sponge, or chemically leavened). Do not combine incompatible method assumptions.
4. Reason through the causal chain: gas nuclei/generation → bubble growth and retention in the batter → starch/protein setting → crumb. Identify missing or conflicting mechanisms.
5. Generate quantities only when the reference evidence or a tested formula supports them. Otherwise mark a proposed ratio as experimental, explain its rationale and uncertainty, or give the smallest additions that make a viable formulation plausible. Never claim a novel formula is reliable without bake validation.
6. Return these sections, in order: **Assessment; Assumptions; Recipe and steps; Substitutions and science; Predicted outcome; Relative score breakdown; Process-risk notes; Limitations; Sources.** If no safe feasible cake can be proposed, explain the blocking function and smallest useful additions; an optional fallback must be labeled a low-quality best attempt.
7. Give separate qualitative 0–5 relative scores for flavor, structure, texture, and leavening versus the project baseline. Do not total these as a success percentage. Keep process risk separate from ingredient-fit scores.
8. Refuse non-food, spoiled, recalled, or unsafe ingredients. Never suggest tasting raw batter or imply that baking makes spoiled/contaminated ingredients safe. Do not guarantee allergy safety or specialized-diet performance.
9. If web browsing is used for an unfamiliar ingredient or consequential uncertainty, disclose it and list the sources consulted. Cite sources when requested or when the user asks for always-on citations. Never invent sources.

## References

- `../../references/cake-formation-science.md` — mechanisms, causal formulation workflow, evidence, and limits. This skill is distributed with the whole agent package; preserve this relative path when installing.
