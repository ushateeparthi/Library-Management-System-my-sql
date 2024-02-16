CREATE DATABASE LibraryDB;
USE LibraryDB;
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255),
    AuthorID INT,
    ISBN VARCHAR(13),
    Quantity INT
);

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(255)
);

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    MemberName VARCHAR(255),
    Email VARCHAR(255)
);
INSERT INTO Authors (AuthorID, AuthorName) VALUES
    (1, 'John Doe'),
    (2, 'Jane Smith');

INSERT INTO Books (BookID, Title, AuthorID, ISBN, Quantity) VALUES
    (101, 'Introduction to SQL', 1, '1234567890123', 10),
    (102, 'Database Design Basics', 2, '9876543210987', 5);

INSERT INTO Members (MemberID, MemberName, Email) VALUES
    (1001, 'Alice Johnson', 'alice@email.com'),
    (1002, 'Bob Williams', 'bob@email.com');
-- Retrieve all books with their authors--
SELECT Books.Title, Authors.AuthorName
FROM Books
INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID;
-- Check the availability of a specific book -- 
SELECT Title, Quantity
FROM Books
WHERE Title = 'Introduction to SQL';

UPDATE Books
SET Quantity = Quantity - 1
WHERE Title = 'Introduction to SQL';

SELECT Members.MemberName, Books.Title
FROM Members
INNER JOIN BorrowedBooks ON Members.MemberID = BorrowedBooks.MemberID
INNER JOIN Books ON BorrowedBooks.BookID = Books.BookID;
-- Insert a new book into the library--
INSERT INTO Books (BookID, Title, AuthorID, ISBN, Quantity)
VALUES (103, 'Advanced SQL Techniques', 1, '8765432109876', 8);







