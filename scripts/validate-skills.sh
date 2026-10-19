#!/usr/bin/env bash
# Valida estandarizacion de skills (Agent Skills spec + writing-for-agents + npx skills discovery).
# Falla con mensaje claro si algo no cumple. Usado por .husky/pre-commit.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
FAIL=0

for dir in "$ROOT"/skills/*/; do
  name="$(basename "$dir")"
  skill="$dir/SKILL.md"

  [ -f "$skill" ] || { echo "FAIL $name: falta SKILL.md"; FAIL=1; continue; }

  # Frontmatter name + description presentes
  front_name=$(sed -n '/^---$/,/^---$/p' "$skill" | grep -E '^name:' | head -1 | sed 's/^name:[[:space:]]*//')
  front_desc=$(sed -n '/^---$/,/^---$/p' "$skill" | grep -E '^description:' | head -1 | sed 's/^description:[[:space:]]*//')

  [ -n "${front_name:-}" ] || { echo "FAIL $name: frontmatter sin name"; FAIL=1; }
  [ -n "${front_desc:-}" ] || { echo "FAIL $name: frontmatter sin description"; FAIL=1; }

  # name == dirname, kebab-case
  if [ "${front_name:-}" != "$name" ]; then
    echo "FAIL $name: frontmatter name='${front_name:-}' != dirname '$name'"; FAIL=1
  fi
  if ! [[ "$name" =~ ^[a-z0-9-]+$ ]]; then
    echo "FAIL $name: el nombre debe ser kebab-case [a-z0-9-]"; FAIL=1
  fi

  # description: no vacia, <= 1024 chars (limite spec agentes)
  len=$(printf '%s' "${front_desc:-}" | wc -m)
  if [ "$len" -eq 0 ] || [ "$len" -gt 1024 ]; then
    echo "FAIL $name: description longitud $len (1-1024)"; FAIL=1
  fi

  # agents/openai.yaml opcional pero si existe debe tener short_description
  if [ -f "$dir/agents/openai.yaml" ]; then
    grep -q 'short_description:' "$dir/agents/openai.yaml" || { echo "FAIL $name: agents/openai.yaml sin short_description"; FAIL=1; }
  else
    echo "WARN $name: sin agents/openai.yaml (opcional, solo clientes OpenAI)"
  fi
done

# Referencias cruzadas: toda mencion `diseno-*` debe existir
for f in "$ROOT"/skills/*/SKILL.md; do
  for ref in $(grep -oE 'diseno-[a-z-]+' "$f" | sort -u); do
    [ -d "$ROOT/skills/$ref" ] || { echo "FAIL $(basename "$(dirname "$f")"): referencia a skill inexistente '$ref' en $(basename "$f")"; FAIL=1; }
  done
done

if [ "$FAIL" -eq 0 ]; then
  echo "OK: $(ls "$ROOT/skills" | wc -l) skills validas"
else
  echo "Validacion fallida" >&2; exit 1
fi
