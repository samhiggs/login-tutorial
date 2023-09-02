
-- Sample data (dummy users)
INSERT INTO users (username, email, password_hash, user_role)
VALUES
    ('user1', 'user1@example.com', 'hashed_password_1', 'user'),
    ('user2', 'user2@example.com', 'hashed_password_2', 'admin'),
    ('user3', 'user3@example.com', 'hashed_password_3', 'user');
