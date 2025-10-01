-- Create Users Table
CREATE TABLE IF NOT EXISTS users (
  user_id      BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name         VARCHAR(100) NOT NULL,
  surname      VARCHAR(100) NOT NULL,
  email        VARCHAR(255) NOT NULL UNIQUE,
  password     VARCHAR(255) NOT NULL,
  phone_number VARCHAR(20),
  pincode      CHAR(4) NOT NULL,
  address      TEXT,
  status       VARCHAR(20) NOT NULL DEFAULT 'active',
  created_at   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Create Accounts Table
CREATE TABLE IF NOT EXISTS accounts (
  account_id     BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id        BIGINT NOT NULL,
  account_number CHAR(20) NOT NULL UNIQUE,
  balance        NUMERIC(15,2) NOT NULL DEFAULT 0,
  currency       CHAR(3) NOT NULL DEFAULT 'KZT',
  account_type   VARCHAR(30) NOT NULL,
  is_active      BOOLEAN NOT NULL DEFAULT TRUE,
  created_at     TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- Create Cards Table
CREATE TABLE IF NOT EXISTS cards (
  card_id        BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  account_id     BIGINT NOT NULL,
  card_number    CHAR(16) NOT NULL UNIQUE,
  bic            VARCHAR(11),
  cvc            CHAR(3) NOT NULL,
  expiration_date DATE NOT NULL,
  card_type      VARCHAR(20) NOT NULL,
  created_at     TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);

-- Create Transactions Table
CREATE TABLE IF NOT EXISTS transactions (
  transaction_id   BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  from_account_id  BIGINT NOT NULL,
  to_account_id    BIGINT NOT NULL,
  amount           NUMERIC(15,2) NOT NULL,
  bank_fee         NUMERIC(15,2) NOT NULL DEFAULT 0,
  transaction_type VARCHAR(30) NOT NULL,
  description      TEXT,
  created_at       TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (from_account_id) REFERENCES accounts(account_id) ON DELETE CASCADE,
  FOREIGN KEY (to_account_id)   REFERENCES accounts(account_id) ON DELETE CASCADE
);

-- Create Loans Table
CREATE TABLE IF NOT EXISTS loans (
  loan_id       BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  account_id    BIGINT NOT NULL,
  amount        NUMERIC(15,2) NOT NULL,
  interest_rate NUMERIC(5,2) NOT NULL,
  start_date    DATE NOT NULL DEFAULT CURRENT_DATE,
  end_date      DATE,
  status        VARCHAR(20) NOT NULL DEFAULT 'active',
  FOREIGN KEY (account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);

-- Create Deposits Table
CREATE TABLE IF NOT EXISTS deposits (
  deposit_id    BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  account_id    BIGINT NOT NULL,
  amount        NUMERIC(15,2) NOT NULL,
  interest_rate NUMERIC(5,2) NOT NULL,
  start_date    DATE NOT NULL DEFAULT CURRENT_DATE,
  end_date      DATE,
  status        VARCHAR(20) NOT NULL DEFAULT 'active',
  FOREIGN KEY (account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);

-- Create Audit Logs Table (added back)
CREATE TABLE IF NOT EXISTS audit_logs (
  log_id     BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id    BIGINT NOT NULL,
  action     VARCHAR(255) NOT NULL,
  details    TEXT,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);
