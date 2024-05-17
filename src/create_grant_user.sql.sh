read -r -d '' sql << EOF
do \$\$
begin
    if exists (SELECT 1 FROM pg_database WHERE datname = '$db') THEN
        if exists (SELECT 1 FROM pg_roles WHERE rolname = '$user') then
            GRANT ALL PRIVILEGES ON DATABASE $db TO $user;
            GRANT ALL ON SCHEMA public TO $user;
            GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO $user;
            ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON TABLES TO $user;
            ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON SEQUENCES TO $user;
            ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON FUNCTIONS TO $user;
        end if;
    end if;
end
\$\$;
EOF



            # ALTER DEFAULT PRIVILEGES FOR ROLE $user IN SCHEMA public
            #     GRANT ALL ON TABLES TO $user;
            # GRANT ALL ON ALL SEQUENCES IN SCHEMA public TO $user;
            # GRANT ALL ON ALL FUNCTIONS IN SCHEMA public TO $user;
