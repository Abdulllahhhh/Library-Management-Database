# Library Management System – Database Design

## Project Overview
This project presents the design and implementation of a Library Management System database using MySQL.
The system manages books, authors, library members, and borrowing operations.
It demonstrates the complete database design workflow, starting from requirement analysis and ending with SQL implementation.

# Project Objectives
The main objectives of this project are:
- Design a relational database for a library management system
- Apply database design concepts such as ER modeling
- Implement primary keys and foreign keys
- Practice SQL DDL and DML commands
- Retrieve related data using SQL JOIN queries

# System Description
The Library Management System is designed to store and manage information related to books, authors, members, and borrowing activities.
It allows tracking which member borrowed which book, along with borrow and return dates.
Relational constraints are used to maintain data integrity and consistency.

# Database Design

# Requirement Analysis
The system requires managing the following data:
- Books (title, publication year, category)
- Authors (name, biography)
- Members (name, contact information)
- Borrowing records (borrow date and return date)

# Conceptual Design

# Identified Entities
- Book
- Author
- Member
- Borrowing

# Identified Relationships
- An author writes one or more books (1:N)
- A member can perform multiple borrowing operations (1:N)
- A book can be involved in multiple borrowing records (1:N)

# Logical Design

# Author
- author_id (Primary Key)
- name
- biography

# Book
- book_id (Primary Key)
- title
- publish_year
- category
- author_id (Foreign Key)

# Member
- member_id (Primary Key)
- name
- contact_info

# Borrowing
- borrowing_id (Primary Key)
- borrow_date
- return_date
- member_id (Foreign Key)
- book_id (Foreign Key)

# Physical Design
The database was implemented using MySQL.
Appropriate data types were selected for each attribute, such as:
- INT for identifiers
- VARCHAR for text fields
- DATE for date values

Primary keys and foreign keys were used to enforce relationships between tables and ensure data integrity.

# SQL Implementation
The implementation process included the following steps:
- Creating the database schema
- Creating tables using `CREATE TABLE`
- Defining primary keys and foreign keys
- Inserting sample data using `INSERT INTO`
- Retrieving data using `SELECT` and `JOIN` queries

## Sample SQL Query
The following query retrieves borrowing information along with related book, author, and member details:

```sql
SELECT 
    m.name AS member_name,
    b.title AS book_title,
    a.name AS author_name,
    br.borrow_date,
    br.return_date
FROM Borrowing br
JOIN Member m ON br.member_id = m.member_id
JOIN Book b ON br.book_id = b.book_id
JOIN Author a ON b.author_id = a.author_id;
