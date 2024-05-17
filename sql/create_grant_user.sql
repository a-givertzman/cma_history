do $$
begin
    if exists (SELECT 1 FROM pg_database WHERE datname = 'cma') THEN
        if exists (SELECT 1 FROM pg_roles WHERE rolname = 'cma') then
            GRANT ALL PRIVILEGES ON DATABASE cma TO cma;
            GRANT ALL ON SCHEMA public TO cma;
            GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO cma;
            ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON TABLES TO cma;
            ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON SEQUENCES TO cma;
            ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON FUNCTIONS TO cma;
        end if;
    end if;
end
$$;
