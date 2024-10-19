SELECT COUNT(*) FROM MyDataset 
where Country = "Japan"

SELECT ProductName,CustomerName from MyDataset 
where Discount > 0

--orders where sales are greater than $10,000
SELECT * FROM mydataset where Total>10000

--Orders with a profit margin greater than 20%:
SELECT * FROM mydataset where(Profit / Total) > 0.20

--orders from US
SELECT * FROM MyDataset WHERE Country = 'United States';

--products with discounts above 15%:
SELECT * FROM MyDataset WHERE Discount > 15;

--Orders placed using a credit card and delivered
SELECT * FROM mydataset
WHERE PaymentMethod = 'Credit Card' AND OrderStatus = 'Delivered'