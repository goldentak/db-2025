SELECT 
    INITCAP(u.surname) AS capitalized_surname,
    CONCAT('Account:', a.account_number) AS formatted_account_number
FROM users u
JOIN accounts a ON u.user_id = a.user_id;