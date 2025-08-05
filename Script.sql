--1. Inseting data into each table
--this data  is for category table
INSERT INTO Category (CategoryName) VALUES
('Fiction'),
('Science'),
('History'),
('Technology');

--this data is for Author table
INSERT INTO Author (Name) VALUES
('George Orwell'),
('Stephen Hawking'),
('Yuval Noah Harari'),
('Isaac Asimov'),
('Sane Guruji');


--this data is for Book table
INSERT INTO Book (Title, ISBN, CategoryID) VALUES
('1984', '978-0451524935', 1),
('A Brief History of Time', '978-0553380163', 2),
('Sapiens: A Brief History of Humankind', '978-0062316097', 3),
('I, Robot', '978-0553294385', 1);

--this data is for BAuthor table
INSERT INTO BAuthor (BookID, AuthorID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);
-- this data is for Member table
INSERT INTO Member (Name, Email, Phone, JoinDate) VALUES
('Shyam patil', 'shyampatil@gmail.com', '9234567890', '2025-01-15'),
('Baburao Apate ', 'baburao@gmail.com', '8987654321', '2025-03-20'),
('Anand pawale', 'patil@gmail.com', '7234567890', '2025-02-15'),
('Ramrao Apate ', 'ramrao@gmail.com', '7787654321', '2025-01-20');

--this data is for Librarian table
INSERT INTO Librarian (Name, Email) VALUES
('Narayan Swami', 'swamin@library.com'),
('Ramesh Dube', 'rameshd@library.com');

--this data is for Loan table
INSERT INTO Loan (BookID, MemberID, LibrarianID, LoanDate, ReturnDate) VALUES
(1, 1, 1, '2025-06-01', '2025-05-15'),
(2, 1, 1, '2025-08-01', '2025-04-15'),
(3, 2, 2, '2025-06-05', NULL);  -- Not returned yet

--2. UPDATE Statements
-- -----------------------------

-- Update a member's phone number where it was previously 7234567890 
UPDATE Member
SET Phone = '9096774858'
WHERE Name = 'Anand pawale';

-- Assign a category to the "Novel" book (was previously Fiction)
UPDATE Book
SET CategoryID = 1 
WHERE Title = 'Novel';

-- 3. DELETE Statements
-- -----------------------------

-- Delete a loan record of bookid is 3 and Memberid is 2
DELETE FROM Loan
WHERE BookID = 3 AND MemberID = 2;