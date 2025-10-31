SELECT u.name, u.surname, COUNT(a.account_id) AS account_count
FROM users u
LEFT JOIN accounts a ON u.user_id = a.user_id
GROUP BY u.user_id, u.name, u.surname
HAVING COUNT(a.account_id) > 0;

SELECT a.currency, SUM(a.balance) AS total_balance, AVG(a.balance) AS avg_balance
FROM accounts a
GROUP BY a.currency
HAVING SUM(a.balance) > 50000;

SELECT t.transaction_type, COUNT(*) AS transaction_count, MIN(t.amount) AS min_amount, MAX(t.amount) AS max_amount
FROM transactions t
GROUP BY t.transaction_type
HAVING COUNT(*) >= 2 AND MAX(t.amount) > 1000;

SELECT 
    u.address,
    COUNT(DISTINCT a.account_id) AS unique_accounts,
    COUNT(DISTINCT c.card_id) AS unique_cards,
    SUM(t.amount) AS total_transactions,
    AVG(a.balance) AS avg_balance
FROM users u
INNER JOIN accounts a ON u.user_id = a.user_id
LEFT JOIN cards c ON a.account_id = c.account_id
LEFT JOIN transactions t ON a.account_id = t.from_account_id
GROUP BY u.address
HAVING COUNT(DISTINCT a.account_id) >= 1 
   AND SUM(t.amount) > 5000 
   AND AVG(a.balance) > 10000;