
# Lab Work: SQL Queries

## 1. SQL Queries with Subqueries, Aliases, and Clauses

### Overview
The lab demonstrates various SQL techniques using subqueries, aliases, and several SQL clauses including `BETWEEN`, `IN`, `LIKE`, `EXISTS`, `ALL`, `ANY`, `NOT`, and `ORDER BY`.

---

### SQL Query 1: Using Subquery, Aliases, and `BETWEEN`

This query selects customer names and their account balances within the range of 1000 to 5000.

```sql
SELECT u.name AS customer_name, a.balance AS account_balance
FROM users u
JOIN accounts a ON u.user_id = a.user_id
WHERE a.balance BETWEEN 1000 AND 5000;
```

### SQL Query 2: Using `IN`, Aliases, and `LIKE`

This query retrieves transactions from specific accounts (1, 2, 3) where the description contains "transfer".

```sql
SELECT t.transaction_id, t.amount, t.description
FROM transactions t
WHERE t.from_account_id IN (1, 2, 3)
AND t.description LIKE '%transfer%';
```

### SQL Query 3: Using `EXISTS` with Subquery

This query finds users who have made transactions involving specific accounts.

```sql
SELECT u.name AS customer_name
FROM users u
WHERE EXISTS (
    SELECT 1
    FROM transactions t
    WHERE t.from_account_id = u.user_id
    OR t.to_account_id = u.user_id
);
```

### SQL Query 4: Using `ALL` and `ANY`

This query checks if the user's transaction amount is greater than or equal to all other users' transactions.

```sql
SELECT u.name AS customer_name
FROM users u
WHERE NOT EXISTS (
    SELECT 1
    FROM transactions t
    WHERE t.amount > ALL (
        SELECT amount
        FROM transactions t2
        WHERE t2.from_account_id = u.user_id
    )
);
```

### SQL Query 5: Using `NOT`

This query selects accounts not belonging to any active user.

```sql
SELECT a.account_id, a.balance
FROM accounts a
WHERE NOT EXISTS (
    SELECT 1
    FROM users u
    WHERE u.user_id = a.user_id AND u.status = 'active'
);
```

### SQL Query 6: Using `ORDER BY` in Ascending and Descending Order

This query retrieves transactions ordered by transaction date in descending order.

```sql
SELECT t.transaction_id, t.amount, t.created_at
FROM transactions t
ORDER BY t.created_at DESC;
```

### SQL Query 7: Combining `BETWEEN`, `IN`, and `ORDER BY`

This query selects users with specific account balances and filters account types, ordering the results by balance.

```sql
SELECT u.name, a.balance
FROM users u
JOIN accounts a ON u.user_id = a.user_id
WHERE a.balance BETWEEN 1000 AND 5000
AND a.account_type IN ('checking', 'savings')
ORDER BY a.balance ASC;
```

### SQL Query 8: Complex Query with `EXISTS`, `NOT`, and `IN`

This query finds users who have no active transactions and whose account balance is greater than 5000.

```sql
SELECT u.name
FROM users u
WHERE NOT EXISTS (
    SELECT 1
    FROM transactions t
    WHERE t.from_account_id = u.user_id OR t.to_account_id = u.user_id
)
AND u.user_id IN (
    SELECT a.user_id
    FROM accounts a
    WHERE a.balance > 5000
);
```

---

## 2. How to Execute These Queries

### Step 1: Set Up the Database

Create the necessary tables using the following SQL statements:

```sql
-- Run SQL Files
\i path_to_your_sql_file/00_create-database.sql
\i path_to_your_sql_file/01_between.sql
\i path_to_your_sql_file/02_in-like.sql
\i path_to_your_sql_file/03_exists.sql
\i path_to_your_sql_file/04_all-any.sql
\i path_to_your_sql_file/05_not.sql
\i path_to_your_sql_file/06_orderby.sql
\i path_to_your_sql_file/07_between-in-orderby.sql
\i path_to_your_sql_file/08_exists-not-in.sql

```

### Step 2: Run SQL Queries

To execute the SQL queries, use the following command in PostgreSQL:

```bash
\i path_to_your_sql_file.sql
```

Replace `path_to_your_sql_file.sql` with the path to your `.sql` file containing the queries.

## Screenshots

![#](#)

