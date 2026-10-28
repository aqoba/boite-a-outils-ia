#!/usr/bin/env bash
# Construit un zip par skill dans dist/, prêt à importer dans claude.ai
# (Paramètres > Capacités > Skills) ou dans un autre outil qui lit les SKILL.md.
set -euo pipefail
cd "$(dirname "$0")/.."
rm -rf dist && mkdir -p dist
for skill in plugins/*/skills/*/; do
  name=$(basename "$skill")
  [ -f "$skill/SKILL.md" ] || { echo "SKILL.md manquant dans $skill" >&2; exit 1; }
  (cd "$(dirname "$skill")" && zip -qr -X "$OLDPWD/dist/$name.zip" "$name" -x '*.DS_Store')
  echo "dist/$name.zip"
done
