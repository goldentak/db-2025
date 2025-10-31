SELECT u.name, u.surname, t.transaction_type, t.amount, t.created_at
FROM users u
INNER JOIN accounts a ON u.user_id = a.user_id
INNER JOIN transactions t ON a.account_id = t.from_account_id;