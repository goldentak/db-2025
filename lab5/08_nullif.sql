SELECT 
    NULLIF(a.currency, 'USD') AS non_usd_currency
FROM accounts a
WHERE a.balance > 100;