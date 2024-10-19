

--Retrieve Products with High Profit
SELECT ProductName,Profit , Total
from mydataset
where Profit > (Select AVG(Profit) from mydataset)


--Subquery to find the product with the highest sales:
SELECT ProductName,Total,Country
FROM mydataset
WHERE Total = (Select MAX(Total) FROM mydataset)

--top 3 customers by total sales using subqueries
Select CustomerName,Totalsales From 
(SELECT CustomerName, Sum(Total)As Totalsales From mydataset GROUP BY CustomerName) As sub
ORDER BY Totalsales DESC LIMIT 3