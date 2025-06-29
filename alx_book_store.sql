-- create the database
CREATE DATABASE IF NOT EXISTS alx_book_store

-- use the newly create
-- create authors table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);

-- create books table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- create customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

-- create orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- create order_details table
CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);