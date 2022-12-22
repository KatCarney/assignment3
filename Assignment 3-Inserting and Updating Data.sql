/*
*********************************************************************
 Java Programming 2 - Summit Academy OIC
 Dr. Mary Lebens
 
Module 3 Assignment

Use the Northwind database for this assignment. Use the
instructions in the comments to write the SQL statements
for this assignment.
*********************************************************************
*/
Use Northwind;
/*
1. Insert a new record into the Employees table that populates
   the columns for last name, first name, title, birth date and hire date. 
   Populate the columns with the following values: 
    - your name
    - job title: software developer
    - birth date: 2002-02-20
    - hire date: 2022-09-06
*/
INSERT INTO employees
(LastName, FirstName, Title, BirthDate, HireDate)
VALUES ('Carney','Kateri','Software Developer','2004-06-19','2022-09-06');
 

 /*
 2. Display the record from the employees table that
    contains your name and title.
*/
SELECT * FROM employees
WHERE LastName='Carney';
  
 /*
3. Delete the record from the employees table that contains your
    name and title.
*/
DELETE FROM employees
WHERE FirstName='Kateri';


/*
4. Insert a new record into the products table with a product name
    that is your favorite food, a unit price that is $4.55, supplier ID 26, and category ID 5.
*/
INSERT INTO products
(ProductName, UnitPrice, SupplierID, CategoryID)
VALUES ('Pizza', '4.55', '26','5'); 


/*
5. Display the new record you added to the products table 
where the product name is your favorite food.
*/
SELECT * FROM products
WHERE ProductName='Pizza';

/*
6. Add a new record to the Categories table where the 
   CategoryName describes the category for your favorite food.
   Use category ID 9.
   Also add a description for the category.
   (For example, if your favorite food is frozen pizza, then 
   the category would be Frozen Foods and the description would
   be "Frozen meals and desserts".)
*/
INSERT INTO categories
(CategoryName, Description)
VALUES ('Frozen', 'Frozen meals and desserts');

/*
7. Display the new record that you added to the categories table
   with your category name.
*/
SELECT * FROM categories
WHERE CategoryName='Frozen';


/*
8 Write down the category ID for your new category.
   Update the record for your favorite food in the products
   table with the category ID for your new category.
*/
UPDATE products
SET CategoryID=9
WHERE ProductName='Pizza';

/*
9. Display the record for your favorite food in the products
   table to ensure the category ID was correctly updated.
*/
SELECT * FROM products
WHERE ProductName='Pizza';



/*
10. Insert a record into the suppliers table.
    The record should contain the following values:
    - Supplier ID 30
	- Your school's name as the CompanyName
	- Your name as the ContactName
	- Manager as the ContactTitle
	- 123 Sesame Street as the address
    - Saint Paul as the city
*/
INSERT INTO suppliers
(SupplierID, CompanyName, ContactName, ContactTitle, Address, City)
VALUES ('30','Summit','Kateri Carney','Manager','123 Sesame Street','Saint Paul');
/*
11. Display the new record that you created in the suppliers
    table to ensure it was inserted correctly.
*/
SELECT * FROM suppliers
WHERE SupplierID='30';

/*
12. Write down the supplier ID for the new record you inserted into
    the suppliers table.
	Update the record in the products table that contains
	your favorite food with the supplier ID.
*/
UPDATE products
SET SupplierID='30'
WHERE ProductName='Pizza';


/*
13. Display the product name for your favorite food,
    the category name, the category description, 
	the supplier's company name, and the supplier's
	contact name. 
    (Hint: Use a JOIN to retrieve data from more than one table.)
*/
SELECT ProductName, CategoryName, Description, CompanyName, ContactName
FROM categories, products, suppliers
WHERE products.SupplierID=suppliers.SupplierID 
AND products.CategoryID=categories.CategoryID
AND ProductName='Pizza';


/*
14. Display the product name for your favorite food,
    the company name for the supplier, the contact name
	for the supplier, and the address for the supplier.
    (Hint: Use a JOIN to retrieve data from more than one table.)
*/
SELECT ProductName, CompanyName, ContactName, Address
FROM suppliers, products
WHERE products.SupplierID=suppliers.SupplierID
AND ProductName='Pizza';
/* 15. Your boss has asked you for a list of orders for
       the employee Janet Leverling. 
       The list should contain the order ID, the company name
	   of the customer, and the name of the employee who
	   helped place the order.
       (Hint: Use a JOIN to retrieve data from more than one table.)
*/
SELECT OrderID, CompanyName, FirstName, LastName
FROM employees, order_details, customers
WHERE




