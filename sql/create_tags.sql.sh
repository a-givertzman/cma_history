#
#    PROCESS TAG
#
read -r -d '' sql << EOF
    \\\connect $db;
    do \$\$
    begin
        if not exists (SELECT 1 FROM pg_type WHERE typname = 'tag_type_enum') THEN
            create type $db.public.tag_type_enum as enum('Bool','Int','UInt','DInt','Word','LInt','Real','Time','Date_And_Time');
        end if;
    end
    \$\$;
    create table if not exists $db.public.tags (
        id 		serial not null,
        type      tag_type_enum not null,
        name      varchar(255) not null unique,
        description   varchar(255) not null DEFAULT '',
        PRIMARY KEY (id)
    );
    comment on table $db.public.tags is 'Tag dictionary';
EOF