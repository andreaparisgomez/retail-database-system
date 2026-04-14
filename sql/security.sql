-- Security and user management

-- Create a user for analysis
CREATE USER analyst WITH PASSWORD 'secure123';

-- Create a read-only role
CREATE ROLE read_only;

-- Grant basic access permissions
GRANT CONNECT ON DATABASE retail_db TO read_only;
GRANT USAGE ON SCHEMA public TO read_only;

-- Grant read access to all tables
GRANT SELECT ON ALL TABLES IN SCHEMA public TO read_only;

-- Assign role to user
GRANT read_only TO analyst;
