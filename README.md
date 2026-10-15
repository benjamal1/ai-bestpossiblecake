# Best Possible Cake

A teaching agent that reasons from cake-making science to make the best feasible cake from available ingredients. It explains ingredient functions and uncertainty rather than merely finding a recipe to copy.

## Use it here

1. `cd` to this repository root in an AI coding agent that reads `AGENTS.md`.
2. Ask naturally for a cake recipe, ingredient substitution, or explanation of cake science. The root [`AGENTS.md`](AGENTS.md) is the agent entry point and routes the task to the relevant skill.
3. If your agent does not automatically read `AGENTS.md`, provide that file as its instructions.

No plugin, marketplace, app, or setup command is required.

## Agent materials

- [`AGENTS.md`](AGENTS.md): primary Best Possible Cake agent instructions, loaded when working in this repository.
- [`skills/best-possible-cake/SKILL.md`](skills/best-possible-cake/SKILL.md): primary packaged agent skill.
- [`skills/cake-formulator/SKILL.md`](skills/cake-formulator/SKILL.md): focused recipe-generation and substitution workflow.
- [`skills/cake-science-tutor/SKILL.md`](skills/cake-science-tutor/SKILL.md): focused mechanism-explanation workflow.
- [`skills/cake-outcome-comparison/SKILL.md`](skills/cake-outcome-comparison/SKILL.md): end-of-session prompt generator for a concise side-by-side cake-comparison infographic.
- [`references/cake-formation-science.md`](references/cake-formation-science.md): the canonical, source-linked causal model shared by the skills.
- [`references/`](references/): food safety, practical examples, and relative comparison baseline.
- [`sources/source-notes.md`](sources/source-notes.md): source provenance and evidence limitations.
- [`evaluation/scenarios.md`](evaluation/scenarios.md): 14 manual rubric-based scenarios.
- [`classroom-demo.md`](classroom-demo.md): classroom demonstration and debrief.

The skills use the open Agent Skills `SKILL.md` format and remain visible at the repository root. To use this as an agent, keep the repository intact and open it as the project so `AGENTS.md` can reach the skills and shared references. Individual skills depend on the package-level science reference, so do not copy a skill directory by itself. Other products may have different skill-discovery conventions; no plugin or marketplace support is required here.

## Limits

Mechanistic reasoning guides plausible formulations but does not validate an untested ratio or guarantee a successful bake. No bake trials have yet validated novel formulas or the qualitative 0–5 relative scores. The vanilla cake is only a comparison anchor. The agent does not guarantee specialized-diet or allergy-safe baking and is not professional medical, dietary, or food-safety advice. Never taste raw batter.

## Evaluation

Run the prompts in [`evaluation/scenarios.md`](evaluation/scenarios.md) with `AGENTS.md`, the relevant skills, and references available. The repository has no automated model harness; manual scenario scores are not validated performance claims.
