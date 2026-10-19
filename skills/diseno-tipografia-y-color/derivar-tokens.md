# Derivar tokens para un proyecto nuevo

Si el proyecto ya tiene tokens, leé el archivo vigente (CSS global, config de Tailwind o del design system) y trabajá sobre eso. Estos pasos son para cuando no hay nada.

1. **Color de marca**: tomalo del logo, con el archivo original delante. Armá la escala: un tono muy oscuro (texto sobre suave, hover), el base (botón principal), uno claro (bordes) y uno suave (fondos de bloque).
2. **Neutros**: tinta (casi negro, con un toque del matiz de marca), gris secundario y papel (blanco cálido o crema). El modo por defecto es claro, sobre papel; el oscuro va cuando la marca lo pide.
3. **Estados**: rojo y verde sólidos, que contrasten con texto blanco.
4. **Fuente**: la de la marca si existe. Si no, una sans variable con 800 para todo.
5. **Radio** según el carácter de la marca: botones pastilla (`999px`) por defecto, tarjetas de 12 a 24px. Una marca industrial o angulosa va con 2 a 4px en todo.
6. **Ritmo**: contenedor de 1120 a 1440px, un solo token de separación entre secciones (unos 110 a 125px en desktop) que se achica en el celular (unos 40 a 64px), sin excepciones por sección.

Plantilla:

```css
:root {
  /* Sale del logo. Único color de marca. */
  --brand-900: ;
  --brand-600: ;
  --brand-300: ;
  --brand-50: ;
  --ink: ; /* texto */
  --muted: ; /* texto secundario */
  --paper: ; /* fondo */
  --danger: ;
  --success: ; /* solo estados */
  --radius-btn: 999px;
  --container: 1180px;
  --section-gap: 120px;
}
@media (max-width: 640px) {
  :root {
    --section-gap: 56px;
  }
}
```

Terminás cuando cada token tiene al lado un comentario con su origen (logo, marca, estado o estilo de la casa).
