SELECT 
    u.name,
    a.balance,
    CASE 
        WHEN a.balance < 100 THEN 'Low'
        WHEN a.balance BETWEEN 100 AND 500 THEN 'Medium'
        ELSE 'High'
    END AS balance_status
FROM users u
JOIN accounts a ON u.user_id = a.user_id
WHERE a.balance > 100;