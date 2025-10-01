SELECT u.name AS customer_name
FROM users u
WHERE EXISTS (
    SELECT 1
    FROM transactions t
    WHERE t.from_account_id = u.user_id
    OR t.to_account_id = u.user_id
);