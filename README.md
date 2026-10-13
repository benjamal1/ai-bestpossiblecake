# Best Possible Cake

A downloadable, portable teaching agent that formulates cake from available edible ingredients by reasoning about cake-formation science—not merely retrieving a matching recipe. The package uses the open Agent Skills format. It includes two focused skills: **cake-formulator** and **cake-science-tutor**.

The agent can explain plausible ingredient mechanisms and generate experimental formulations, but untested formulas are not guaranteed to succeed. Mechanistic reasoning is not a substitute for empirical baking validation.

## Download and install

1. Download this repository as a ZIP from GitHub (**Code → Download ZIP**) or clone it.
2. Find the skill folders under [`.agents/skills/`](.agents/skills/).
3. Install or copy both skill directories into the documented skill-discovery location for your agent:
   - **Codex:** repository `.agents/skills/` is already in the expected location; for user-wide installation, copy the skill folders under `$HOME/.agents/skills/`.
   - **Claude Code:** copy them under `.claude/skills/` in a project or the documented user-level skills directory.
   - **Other Agent Skills-compatible agents:** use that product’s documented skill directory. The `SKILL.md` format is interoperable, but discovery paths and optional features differ by product.
4. Start a fresh agent session or refresh skills if required by that product. Invoke `cake-formulator` for recipe/ingredient requests or `cake-science-tutor` for mechanism explanations.

This repository provides standalone skills, not a provider-specific hosted agent, plugin, or universal installer. See the official [Agent Skills specification](https://agentskills.io/specification), [Codex skills docs](https://developers.openai.com/codex/skills), and [Claude Code skills docs](https://code.claude.com/docs/en/skills) for current platform instructions.

## Package contents

- [`.agents/skills/cake-formulator/`](.agents/skills/cake-formulator/SKILL.md): first-principles cake formulation, safe feasibility handling, transparent outcome reporting.
- [`.agents/skills/cake-science-tutor/`](.agents/skills/cake-science-tutor/SKILL.md): explains cake mechanisms rather than substituting recipe rules for science.
- [`references/cake-formation-science.md`](references/cake-formation-science.md): causal model of gas-cell formation, rheology, structure setting, ingredient interactions, and the limits of inference.
- [`references/`](references/): evidence-linked food safety, substitutions/process, and baseline materials.
- [`sources/source-notes.md`](sources/source-notes.md): research provenance, which claims are supported, evidence limitations, and the Agent Skills standard sources.
- [`evaluation/scenarios.md`](evaluation/scenarios.md): 12 manual, rubric-based behavioral scenarios.
- [`classroom-demo.md`](classroom-demo.md): classroom demonstration aligned with the learning objective.

## Scientific and product boundaries

The skill reasons from ingredient composition and physical/chemical mechanisms: generate or incorporate gas, retain and expand bubbles, then set a starch/protein framework around them. It distinguishes source evidence from inference. It must not copy a baseline recipe as the sole formulation method, fabricate precise ratios, treat model scores as validated probabilities, or claim an untested formulation is reliable. A research-selected vanilla cake is only a relative comparison anchor.

Version one does not guarantee specialized dietary or allergy-safe baking. The agent cannot verify ingredient identity/labels, cross-contact, equipment calibration, or execution. It is not professional medical, dietary, or food-safety advice. Never taste raw batter; follow reliable food-safety guidance.

## Evaluation

Run the scenarios in [`evaluation/scenarios.md`](evaluation/scenarios.md) manually with the skills and reference documents available. The repository has no automated model harness and the scenarios do not prove performance. No new formulation is validated until it has been baked and evaluated.
