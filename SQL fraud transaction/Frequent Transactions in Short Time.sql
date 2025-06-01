-- Query 2: Frequent Transactions in Short Time
SELECT t1.time AS time1, t2.time AS time2, t1.amount AS amount1, t2.amount AS amount2
FROM (
SELECT time, amount
FROM credit_card_transactions
 ORDER BY time
 LIMIT 10000
) AS t1
JOIN (
SELECT time, amount
FROM credit_card_transactions
ORDER BY time
LIMIT 10000
) AS t2
ON ABS(t1.time - t2.time) <= 30
AND t1.amount = t2.amount
AND t1.time != t2.time
LIMIT 100;
