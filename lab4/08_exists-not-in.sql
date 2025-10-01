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