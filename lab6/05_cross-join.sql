SELECT c.card_number, c.card_type, t.transaction_type
FROM cards c
CROSS JOIN (SELECT DISTINCT transaction_type FROM transactions) t;