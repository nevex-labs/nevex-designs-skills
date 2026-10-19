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

## Origen del estilo

Nada acá es inventado: cada regla comprime lo ya construido en los sitios de
nevex-labs (diseño: Julián, `jay-south`). Procedencia verificable:

| Regla                                                                           | De dónde sale                                                                    |
| ------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| Titular 800, `clamp(44px, 5.8vw, 76px)`, tracking −0.045, `em` en dos tonos     | `humedan` — el ejemplo "Protegemos / lo que construís" es su hero tal cual       |
| Escala de marca + neutros, una sola sans                                        | `veterinaria-gachen` (`landing.css`: Manrope + escala violeta + ink/muted/paper) |
| Video hero local con poster, galería con visor, IG integrado, logos self-hosted | Commits de Julián en `humedan` y `ferracioli` (video, lightbox, reels, favicon)  |
| Radio 2–4px en marca industrial, pastilla en el resto                           | `humedan` (4px) vs `ferracioli`/`gachen` (`rounded-full`/999px)                  |
| Inputs 16px, `prefers-reduced-motion`, encuadre a mano                          | `pescando`, `gachen` (clases `.foco-arriba`), los 5 repos                        |

La marca del cliente manda sobre el estilo: Gachen es violeta porque su logo
es violeta. Esa es la "zona gris" y se anota como decisión (`DECISIONS.md`).

## Roadmap

Backlog público en [issues](../../issues): #1–#5 criterio pendiente de
Julián (motion, video, intake, hero, favicon/OG), #6–#10 arquitectura
(secuencia, frontera, `@theme`, checker, responsive 3 paradas).

## Instalación

Estructura compatible con el estándar Agent Skills y el CLI `skills`
([vercel-labs/skills](https://github.com/vercel-labs/skills)): cada skill vive en
`skills/<nombre>/SKILL.md` con `name` + `description` en el frontmatter.
`agents/openai.yaml` es opcional, para clientes OpenAI.

```bash
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
(oxfmt sobre staged). Sin `typecheck`/`test`: es un repo markdown-only,
así que el hook valida skills en vez de compilar código. No hay guardrails de
git bloqueantes; el único gate es que las 6 skills validen.
