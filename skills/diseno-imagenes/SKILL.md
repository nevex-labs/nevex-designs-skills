---
name: diseno-imagenes
description: Imágenes con el estilo de la casa. Usalo para elegir, encuadrar u optimizar fotos, armar un hero con video o slider, una galería con visor, o integrar el feed de Instagram de un cliente.
---

Parte de `diseno`. La regla madre es **lo real**.

1. **Material real**: fotos del cliente (local, equipo, obras, archivo histórico) y capturas reales del producto, pedidas antes de diseñar. Mientras falte alguna, el lugar queda marcado como pendiente en el diseño y en la lista de pendientes.
2. **Assets propios**: todo vive en el sitio, en WebP optimizado y con miniaturas para las tiras. Los originales pesados quedan fuera del repo. Cada imagen se sirve desde el propio dominio, porque los links externos (servicios de fotos, otros hostings) cambian o vencen.
3. **Logos ya exportados** en el color final (por ejemplo, en blanco para fondo oscuro), con tamaños balanceados entre sí. Así se evitan los filtros CSS, que además dentro de un track animado pueden hacer que iOS deje de pintar.
4. **Encuadre a mano**: cada foto con su `object-position` en el celular, para que caras, animales y carteles queden enteros. La foto llena su marco, sin franjas a los costados ni imágenes estiradas.
5. **Hero**: un video real de fondo (`autoPlay muted loop playsInline`, comprimido y con poster de una foto real) o un slider de fotos reales.
6. **Muchas fotos**: una tira de miniaturas (4, 2 o deslizable según el ancho) y un visor a pantalla completa sobre fondo casi negro, con la foto entera (`object-fit: contain`), flechas, teclado y contador. Si son de un recorrido, van en orden de recorrido.
7. **Redes del cliente**: si tiene Instagram con material propio, integralo en el sitio (carrusel, reels o bloque de feed).

Terminás cuando cada imagen visible es real o está marcada como pendiente, todas se sirven desde el sitio en WebP y revisaste el encuadre de cada una en una pantalla de 390px.
