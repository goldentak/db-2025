-- Insert Accounts (related to users by email)
INSERT INTO accounts (user_id, account_number, balance, currency, account_type)
VALUES
((SELECT user_id FROM users WHERE email='nursultan.akhmet@example.com'),'KZ000000000000000001', 150000.00, 'KZT','checking'),
((SELECT user_id FROM users WHERE email='aigerim.tuleu@example.com'),'KZ000000000000000002', 5000.00, 'USD','savings'),
((SELECT user_id FROM users WHERE email='yerassyl.bek@example.com'),'KZ000000000000000003', 25000.00, 'KZT','business'),
((SELECT user_id FROM users WHERE email='danel.karim@example.com'),'KZ000000000000000004', 1000.00, 'EUR','student'),
((SELECT user_id FROM users WHERE email='aisulu.naz@example.com'),'KZ000000000000000005', 0.00, 'KZT','savings'),
((SELECT user_id FROM users WHERE email='dias.sapar@example.com'),'KZ000000000000000006', 1200.50, 'KZT','checking'),
((SELECT user_id FROM users WHERE email='adilet.nur@example.com'),'KZ000000000000000007', 98765.43, 'USD','business');

-- Insert with DEFAULT values
INSERT INTO accounts (user_id, account_number, account_type)
VALUES ((SELECT user_id FROM users WHERE email='madina.alim@example.com'),
        'KZ000000000000000008', 'savings');
