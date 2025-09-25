-- Insert Cards
INSERT INTO cards (account_id, card_number, bic, cvc, expiration_date, card_type)
VALUES
((SELECT account_id FROM accounts WHERE account_number='KZ000000000000000001'),'4000123412341234','ABCDKZKX','123','2027-12-31','debit'),
((SELECT account_id FROM accounts WHERE account_number='KZ000000000000000002'),'5100123412341235','EFGHKZKX','456','2026-11-30','credit'),
((SELECT account_id FROM accounts WHERE account_number='KZ000000000000000003'),'4000123412341236','IJKLKZKX','789','2028-10-31','debit'),
((SELECT account_id FROM accounts WHERE account_number='KZ000000000000000004'),'5100123412341237','MNOPKZKX','111','2027-05-31','virtual'),
((SELECT account_id FROM accounts WHERE account_number='KZ000000000000000005'),'4000123412341238','QRSTKZKX','222','2029-04-30','debit');
