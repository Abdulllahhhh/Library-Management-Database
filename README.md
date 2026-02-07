# Library Management System

## Project Overview
This project presents the design and implementation of a Library Management System database using MySQL.
The system manages books, authors, library members, and borrowing operations.
It demonstrates the complete database design workflow, starting from requirement analysis and ending with SQL implementation.

---

## Project Objectives
- Design a relational database for a library management system
- Apply database design concepts such as ER modeling
- Implement primary keys and foreign keys
- Practice SQL DDL and DML commands
- Retrieve related data using SQL JOIN queries

---

## System Description
The Library Management System stores and manages data related to books, authors, members, and borrowing activities.
It tracks which member borrowed which book along with borrow and return dates, while maintaining data integrity using relational constraints.

---

## Database Design

### Requirement Analysis
- Books (title, publication year, category)
- Authors (name, biography)
- Members (name, contact information)
- Borrowing records (borrow date and return date)

---

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

---

### Logical Design

**Author**
- author_id (PK)
- name
- biography

**Book**
- book_id (PK)
- title
- publish_year
- category
- author_id (FK)

**Member**
- member_id (PK)
- name
- contact_info

**Borrowing**
- borrowing_id (PK)
- borrow_date
- return_date
- member_id (FK)
- book_id (FK)

---

### Physical Design
The database was implemented using MySQL with appropriate data types (INT, VARCHAR, DATE).
Primary and foreign keys were used to enforce relationships and ensure data integrity.

---

## SQL Implementation
SQL scripts are organized in the `sql/` directory.

---

### ER Diagram
![ER Diagram](diagrams/er_diagram.png)

---

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
