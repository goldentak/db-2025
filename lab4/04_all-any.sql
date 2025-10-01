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