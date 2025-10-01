SELECT a.account_id, a.balance
FROM accounts a
WHERE NOT EXISTS (
    SELECT 1
    FROM users u
    WHERE u.user_id = a.user_id AND u.status = 'active'
);