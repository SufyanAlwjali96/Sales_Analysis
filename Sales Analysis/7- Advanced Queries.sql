--Top 5 Best-Selling Products
SELECT ProductName, SUM(Quantity) AS TotalQuantity
FROM mydataset
GROUP BY ProductName
ORDER BY TotalQuantity DESC
 
--Count of Products in Each Price Range
SELECT Case 
       When Price < 20 Then 'Under $20'
       When Price  BETWEEN 20 AND 50 Then 'U$20 to $50'
       When Price  BETWEEN 51 AND 100 Then '$51 to $100'
      ELSE 'Above 100'
       End As PriceList, COUNT(*) as product_count
From mydataset
GROUP BY PriceList
ORDER BY product_count

--Products with Above Average Sales 
SELECT ProductName, SUM(Total) as Total_sales
FROM mydataset
GROUP BY ProductName
HAVING Total_sales > (SELECT AVG(Total) from mydataset)

--Top 3 Countries by Revenue
SELECT Country, Sum(Total) As Total_revenue
From mydataset 
GROUP BY Country
ORDER BY Total_revenue


 SELECT ProductName, Total,
  RANK() OVER (ORDER BY Total DESC) AS SalesRank 
FROM MyDataset;
 