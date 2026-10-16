#!/usr/bin/env bash
# HYPERPLASMA installer. Usage:
#   ./install.sh --agent claude|codex|cursor|gemini|copilot|all [--project]
#   ./install.sh --target <dir>
#   ./install.sh --rules cursor|windsurf|copilot|gemini|agents
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL="$SRC/skills/hyperplasma"
NAME="hyperplasma"
AGENT=""; TARGET=""; RULES=""; SCOPE="user"

usage() { sed -n '2,6p' "$0" | sed 's/^# \{0,1\}//'; exit "${1:-0}"; }
while [ $# -gt 0 ]; do
  case "$1" in
    --agent)   AGENT="${2:-}"; shift 2 ;;
    --target)  TARGET="${2:-}"; shift 2 ;;
    --rules)   RULES="${2:-}"; shift 2 ;;
    --project) SCOPE="project"; shift ;;
    -h|--help) usage 0 ;;
    *) echo "Unknown option: $1" >&2; usage 1 ;;
  esac
done
[ -d "$SKILL" ] || { echo "Cannot find $SKILL" >&2; exit 1; }

copy_skill() {  # $1 = destination skills dir
  mkdir -p "$1"
  rm -rf "$1/$NAME"
  cp -R "$SKILL" "$1/$NAME"
  echo "Installed -> $1/$NAME"
}

dir_for() {  # $1 = agent
  local base
  if [ "$SCOPE" = "project" ]; then base="."; else base="$HOME"; fi
  case "$1" in
    claude)  echo "$base/.claude/skills" ;;
    codex)   echo "$base/.codex/skills" ;;
    cursor)  echo "$base/.cursor/skills" ;;
    gemini)  echo "$base/.gemini/skills" ;;
    copilot) echo "./.github/skills" ;;   # project-level only
    *) echo "Unknown agent: $1 (claude|codex|cursor|gemini|copilot|all)" >&2; exit 1 ;;
  esac
}

append_once() {  # $1 = file, $2 = snippet file
  mkdir -p "$(dirname "$1")"; touch "$1"
  if grep -q "HYPERPLASMA" "$1"; then echo "Already present in $1"; else printf '\n' >> "$1"; cat "$2" >> "$1"; echo "Appended -> $1"; fi
}

if [ -n "$TARGET" ]; then
  copy_skill "$TARGET"
elif [ -n "$RULES" ]; then
  mkdir -p .hyperplasma && rm -rf .hyperplasma && cp -R "$SKILL" .hyperplasma
  echo "Copied skill -> ./.hyperplasma"
  case "$RULES" in
    cursor)   mkdir -p .cursor/rules; cp "$SRC/adapters/cursor/hyperplasma.mdc" .cursor/rules/hyperplasma.mdc; echo "Rule -> .cursor/rules/hyperplasma.mdc" ;;
    windsurf) mkdir -p .windsurf/rules; cp "$SRC/adapters/windsurf/hyperplasma.md" .windsurf/rules/hyperplasma.md; echo "Rule -> .windsurf/rules/hyperplasma.md" ;;
    copilot)  append_once .github/copilot-instructions.md "$SRC/adapters/copilot/copilot-instructions.md" ;;
    gemini)   append_once GEMINI.md "$SRC/adapters/gemini/GEMINI.md" ;;
    agents)   append_once AGENTS.md "$SRC/adapters/AGENTS.md" ;;
    *) echo "Unknown rules target: $RULES" >&2; exit 1 ;;
  esac
elif [ -n "$AGENT" ]; then
  if [ "$AGENT" = "all" ]; then
    for a in claude codex cursor gemini; do copy_skill "$(dir_for "$a")"; done
    echo "Tip: for Copilot run: bash install.sh --agent copilot (project-level)"
  else
    copy_skill "$(dir_for "$AGENT")"
  fi
else
  usage 1
fi
echo "Done. Restart your agent, then ask it to build a website."
