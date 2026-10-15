# Repository and agent guidance

This repository packages the **Best Possible Cake** agent. For any user request about making/adapting a cake or explaining cake science, read and follow [`skills/best-possible-cake/SKILL.md`](skills/best-possible-cake/SKILL.md) first; it is the primary agent behavior. For deeper recipe formulation or science-only questions, it routes to [`skills/cake-formulator/SKILL.md`](skills/cake-formulator/SKILL.md) and [`skills/cake-science-tutor/SKILL.md`](skills/cake-science-tutor/SKILL.md).

The canonical mechanism reference is [`references/cake-formation-science.md`](references/cake-formation-science.md). Keep one source of truth for scientific claims; skill files point to this packaged reference. Use the repository directly from its root; no plugin, marketplace, or install command is required.

When changing the agent package, preserve the visible `skills/<skill-name>/SKILL.md` layout and valid Agent Skills frontmatter. Verify any skill/reference pointers still resolve from the downloadable repository archive. Do not imply that untested formulations or qualitative scores are validated outcomes.
