SELECT t.transaction_id, t.amount, t.created_at
FROM transactions t
ORDER BY t.created_at DESC;