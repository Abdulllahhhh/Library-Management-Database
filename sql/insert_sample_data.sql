USE library_db;
-- -----------------------------------------------------
-- Sample Data for Library Management System
-- This file contains sample records for testing
-- and demonstration purposes only.
-- -----------------------------------------------------
-- Insert authors
INSERT INTO Author (name, biography) VALUES
('George Orwell', 'English novelist and essayist'),
('J.K. Rowling', 'British author, Harry Potter series');

-- Insert books
INSERT INTO Book (title, publish_year, category, author_id) VALUES
('1984', 1949, 'Dystopian', 1),
('Harry Potter and the Philosopher''s Stone', 1997, 'Fantasy', 2);

-- Insert members
INSERT INTO Member (name, contact_info) VALUES
('Ahmed Ali', 'ahmed@email.com'),
('Sara Mohammed', 'sara@email.com');

-- Insert borrowing records
INSERT INTO Borrowing (borrow_date, return_date, member_id, book_id) VALUES
('2026-02-01', '2026-02-10', 1, 1);
