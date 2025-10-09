SELECT 
    ROUND((RANDOM() * 1000)::numeric, 2) AS random_value
FROM accounts
WHERE (RANDOM() * 1)::numeric < 0.5;
