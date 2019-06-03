create extension if not exists "pgcrypto";

create or replace function set_updated_at() RETURNS trigger
  LANGUAGE plpgsql
  AS $$
begin
  new.updated_at := current_timestamp;
  return new;
end;
$$;

create table if not exists users (
  id uuid primary key not null default gen_random_uuid(),
  "name" text not null,
  handle text not null,
  created_at timestamp not null default now(),
  updated_at timestamp not null default now()
);
create trigger updated_at before update on users for each row execute procedure set_updated_at();

create table if not exists locations (
  id uuid primary key not null default gen_random_uuid(),
  latitude float not null,
  longitude float not null
);

create table if not exists tweets (
  id uuid primary key not null default gen_random_uuid(),
  created_at timestamp not null default now(),
  "text" text not null,
  "owner" uuid not null references users(id) on delete cascade,
  "location" uuid not null references locations(id) on delete cascade
);
