SELECT Country,SUM(Total) As Totla_Sales from mydataset
GROUP BY Country
order BY Totla_Sales DESC

 --Total Revenue from Each Product Category
SELECT ProductCategory,SUM(Total) as Sum_total from mydataset
GROUP BY ProductCategory
ORDER BY Sum_total DESC

-- Number of Orders by Country
SELECT Country,Count(*) As NumberOfOrders from mydataset
GROUP BY Country
order BY NumberOfOrders DESC

  
--orders by status and show total number of orders
SELECT OrderStatus, COUNT(*) AS TotalOrders 
FROM MyDataset
GROUP BY OrderStatus;

--Order products by highest profit
Select ProductName, SUM(Profit) As Profit_Summation
FROM mydataset
GROUP BY ProductName
Order by Profit_Summation