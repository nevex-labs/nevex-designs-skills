---
name: diseno-layout-y-componentes
description: Layout y componentes con el estilo de la casa. Usalo para armar o ajustar heros, secciones, botones, íconos, tarjetas, grillas, formularios o la versión de celular de un sitio o panel.
---

Parte de `diseno`. Las fotos y los assets están en `diseno-imagenes`.

## Componentes

1. **Repetí lo que existe**: antes de crear un componente, buscá uno parecido en el producto (pestañas, botones, mapas, tarjetas) y copiá su estilo.
2. **Botones pastilla** (`999px`, o el radio de la marca): una sola acción principal sólida y la secundaria con borde. Un link que en realidad es una acción pasa a botón. Las acciones de estado (cancelar, confirmar) van en sólido y con su color de estado.
3. **Íconos exactos**: cada ícono dice literalmente lo que nombra (una jeringa para vacunación, un gato para medicina felina). Si la librería no tiene el correcto, dibujalo.
4. **Título directo**: el titular abre el bloque y lo que sigue es el contenido. El contexto (categoría, URL, sección) vive en el texto o en la navegación.
5. **Cada cosa una vez**: un dato, logo, estado o número aparece en un solo lugar de la pantalla. Cada botón lleva a algo real; donde no hay datos, un estado vacío.
6. **Formularios y modales sólidos**: fondo opaco o pantalla completa, con el contenido de atrás oculto.
7. **Recursos con motivo**: una marquesina necesita varios logos (con uno solo, va fijo y centrado). Una animación necesita un motivo, respeta `prefers-reduced-motion` y deja estable el área de click (hover sin saltos ni escalas).
8. **Crédito del estudio**: chico, gris y al pie, sin competir con el trabajo.

## Grilla

1. **Aire en desktop**: un token de separación entre secciones (unos 110 a 125px) y un contenedor de 1120 a 1440px.
2. **Grilla completa**: cada fila se llena. Si sobra una tarjeta, ajustá la cantidad o las columnas (seis tarjetas son dos filas de tres).

## Celular

Hacé una pasada propia, a 390px, de a pasos chicos y mirando la pantalla real en cada paso:

1. El token de separación se achica en un solo lugar.
2. El bloque del hero queda alto y con poco espacio muerto debajo.
3. Los titulares de tarjeta se leen y el ícono comparte fila con el título.
4. Los objetivos de toque son grandes, el menú es cómodo y los inputs tienen 16px (así iOS no hace zoom).

Terminás cuando cada componente nuevo tiene un estilo existente de referencia o una razón anotada, cada botón tiene destino, cada fila de la grilla está completa y revisaste el celular en pantalla.
