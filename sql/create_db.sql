read -r -d '' sql << EOF
    SELECT 'CREATE DATABASE $db'
    WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = '$db')\gexec;
    do \$\$
    begin
        if exists (SELECT 1 FROM pg_database WHERE datname = '$db') THEN
            if exists (SELECT 1 FROM pg_roles WHERE rolname='$user') then
                GRANT ALL PRIVILEGES ON DATABASE $db TO $user;
            end if;
        end if;
    end
    \$\$;
EOF
