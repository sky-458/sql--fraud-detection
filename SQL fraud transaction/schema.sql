-- Create a Database and Table
CREATE DATABASE IF NOT EXISTS fraud_detection;
USE fraud_detection;

CREATE TABLE credit_card_transactions (
    time DOUBLE,
    v1 DOUBLE,
    v2 DOUBLE,
    v3 DOUBLE,
    v4 DOUBLE,
    v5 DOUBLE,
    v6 DOUBLE,
    v7 DOUBLE,
    v8 DOUBLE,
    v9 DOUBLE,
    v10 DOUBLE,
    v11 DOUBLE,
    v12 DOUBLE,
    v13 DOUBLE,
    v14 DOUBLE,
    v15 DOUBLE,
    v16 DOUBLE,
    v17 DOUBLE,
    v18 DOUBLE,
    v19 DOUBLE,
    v20 DOUBLE,
    v21 DOUBLE,
    v22 DOUBLE,
    v23 DOUBLE,
    v24 DOUBLE,
    v25 DOUBLE,
    v26 DOUBLE,
    v27 DOUBLE,
    v28 DOUBLE,
    amount DOUBLE,
    class TINYINT
);

-- Confirm these 2 settings
SET GLOBAL local_infile = 1;
USE fraud_detection;

-- Run This Final Import Command
LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/creditcard.csv'
INTO TABLE credit_card_transactions
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Verify the Import
SELECT COUNT(*) FROM credit_card_transactions;
