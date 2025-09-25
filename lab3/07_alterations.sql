-- Add new column to users table
ALTER TABLE users ADD COLUMN date_of_birth DATE;

-- Add a new column to accounts with GENERATED identity
ALTER TABLE accounts ADD COLUMN account_code CHAR(6) GENERATED ALWAYS AS IDENTITY;

-- Add a constraint to ensure positive balance in accounts
ALTER TABLE accounts ADD CONSTRAINT chk_balance_positive CHECK (balance >= 0);
