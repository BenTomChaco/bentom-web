# BenTom · Universo de Aventuras

Sitio web de BenTom (salón de cumpleaños infantiles y tienda de juguetes, Resistencia, Chaco).
Dominio previsto: **www.bentom.com.ar**.

## Estado

| Carpeta | Qué es |
|---|---|
| `demo/` | **Demo navegable** para mostrar al cliente (vista pública + panel del dueño, con datos de ejemplo). Es un único archivo, sin servidor ni base de datos. Se elimina cuando entre la versión real. |

> La versión real (Next.js + Supabase) va a reemplazar a `demo/`.

## Ver la demo

- Abrir `demo/index.html` con doble clic en el navegador, o
- Publicarla como sitio estático apuntando el **directorio de salida** a `demo`
  (Cloudflare Pages o Vercel; sin comando de build).

La demo no se indexa en buscadores (`robots.txt`, `noindex` y cabecera `X-Robots-Tag`).

## Datos de ejemplo

Todo lo que se ve (reservas, clientes, importes, WhatsApp) es ficticio.
Los cambios que se hagan en la demo viven solo en el navegador y se pierden al recargar.

## Seguridad del repositorio

- No se suben claves ni archivos `.env` (ver `.gitignore`).
- Las claves de Supabase, Resend y Cloudflare se cargan como variables de entorno en cada plataforma.

## Créditos

Sitio creado por [Tano Lorenzini](https://wa.me/5493624890710).
