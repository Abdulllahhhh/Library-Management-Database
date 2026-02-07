USE library_db;

-- View all authors
SELECT * FROM Author;

-- View all books
SELECT * FROM Book;

-- View all members
SELECT * FROM Member;

-- View all borrowing records
SELECT * FROM Borrowing;

-- Borrowing details with JOIN
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
