 -- Query 5: Fraud % by Amount Range (Grouped Insight)
SELECT 
  FLOOR(amount / 100) * 100 AS amount_range,
  COUNT(*) AS total_txns,
  SUM(class) AS frauds,
  ROUND(SUM(class) / COUNT(*) * 100, 2) AS fraud_percentage
FROM credit_card_transactions
GROUP BY amount_range
ORDER BY fraud_percentage DESC
LIMIT 10;
