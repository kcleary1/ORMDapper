/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */

SELECT products.Name, categories.Name
 FROM products
 JOIN categories ON categories.CategoryID = products.CategoryID
 WHERE category.Name = 'Computers'; 
 
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */

 SELECT products.name, products.Price, reviews.Rating 
 FROM products 
 JOIN reviews ON products.ProductID = reviews.ProductID
 WHERE reviews.Rating = 5;



/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */

SELECT employees.FirstName, employees.LastName, SUM(sales.Quantity) AS SalesHigh
FROM sales
JOIN employees ON employees.EmployeeID = sales.EmployeeID
GROUP BY employees.EmployeeID
ORDER BY SalesHigh DESC;



/* joins: find the name of the department, and the name of the category for Appliances and Games */

SELECT deparments.Name, categories.Name
FROM deparments
JOIN categories ON categories.DepartmentID = department.DepartmentID
WHERE category.Name = 'Appliances' OR 'Games';


/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */

SELECT products.Name, SUM(sales.Quantity) AS TotalQuantity, SUM(sales.Quantity * sales.PricePerUnit) AS TotalRevenue
FROM sales
JOIN products ON sales.ProductID = products.ProductID
WHERE product.Name = 'Eagles: Hotel California';


/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */

SELECT products.Name, reviews.Reviewer, reviews.Rating, reviews.Comment
FROM products
JOIN reviews ON products.ProductID = reviews.ProductID
WHERE products.Name = 'Visio TV' AND reviews.Rating = 1;


-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */

SELECT employees.EmployeeID, employees.FirstName, employees.LastName, products.Name, SUM(sales.Quantity) SalesTotal
FROM sales
JOIN employees on employees.EmployeeID = sales.EmployeeID
JOIN products on products.ProductID = sales.ProductID
GROUP BY employees.EmployeeID, products.ProductID





