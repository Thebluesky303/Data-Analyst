-- Joining the table date and transactions
SELECT sales.transactions.*, sales.date.* From sales.transactions 
inner join sales.date on sales.transactions.order_date = sales.date.date where sales.date.year = 2020;

-- Total sale of 2020
SELECT sum(sales.transactions.sales_amount) From sales.transactions 
inner join sales.date on sales.transactions.order_date = sales.date.date where sales.date.year = 2020;
SELECT count(*) FROM sales.transactions;
SELECT count(*) FROM sales.customers;
SELECT * FROM sales.transactions limit 5;
SELECT * FROM sales.transactions where market_code = "Mark001";
SELECT count(*) FROM sales.transactions where market_code = "Mark001";
SELECT count(*) FROM sales.transactions where currency = "USD";

-- Total sales of Chennai
SELECT sum(sales.transactions.sales_amount) From sales.transactions 
inner join sales.date on sales.transactions.order_date = sales.date.date 
where sales.date.year = 2020 and sales.transactions.market_code = "Mark001";

-- Distnct product that sold in chennai
Select distinct product_code from sales.transactions where market_code = 'Mark001';