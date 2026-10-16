# HYPERPLASMA installer (Windows PowerShell)
# Usage: ./install.ps1 -Agent claude|codex|cursor|gemini|copilot|all [-Project]
#        ./install.ps1 -Target <dir>
param([string]$Agent = "", [string]$Target = "", [switch]$Project)
$ErrorActionPreference = "Stop"
$Src = Join-Path $PSScriptRoot "skills\hyperplasma"
if (-not (Test-Path $Src)) { throw "Cannot find $Src" }
$Base = if ($Project) { "." } else { $HOME }

function Install-Skill($Dir) {
  New-Item -ItemType Directory -Force -Path $Dir | Out-Null
  $Dest = Join-Path $Dir "hyperplasma"
  if (Test-Path $Dest) { Remove-Item -Recurse -Force $Dest }
  Copy-Item -Recurse $Src $Dest
  Write-Host "Installed -> $Dest"
}
function Dir-For($A) {
  switch ($A) {
    "claude"  { return Join-Path $Base ".claude\skills" }
    "codex"   { return Join-Path $Base ".codex\skills" }
    "cursor"  { return Join-Path $Base ".cursor\skills" }
    "gemini"  { return Join-Path $Base ".gemini\skills" }
    "copilot" { return ".github\skills" }
    default   { throw "Unknown agent: $A (claude|codex|cursor|gemini|copilot|all)" }
  }
}
if ($Target) { Install-Skill $Target }
elseif ($Agent -eq "all") { foreach ($a in "claude","codex","cursor","gemini") { Install-Skill (Dir-For $a) } }
elseif ($Agent) { Install-Skill (Dir-For $Agent) }
else { Get-Content $PSCommandPath -TotalCount 4; exit 1 }
Write-Host "Done. Restart your agent, then ask it to build a website."
