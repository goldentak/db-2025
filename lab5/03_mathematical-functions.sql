SELECT 
    ROUND(a.balance * 0.05, 2) AS interest_earned,
    ABS(a.balance) AS absolute_balance,
    CEIL(a.balance / 100) AS balance_in_hundreds,
    FLOOR(a.balance / 1000) AS balance_in_thousands,
    POWER(a.balance, 2) AS balance_squared
FROM accounts a
WHERE a.balance > 100;