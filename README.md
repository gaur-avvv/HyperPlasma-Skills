# HYPERPLASMA

**An agent skill that stops your AI from building the same generic website every time.**

Before it writes a single line of UI code, your agent asks you to pick a **design style**, a **font pairing**, and an **animation set**, and describes every option so you can choose fast.

![license](https://img.shields.io/badge/license-MIT-blue) ![format](https://img.shields.io/badge/format-SKILL.md-8A2BE2) ![agents](https://img.shields.io/badge/works%20with-Claude%20Code%20%7C%20Codex%20%7C%20Cursor%20%7C%20Gemini%20CLI%20%7C%20Copilot%20%7C%2030%2B%20more-black)

<div align="center">
<img width="100" height="75" alt="image" src="https://github.com/user-attachments/assets/612119b8-6ec2-4bde-93a0-5359efc83584" />
<img width="100" height="75" alt="image" src="https://github.com/user-attachments/assets/68014797-1a6d-4e8a-9a95-6eb679997c2a" />
<img width="100" height="75" alt="image" src="https://github.com/user-attachments/assets/dcfa4c2b-e91c-42f1-a6fc-cde05a3b954f" />
<img width="100" height="75" alt="image" src="https://github.com/user-attachments/assets/4583885f-0ca0-42e0-9c29-733a586a5a43" />
<img width="100" height="75" alt="image" src="https://github.com/user-attachments/assets/af41eb92-7e70-42b5-993e-e945ab043fef" />
<img width="100" height="75" alt="image" src="https://github.com/user-attachments/assets/7acab9e5-83d7-402d-b574-73b062a69d9b" />
<img width="100" height="75" alt="image" src="https://github.com/user-attachments/assets/db9bb0e7-021f-46bd-b339-d3fc4ba11e3c" />
<img width="100" height="75" alt="image" src="https://github.com/user-attachments/assets/bc127a52-6cc2-4ed7-b920-d19f43b8d63c" />
<img width="100" height="75" alt="image" src="https://github.com/user-attachments/assets/abe99012-e998-4947-a699-1d96c6a3954b" />
<img width="100" height="75" alt="image" src="https://github.com/user-attachments/assets/76cc1235-3409-40a6-9c9d-d58a5970b6ed" />
<img width="100" height="75" alt="image" src="https://github.com/user-attachments/assets/f10c7d70-cdd9-49cb-bdd8-33522a62e833" />
<img width="100" height="75" alt="image" src="https://github.com/user-attachments/assets/d8c063ed-7e25-44ad-994a-c344bac81374" />
<img width="100" height="75" alt="image" src="https://github.com/user-attachments/assets/c27a0104-a965-46aa-972f-e61ac3277d1a" />
<img width="100" height="75" alt="image" src="https://github.com/user-attachments/assets/e8b1c1c2-9b2a-4ccd-aa95-e5fb53292d25" />
<img width="100" height="75" alt="image" src="https://github.com/user-attachments/assets/019a01b2-d712-4d17-97e2-6f701236000e" />
</div>

## What's inside

| Catalogue | Source entries | Unique entries | Notes |
|---|---|---|---|
| Design styles | 301 | 239 | Glassmorphism, neo-brutalism, aurora, bento, retro OS, sci-fi HUD, art movements, textures, SaaS defaults |
| Font pairings | 400 | 206 | 15 groups (SaaS, dev, luxury, wellness, fintech, gaming...), availability flags, fallbacks |
| Animations | 500 | 203 | Framer Motion, GSAP, native CSS, Three.js/R3F, shaders, route transitions, micro-gestures |

Nothing was dropped: every repeated ID is mapped to its canonical entry in a `99-duplicate-map.md` / `00-duplicate-map.md` file, so "style 271" or "animation 476" still resolves.

## How it works

```
You:    build me a portfolio site
Agent:  What are you building, and who is it for?        (only if unclear)
You:    ML engineer portfolio for campus placements
Agent:  1. Glassmorphism - frosted panels, background blur ...
        2. Bento Grid - modular rounded compartments ...
        3. Terminal Dashboard - monospace, status chips ...
        4. Neo-Brutalism - hard shadows, thick strokes ...
        5. Cyberpunk - neon, HUD panels ...
        Which one (number), or a different batch / mix two / you choose?
You:    1
Agent:  Fonts: 1. Plus Jakarta Sans + Inter ...  Which pair?
You:    1
Agent:  Motion: 1. 3D Tilt [FM] ... pick up to 4, or subtle / standard / cinematic
You:    standard
Agent:  Going with Glassmorphism + Plus Jakarta/Inter + tilt, reveal, transition. Building...
```

One question per message. Say "surprise me" at any point and it picks a coherent trio.

## Install

### Option 1: any agent, one command (recommended)
Uses the open `SKILL.md` format, supported by Claude Code, Codex, Cursor, Gemini CLI, GitHub Copilot, Roo Code, Windsurf and 30+ other agents via the `skills` CLI.

```bash
npx skills add gaur-avvv/HyperPlasma-Skills
```

Target one agent or install globally:

```bash
npx skills add gaur-avvv/HyperPlasma-Skills -a claude-code
npx skills add gaur-avvv/HyperPlasma-Skills -g -a codex -a cursor -y
```

(Replace `gaur-avvv` with your GitHub username/org if you fork it.)

### Option 2: the bundled installer
```bash
git clone https://github.com/gaur-avvv/HyperPlasma-Skills.git
cd HyperPlasma-Skills
bash install.sh --agent claude            # ~/.claude/skills/hyperplasma
bash install.sh --agent codex --project   # ./.codex/skills/hyperplasma
bash install.sh --agent all               # every supported agent, user-level
```
Windows (PowerShell): `./install.ps1 -Agent claude`

| Agent | `--agent` | User-level path | Project path (`--project`) |
|---|---|---|---|
| Claude Code | `claude` | `~/.claude/skills/hyperplasma` | `.claude/skills/hyperplasma` |
| Codex CLI | `codex` | `~/.codex/skills/hyperplasma` | `.codex/skills/hyperplasma` |
| Cursor | `cursor` | `~/.cursor/skills/hyperplasma` | `.cursor/skills/hyperplasma` |
| Gemini CLI | `gemini` | `~/.gemini/skills/hyperplasma` | `.gemini/skills/hyperplasma` |
| GitHub Copilot | `copilot` | n/a | `.github/skills/hyperplasma` |
| Any other dir | `--target <dir>` | custom | custom |

### Option 3: Claude.ai / Claude Desktop
Zip the folder `skills/hyperplasma` (the zip must contain the `hyperplasma/` folder with `SKILL.md` inside) and upload it under Settings > Capabilities > Skills.

### Option 4: agents without skill support (rules / instructions files)
Copies the skill to `.hyperplasma/` in your project and adds a short rule pointing to it.

```bash
bash install.sh --rules cursor      # .cursor/rules/hyperplasma.mdc
bash install.sh --rules windsurf    # .windsurf/rules/hyperplasma.md
bash install.sh --rules copilot     # .github/copilot-instructions.md (appended)
bash install.sh --rules gemini      # GEMINI.md (appended)
bash install.sh --rules agents      # AGENTS.md (appended; Codex, Amp, Jules, Zed, etc.)
```

Ready-made snippets are in [`adapters/`](adapters/). For a raw API or custom agent, paste [`adapters/system-prompt.md`](adapters/system-prompt.md) into the system prompt and make the `references/` folder readable by a file tool.

## Repo layout

```
hyperplasma/
├── skills/hyperplasma/
│   ├── SKILL.md                      # workflow (agent reads this first)
│   └── references/
│       ├── styles/                   # 301 design styles (10 category files + duplicate map)
│       ├── fonts/pairings.md         # 400 font pairings (groups A-O)
│       └── motion/                   # 500 animations (11 files + tokens + duplicate map)
├── adapters/                         # rule snippets for non-skill agents
├── scripts/validate.py               # checks every ID resolves (runs in CI)
├── install.sh / install.ps1
└── .github/workflows/validate.yml
```

The agent loads `SKILL.md` (about 165 lines) and then only the one or two reference files it needs, so context stays small.

## Customize
- Add your own styles, fonts or animations as new `- **ID. Name** - description` lines in the matching file, then run `python3 scripts/validate.py`.
- Change the quick-pick tables at the bottom of `SKILL.md` to match the projects you build most.
- Fonts marked with a dagger (free, not on Google Fonts), dollar sign (paid/system) or question mark (unverified) need a license check; the fonts file lists fallbacks.

## Credits and notes
Style, font and animation lists were compiled from AI-generated catalogues, then deduplicated and annotated. Some names are informal community terms rather than industry standards, and a few font names could not be verified (flagged with `?`). Treat descriptions as inspiration, not authority.

## License
MIT. See [LICENSE](LICENSE).
