-- Query 1: High-Value Transactions (e.g., above $2,000)
SELECT *
FROM credit_card_transactions
WHERE amount > 2000
ORDER BY amount DESC;

