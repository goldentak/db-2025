SELECT 
    ROUND(RANDOM() * 1000::numeric, 2) AS random_value
FROM accounts
WHERE RANDOM() < 0.5;