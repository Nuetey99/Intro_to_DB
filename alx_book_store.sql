CREATE DATABASE IF NOT EXISTS alx_book_store;
    
CREATE TABLE Books(
    book_id INT AUTO_INCREMENT PRIMARY KEY ,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
     FOREIGN KEY (author_id) REFERENCES Authors(author_id) 
);

CREATE TABLE Authors(
    author_id INT AUTO_INCREMENT Primary Key ,
    author_name VARCHAR(215) NOT NULL
);
CREATE TABLE Customers(
    customer_id INT AUTO_INCREMENT Primary Key,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    address TEXT 
);
CREATE TABLE Orders(
    order_id INT AUTO_INCREMENT Primary Key NOT NULL,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
)
CREATE TABLE Order_Details(
    orderdetailid INT AUTO_INCREMENT Primary Key,
    order_id INT ,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
)