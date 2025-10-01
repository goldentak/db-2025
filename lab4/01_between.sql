SELECT u.name AS customer_name, a.balance AS account_balance
FROM users u
JOIN accounts a ON u.user_id = a.user_id
WHERE a.balance BETWEEN 1000 AND 5000;