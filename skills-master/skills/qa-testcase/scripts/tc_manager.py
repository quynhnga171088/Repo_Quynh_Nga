#!/usr/bin/env python3
"""
Test Case Manager - CLI tool to add/edit/delete test cases in JSON files.

Usage:
  python tc_manager.py add    <json_file> [--interactive]
  python tc_manager.py edit   <json_file> <group_index> <tc_index>
  python tc_manager.py delete <json_file> <group_index> <tc_index>
  python tc_manager.py list   <json_file>
  python tc_manager.py new    <output_dir> <module_id> <category> <sub_category>

After any modification, call json_to_excel.py or json_to_md.py to regenerate outputs.
"""

import sys
import json
import os
from pathlib import Path
from copy import deepcopy


EMPTY_TC = {
    "test_data": "",
    "expected_result": "",
    "priority": "Normal",
    "note": "",
    "results": {
        "round1": {
            "bug_id": "",
            "env1": {"result": "", "tester": "", "date": ""},
            "env2": {"result": "", "tester": "", "date": ""},
        },
        "round2": {
            "bug_id": "",
            "env1": {"result": "", "tester": "", "date": ""},
            "env2": {"result": "", "tester": "", "date": ""},
        },
        "round3": {
            "bug_id": "",
            "env1": {"result": "", "tester": "", "date": ""},
            "env2": {"result": "", "tester": "", "date": ""},
        },
    },
}

EMPTY_GROUP = {
    "context": "",
    "steps": "",
    "test_cases": [],
}

EMPTY_FILE = {
    "category": "",
    "sub_category": "",
    "groups": [],
}

EMPTY_META = {
    "module_id": "",
    "project": "",
    "creator": "",
    "created_date": "",
    "phase": "",
    "environment": "",
}


def load_json(path: str) -> dict:
    with open(path, encoding="utf-8") as f:
        return json.load(f)


def save_json(path: str, data: dict):
    with open(path, "w", encoding="utf-8") as f:
        json.dump(data, f, ensure_ascii=False, indent=2)
    print(f"Saved: {path}")


def prompt(label: str, default: str = "") -> str:
    """Simple interactive prompt."""
    suffix = f" [{default}]" if default else ""
    val = input(f"  {label}{suffix}: ").strip()
    return val if val else default


def cmd_list(json_file: str):
    """List all test cases in a JSON file."""
    data = load_json(json_file)
    print(f"\n=== {data.get('category', '')} / {data.get('sub_category', '')} ===\n")

    for g_idx, group in enumerate(data.get("groups", [])):
        ctx = group.get("context", "")
        steps = group.get("steps", "")
        tcs = group.get("test_cases", [])
        print(f"Group {g_idx}: context='{ctx}', steps='{steps[:50]}...' ({len(tcs)} TCs)")
        for tc_idx, tc in enumerate(tcs):
            prio = tc.get("priority", "")
            td = tc.get("test_data", "")[:60]
            exp = tc.get("expected_result", "")[:60]
            r1 = tc.get("results", {}).get("round1", {}).get("env1", {}).get("result", "")
            print(f"  [{g_idx},{tc_idx}] [{prio}] TD: {td} | EXP: {exp} | R1: {r1}")
        print()


def cmd_add(json_file: str, interactive: bool = True):
    """Add a new test case to an existing JSON file."""
    data = load_json(json_file)
    groups = data.setdefault("groups", [])

    print(f"\nAdding test case to: {json_file}")
    print(f"Category: {data.get('category')}")
    print(f"Sub-category: {data.get('sub_category')}")
    print()

    # Choose or create group
    if groups:
        print("Existing groups:")
        for i, g in enumerate(groups):
            ctx = g.get("context", "(no context)")
            print(f"  {i}: {ctx}")
        print(f"  {len(groups)}: Create new group")

        choice = input("Select group index (or press Enter for last group): ").strip()
        if choice == "" or choice == str(len(groups) - 1):
            g_idx = len(groups) - 1
        elif choice == str(len(groups)):
            # New group
            g = deepcopy(EMPTY_GROUP)
            if interactive:
                g["context"] = prompt("Context/Precondition (e.g. 'Kì phụ đạo xuân')")
                g["steps"] = prompt("Test steps")
            groups.append(g)
            g_idx = len(groups) - 1
        else:
            g_idx = int(choice)
    else:
        print("No groups yet. Creating first group.")
        g = deepcopy(EMPTY_GROUP)
        if interactive:
            g["context"] = prompt("Context/Precondition")
            g["steps"] = prompt("Test steps")
        groups.append(g)
        g_idx = 0

    # Build new test case
    tc = deepcopy(EMPTY_TC)
    if interactive:
        print("\nEnter test case details:")
        tc["test_data"] = prompt("Test Data (input condition / boundary value)")
        tc["expected_result"] = prompt("Expected Result")
        prio = prompt("Priority (High/Normal/Low)", "Normal")
        tc["priority"] = prio if prio in ("High", "Normal", "Low") else "Normal"
        tc["note"] = prompt("Note (optional)", "")

    groups[g_idx]["test_cases"].append(tc)
    save_json(json_file, data)
    print(f"Added TC at group[{g_idx}][-1]")


def cmd_edit(json_file: str, g_idx: int, tc_idx: int):
    """Interactively edit a test case."""
    data = load_json(json_file)
    try:
        tc = data["groups"][g_idx]["test_cases"][tc_idx]
    except (IndexError, KeyError):
        print(f"ERROR: No TC at group[{g_idx}][{tc_idx}]")
        sys.exit(1)

    print(f"\nEditing TC [{g_idx},{tc_idx}]:")
    print(f"  Current test_data: {tc.get('test_data')}")
    print(f"  Current expected_result: {tc.get('expected_result')}")
    print(f"  Current priority: {tc.get('priority')}")
    print(f"  Current note: {tc.get('note')}")
    print()

    tc["test_data"] = prompt("Test Data", tc.get("test_data", ""))
    tc["expected_result"] = prompt("Expected Result", tc.get("expected_result", ""))
    prio = prompt("Priority (High/Normal/Low)", tc.get("priority", "Normal"))
    tc["priority"] = prio if prio in ("High", "Normal", "Low") else tc["priority"]
    tc["note"] = prompt("Note", tc.get("note", ""))

    save_json(json_file, data)
    print(f"Updated TC [{g_idx},{tc_idx}]")


def cmd_delete(json_file: str, g_idx: int, tc_idx: int):
    """Delete a test case (with confirmation)."""
    data = load_json(json_file)
    try:
        tc = data["groups"][g_idx]["test_cases"][tc_idx]
    except (IndexError, KeyError):
        print(f"ERROR: No TC at group[{g_idx}][{tc_idx}]")
        sys.exit(1)

    print(f"\nAbout to delete TC [{g_idx},{tc_idx}]:")
    print(f"  test_data: {tc.get('test_data')}")
    print(f"  expected_result: {tc.get('expected_result')}")
    confirm = input("Confirm delete? (yes/no): ").strip().lower()

    if confirm in ("yes", "y"):
        data["groups"][g_idx]["test_cases"].pop(tc_idx)
        # Remove empty group
        if not data["groups"][g_idx]["test_cases"]:
            ctx = data["groups"][g_idx].get("context", "")
            confirm2 = input(f"Group '{ctx}' is now empty. Delete group too? (yes/no): ").strip().lower()
            if confirm2 in ("yes", "y"):
                data["groups"].pop(g_idx)
        save_json(json_file, data)
        print("Deleted.")
    else:
        print("Cancelled.")


def cmd_new(output_dir: str, module_id: str, category: str, sub_category: str):
    """
    Create a new sub-category JSON file from template.

    Also creates meta.json if it doesn't exist.
    """
    import re
    def slugify(text):
        text = text.lower().strip()
        text = re.sub(r'[^\w\s-]', '', text, flags=re.UNICODE)
        text = re.sub(r'[\s_-]+', '-', text)
        return text[:60]

    module_slug = slugify(module_id)
    cat_slug = slugify(category)
    sc_slug = slugify(sub_category)

    module_dir = Path(output_dir) / module_slug
    cat_dir = module_dir / cat_slug
    cat_dir.mkdir(parents=True, exist_ok=True)

    # Create meta.json if not present
    meta_path = module_dir / "meta.json"
    if not meta_path.exists():
        meta = deepcopy(EMPTY_META)
        meta["module_id"] = module_id
        save_json(str(meta_path), meta)
        print(f"Created: {meta_path}")

    # Create sub-category JSON
    sc_path = cat_dir / f"{sc_slug}.json"
    if sc_path.exists():
        print(f"File already exists: {sc_path}")
        overwrite = input("Overwrite? (yes/no): ").strip().lower()
        if overwrite not in ("yes", "y"):
            print("Cancelled.")
            return

    data = deepcopy(EMPTY_FILE)
    data["category"] = category
    data["sub_category"] = sub_category

    # Add one empty group + one empty TC as starter
    group = deepcopy(EMPTY_GROUP)
    group["test_cases"] = [deepcopy(EMPTY_TC)]
    data["groups"] = [group]

    save_json(str(sc_path), data)
    print(f"\nCreated template: {sc_path}")
    print("Edit the JSON file to fill in test cases, then run json_to_excel.py or json_to_md.py.")


def main():
    args = sys.argv[1:]
    if not args:
        print(__doc__)
        sys.exit(0)

    cmd = args[0]

    if cmd == "list" and len(args) >= 2:
        cmd_list(args[1])

    elif cmd == "add" and len(args) >= 2:
        interactive = "--interactive" in args or "-i" in args
        cmd_add(args[1], interactive=True)  # always interactive for add

    elif cmd == "edit" and len(args) >= 4:
        cmd_edit(args[1], int(args[2]), int(args[3]))

    elif cmd == "delete" and len(args) >= 4:
        cmd_delete(args[1], int(args[2]), int(args[3]))

    elif cmd == "new" and len(args) >= 5:
        cmd_new(args[1], args[2], args[3], args[4])

    else:
        print(__doc__)
        sys.exit(1)


if __name__ == "__main__":
    main()
