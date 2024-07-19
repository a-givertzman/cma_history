/*
    PROCESS TAG
*/
do $$
begin
    if not exists (SELECT 1 FROM pg_type WHERE typname = 'tag_type_enum') THEN
        CREATE TYPE public."tag_type_enum" AS ENUM (
            'Bool',
            'Int',
            'UInt',
            'DInt',
            'Word',
            'LInt',
            'Real',
            'Double',
            'String',
            'Json',
            'Time',
            'Date_And_Time'
        );
    end if;
end
$$;
create table if not exists public.tags (
    id 		serial not null,
    type      tag_type_enum not null,
    name      varchar(255) not null unique,
    description   varchar(255) not null DEFAULT '',
    PRIMARY KEY (id)
);
comment on table public.tags is 'Tag dictionary';