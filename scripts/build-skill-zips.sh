#!/usr/bin/env bash
# Construit deux zips par skill dans dist/ :
# - <skill>.zip         : le dossier de la skill (claude.ai, Gemini)
# - <plugin>-plugin.zip : le plugin complet, plugin.json et skills/ à la racine (ChatGPT, Codex)
set -euo pipefail
cd "$(dirname "$0")/.."
rm -rf dist && mkdir -p dist
root=$PWD
for plugin in plugins/*/; do
  pname=$(basename "$plugin")
  for skill in "$plugin"skills/*/; do
    name=$(basename "$skill")
    [ -f "$skill/SKILL.md" ] || { echo "SKILL.md manquant dans $skill" >&2; exit 1; }
    (cd "$(dirname "$skill")" && zip -qr -X "$root/dist/$name.zip" "$name" -x '*.DS_Store')
    echo "dist/$name.zip"
  done
  (cd "$plugin" && zip -qr -X "$root/dist/$pname-plugin.zip" .claude-plugin skills -x '*.DS_Store')
  echo "dist/$pname-plugin.zip"
done
