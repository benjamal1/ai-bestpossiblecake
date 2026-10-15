# Installs git on Windows if it is not already available.
#   powershell -ExecutionPolicy Bypass -File scripts\setup-git.ps1
$ErrorActionPreference = "Stop"

if (Get-Command git -ErrorAction SilentlyContinue) {
    Write-Host "git is already installed: $(git --version)"
    exit 0
}

if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Error "winget not found. Install Git for Windows from https://git-scm.com/download/win and re-run."
    exit 1
}

winget install --id Git.Git -e --source winget --scope user `
    --accept-package-agreements --accept-source-agreements

# winget updates PATH for new terminals only; refresh it for this session.
$env:Path = [Environment]::GetEnvironmentVariable("Path", "User") + ";" +
            [Environment]::GetEnvironmentVariable("Path", "Machine")

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Error "git was installed but is not on PATH yet. Open a new terminal and retry."
    exit 1
}
Write-Host "Done: $(git --version)"
