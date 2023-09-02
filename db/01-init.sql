CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Create a table for users
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    session_token UUID DEFAULT uuid_generate_v4(), -- Unique session token
    oauth_access_token VARCHAR(255), -- OAuth access token (for external logins)
    oauth_id_token VARCHAR(255), -- OAuth ID token (for external logins)
    user_role VARCHAR(50) DEFAULT 'user', -- User role (e.g., 'user', 'admin')
    last_login TIMESTAMP, -- Timestamp for last login
    password_reset_token UUID, -- Token for password reset
    is_locked BOOLEAN DEFAULT FALSE, -- Account lock flag
    is_suspended BOOLEAN DEFAULT FALSE -- Account suspension flag
);
