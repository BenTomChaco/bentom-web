-- BenTom · "latido" para que Supabase no pause el proyecto por inactividad.
-- Ejecutar UNA vez en Supabase > SQL Editor (proyecto bentom-web).

create table if not exists public.keepalive (
  id int primary key default 1,
  last_ping timestamptz not null default now(),
  constraint una_sola_fila check (id = 1)
);

insert into public.keepalive (id) values (1) on conflict (id) do nothing;

alter table public.keepalive enable row level security;

-- Solo lectura pública de esa única fila (no contiene datos sensibles).
drop policy if exists "keepalive lectura publica" on public.keepalive;
create policy "keepalive lectura publica"
  on public.keepalive for select
  to anon
  using (true);

-- Función que registra el latido (escribe en la base, no solo lee).
create or replace function public.keepalive_ping()
returns timestamptz
language sql
security definer
set search_path = public
as $$
  update public.keepalive set last_ping = now() where id = 1 returning last_ping;
$$;

revoke all on function public.keepalive_ping() from public;
grant execute on function public.keepalive_ping() to anon;
