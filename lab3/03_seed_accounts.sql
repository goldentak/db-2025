-- Insert Accounts with new unique account numbers
INSERT INTO accounts (user_id, account_number, balance, currency, account_type)
VALUES
((SELECT user_id FROM users WHERE email='nursultan.akhmet@example.com'),'KZ000000000000000011', 150000.00, 'KZT','checking'),
((SELECT user_id FROM users WHERE email='aigerim.tuleu@example.com'),'KZ000000000000000012', 5000.00, 'USD','savings'),
((SELECT user_id FROM users WHERE email='yerassyl.bek@example.com'),'KZ000000000000000013', 25000.00, 'KZT','business'),
((SELECT user_id FROM users WHERE email='danel.karim@example.com'),'KZ000000000000000014', 1000.00, 'EUR','student'),
((SELECT user_id FROM users WHERE email='aisulu.naz@example.com'),'KZ000000000000000015', 0.00, 'KZT','savings'),
((SELECT user_id FROM users WHERE email='dias.sapar@example.com'),'KZ000000000000000016', 1200.50, 'KZT','checking'),
((SELECT user_id FROM users WHERE email='adilet.nur@example.com'),'KZ000000000000000017', 98765.43, 'USD','business');

-- Insert with DEFAULT values
INSERT INTO accounts (user_id, account_number, account_type)
VALUES ((SELECT user_id FROM users WHERE email='madina.alim@example.com'),
        'KZ000000000000000018', 'savings');
