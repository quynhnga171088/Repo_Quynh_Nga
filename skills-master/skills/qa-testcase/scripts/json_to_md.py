#!/usr/bin/env python3
"""
JSON → Markdown converter for QA test cases (TPL-QA-01-04 format).

Usage:
  python json_to_md.py <json_dir> <output_md_dir>

Output mirrors folder structure of json_dir.
Each .json → .md, plus a README.md index at json_dir root.
"""

import sys
import json
import re
from pathlib import Path

RESULT_ICON = {"Pass": "✅", "Fail": "❌", "Untested": "⬜", "Rejected": "🚫", "": "⬜"}
PRIORITY_BADGE = {"High": "🔴 High", "Normal": "🟡 Normal", "Low": "🟢 Low"}
ENV_NAMES = ["ENV1", "ENV2", "ENV3", "ENV4", "ENV5", "ENV6"]


def slugify(text):
    text = str(text).lower().strip()
    text = re.sub(r'[^\w\s-]', '', text, flags=re.UNICODE)
    text = re.sub(r'[\s_-]+', '-', text)
    return text[:60]


def icon(val): return RESULT_ICON.get(str(val).strip(), str(val))
def badge(val): return PRIORITY_BADGE.get(str(val).strip(), str(val) or "Normal")


def render_round(rnd: dict, rnd_num: int) -> str:
    parts = [f"**R{rnd_num}**"]
    bug = rnd.get("bug_id", "")
    if bug:
        parts.append(f"🐛{bug}")
    for i, env_name in enumerate(ENV_NAMES, 1):
        env = rnd.get(f"env{i}", {})
        result = env.get("result", "")
        tester = env.get("tester", "")
        date   = env.get("date", "")
        if result or tester:
            entry = f"{env_name}:{icon(result)}"
            if tester:
                entry += f"*{tester}*"
            if date:
                entry += f" {date}"
            parts.append(entry)
    return " ".join(parts) if len(parts) > 1 else f"**R{rnd_num}:** ⬜"


def tc_to_md(data: dict) -> str:
    module_name = data.get("module_name", "")
    feature     = data.get("feature", "")
    test_cases  = data.get("test_cases", [])

    lines = [f"# {module_name}\n"]
    if feature:
        lines.append(f"> **Feature:** {feature}\n")
    lines.append(f"**Total:** {len(test_cases)} test cases\n")
    lines.append("")

    # Table
    lines.append("| # | Category | Name | Precondition | Test Data | Expected Result | Priority | Round 1 | Round 2 | Round 3 | Note |")
    lines.append("|---|----------|------|--------------|-----------|-----------------|----------|---------|---------|---------|------|")

    for i, tc in enumerate(test_cases, 1):
        def esc(s): return str(s).replace("|", "\\|").replace("\n", " ")
        lines.append(
            f"| {i} "
            f"| {esc(tc.get('category',''))} "
            f"| {esc(tc.get('name',''))} "
            f"| {esc(tc.get('precondition',''))} "
            f"| {esc(tc.get('test_data',''))} "
            f"| {esc(tc.get('expected_result',''))} "
            f"| {badge(tc.get('priority','Normal'))} "
            f"| {render_round(tc.get('results',{}).get('round1',{}), 1)} "
            f"| {render_round(tc.get('results',{}).get('round2',{}), 2)} "
            f"| {render_round(tc.get('results',{}).get('round3',{}), 3)} "
            f"| {esc(tc.get('note',''))} |"
        )

    return "\n".join(lines)


def build_index(json_dir: Path, meta: dict) -> str:
    lines = [f"# Test Cases Index\n"]
    if meta:
        lines.append("| Field | Value |")
        lines.append("|-------|-------|")
        for k, v in meta.items():
            lines.append(f"| {k} | {v} |")
        lines.append("")

    total = 0
    entries = []

    for json_path in sorted(json_dir.rglob("*.json")):
        if json_path.name == "meta.json":
            continue
        with open(json_path, encoding="utf-8") as f:
            data = json.load(f)
        tc_count = len(data.get("test_cases", []))
        total += tc_count
        rel = json_path.relative_to(json_dir)
        md_rel = rel.with_suffix(".md")
        feature = data.get("feature", json_path.parent.name if json_path.parent != json_dir else "")
        entries.append((feature, data.get("module_name", json_path.stem), str(md_rel), tc_count))

    lines.append(f"**Total test cases: {total}**\n")

    # Group by feature
    from collections import defaultdict
    by_feature = defaultdict(list)
    for feat, mod, path, count in entries:
        by_feature[feat or "(ungrouped)"].append((mod, path, count))

    for feat, items in sorted(by_feature.items()):
        feat_total = sum(c for _, _, c in items)
        lines.append(f"## {feat} ({feat_total} TCs)\n")
        for mod, path, count in items:
            lines.append(f"- [{mod}]({path}) — {count} TCs")
        lines.append("")

    return "\n".join(lines)


def json_to_md(json_dir: str, output_dir: str):
    base     = Path(json_dir)
    out_base = Path(output_dir)

    # Only process dirs/files under a valid root (has meta.json)
    meta = {}
    meta_path = base / "meta.json"
    if meta_path.exists():
        with open(meta_path, encoding="utf-8") as f:
            meta = json.load(f)

    json_files = [f for f in sorted(base.rglob("*.json")) if f.name != "meta.json"]

    for json_path in json_files:
        with open(json_path, encoding="utf-8") as f:
            data = json.load(f)

        rel     = json_path.relative_to(base)
        md_path = out_base / rel.with_suffix(".md")
        md_path.parent.mkdir(parents=True, exist_ok=True)

        with open(md_path, "w", encoding="utf-8") as f:
            f.write(tc_to_md(data))
        print(f"  Written: {md_path}")

    # Write root README index
    index_path = out_base / "README.md"
    index_path.parent.mkdir(parents=True, exist_ok=True)
    with open(index_path, "w", encoding="utf-8") as f:
        f.write(build_index(base, meta))
    print(f"  Written: {index_path}")

    print(f"\nDone. Markdown in: {output_dir}")


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python json_to_md.py <json_dir> <output_md_dir>")
        sys.exit(1)
    json_to_md(sys.argv[1], sys.argv[2])
