---
name: diseno-tipografia-y-color
description: Tipografía y color con el estilo de la casa. Usalo para elegir fuentes, escalas de titulares, paleta o tokens, y para adaptar la marca de un cliente.
---

Parte de `diseno`. Para un proyecto sin tokens todavía, seguí [derivar-tokens.md](derivar-tokens.md).

## Tipografía

1. **Una sola familia sans** para titulares y texto, variable y con peso 800 (por ejemplo Manrope, Plus Jakarta Sans o Nunito Sans). Si la marca ya tiene fuentes propias, usá esas.
2. **Titulares** en 800, con tracking de −0.03em a −0.055em, interlineado de 0.95 a 1.05 y un ancho máximo de unos 18ch. El tamaño va con `clamp()` (por ejemplo `clamp(44px, 5.8vw, 76px)`) y en el celular conserva el impacto. Un titular que no se impone se agranda: es el primer ajuste.
3. **Cortes de línea a mano** (`<br />`, `whitespace-pre-line` o un `span` en bloque): una idea por renglón y el acento entero en el segundo.
4. **Titular en dos tonos**: la segunda parte va en `<em>` con `font-style: normal`, en peso 500 o en el color de marca. Ejemplo: "Protegemos / _lo que construís._".
5. **Cuerpo liviano y legible**: `font-light` o `extralight`, de 16 a 18px, con opacidad del 60 al 78% sobre fondo oscuro o un gris de tinta sobre fondo claro.
6. **Legibilidad antes que sutileza**: los textos de ayuda, los badges y las etiquetas de estado se leen sin esfuerzo. Ante la duda, más grande, más contraste y más espacio.

## Color

1. **Un solo color de marca**, el del logo, con su escala (oscuro, base, claro y suave) y neutros de tinta y papel. Un segundo color entra solo con una función concreta, por ejemplo la segunda serie de un gráfico.
2. **Colores de estado** (rojo para cancelar, verde para confirmar) en sólido, con texto blanco, y solo para estados.
3. **Piezas propias**: casi negro, crema y grises, con un acento como detalle mínimo.
4. **Marca del cliente**: se respeta aunque choque con el estilo de la casa. Llevala a un acento sólido y dejá el resto plano.

Terminás cuando cada color del diseño es neutro, de marca o de estado y podés decir de dónde sale.
