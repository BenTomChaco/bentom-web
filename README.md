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

La demo tiene tres vistas: **Sitio para clientes**, **Panel del dueño** (etapa 1) y **Equipo · próxima etapa**, una vista previa de una etapa posterior con ingreso con Google solo para el personal, paneles por rol (pelotero, cantina y juguetería Ben Toys) y accesos que asigna el administrador.

La demo no se indexa en buscadores (`robots.txt`, `noindex` y cabecera `X-Robots-Tag`).

## Mantener activo Supabase (plan gratuito)

Supabase pausa los proyectos gratuitos tras 7 días sin actividad. Para evitarlo:

1. En Supabase > SQL Editor, ejecutar una vez `supabase/keepalive.sql`.
2. En GitHub > Settings > Secrets and variables > Actions, crear `SUPABASE_URL` (URL del proyecto) y `SUPABASE_PUBLISHABLE_KEY` (clave publishable/anon).
3. El workflow `.github/workflows/keepalive.yml` hace un latido cada 3 días. Se puede probar a mano en Actions > "Supabase keepalive" > Run workflow.

## Datos de ejemplo

Todo lo que se ve (reservas, clientes, importes, WhatsApp) es ficticio.
Los cambios que se hagan en la demo viven solo en el navegador y se pierden al recargar.

## Seguridad del repositorio

- No se suben claves ni archivos `.env` (ver `.gitignore`).
- Las claves de Supabase, Resend y Cloudflare se cargan como variables de entorno en cada plataforma.

## Créditos

Sitio creado por [Tano Lorenzini](https://wa.me/5493624890710).
