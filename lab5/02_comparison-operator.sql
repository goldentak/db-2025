SELECT 
    u.name,
    a.balance
FROM users u
JOIN accounts a ON u.user_id = a.user_id
WHERE a.balance > 500 AND a.balance < 2000;
