SELECT u.name, a.balance
FROM users u
JOIN accounts a ON u.user_id = a.user_id
WHERE a.balance BETWEEN 1000 AND 5000
AND a.account_type IN ('checking', 'savings')
ORDER BY a.balance ASC;