SELECT 
    TO_CHAR(a.balance, 'FM999,999,999.00') AS formatted_balance
FROM accounts a
WHERE a.balance > 1000;