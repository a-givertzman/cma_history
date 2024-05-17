do $$
begin
    if not exists (SELECT 1 FROM pg_user WHERE usename = '') THEN
        CREATE USER  WITH PASSWORD '' CREATEDB CREATEROLE;
    end if;
end
$$;
