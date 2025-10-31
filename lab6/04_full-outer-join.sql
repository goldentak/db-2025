SELECT a.account_number, a.balance, d.amount AS deposit_amount, d.interest_rate, d.status
FROM accounts a
FULL OUTER JOIN deposits d ON a.account_id = d.account_id;