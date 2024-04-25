read -r -d '' sql << EOF
    do \$\$
    begin
        if not exists (SELECT 1 FROM pg_database WHERE datname = '$db') THEN
            CREATE DATABASE $db;
            GRANT ALL PRIVILEGES ON DATABASE $db TO $user;
        end if;
    end
    \$\$;
EOF
