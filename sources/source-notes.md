# Research notes: cake science and portable agent skills

Research pass: 2026-10-16. These notes distinguish full-text pages fetched and read from sources found but not fully accessible. This is a focused evidence base, not an exhaustive review.

## Mechanistic cake science

### 1. Cake baking changes batter structure over time — full text read

Ceylan, “Macromolecular changes in cake baking process studied by Fourier transform infrared spectroscopy and rheometry” (2025), https://pmc.ncbi.nlm.nih.gov/articles/PMC13153287/ . The open-access paper reports experimental temperature-profile, rheology, and FTIR measurements on a specific low-ratio sponge formulation (wheat flour, sugar, eggs, baking powder; no added fat or milk). It describes viscosity decrease during early heating and later viscosity increase, and detects starch/protein macromolecular changes in the later baking samples. The authors discuss the interacting effects of fat melting, gas-cell expansion, starch granule changes, and setting based on prior literature.

**Use:** evidence that batter rheology and macromolecular transitions change through baking and interact with gas-cell development. **Limit:** its detailed temperatures and phases belong to this formula, apparatus, and protocol. Do not use them as universal cake-setting temperatures or directly extrapolate its composition to butter cakes.

### 2. Egg-yolk lipids and sponge-cake gas-cell stability — full text read

Deleu et al., “The Role of Intact and Disintegrated Egg Yolk Low-Density Lipoproteins during Sponge Cake Making and Their Impact on Starch and Protein Mediated Structure Setting” (2021), *Foods* 10(1):107, https://pmc.ncbi.nlm.nih.gov/articles/PMC7825502/ . This open-access controlled study manipulated egg-yolk lipids in sponge-cake batters and measured batter density/viscosity, cake properties, and starch/protein setting. Its abstract and results report that yolk lipids affected gas-cell incorporation and stability, while having less impact on cake structure setting in the tested process. It explains cake setting through starch gelatinization and protein polymerization/aggregation.

**Use:** specific experimental support for the role of egg-yolk surface-active lipids in bubble interfaces in this sponge process, and for treating gas-cell stability separately from later structure-setting. **Limit:** do not infer that all cakes require yolk or that this finding supplies universal egg-replacement ratios.

### 3. Ingredient functionality review — landing page found, full text unavailable

Wilderjans, Luyts, Brijs & Delcour, “Ingredient functionality in batter type cake making” (2013), *Trends in Food Science & Technology* 30(1):6–15, DOI https://doi.org/10.1016/j.tifs.2012.11.011 . Search results and the citation identify it as a review relevant to batter-type cake functionality, but the publisher page returned HTTP 403 during this research pass. No detailed claims in this package are attributed to its inaccessible full text.

### Mechanistic synthesis used in the reference

- Cake is a gas-cell material: mixing and/or chemical leavening create bubbles; gas expansion and water vapor grow them; batter rheology influences whether they remain and grow or coalesce/escape.
- Crumb formation requires the material around gas cells to set. Starch gelatinization and heat-induced protein denaturation/aggregation are coupled to water availability, temperature history, and formula. Evidence supports these mechanisms, not a single universal setting temperature.
- Flour proteins can develop gluten when hydrated and mixed; the balance between sufficient framework and excessive toughness depends on formulation and mixing.
- Sugar, fat, water, proteins, and leaveners affect multiple coupled processes. “Ingredient role” is therefore not a one-ingredient/one-function lookup table.
- These principles enable causal hypotheses and guide experimental formulation. They do not establish exact ratios, bake time, or guaranteed sensory success for a novel combination. Recipes and empirical bake trials remain relevant as validation, not as the only source of reasoning.

The detailed agent-facing explanation and source-specific limits are in [`../references/cake-formation-science.md`](../references/cake-formation-science.md). Practical recipe examples are separately listed in [`../references/substitutions-and-process.md`](../references/substitutions-and-process.md).

## Portable Agent Skills standards — official documentation read

1. **OpenAI, “Build skills”** — https://developers.openai.com/codex/skills . Read during this session. Defines skill directories centered on `SKILL.md`, with optional references/scripts/assets; Codex repository discovery uses `.agents/skills`; platform-specific locations vary. For reusable distribution, OpenAI recommends packaging skills as plugins, while direct directories are suitable for repository-scoped authoring and download/copy installation.
2. **Agent Skills, “Specification”** — https://agentskills.io/specification . Read during this session. Defines the interoperable format: a directory with `SKILL.md`, YAML frontmatter requiring `name` and `description`, optional references/assets/scripts, and progressive disclosure. It recommends keeping skill instructions focused and provides a validation tool.
3. **Anthropic, “Extend Claude with skills”** — https://code.claude.com/docs/en/skills . Read during this session. Documents Claude Code skill discovery and the same `SKILL.md`-centered format, with platform-specific install/discovery conventions.

**Project decision:** author skills in the open Agent Skills format under Codex’s repository discovery path `.agents/skills/`. The standard is shared, but installation paths and optional features are not identical across products. The README must instruct users to download the repository and install/copy the skill directories into their chosen agent’s documented skill location; do not promise one universal installer or feature parity. Plugin packaging is a possible later distribution method, not required for this first downloadable repo package.

## Prior recipe/practical sources retained

These sources provide recipe examples or applied substitution advice, not the mechanistic evidence above:

- King Arthur Baking, cake mixing methods: https://www.kingarthurbaking.com/blog/2017/04/28/cake-mixing-methods — practical comparison of mixing architectures; culinary guidance, not a controlled universal model.
- King Arthur Baking, cake-flour substitution: https://www.kingarthurbaking.com/blog/2024/09/30/how-to-make-cake-flour — specific practical conversion, not identity between flours.
- King Arthur Baking, egg substitution guide: https://www.kingarthurbaking.com/blog/2021/01/21/guide-for-substituting-eggs-best-egg-replacers — context-sensitive substitution guidance.
- King Arthur Baking, butter/oil in cake: https://www.kingarthurbaking.com/blog/2022/06/28/oil-for-moist-rich-cake-like-boxed-mix — practical, formula-specific guidance.
- King Arthur Baking, Golden Vanilla Cake: https://www.kingarthurbaking.com/recipes/golden-vanilla-cake-recipe — example recipe only; not proof of a uniquely best cake.

## Food-safety sources retained

- CDC, “Raw Flour and Dough”: https://www.cdc.gov/food-safety/foods/no-raw-dough.html — public-health guidance against tasting uncooked flour/egg batter and relevant hygiene/recall measures.
- FDA, “Food Allergies”: https://www.fda.gov/food/nutrition-food-labeling-and-critical-foods/food-allergies — labeling and cross-contact guidance; recipe text alone cannot guarantee allergen safety.
- USDA FSIS, “Safe Minimum Internal Temperature Chart”: https://www.fsis.usda.gov/food-safety/safe-food-handling-and-preparation/food-safety-basics/safe-temperature-chart — search result inspected, page extraction not completed; this package does not use it to set a universal cake temperature.

## Known evidence limits

- The two read primary experimental papers use specific sponge cake systems; the evidence does not directly validate arbitrary ingredient combinations or every cake architecture.
- The review paper full text was inaccessible in this research pass. This should be remedied in a later research pass before relying on detailed review claims.
- No bake trials, quantitative formula optimization, score calibration, or sensory testing were performed. Scores remain comparative project heuristics.
