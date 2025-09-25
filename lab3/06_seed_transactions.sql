-- Insert Transactions
INSERT INTO transactions (from_account_id, to_account_id, amount, bank_fee, transaction_type, description)
VALUES
((SELECT account_id FROM accounts WHERE account_number='KZ000000000000000001'),
 (SELECT account_id FROM accounts WHERE account_number='KZ000000000000000002'),
 2000.00, 20.00, 'transfer', 'Rent payment'),
((SELECT account_id FROM accounts WHERE account_number='KZ000000000000000002'),
 (SELECT account_id FROM accounts WHERE account_number='KZ000000000000000003'),
 100.00, 1.00, 'payment', 'Service fee');
