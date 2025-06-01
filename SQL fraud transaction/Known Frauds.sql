-- Query 4: Known Frauds (Label = 1)
SELECT *
FROM credit_card_transactions
WHERE class = 1
LIMIT 100;
