-- Query 3: Transactions Around Midnight (Odd Hours)
SELECT *
FROM credit_card_transactions
WHERE MOD(time, 86400) BETWEEN 0 AND 14400  -- First 4 hours of the day
LIMIT 100;