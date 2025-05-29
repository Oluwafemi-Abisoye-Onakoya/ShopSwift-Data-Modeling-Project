-- Dimension Tables

CREATE TABLE DimCustomers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address TEXT
);

CREATE TABLE DimCategories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100)
);

CREATE TABLE DimProducts (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(100),
    Brand VARCHAR(100),
    CategoryID INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (CategoryID) REFERENCES DimCategories(CategoryID)
);

CREATE TABLE DimDate (
    DateID INT PRIMARY KEY,
    Date DATE,
    Month INT,
    Year INT,
    Quarter INT
);

CREATE TABLE DimPaymentMethods (
    PaymentMethodID INT PRIMARY KEY,
    MethodName VARCHAR(50)
);

-- Fact Tables

CREATE TABLE FactOrders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDateID INT,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES DimCustomers(CustomerID),
    FOREIGN KEY (OrderDateID) REFERENCES DimDate(DateID)
);

CREATE TABLE FactOrderItems (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES FactOrders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES DimProducts(ProductID)
);

CREATE TABLE FactPayments (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentMethodID INT,
    PaymentDateID INT,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES FactOrders(OrderID),
    FOREIGN KEY (PaymentMethodID) REFERENCES DimPaymentMethods(PaymentMethodID),
    FOREIGN KEY (PaymentDateID) REFERENCES DimDate(DateID)
);
