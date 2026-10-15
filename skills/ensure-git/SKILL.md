---
name: ensure-git
description: Use before any git command or `git clone` when git may not be installed. Checks for git and installs it locally without admin rights if missing.
---

# Ensure git is available

Use this whenever the user asks to clone a repository or run git commands.

1. Check for git without triggering a macOS installer popup:
   - macOS/Linux: run `bash scripts/setup-git.sh` from the repository root. It exits immediately if git already works.
   - Windows: run `powershell -ExecutionPolicy Bypass -File scripts\setup-git.ps1`.
2. If the script installed a local git (macOS/Linux), run `source .tools/env.sh` in the same shell before any git command. Each new shell needs this again.
3. Confirm with `git --version`, then do what the user asked (for example `git clone <url>`).

Rules:
- Never use `sudo` or change system or security settings. The local install exists to avoid that.
- Do not commit `.tools/`; it is gitignored.
- If the script fails, show the user the error and the manual options (Xcode Command Line Tools on macOS, https://git-scm.com/download/win on Windows) instead of retrying blindly.
- Private repositories need the user's own GitHub token or SSH key. Ask them; never guess or create credentials.
