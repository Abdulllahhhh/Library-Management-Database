-- Create database
CREATE DATABASE IF NOT EXISTS library_db;
USE library_db;

-- Author table
CREATE TABLE Author (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    biography TEXT
);

-- Book table
CREATE TABLE Book (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    publish_year INT,
    category VARCHAR(100),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

-- Member table
CREATE TABLE Member (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    contact_info VARCHAR(255)
);

-- Borrowing table
CREATE TABLE Borrowing (
    borrowing_id INT PRIMARY KEY AUTO_INCREMENT,
    borrow_date DATE,
    return_date DATE,
    member_id INT,
    book_id INT,
    FOREIGN KEY (member_id) REFERENCES Member(member_id),
    FOREIGN KEY (book_id) REFERENCES Book(book_id)
);
