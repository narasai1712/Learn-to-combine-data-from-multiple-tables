**Task 5 – SQL Joins (Inner, Left, Right, Full)**



**## Overview**

**This task focuses on combining data from multiple related tables in the \*\*E-commerce Database Schema\*\* using different types of SQL joins.**  

**You’ll understand how `INNER`, `LEFT`, `RIGHT`, and `FULL` joins merge rows from related tables to provide meaningful insights.**







**## Objectives**



**- Understand the purpose and behavior of various JOIN types.**

**- Use JOINs to merge related information from multiple tables.**

**- Compare results from INNER, LEFT, RIGHT, and FULL joins.**

**- Learn about `NATURAL JOIN`, `SELF JOIN`, and `CROSS JOIN`.**





**## Database Used**



**Schema: E-commerce Database**  

**Tables:**

**- Customer(customer\_id, name, email, phone, address)**

**- Product(product\_id, name, category, price, stock)**

**- Orders(order\_id, customer\_id, order\_date, total\_amount, status)**

**- Order\_Details(detail\_id, order\_id, product\_id, quantity, subtotal)**

**- Payment(payment\_id, order\_id, payment\_date, amount, payment\_method, status)**





**##  Key Concepts Practiced**

**Concept:- INNER JOIN  Description:- Returns rows that have matching values in both tables**

**Concept:- LEFT JOIN  Description:- Returns all rows from the left table and matching rows from the right**

**Concept:- RIGHT JOIN  Description:- Returns all rows from the right table and matching rows from the left**

**Concept:- FULL JOIN  Description:- Returns all rows when there’s a match in one of the tables**

**Concept:- CROSS JOIN  Description:- Returns all possible combinations of rows**

**Concept:- SELF JOIN  Description:- Joins a table with itself**

**Concept:- NATURAL JOIN  Description:- Automatically joins tables with same column names**



**---**



**## Tools Used**

**- Oracle SQL Plus )**







**##  Files Included**

**| File | Description |**

**|------|--------------|**

**File:- schema.sql  Description:- Defines e-commerce tables, sequences, and triggers** 

**File:- join\_queries.sql  Description:- Demonstrates INNER, LEFT, RIGHT, FULL, and other join types**

**File:- README.md Description:- Documentation file for Task 5**

**File:- er\_diagram.png  Description:- Entity-Relationship Diagram of the database**







