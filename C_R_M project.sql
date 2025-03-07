create database C_R_M;
use c_r_m;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    Address VARCHAR(200),
    DateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
SELECT * FROM CUSTOMERS
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address) VALUES
(1, 'Rahul', 'Sharma', 'rahul1@gmail.com', '9876543210', 'Mumbai, India'),
(2, 'Priya', 'Verma', 'priya2@gmail.com', '9123456789', 'Delhi, India'),
(3, 'Amit', 'Kumar', 'amit3@gmail.com', '9988776655', 'Chennai, India'),
(4, 'Neha', 'Singh', 'neha4@gmail.com', '9001234567', 'Bangalore, India'),
(5, 'Raj', 'Patel', 'raj5@gmail.com', '8800123456', 'Ahmedabad, India'),
(6, 'Deepak', 'Mishra', 'deepak6@gmail.com', '9812345678', 'Pune, India'),
(7, 'Anjali', 'Nair', 'anjali7@gmail.com', '9823456789', 'Hyderabad, India'),
(8, 'Vikram', 'Reddy', 'vikram8@gmail.com', '9798765432', 'Kolkata, India'),
(9, 'Meera', 'Das', 'meera9@gmail.com', '9787654321', 'Chandigarh, India'),
(10, 'Sandeep', 'Gupta', 'sandeep10@gmail.com', '9678543210', 'Jaipur, India'),
(11, 'Kiran', 'Joshi', 'kiran11@gmail.com', '9876543221', 'Lucknow, India'),
(12, 'Ayesha', 'Shaikh', 'ayesha12@gmail.com', '9876543232', 'Bhopal, India'),
(13, 'Ravi', 'Shankar', 'ravi13@gmail.com', '9876543243', 'Nagpur, India'),
(14, 'Sneha', 'Iyer', 'sneha14@gmail.com', '9876543254', 'Kochi, India'),
(15, 'Manoj', 'Yadav', 'manoj15@gmail.com', '9876543265', 'Patna, India'),
(16, 'Pooja', 'Mehta', 'pooja16@gmail.com', '9876543276', 'Surat, India'),
(17, 'Harish', 'Menon', 'harish17@gmail.com', '9876543287', 'Vijayawada, India'),
(18, 'Gaurav', 'Kapoor', 'gaurav18@gmail.com', '9876543298', 'Indore, India'),
(19, 'Varun', 'Khanna', 'varun19@gmail.com', '9876543309', 'Thane, India'),
(20, 'Nisha', 'Garg', 'nisha20@gmail.com', '9876543310', 'Bhubaneswar, India'),
(21, 'Tarun', 'Aggarwal', 'tarun21@gmail.com', '9876543321', 'Amritsar, India'),
(22, 'Sunita', 'Chawla', 'sunita22@gmail.com', '9876543332', 'Vadodara, India'),
(23, 'Yash', 'Pandey', 'yash23@gmail.com', '9876543343', 'Kanpur, India'),
(24, 'Kavita', 'Bose', 'kavita24@gmail.com', '9876543354', 'Coimbatore, India'),
(25, 'Ashish', 'Dutta', 'ashish25@gmail.com', '9876543365', 'Mangalore, India'),
(26, 'Rohan', 'Saxena', 'rohan26@gmail.com', '9876543376', 'Jodhpur, India'),
(27, 'Preeti', 'Deshmukh', 'preeti27@gmail.com', '9876543387', 'Raipur, India'),
(28, 'Sameer', 'Malhotra', 'sameer28@gmail.com', '9876543398', 'Guwahati, India'),
(29, 'Sonia', 'Bhatt', 'sonia29@gmail.com', '9876543409', 'Agra, India'),
(30, 'Vinay', 'Jindal', 'vinay30@gmail.com', '9876543410', 'Varanasi, India'),
(31, 'Anita', 'Rajput', 'anita31@gmail.com', '9876543421', 'Dehradun, India'),
(32, 'Nitin', 'Suri', 'nitin32@gmail.com', '9876543432', 'Srinagar, India'),
(33, 'Rekha', 'Gupta', 'rekha33@gmail.com', '9876543443', 'Gwalior, India'),
(34, 'Shyam', 'Trivedi', 'shyam34@gmail.com', '9876543454', 'Udaipur, India'),
(35, 'Saurabh', 'Bansal', 'saurabh35@gmail.com', '9876543465', 'Ludhiana, India'),
(36, 'Anuradha', 'Chopra', 'anuradha36@gmail.com', '9876543476', 'Shimla, India'),
(37, 'Siddharth', 'Kapoor', 'siddharth37@gmail.com', '9876543487', 'Mysore, India'),
(38, 'Tanvi', 'Mehra', 'tanvi38@gmail.com', '9876543498', 'Madurai, India'),
(39, 'Akash', 'Vohra', 'akash39@gmail.com', '9876543509', 'Bharatpur, India'),
(40, 'Neeraj', 'Sethi', 'neeraj40@gmail.com', '9876543510', 'Tirupati, India'),
(41, 'Meghna', 'Rao', 'meghna41@gmail.com', '9876543521', 'Panaji, India'),
(42, 'Jatin', 'Dewan', 'jatin42@gmail.com', '9876543532', 'Bareilly, India'),
(43, 'Namita', 'Das', 'namita43@gmail.com', '9876543543', 'Moradabad, India'),
(44, 'Shivam', 'Tiwari', 'shivam44@gmail.com', '9876543554', 'Jamshedpur, India'),
(45, 'Alok', 'Vyas', 'alok45@gmail.com', '9876543565', 'Dhanbad, India'),
(46, 'Monica', 'Reddy', 'monica46@gmail.com', '9876543576', 'Ajmer, India'),
(47, 'Raghav', 'Singh', 'raghav47@gmail.com', '9876543587', 'Haridwar, India'),
(48, 'Shruti', 'Mishra', 'shruti48@gmail.com', '9876543598', 'Ujjain, India'),
(49, 'Bhavya', 'Gupta', 'bhavya49@gmail.com', '9876543609', 'Karnal, India'),
(50, 'Kapil', 'Shah', 'kapil50@gmail.com', '9876543610', 'Gandhinagar, India');
-----------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    Category VARCHAR(50),
    StockQuantity INT,
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
select * from products
INSERT INTO Products (ProductID, ProductName, Price, Category, StockQuantity) VALUES
(1, 'Laptop', 55000.00, 'Electronics', 50),
(2, 'Smartphone', 25000.00, 'Electronics', 100),
(3, 'Headphones', 2000.00, 'Accessories', 200),
(4, 'Gaming Mouse', 1500.00, 'Accessories', 150),
(5, 'Keyboard', 1800.00, 'Accessories', 120),
(6, 'Smartwatch', 15000.00, 'Wearables', 75),
(7, 'Television', 40000.00, 'Electronics', 30),
(8, 'Tablet', 30000.00, 'Electronics', 60),
(9, 'Refrigerator', 50000.00, 'Home Appliances', 25),
(10, 'Microwave Oven', 12000.00, 'Home Appliances', 40),
(11, 'Air Conditioner', 35000.00, 'Home Appliances', 20),
(12, 'Washing Machine', 25000.00, 'Home Appliances', 30),
(13, 'Bluetooth Speaker', 5000.00, 'Accessories', 100),
(14, 'Fitness Band', 7000.00, 'Wearables', 90),
(15, 'Digital Camera', 45000.00, 'Electronics', 40),
(16, 'External Hard Drive', 6000.00, 'Accessories', 150),
(17, 'Gaming Console', 55000.00, 'Electronics', 20),
(18, 'Desk Chair', 8000.00, 'Furniture', 70),
(19, 'Office Desk', 15000.00, 'Furniture', 50),
(20, 'Router', 2500.00, 'Networking', 200);
---------------------------------------------------------------------------------------------------------------------------------------
 CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
select * from orders
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES
(1, 1, '2025-01-01 10:15:00', 7500.00),
(2, 2, '2025-01-02 11:30:00', 55000.00),
(3, 3, '2025-01-03 12:45:00', 1800.00),
(4, 4, '2025-01-04 14:00:00', 35000.00),
(5, 5, '2025-01-05 15:20:00', 30000.00),
(6, 6, '2025-01-06 16:10:00', 25000.00),
(7, 7, '2025-01-07 17:40:00', 12000.00),
(8, 8, '2025-01-08 18:55:00', 55000.00),
(9, 9, '2025-01-09 19:10:00', 6000.00),
(10, 10, '2025-01-10 20:25:00', 8000.00),
(11, 11, '2025-01-11 10:00:00', 2500.00),
(12, 12, '2025-01-12 11:15:00', 15000.00),
(13, 13, '2025-01-13 12:20:00', 55000.00),
(14, 14, '2025-01-14 13:30:00', 45000.00),
(15, 15, '2025-01-15 14:45:00', 12000.00),
(16, 16, '2025-01-16 15:55:00', 7000.00),
(17, 17, '2025-01-17 16:05:00', 2000.00),
(18, 18, '2025-01-18 17:20:00', 15000.00),
(19, 19, '2025-01-19 18:35:00', 55000.00),
(20, 20, '2025-01-20 19:50:00', 6000.00),
(21, 21, '2025-01-21 20:10:00', 12000.00),
(22, 22, '2025-01-22 10:30:00', 2500.00),
(23, 23, '2025-01-23 11:40:00', 8000.00),
(24, 24, '2025-01-24 12:50:00', 45000.00),
(25, 25, '2025-01-25 13:10:00', 15000.00),
(26, 26, '2025-01-26 14:25:00', 30000.00),
(27, 27, '2025-01-27 15:35:00', 25000.00),
(28, 28, '2025-01-28 16:45:00', 55000.00),
(29, 29, '2025-01-29 17:50:00', 12000.00),
(30, 30, '2025-01-30 18:05:00', 7000.00),
(31, 31, '2025-01-31 19:15:00', 55000.00),
(32, 32, '2025-02-01 20:25:00', 6000.00),
(33, 33, '2025-02-02 10:40:00', 8000.00),
(34, 34, '2025-02-03 11:50:00', 45000.00),
(35, 35, '2025-02-04 12:00:00', 2500.00),
(36, 36, '2025-02-05 13:15:00', 7000.00),
(37, 37, '2025-02-06 14:30:00', 55000.00),
(38, 38, '2025-02-07 15:45:00', 25000.00),
(39, 39, '2025-02-08 16:55:00', 6000.00),
(40, 40, '2025-02-09 17:05:00', 12000.00),
(41, 41, '2025-02-10 18:20:00', 45000.00),
(42, 42, '2025-02-11 19:35:00', 55000.00),
(43, 43, '2025-02-12 20:50:00', 7000.00),
(44, 44, '2025-02-13 10:05:00', 8000.00),
(45, 45, '2025-02-14 11:15:00', 55000.00),
(46, 46, '2025-02-15 12:25:00', 2500.00),
(47, 47, '2025-02-16 13:40:00', 45000.00),
(48, 48, '2025-02-17 14:55:00', 12000.00),
(49, 49, '2025-02-18 16:05:00', 30000.00),
(50, 50, '2025-02-19 17:10:00', 15000.00),
(51, 1, '2025-02-20 18:25:00', 55000.00),
(52, 2, '2025-02-21 19:40:00', 6000.00),
(53, 3, '2025-02-22 20:50:00', 12000.00),
(54, 4, '2025-02-23 10:05:00', 45000.00),
(55, 5, '2025-02-24 11:15:00', 2500.00),
(56, 6, '2025-02-25 12:25:00', 8000.00),
(57, 7, '2025-02-26 13:40:00', 7000.00),
(58, 8, '2025-02-27 14:55:00', 55000.00),
(59, 9, '2025-02-28 16:05:00', 25000.00),
(60, 10, '2025-03-01 17:10:00', 6000.00),
(61, 11, '2025-03-02 18:25:00', 55000.00),
(62, 12, '2025-03-03 19:40:00', 45000.00),
(63, 13, '2025-03-04 20:50:00', 8000.00),
(64, 14, '2025-03-05 10:05:00', 2500.00),
(65, 15, '2025-03-06 11:15:00', 7000.00),
(66, 16, '2025-03-07 12:25:00', 6000.00),
(67, 17, '2025-03-08 13:40:00', 30000.00),
(68, 18, '2025-03-09 14:55:00', 12000.00),
(69, 19, '2025-03-10 16:05:00', 45000.00),
(70, 20, '2025-03-11 17:10:00', 2500.00);
-----------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
select * from orderitems
INSERT INTO OrderItems (OrderItemID, OrderID, ProductID, Quantity, Price) VALUES
(1, 1, 5, 2, 5000.00),
(2, 2, 8, 1, 8000.00),
(3, 3, 12, 3, 12000.00),
(4, 4, 3, 2, 4000.00),
(5, 5, 10, 1, 2500.00),
(6, 6, 7, 2, 6000.00),
(7, 7, 15, 3, 7500.00),
(8, 8, 20, 1, 10000.00),
(9, 9, 9, 2, 5000.00),
(10, 10, 14, 4, 12000.00),
(11, 11, 6, 2, 5500.00),
(12, 12, 1, 1, 2500.00),
(13, 13, 16, 3, 9000.00),
(14, 14, 13, 1, 4000.00),
(15, 15, 19, 2, 7000.00),
(16, 16, 4, 1, 3200.00),
(17, 17, 18, 2, 8500.00),
(18, 18, 2, 3, 4500.00),
(19, 19, 11, 1, 2000.00),
(20, 20, 17, 2, 6200.00);
--------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Interactions (
    InteractionID INT PRIMARY KEY,
    CustomerID INT,
    InteractionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    InteractionType VARCHAR(50),
    Notes TEXT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
select * from interactions 
INSERT INTO Interactions (InteractionID, CustomerID, InteractionDate, InteractionType, Notes) VALUES
(1, 5, '2025-02-15 10:30:00', 'Email', 'Sent product brochure'),
(2, 8, '2025-02-16 12:45:00', 'Phone Call', 'Follow-up on order'),
(3, 12, '2025-02-17 14:10:00', 'Meeting', 'Discussed bulk order discount'),
(4, 20, '2025-02-18 15:30:00', 'Email', 'Sent invoice details'),
(5, 25, '2025-02-19 16:50:00', 'Phone Call', 'Resolved complaint about product quality'),
(6, 30, '2025-02-20 17:15:00', 'Meeting', 'Demonstration of new product'),
(7, 35, '2025-02-21 18:40:00', 'Email', 'Sent warranty information'),
(8, 40, '2025-02-22 19:55:00', 'Phone Call', 'Confirmed delivery status'),
(9, 45, '2025-02-23 21:10:00', 'Meeting', 'Negotiated new pricing contract'),
(10, 50, '2025-02-24 22:30:00', 'Email', 'Sent thank-you note for purchase');
-------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50),
    HireDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
select * from employees 
INSERT INTO Employees (EmployeeID, Name, Role, HireDate) VALUES
(1, 'Rajesh Mehta', 'Sales Manager', '2023-01-15 09:00:00'),
(2, 'Anita Kapoor', 'Customer Support', '2023-05-20 10:15:00'),
(3, 'Vikram Reddy', 'Sales Executive', '2024-02-10 11:30:00'),
(4, 'Pooja Verma', 'Technical Support', '2024-03-05 12:45:00'),
(5, 'Arjun Nair', 'Sales Executive', '2024-07-18 14:00:00');
-------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    EmployeeID INT,
    CustomerID INT,
    SaleDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
select * from sales
INSERT INTO Sales (SalesID, EmployeeID, CustomerID, SaleDate, Amount) VALUES
(1, 1, 1, '2025-02-19 10:30:00', 5000.00),
(2, 2, 2, '2025-02-18 14:15:00', 7500.00),
(3, 3, 3, '2025-02-17 16:45:00', 6200.00),
(4, 4, 4, '2025-02-16 12:10:00', 8200.00),
(5, 5, 5, '2025-02-15 09:30:00', 4000.00),
(6, 1, 6, '2025-02-14 11:45:00', 7200.00),
(7, 2, 7, '2025-02-13 15:20:00', 6300.00),
(8, 3, 8, '2025-02-12 13:55:00', 8100.00),
(9, 4, 9, '2025-02-11 10:05:00', 5400.00),
(10, 5, 10, '2025-02-10 17:40:00', 4500.00),
(11, 1, 11, '2025-02-09 09:15:00', 7700.00),
(12, 2, 12, '2025-02-08 18:30:00', 6200.00),
(13, 3, 13, '2025-02-07 14:50:00', 9000.00),
(14, 4, 14, '2025-02-06 11:10:00', 6700.00),
(15, 5, 15, '2025-02-05 16:25:00', 4300.00),
(16, 1, 16, '2025-02-04 12:45:00', 8200.00),
(17, 2, 17, '2025-02-03 10:20:00', 6900.00),
(18, 3, 18, '2025-02-02 15:10:00', 5100.00),
(19, 4, 19, '2025-02-01 14:00:00', 8900.00),
(20, 5, 20, '2025-01-31 13:15:00', 7400.00),
(21, 1, 21, '2025-01-30 11:50:00', 5700.00),
(22, 2, 22, '2025-01-29 10:10:00', 6300.00),
(23, 3, 23, '2025-01-28 16:35:00', 8200.00),
(24, 4, 24, '2025-01-27 15:00:00', 6900.00),
(25, 5, 25, '2025-01-26 14:15:00', 7800.00),
(26, 1, 26, '2025-01-25 11:30:00', 5100.00),
(27, 2, 27, '2025-01-24 17:25:00', 9200.00),
(28, 3, 28, '2025-01-23 09:45:00', 6800.00),
(29, 4, 29, '2025-01-22 14:50:00', 7900.00),
(30, 5, 30, '2025-01-21 12:05:00', 5500.00),
(31, 1, 31, '2025-01-20 16:10:00', 8700.00),
(32, 2, 32, '2025-01-19 13:30:00', 6900.00),
(33, 3, 33, '2025-01-18 10:25:00', 6200.00),
(34, 4, 34, '2025-01-17 15:45:00', 7100.00),
(35, 5, 35, '2025-01-16 12:15:00', 5800.00),
(36, 1, 36, '2025-01-15 11:05:00', 9100.00),
(37, 2, 37, '2025-01-14 14:40:00', 6300.00),
(38, 3, 38, '2025-01-13 16:50:00', 8200.00),
(39, 4, 39, '2025-01-12 13:05:00', 5700.00),
(40, 5, 40, '2025-01-11 09:20:00', 8500.00),
(41, 1, 41, '2025-01-10 18:45:00', 6900.00),
(42, 2, 42, '2025-01-09 10:55:00', 7200.00),
(43, 3, 43, '2025-01-08 15:30:00', 9100.00),
(44, 4, 44, '2025-01-07 14:20:00', 7800.00),
(45, 5, 45, '2025-01-06 11:40:00', 6400.00),
(46, 1, 46, '2025-01-05 12:50:00', 8300.00),
(47, 2, 47, '2025-01-04 15:55:00', 5900.00),
(48, 3, 48, '2025-01-03 13:20:00', 9200.00),
(49, 4, 49, '2025-01-02 16:10:00', 6700.00),
(50, 5, 50, '2025-01-01 09:45:00', 8800.00);
-------------------------------------------------------------------------------------------------------------------------------------
















