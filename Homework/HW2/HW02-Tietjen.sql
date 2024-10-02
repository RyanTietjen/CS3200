
-- 24f - CS 3200 - Introduction to Databases - Homework 02

-- Put your name here: Ryan Tietjen


-- Put your solution to Question 2 here.
SELECT officeCode AS OfficeCode,
    city AS City,
    country AS Country
FROM offices
WHERE country <> 'USA';


-- Put your solution to Question 3 here.
SELECT productCode AS ProductCode,
    productName AS ProductName,
    quantityInStock AS InStockQty,
    productVendor AS ProductVendor,
    buyPrice AS BuyPrice
FROM products
WHERE quantityInStock < 600
ORDER BY quantityInStock;


-- Put your solution to Question 4 here.
SELECT customerName AS CustomerName,
       creditLimit AS CreditLimit
FROM customers
WHERE creditLimit > 100000
ORDER BY creditLimit DESC;


-- Put your solution to Question 5 here.
SELECT state,
       ROUND(AVG(amount), 2) AS avg_payment
       FROM customers JOIN payments ON customers.customerNumber = payments.customerNumber
             WHERE country = 'USA'
             GROUP BY state
ORDER BY state;


-- Put your solution to Question 6 here.
SELECT productCode AS ProductCode,
       productName AS ProductName,
       buyPrice AS BuyPrice,
       MSRP,
       MSRP - buyPrice AS PriceDifference
       FROM products
WHERE MSRP - buyPrice > 75
ORDER BY PriceDifference DESC;



-- Put your solution to Question 7 here.
SELECT customerName AS CustomerName,
       contactLastName AS LastName,
       contactFirstName AS FirstName,
       phone AS Phone
FROM customers
WHERE country = 'Austria' OR country = 'France'
ORDER BY customerName;



-- Put your solution to Question 8 here.
SELECT employees.lastName AS EmpLastName,
       employees.firstName AS EmpFirstName,
       COUNT(employeeNumber) AS NumCustomers
    FROM employees JOIN customers ON employees.employeeNumber = customers.salesRepEmployeeNumber
GROUP BY employees.lastName, employees.firstName
ORDER BY EmpLastName, EmpFirstName;



-- Put your solution to Question 9 here.
SELECT employees.lastName AS LastName,
       employees.firstName AS FirstName,
       employees.email AS EMail,
       employees.jobTitle AS JobTitle
    FROM employees LEFT OUTER JOIN customers ON employees.employeeNumber = customers.salesRepEmployeeNumber
WHERE customers.salesRepEmployeeNumber IS NULL
ORDER BY LastName, FirstName;


-- Put your solution to Question 10 here.