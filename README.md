# Skills de diseño — nevex-designs

Un set de skills chicas para diseñar con un mismo estilo de la casa: **editorial, plano, real**.

| Skill                         | Para qué                                                                                |
| ----------------------------- | --------------------------------------------------------------------------------------- |
| `diseno`                      | Principios del estilo y qué skill cargar según la tarea. Empezá por acá.                |
| `diseno-tipografia-y-color`   | Fuentes, titulares, paleta y tokens. Incluye `derivar-tokens.md` para proyectos nuevos. |
| `diseno-imagenes`             | Fotos reales, encuadre, video de hero, galerías y assets.                               |
| `diseno-layout-y-componentes` | Hero, botones, íconos, tarjetas, grillas y celular.                                     |
| `diseno-piezas-sociales`      | Carruseles, posts y feed.                                                               |
| `diseno-revision`             | Checklist de 11 puntos antes de entregar.                                               |

Las skills se citan entre sí por nombre, así que conviene instalarlas juntas.
`diseno` es router: cargalo primero y él deriva al resto.

## Instalación

Estructura compatible con el estándar Agent Skills y el CLI `skills`
([vercel-labs/skills](https://github.com/vercel-labs/skills)): cada skill vive en
`skills/<nombre>/SKILL.md` con `name` + `description` en el frontmatter.
`agents/openai.yaml` es opcional, para clientes OpenAI.

```bash
# Desde el repo publicado (reemplazá org/repo por el real)
pnpm dlx skills add nevex-labs/nevex-designs-skills --skill 'diseno*'

# Solo una skill
pnpm dlx skills add nevex-labs/nevex-designs-skills --skill diseno-revision

# Global (todas tus máquinas) en vez de proyecto
pnpm dlx skills add nevex-labs/nevex-designs-skills --skill 'diseno*' -g

# Solo listar sin instalar
pnpm dlx skills add nevex-labs/nevex-designs-skills --list

# Desde checkout local
pnpm dlx skills add ./nevex-designs-skills --skill 'diseno*'
```

Destinos por agente: OpenCode usa `.agents/skills/` en proyecto y
`~/.config/opencode/skills/` en global; el flag `-a` lo restringe
(ej. `-a opencode`). Ver tabla completa en el README de `vercel-labs/skills`.

Instalación manual: copiá las seis carpetas `skills/diseno*` al directorio de
skills de tu agente, el global de tu usuario o el `skills/` del repo, según lo
que lea tu herramienta.

## Desarrollo

```bash
pnpm install               # husky + lint-staged + oxfmt
bash scripts/validate-skills.sh   # frontmatter, name==dirname, referencias
```

El pre-commit (`.husky/pre-commit`) corre validación + `lint-staged`
(prettier sobre staged). Sin `typecheck`/`test`: es un repo markdown-only,
así que el hook valida skills en vez de compilar código. No hay guardrails de
git bloqueantes; el único gate es que las 6 skills validen.
