#!/usr/bin/env python3
"""Checks that every catalogue ID resolves and SKILL.md is well-formed."""
import glob, os, re, sys

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "skills", "hyperplasma")
REF = os.path.join(ROOT, "references")
errors = []

def ids_in(pattern, skip=()):
    found = set()
    for f in glob.glob(os.path.join(REF, pattern)):
        if os.path.basename(f).startswith(skip):
            continue
        for m in re.finditer(r"^- \*\*(\d+)\.", open(f, encoding="utf-8").read(), re.M):
            found.add(int(m.group(1)))
    return found

def mapped(path, cols=2):
    src, dst = set(), set()
    for m in re.finditer(r"^\| ([\d, ]+) \| (\d+)", open(path, encoding="utf-8").read(), re.M):
        for x in m.group(1).split(","):
            src.add(int(x))
        dst.add(int(m.group(2)))
    return src, dst

# styles 1-301
have = ids_in("styles/[0-9][0-9]-*.md", skip=("00",))
src, dst = mapped(os.path.join(REF, "styles", "00-duplicate-map.md"))
missing = [i for i in range(1, 302) if i not in have and i not in src]
bad = sorted(d for d in dst if d not in have)
if missing: errors.append(f"style IDs unresolved: {missing}")
if bad: errors.append(f"style map targets missing: {bad}")

# motion 1-500
have_m = ids_in("motion/[0-9][0-9]-*.md", skip=("12", "99"))
src, dst = mapped(os.path.join(REF, "motion", "99-duplicate-map.md"))
missing = [i for i in range(1, 501) if i not in have_m and i not in src]
bad = sorted(d for d in dst if d not in have_m)
overlap = sorted(src & have_m)
if missing: errors.append(f"motion IDs unresolved: {missing}")
if bad: errors.append(f"motion map targets missing: {bad}")
if overlap: errors.append(f"motion IDs both defined and mapped: {overlap}")

# SKILL.md
skill = open(os.path.join(ROOT, "SKILL.md"), encoding="utf-8").read()
if not skill.startswith("---\nname: hyperplasma\n"): errors.append("SKILL.md frontmatter name must be 'hyperplasma'")
if skill.count("\n") > 500: errors.append("SKILL.md exceeds 500 lines")
for path in re.findall(r"`(references/[^`\s]+\.md)`", skill):
    if not os.path.exists(os.path.join(ROOT, path)): errors.append(f"SKILL.md references missing file: {path}")

print("\n".join(errors) if errors else f"OK  styles:{len(have)} unique  motion:{len(have_m)} unique")
sys.exit(1 if errors else 0)
