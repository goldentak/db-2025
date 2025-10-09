SELECT 
    u.name,
    a.balance,
    CASE
        WHEN a.balance > 1000 THEN 'High'
        WHEN a.balance BETWEEN 500 AND 1000 THEN 'Medium'
        ELSE 'Low'
    END AS balance_category
FROM users u
JOIN accounts a ON u.user_id = a.user_id
WHERE a.balance > 500 AND u.status = 'active';