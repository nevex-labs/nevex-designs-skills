# Decisiones

Registro incremental del sistema de diseño. Cada entrada: fecha, decisión y
motivo en una línea. Lo que choca con el estilo se anota acá (zona gris).

- 2026-10-19: skills en español. Los triggers matchean los prompts del equipo;
  inglés solo si se publica para terceros (fork traducido, no duplicado).
- 2026-10-19: layout `skills/<nombre>/SKILL.md`. Requerido por `npx skills add`
  (discovery por contenedor `skills/`); el zip original en raíz no descubría.
- 2026-10-19: pre-commit = `validate-skills.sh` + lint-staged, sin
  typecheck/test. Repo markdown-only; el gate es frontmatter y referencias.
- 2026-10-19: se conserva `agents/openai.yaml` mínimo por skill. Solo lo lee
  Codex; costo cero, mismo formato que las skills globales.
- 2026-10-19: `diseno` router model-invoked con hijos model-invoked. 6
  descriptions siempre cargadas a cambio de auto-derivación en tareas de diseño.
- 2026-10-19: sin guardrails de git bloqueantes. Único gate: validación + CI.
- 2026-10-19: formateador oxfmt en vez de prettier (~30x más rápido, compatible
  con markdown). `oxfmt --migrate=prettier` generó `.oxfmtrc.json` desde
  `.prettierrc`, que se eliminó (una sola fuente de verdad). oxlint no aplica:
  es linter JS/TS y el repo es markdown + bash.
- 2026-10-19: package manager pnpm (lockfile `pnpm-lock.yaml` commiteado,
  `packageManager` pineado, CI con `pnpm/action-setup` + frozen-lockfile).
  `node_modules/` instalado local y excluido por `.gitignore`.
