
--Total Sales per Product
Select ProductName, ROUND(SUM(Total)) as Total_Sales from MyDataset
GROUP BY ProductName
ORDER BY Total_Sales DESC

--Average Price per Product Category
SELECT ProductCategory, AVG(Price) as AVG_per_Category
From MyDataset
GROUP BY ProductCategory
ORDER BY AVG_per_Category DESC


--Average Quantity Ordered per Product
SELECT ProductName, AVG(Quantity) as AVG_Quantity
From MyDataset
GROUP BY ProductName
ORDER BY AVG_Quantity DESC

-- Percentage of Orders by Status
SELECT OrderStatus, 
       COUNT(*) * 100.0 / (SELECT COUNT(*) FROM MyDataset) AS Percentage
FROM MyDataset
GROUP BY OrderStatus;

--Maximum and Minimum Prices by Category
SELECT productCategory , MAX(Price),MIN(Price)
From mydataset
GROUP BY productCategory   

-- average discount given:
Select AVG(Discount) AS AvgDiscount  from mydataset

--Count the number of orders per payment method
SELECT PaymentMethod, COUNT(*) AS TotalOrders
 FROM MyDataset 
 GROUP BY PaymentMethod;
--maximum and minimum shipping cost:
SELECT MAX(ShippingCost),MIN(ShippingCost)
FROM MyDataset 

--total number of products sold per category
SELECT ProductCategory ,Sum(Quantity) from mydataset 
GROUP BY ProductCategory

--Total quantity of items bought by each customer
Select CustomerName, Sum(Quantity) as Total_buy FROM mydataset
GROUP BY CustomerName 
ORDER BY Total_buy DESC