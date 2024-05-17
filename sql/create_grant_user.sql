do $$
begin
    if exists (SELECT 1 FROM pg_database WHERE datname = '') THEN
        if exists (SELECT 1 FROM pg_roles WHERE rolname = '') then
            GRANT ALL PRIVILEGES ON DATABASE  TO ;
            GRANT ALL ON SCHEMA public TO ;
            GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO ;
            ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON TABLES TO ;
            ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON SEQUENCES TO ;
            ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON FUNCTIONS TO ;
        end if;
    end if;
end
$$;
