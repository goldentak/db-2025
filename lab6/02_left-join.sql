SELECT a.account_number, a.balance, c.card_number, c.card_type, c.expiration_date
FROM accounts a
LEFT JOIN cards c ON a.account_id = c.account_id;