-- Function to create a new user
CREATE OR REPLACE FUNCTION create_user(
    p_username VARCHAR(255),
    p_email VARCHAR(255),
    p_password_hash VARCHAR(255)
) RETURNS VOID AS $$
BEGIN
    INSERT INTO users (username, email, password_hash)
    VALUES (p_username, p_email, p_password_hash);
END;
$$ LANGUAGE plpgsql;
