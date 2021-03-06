-- CREATE DATABASE opiniothon;


USE opiniothon;

DROP TABLE minions;

CREATE TABLE minions (
minion_id INT(10) NOT NULL AUTO_INCREMENT,
minion_status VARCHAR(50),
minion_phno VARCHAR(15),
minion_lat VARCHAR(10),
minion_long VARCHAR(10),
minion_priority INT(2),
minion_rating decimal(2,2),
date_registered DATETIME,
CONSTRAINT pk_minion_id PRIMARY KEY (minion_id)
);


DROP TABLE merchants;

CREATE TABLE merchants (
merchant_id INT(10) NOT NULL AUTO_INCREMENT,
merchant_name VARCHAR(50),
merchant_phno VARCHAR(15),
merchant_addr VARCHAR(300),
merchant_lat VARCHAR(10),
merchant_long VARCHAR(10),
merchant_priority INT(2),
merchant_rating decimal(2,2),
date_registered DATETIME,
CONSTRAINT pk_merchant_id PRIMARY KEY (merchant_id)
);


DROP TABLE customers;

CREATE TABLE customers (
customer_id INT(10) NOT NULL AUTO_INCREMENT,
customer_name VARCHAR(50),
customer_phno VARCHAR(15),
customer_addr VARCHAR(300),
customer_lat VARCHAR(10),
customer_long VARCHAR(10),
customer_rating decimal(2,2),
date_registered DATETIME,
CONSTRAINT pk_customer_id PRIMARY KEY (customer_id)
);




DROP TABLE deliveries; 

CREATE TABLE deliveries (
delivery_id VARCHAR(16) NOT NULL,
merchant_id INT(10) NOT NULL,
customer_id  INT(10),
minion_id INT(10),
status VARCHAR(50),
time_created DATETIME,
time_completed DATETIME,
time_updated DATETIME,
CONSTRAINT pk_delivery_id PRIMARY KEY (delivery_id)
);


DROP TABLE activity_log;

CREATE TABLE activity_log (
delivery_id VARCHAR(16),
merchant_id INT(10),
customer_id  INT(10),
minion_id INT(10),
current_status VARCHAR(50),
timestamp TIMESTAMP
);