-- QUESTION 1

CREATE TABLE Product_order(
orderId INT,
customerName VARCHAR(100),
productName VARCHAR(100),
PRIMARY KEY (orderId, productName) 
);

INSERT INTO orders(orderId, customerName)
VALUES(101 , 'Jane Doe', 'Laptop'),
(101 , 'Jane Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

-- QUESTION 2
CREATE TABLE orders (
    orderID INT PRIMARY KEY,
    customerName VARCHAR(100)
);

CREATE TABLE products (
    productID INT PRIMARY KEY AUTO_INCREMENT,
    orderID INT,
    product VARCHAR(100),
    quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO orders (orderID, customerName) 
VALUES(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

INSERT INTO products (OrderID, product, quantity) 
VALUES(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);
