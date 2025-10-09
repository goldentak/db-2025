ALTER TABLE users
    ADD CONSTRAINT check_email_format
    CHECK (email LIKE '%@%.%');