-- Active: 1721062693732@@127.0.0.1@3306@Sales_Dataset
SELECT * FROM MyDataset

--Check the columns and data types:
 DESCRIBE MyDataset;

--Count the number of rows in the dataset:
Select COUNT(*) from mydataset AS Total_records

--Products Below a 10 Quantity
SELECT *
FROM mydataset
WHERE Quantity < 10;

--Distinct Product Categories
Select DISTINCT ProductCategory FROM mydataset

--Distinct Products
Select DISTINCT ProductName FROM mydataset

--Count of Unique Products
Select count(DISTINCT ProductName) as Unique_Products from mydataset 

--Get distinct values for key columns:
SELECT DISTINCT ProductCategory FROM MyDataset;

 