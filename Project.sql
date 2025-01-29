/*
Online Bookstore Database (ITC 230)

Short Description: Design and implement a database for managing an online bookstore. 
For example, creating tables for books, customers, orders, and reviews, and demonstrating various SQL operations on these tables.

Perform queries that is already outlined in the PDF file

Data: Any kind of data is fine as long as the queries are correct. No points will be deducted.

*/


CREATE DATABASE OnlineBookStore;
USE OnlineBookStore;


CREATE TABLE authors (
    authorID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    bio TEXT
);

CREATE TABLE books (
    bookID INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    authorID INT,
    price DECIMAL(10, 2),
    stockQuantity INT,
    FOREIGN KEY (authorID) REFERENCES authors(authorID)
);

CREATE TABLE customers (
    customerID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE orders (
    orderID INT AUTO_INCREMENT PRIMARY KEY,
    customerID INT,
    orderDate DATE,
    totalPrice DECIMAL(10, 2),
    FOREIGN KEY (customerID) REFERENCES customers(customerID)
);

CREATE TABLE orderItems (
    orderItemID INT AUTO_INCREMENT PRIMARY KEY,
    orderID INT,
    bookID INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (orderID) REFERENCES orders(orderID),
    FOREIGN KEY (bookID) REFERENCES books(bookID)
);

CREATE TABLE reviews (
    reviewID INT AUTO_INCREMENT PRIMARY KEY,
    bookID INT,
    customerID INT,
    rating INT,
    comment TEXT,
    reviewDate DATE,
    FOREIGN KEY (bookID) REFERENCES books(bookID),
    FOREIGN KEY (customerID) REFERENCES customers(customerID)
);






INSERT INTO authors (name, bio) VALUES
('J.K. Rowling', 'British author, best known for the Harry Potter series.'),
('George R.R. Martin', 'American novelist and short-story writer in the fantasy, horror, and science fiction genres, best known for A Song of Ice and Fire.'),
('Agatha Christie', 'British writer known for her sixty-six detective novels and fourteen short story collections.'),
('Stephen King', 'American author of horror, supernatural fiction, suspense, and fantasy novels.'),
('J.R.R. Tolkien', 'English writer, poet, philologist, and academic, best known for The Lord of the Rings.'),
('Leo Tolstoy', 'Russian writer who is regarded as one of the greatest authors of all time.'),
('Jane Austen', 'English novelist known primarily for her six major novels, which interpret, critique and comment upon the British landed gentry at the end of the 18th century.'),
('Mark Twain', 'American writer, humorist, entrepreneur, publisher, and lecturer.'),
('Charles Dickens', 'English writer and social critic. He created some of the worlds best-known fictional characters.'),
('Virginia Woolf', 'English writer, considered one of the most important modernist 20th-century authors.'),
('Ernest Hemingway', 'American journalist, novelist, short-story writer, and sportsman.'),
('F. Scott Fitzgerald', 'American novelist and short story writer, whose works are the paradigmatic writings of the Jazz Age.'),
('Harper Lee', 'American novelist widely known for To Kill a Mockingbird.'),
('Emily Dickinson', 'American poet.'),
('Oscar Wilde', 'Irish poet and playwright known for his wit, flamboyant writing, and biting wit.'),
('Herman Melville', 'American novelist, short story writer, and poet of the American Renaissance period.'),
('Louisa May Alcott', 'American novelist and poet best known as the author of the novel Little Women.'),
('H.G. Wells', 'English writer in many genres, including the novel and social commentary.'),
('Ray Bradbury', 'American author and screenwriter known for his dystopian novel Fahrenheit 451.'),
('Margaret Atwood', 'Canadian poet, novelist, literary critic, essayist, teacher, environmental activist, and inventor.');





INSERT INTO books (title, authorID, price, stockQuantity) VALUES
('Harry Potter and the Sorcerer’s Stone', 1, 9.99, 50),
('A Game of Thrones', 2, 14.99, 35),
('Murder on the Orient Express', 3, 7.99, 40),
('The Shining', 4, 15.99, 45),
('The Fellowship of the Ring', 5, 8.99, 30),
('War and Peace', 6, 12.99, 28),
('Pride and Prejudice', 7, 11.99, 34),
('The Adventures of Tom Sawyer', 8, 6.99, 42),
('A Tale of Two Cities', 9, 9.99, 31),
('Mrs Dalloway', 10, 14.99, 23),
('The Old Man and the Sea', 11, 13.99, 37),
('The Great Gatsby', 12, 10.99, 27),
('To Kill a Mockingbird', 13, 7.99, 24),
('Collected Poems of Emily Dickinson', 14, 16.99, 29),
('The Picture of Dorian Gray', 15, 9.99, 32),
('Moby Dick', 16, 11.99, 26),
('Little Women', 17, 12.99, 20),
('The Time Machine', 18, 5.99, 40),
('Fahrenheit 451', 19, 13.99, 35),
('The Handmaid\'s Tale', 20, 14.99, 45);





INSERT INTO customers (name, email) VALUES
('Alice Johnson', 'alice.johnson@gmail.com'),
('Bob Smith', 'bob.smith@gmail.com'),
('Carol Taylor', 'carol.taylor@gmail.com'),
('David Brown', 'david.brown@gmail.com'),
('Eva Martinez', 'eva.martinez@gmail.com'),
('Frank White', 'frank.white@gmail.com'),
('Grace Lee', 'grace.lee@gmail.com'),
('Henry Wilson', 'henry.wilson@gmail.com'),
('Isabel Harris', 'isabel.harris@gmail.com'),
('Jack Clark', 'jack.clark@gmail.com'),
('Karen Lewis', 'karen.lewis@gmail.com'),
('Louis Walker', 'louis.walker@gmail.com'),
('Mia Hall', 'mia.hall@gmail.com'),
('Noah Allen', 'noah.allen@gmail.com'),
('Olivia Young', 'olivia.young@gmail.com'),
('Paul King', 'paul.king@gmail.com'),
('Quinn Scott', 'quinn.scott@gmail.com'),
('Rachel Adams', 'rachel.adams@gmail.com'),
('Steve Jobs', 'steve.jobs@gmail.com'),
('Tina Turner', 'tina.turner@gmail.com');




INSERT INTO orders (customerID, orderDate, totalPrice) VALUES
(1, '2021-01-15', 29.98),
(2, '2021-01-16', 59.97),
(3, '2021-01-17', 15.98),
(4, '2021-01-18', 25.98),
(5, '2021-01-19', 45.99),
(6, '2021-01-20', 19.99),
(7, '2021-01-21', 22.99),
(8, '2021-01-22', 18.99),
(9, '2021-01-23', 23.99),
(10, '2021-01-24', 9.99),
(11, '2021-01-25', 29.99),
(12, '2021-01-26', 17.99),
(13, '2021-01-27', 24.99),
(14, '2021-01-28', 11.99),
(15, '2021-01-29', 13.99),
(16, '2021-01-30', 21.99),
(17, '2021-01-31', 26.99),
(18, '2021-02-01', 31.99),
(19, '2021-02-02', 14.99),
(20, '2021-02-03', 33.99);



INSERT INTO orderItems (orderID, bookID, quantity, price) VALUES
(1, 20, 1, 14.99),
(2, 19, 2, 27.98),
(3, 18, 1, 5.99),
(4, 17, 1, 12.99),
(5, 16, 3, 35.97),
(6, 15, 1, 9.99),
(7, 14, 2, 33.98),
(8, 13, 1, 7.99),
(9, 12, 1, 10.99),
(10, 11, 1, 13.99),
(11, 10, 2, 29.98),
(12, 9, 1, 9.99),
(13, 8, 2, 13.98),
(14, 7, 3, 35.97),
(15, 6, 1, 12.99),
(16, 5, 1, 8.99),
(17, 4, 2, 31.98),
(18, 3, 1, 7.99),
(19, 2, 1, 14.99),
(20, 1, 2, 19.98);




INSERT INTO reviews (bookID, customerID, rating, comment, reviewDate) VALUES
(1, 20, 5, 'Loved it!', '2021-01-25'),
(2, 19, 4, 'Great read, highly recommend.', '2021-01-26'),
(3, 18, 3, 'Interesting concepts, but a bit slow.', '2021-01-27'),
(4, 17, 5, 'A masterpiece.', '2021-01-28'),
(5, 16, 4, 'Very engaging from start to finish.', '2021-01-29'),
(6, 15, 2, 'Not what I expected, quite dull.', '2021-01-30'),
(7, 14, 5, 'An absolute page-turner!', '2021-01-31'),
(8, 13, 4, 'Thoroughly enjoyed this one.', '2021-02-01'),
(9, 12, 3, 'Good, but could have been shorter.', '2021-02-02'),
(10, 11, 5, 'Brilliant! A new favorite.', '2021-02-03'),
(11, 10, 4, 'Captivating story, well-written.', '2021-02-04'),
(12, 9, 2, 'Struggled to finish this book.', '2021-02-05'),
(13, 8, 5, 'Incredible read, highly recommended.', '2021-02-06'),
(14, 7, 4, 'Enjoyed it more than I expected.', '2021-02-07'),
(15, 6, 3, 'It was okay, nothing spectacular.', '2021-02-08'),
(16, 5, 5, 'A literary masterpiece, deeply moving.', '2021-02-09'),
(17, 4, 4, 'Great character development and plot.', '2021-02-10'),
(18, 3, 2, 'Found it quite boring, unfortunately.', '2021-02-11'),
(19, 2, 5, 'An exceptional book, very inspiring.', '2021-02-12'),
(20, 1, 4, 'Really good, but not perfect.', '2021-02-13');



-- Find the Average Rating of Each Book

SELECT books.title, AVG(reviews.rating) AS average_rating
FROM books
JOIN reviews ON books.bookID = reviews.bookID
GROUP BY books.bookID
ORDER BY average_rating DESC;


-- List Customers and Their Total Spending

SELECT customers.name, SUM(orders.totalPrice) AS total_spent
FROM customers
JOIN orders ON customers.customerID = orders.customerID
GROUP BY customers.customerID
ORDER BY total_spent DESC;


-- Books That Have Never Been Ordered

SELECT books.title
FROM books
LEFT JOIN orderItems ON books.bookID = orderItems.bookID
WHERE orderItems.orderID IS NULL;

-- Find the Best-Selling Authors

SELECT authors.name, SUM(orderItems.quantity) AS total_books_sold
FROM authors
JOIN books ON authors.authorID = books.authorID
JOIN orderItems ON books.bookID = orderItems.bookID
GROUP BY authors.authorID
ORDER BY total_books_sold DESC;


-- Customer Activity Over Time

SELECT customers.name, YEAR(orders.orderDate) AS year, MONTH(orders.orderDate) AS month, COUNT(*) AS number_of_orders
FROM customers
JOIN orders ON customers.customerID = orders.customerID
GROUP BY customers.customerID, YEAR(orders.orderDate), MONTH(orders.orderDate)
ORDER BY year, month, number_of_orders DESC;



-- retrieve a list of book titles along with the names of their authors using join operation
SELECT books.title, authors.name FROM books
JOIN authors ON books.authorID = authors.authorID;


-- retrieve a list of book IDs from the books table and counts the number of orders for each book, grouping the results by book ID.
SELECT books.bookID, COUNT(orderItems.orderID) AS orders_count FROM books
JOIN orderItems ON books.bookID = orderItems.bookID
GROUP BY books.bookID;


-- create a view named popularBooks that lists book titles and their total order counts, ordered from most to least popular
CREATE VIEW popularBooks AS
SELECT books.title, COUNT(orders.orderID) AS totalOrders
FROM books
JOIN orderItems ON books.bookID = orderItems.bookID
JOIN orders ON orderItems.orderID = orders.orderID
GROUP BY books.bookID
ORDER BY totalOrders DESC;

-- Check the popularBooks
SELECT * FROM popularBooks;

-- perform a transaction that includes inserting a new order into the orders table, 
-- adding an order item to the orderItems table corresponding to the last inserted order
START TRANSACTION;
INSERT INTO orders (customerID, orderDate, totalPrice) VALUES (1, '2021-05-03', 29.98);
INSERT INTO orderItems (orderID, bookID, quantity, price) VALUES (LAST_INSERT_ID(), 1, 1, 29.98);
UPDATE books SET stockQuantity = stockQuantity - 1 WHERE bookID = 1;
COMMIT;



