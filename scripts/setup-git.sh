#!/usr/bin/env bash
# Installs git locally (no admin rights) if it is not already available.
#
#   bash scripts/setup-git.sh
#   source .tools/env.sh        # only needed if a local git was installed
#
# Local install goes to <repo>/.tools/, which is gitignored.
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TOOLS_DIR="$REPO_ROOT/.tools"
ENV_PREFIX="$TOOLS_DIR/git-env"
MAMBA_BIN="$TOOLS_DIR/bin/micromamba"

# On macOS /usr/bin/git is a stub that pops up an installer dialog when the
# Command Line Tools are missing, so never run it without checking first.
has_working_git() {
  local git_path
  git_path="$(command -v git 2>/dev/null)" || return 1
  if [ "$(uname -s)" = "Darwin" ] && [ "$git_path" = "/usr/bin/git" ]; then
    xcode-select -p >/dev/null 2>&1 || return 1
  fi
  git --version >/dev/null 2>&1
}

micromamba_platform() {
  case "$(uname -s)-$(uname -m)" in
    Darwin-arm64)  echo "osx-arm64" ;;
    Darwin-x86_64) echo "osx-64" ;;
    Linux-x86_64)  echo "linux-64" ;;
    Linux-aarch64 | Linux-arm64) echo "linux-aarch64" ;;
    *) echo "Unsupported platform: $(uname -s)-$(uname -m)" >&2; return 1 ;;
  esac
}

write_env_file() {
  cat > "$TOOLS_DIR/env.sh" <<EOF
# Source this file to use the git installed in this repository.
_tools_dir="\$(cd "\$(dirname "\${BASH_SOURCE[0]:-\$0}")" && pwd)"
_prefix="\$_tools_dir/git-env"
export PATH="\$_prefix/bin:\$PATH"
export GIT_EXEC_PATH="\$_prefix/libexec/git-core"
export GIT_TEMPLATE_DIR="\$_prefix/share/git-core/templates"
export GIT_SSL_CAINFO="\$_prefix/ssl/cacert.pem"
export SSL_CERT_FILE="\$_prefix/ssl/cacert.pem"
unset _tools_dir _prefix
EOF
}

if has_working_git; then
  echo "git is already installed: $(git --version)"
  exit 0
fi

command -v curl >/dev/null 2>&1 || { echo "curl is required but was not found." >&2; exit 1; }

PLATFORM="$(micromamba_platform)"
mkdir -p "$TOOLS_DIR/bin"

if [ ! -x "$MAMBA_BIN" ]; then
  echo "Downloading micromamba ($PLATFORM)..."
  curl -fsSL "https://micro.mamba.pm/api/micromamba/$PLATFORM/latest" \
    | tar -xj -C "$TOOLS_DIR" bin/micromamba
fi

echo "Installing git into $ENV_PREFIX ..."
MAMBA_ROOT_PREFIX="$TOOLS_DIR/mamba" "$MAMBA_BIN" create -y -q \
  -p "$ENV_PREFIX" -c conda-forge --override-channels git

write_env_file

if ! "$ENV_PREFIX/bin/git" --version; then
  echo "git was installed but does not run." >&2
  exit 1
fi

echo "Done. Run:  source $TOOLS_DIR/env.sh"
