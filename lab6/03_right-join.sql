SELECT u.name, u.surname, l.amount, l.interest_rate, l.status
FROM users u
RIGHT JOIN accounts a ON u.user_id = a.user_id
RIGHT JOIN loans l ON a.account_id = l.account_id;