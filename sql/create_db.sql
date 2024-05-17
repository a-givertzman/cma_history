SELECT 'CREATE DATABASE cma'
        WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'cma')\gexec
