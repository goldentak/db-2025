SELECT t.transaction_id, t.amount, t.description
FROM transactions t
WHERE t.from_account_id IN (1, 2, 3)
AND t.description LIKE '%transfer%';