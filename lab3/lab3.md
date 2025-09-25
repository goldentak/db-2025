
# Banking System Database Setup

## Purpose

* **New Constraints**:

  * Added **`CHECK`** constraints (e.g., for balance >= 0, valid currency types, and account types).
  * Added **`DEFAULT`** values for fields like `status`, `currency`, and `balance`.

* **Identity Columns**:

  * Switched to **`BIGINT GENERATED ALWAYS AS IDENTITY`** for auto-incrementing primary keys.

* **Additional Columns**:

  * Added `date_of_birth` to `users` and `account_code` to `accounts` (with `GENERATED` identity).

* **Reintroduced `audit_logs` Table**:

  * Re-added the **`audit_logs`** table for tracking user actions, which was missing in the previous lab.

* **Foreign Keys & Relationships**:

  * Ensured **referential integrity** with updated foreign key constraints across tables.

## Files
1. **`01_schema.sql`** — Contains SQL statements to create tables with constraints.
2. **`02_seed_users.sql`** — Inserts 8 users into the `users` table.
3. **`03_seed_accounts.sql`** — Inserts accounts related to the users.
4. **`04_seed_cards.sql`** — Inserts card data associated with accounts.
5. **`05_seed_loans_deposits.sql`** — Inserts loan and deposit data.
6. **`06_seed_transactions.sql`** — Inserts transaction records.
7. **`07_alterations.sql`** — Alters tables to add new columns and constraints.
8. **`08_verify.sql`** — Verification queries to check inserted data.

## How to Run

### Step 1: Create the Database
If the database hasn't been created yet, create it by running the following SQL command:

```sql
-- Optional: Create the database
CREATE DATABASE banking_system;

-- Connect to the newly created database
\c banking_system;
````

### Step 2: Run the SQL Files

Execute each SQL file in sequence. You can use the following command in `psql`:

```sql
\i 01_schema.sql       -- Create tables with constraints
\i 02_seed_users.sql   -- Insert users
\i 03_seed_accounts.sql -- Insert accounts linked to users
\i 04_seed_cards.sql   -- Insert cards linked to accounts
\i 05_seed_loans_deposits.sql -- Insert loan and deposit records
\i 06_seed_transactions.sql -- Insert transactions
\i 07_alterations.sql -- Alter tables to add new columns and constraints
\i 08_verify.sql -- Verify data insertion
```

### Step 3: Verify the Data

After running the SQL files, you can verify that the data has been inserted properly by running queries like:

```sql
SELECT * FROM users LIMIT 10;

SELECT * FROM accounts ORDER BY account_id;

SELECT * FROM transactions ORDER BY transaction_id;
```
