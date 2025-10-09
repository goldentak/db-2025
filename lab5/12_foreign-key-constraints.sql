ALTER TABLE accounts 
    ADD CONSTRAINT fk_user
    FOREIGN KEY (user_id) REFERENCES users(user_id)
    ON DELETE CASCADE 
    ON UPDATE CASCADE;

ALTER TABLE cards 
    ADD CONSTRAINT fk_account
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
    ON DELETE SET NULL;

ALTER TABLE transactions 
    ADD CONSTRAINT fk_from_account
    FOREIGN KEY (from_account_id) REFERENCES accounts(account_id)
    ON DELETE RESTRICT;

ALTER TABLE deposits 
    ADD CONSTRAINT fk_deposit_account
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
    ON DELETE SET DEFAULT;

ALTER TABLE loans 
    ADD CONSTRAINT fk_loan_account
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
    ON DELETE NO ACTION;