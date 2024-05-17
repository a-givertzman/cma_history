SELECT 'CREATE DATABASE '
        WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = '')\gexec
