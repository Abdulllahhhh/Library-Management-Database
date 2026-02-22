# Library Management System

## Project Overview
This project presents the design and implementation of a Library Management System database using MySQL.
The system manages books, authors, library members, and borrowing operations.
It demonstrates the complete database design workflow, starting from requirement analysis and ending with SQL implementation.

## Project Objectives
- Practice SQL DDL and DML commands
- Implement primary keys and foreign keys
- Retrieve related data using SQL JOIN queries
- Apply database design concepts such as ER modeling
- Design a relational database for a library management system

## System Description
The Library Management System stores and manages data related to books, authors, members, and borrowing activities.
It tracks which member borrowed which book along with borrow and return dates, while maintaining data integrity using relational constraints.

## Database Design

### Requirement Analysis
- Authors (name, biography)
- Members (name, contact information)
- Books (title, publication year, category)
- Borrowing records (borrow date and return date)

### Conceptual Design

#### Entities
- Book
- Author
- Member
- Borrowing

#### Relationships
- Author writes Book (1:N)
- Member performs Borrowing (1:N)
- Book is involved in Borrowing (1:N)

### Logical Design

**Author**
- name
- biography
- author_id (PK)

**Book**
- title
- category
- book_id (PK)
- publish_year
- author_id (FK)

**Member**
- name
- contact_info
- member_id (PK)

**Borrowing**
- borrow_date
- return_date
- book_id (FK)
- member_id (FK)
- borrowing_id (PK)

### Physical Design
The database was implemented using MySQL with appropriate data types (INT, VARCHAR, DATE).
Primary and foreign keys were used to enforce relationships and ensure data integrity.

## SQL Implementation
SQL scripts are organized in the `sql/` directory.

## ER Diagram

The following diagram illustrates the Entity-Relationship (ER) model of the database:

![ER Diagram](ER%20Diagram.png)

## Sample SQL Query
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
