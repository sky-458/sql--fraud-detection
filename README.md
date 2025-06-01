# sql--fraud-detection
Fraud detection on credit card transactions using SQL. Real-world use cases implemented with rule-based logic.
# SQL-Based Credit Card Fraud Detection

This project detects suspicious patterns in real-world credit card transaction data using pure SQL logic. No Python, no ML — just scalable queries that simulate how analysts at banks and fintechs find fraud.

# Queries Implemented

1. **High-Value Transactions** – Filtered transactions > $2000
2. **Rapid Repeat Detection** – Same amount repeated within 30 seconds
3. **Midnight Activity** – Transactions from 12 AM to 4 AM
4. **Known Frauds** – View all records flagged as fraud (`class = 1`)
5. **Fraud % by Amount Range** – Grouped and calculated fraud rates across price bands


## Dataset Used

[Kaggle Credit Card Fraud Dataset](https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud)

## Built With

- MySQL 8.0
- MySQL Workbench

## How to Use

1. Download the dataset from Kaggle
2. Load it into MySQL using `LOAD DATA LOCAL INFILE`
3. Run each query in `queries/` to simulate fraud detection logic

## About Me

I'm an aspiring data analyst building real-world projects to understand business data deeply and solve practical problems with SQL and data storytelling.
