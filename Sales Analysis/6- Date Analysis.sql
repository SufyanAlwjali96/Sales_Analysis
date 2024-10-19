-- Sales Over Time
SELECT ProductCategory,InvoiceDate, SUM(Total) AS DailySales
FROM MyDataset
where YEAR(InvoiceDate) > 2020
GROUP BY InvoiceDate
ORDER BY InvoiceDate;

-- Revenue Analysis by Payment Method
SELECT PaymentMethod , Sum(Total) AS Total_rev
from mydataset 
GROUP BY PaymentMethod
ORDER BY Total_rev;

-- Monthly Sales Trends
Select DATE_FORMAT(InvoiceDate, '%Y-%m') As Month, Sum(Total) as MonthlySales
From mydataset
GROUP BY Month
 

 --Number of Orders by Day of the Week
SELECT DAYNAME(InvoiceDate) as order_day, COUNT(*) as all_orders
from mydataset
GROUP BY order_day
ORDER BY FIELD(order_day, 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');

--Effect of discounts on sales:
SELECT Discount, SUM(Total) AS TotalSales 
FROM MyDataset 
GROUP BY Discount 
ORDER BY Discount DESC;
