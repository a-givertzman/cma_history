GRANT CONNECT ON DATABASE crane_data_server TO crane_data_server;
\c crane_data_server
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO crane_data_server;
GRANT SELECT, USAGE ON ALL SEQUENCES IN SCHEMA public TO crane_data_server;
