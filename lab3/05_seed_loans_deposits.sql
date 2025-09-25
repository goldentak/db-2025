-- Insert Loans
INSERT INTO loans (account_id, amount, interest_rate, end_date)
VALUES
((SELECT account_id FROM accounts WHERE account_number='KZ000000000000000003'), 500000.00, 14.50, '2029-01-01'),
((SELECT account_id FROM accounts WHERE account_number='KZ000000000000000001'), 200000.00, 12.00, '2027-06-01'),
((SELECT account_id FROM accounts WHERE account_number='KZ000000000000000006'), 75000.00, 10.00, '2026-05-01'),
((SELECT account_id FROM accounts WHERE account_number='KZ000000000000000007'), 100000.00, 13.25, '2028-03-01'),
((SELECT account_id FROM accounts WHERE account_number='KZ000000000000000004'), 30000.00, 9.50, '2026-12-01');

-- Insert Deposits
INSERT INTO deposits (account_id, amount, interest_rate, end_date)
VALUES
((SELECT account_id FROM accounts WHERE account_number='KZ000000000000000002'), 8000.00, 3.50, '2026-01-01'),
((SELECT account_id FROM accounts WHERE account_number='KZ000000000000000005'), 15000.00, 4.00, '2027-01-01'),
((SELECT account_id FROM accounts WHERE account_number='KZ000000000000000008'), 2500.00, 2.25, '2025-12-31'),
((SELECT account_id FROM accounts WHERE account_number='KZ000000000000000006'), 1000.00, 2.00, '2026-08-15'),
((SELECT account_id FROM accounts WHERE account_number='KZ000000000000000001'), 50000.00, 5.00, '2028-02-01');
