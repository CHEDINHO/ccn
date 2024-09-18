CREATE TABLE CLIENT (
    ClientID INT PRIMARY KEY,
    Name VARCHAR2(50) NOT NULL,
    Address VARCHAR2(100),
    Phone VARCHAR2(15)
);

CREATE TABLE PRODUCT (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR2(50) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL
);

CREATE TABLE ORDERS (
    OrderID INT PRIMARY KEY,
    ClientID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    OrderDate DATE,
    FOREIGN KEY (ClientID) REFERENCES CLIENT(ClientID),
    FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID)
);

CREATE TABLE ORDER_DETAILS (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES ORDERS(OrderID),
    FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID)
);
ALTER TABLE PRODUCT
ADD Category VARCHAR2(20);
ALTER TABLE ORDERS
ADD OrderDate DATE DEFAULT SYSDATE;

