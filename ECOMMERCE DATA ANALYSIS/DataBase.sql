CREATE DATABASE EDA;
USE EDA
CREATE TABLE `CUSTOMER` (
 `CUSTOMER_ID` VARCHAR(10) NOT NULL,
 `NAME` VARCHAR(100) NOT NULL,
 `CITY` VARCHAR(65) NOT NULL,
 `EMAIL` VARCHAR(45) NOT NULL,
 `PHONE_NO` VARCHAR(15) NOT NULL,
 `ADDRESS` VARCHAR(100) NOT NULL,
 `PIN_CODE` INT NOT NULL,
 PRIMARY KEY(`CUSTOMER_ID`)
);
CREATE TABLE `PRODUCT` (
 `PRODUCT_ID` VARCHAR(10) NOT NULL,
 `PRODUCT_NAME` VARCHAR(100) NOT NULL,
 `CATEGORY` VARCHAR(65) NOT NULL,
 `SUB_CATEGORY` VARCHAR(45) NOT NULL,
 `ORIGINAL_PRICE` DOUBLE NOT NULL,
 `SELLING_PRICE` DOUBLE NOT NULL,
 `STOCK` INT NOT NULL,
 PRIMARY KEY(`PRODUCT_ID`)
);
CREATE TABLE `ORDER_DETAILS` (
 `ORDER_ID` INT NOT NULL AUTO_INCREMENT,
 `CUSTOMER_ID` VARCHAR(10) NOT NULL,
 `PRODUCT_ID` VARCHAR(10) NOT NULL,
 `QUANTITY` DOUBLE NOT NULL,
 `TOTAL_PRICE` DOUBLE NOT NULL,
 `PAYMENT_MODE` VARCHAR(60) NOT NULL,
 `ORDER_DATE` DATETIME DEFAULT NULL,
 `ORDER_STATUS` VARCHAR(20) NOT NULL,
 PRIMARY KEY(`ORDER_ID`),
 KEY `CUSTOMER_ID`(`CUSTOMER_ID`),
 KEY `PRODUCT_ID`(`PRODUCT_ID`),
 CONSTRAINT `ORDER_DETAILS_IBFK_1` FOREIGN KEY (`CUSTOMER_ID`)
 REFERENCES `CUSTOMER`(`CUSTOMER_ID`),
 CONSTRAINT `ORDER_DETAILS_IBFK_2` FOREIGN KEY (`PRODUCT_ID`)
 REFERENCES `PRODUCT`(`PRODUCT_ID`)
);

INSERT INTO CUSTOMER VALUES
('C1001', 'Steve', 'Tokyo', 'steve@gmail.com', '4567897652', 'f.g.road', 99),
('C1002', 'John', 'Sydney', 'john@gmail.com', '9987234567', 'k.c.road', 75001),
('C1003', 'Peter', 'Kanagawa', 'peter.parker@mail.com', '9969834567', '2F Ikenobecho', 171),
('C1004', 'Jackson', 'Tokyo', 'Jackson@gmail.com', '7765834567', '24-2. Sendagaya', 8429),
('C1005', 'Jack', 'Lake Buena Vista', 'Jack@gmail.com', '8876345678', '1520 E Buena Vista Drive', 32830),
('C1006', 'Bruce', 'Gotham', 'bruce.wayne@gmail.com', '9876543210', 'Wayne Manor', 10001),
('C1007', 'Clark', 'Metropolis', 'clark.kent@gmail.com', '8765432109', 'Daily Planet', 20002),
('C1008', 'Diana', 'Themyscira', 'diana.prince@gmail.com', '7654321098', 'Themyscira Castle', 30003),
('C1009', 'Tony', 'New York', 'tony.stark@gmail.com', '6543210987', '10880 Malibu Point', 90265),
('C1010', 'Natasha', 'Moscow', 'natasha.romanoff@gmail.com', '5432109876', 'Red Room Academy', 12345),
('C1011', 'Wanda', 'Westview', 'wanda.maximoff@gmail.com', '4321098765', 'Westview Avenue', 67890),
('C1012', 'Steve', 'Brooklyn', 'steve.rogers@gmail.com', '3210987654', 'Brooklyn Heights', 11201),
('C1013', 'Thor', 'Asgard', 'thor.odinson@gmail.com', '2109876543', 'Asgard Palace', 45678),
('C1014', 'Loki', 'Jotunheim', 'loki.laufeyson@gmail.com', '1098765432', 'Jotunheim Fortress', 56789),
('C1015', 'Peter', 'Queens', 'peter.parker@gmail.com', '0198765432', '20 Ingram Street', 11375);

INSERT INTO PRODUCT VALUES
('P101', 'Chair', 'furniture', 'Chairs', 20000.0, 15000.00, 10),
('P102', 'Laptop', 'Electronics', 'computer', 60000.0, 55000.00, 50),
('P103', 'Smartphone', 'Electronics', 'phone', 45000.0, 40000.00, 20),
('P104', 'Blender', 'Appliance', 'Electronics', 500.0, 450.00, 10),
('P105', 'Laptop HP', 'Electronics', 'Computers', 67200.0, 55000.99, 50),
('P106', 'Table', 'furniture', 'Tables', 15000.0, 12000.00, 25),
('P107', 'Smartwatch', 'Electronics', 'Wearables', 18000.0, 15000.00, 40),
('P108', 'Refrigerator', 'Appliance', 'Kitchen', 50000.0, 45000.00, 15),
('P109', 'Headphones', 'Electronics', 'Accessories', 2000.0, 1500.00, 100),
('P110', 'Sofa', 'furniture', 'Living Room', 30000.0, 25000.00, 5),
('P111', 'Air Conditioner', 'Appliance', 'Cooling', 40000.0, 35000.00, 8),
('P112', 'Television', 'Electronics', 'Home Entertainment', 55000.0, 50000.00, 12),
('P113', 'Microwave', 'Appliance', 'Kitchen', 8000.0, 7500.00, 20),
('P114', 'Gaming Console', 'Electronics', 'Entertainment', 40000.0, 37000.00, 30),
('P115', 'Bookshelf', 'furniture', 'Storage', 12000.0, 10000.00, 15);

INSERT INTO ORDER_DETAILS VALUES
(1, 'C1004', 'P112', 1.0, 1000.0, 'COD', '2023-11-30', 'Pending'),
(2, 'C1005', 'P102', 1.0, 20000.0, 'COD', '2023-11-30', 'Pending'),
(3, 'C1005', 'P102', 1.0, 20000.0, 'COD', '2023-12-08', 'Delivered'),
(4, 'C1006', 'P103', 1.0, 55000.0, 'COD', '2023-12-15', 'Delivered'),
(5, 'C1006', 'P102', 1.0, 15000.0, 'COD','2023-12-11','Delivered' ),
(6, 'C1007', 'P104', 1.0, 40000.0, 'Credit Card', '2023-12-10', 'Delivered'),
(7, 'C1008', 'P105', 2.0, 900.0, 'Debit Card', '2023-12-11', 'Shipped'),
(8, 'C1009', 'P106', 1.0, 55000.99, 'Net Banking', '2023-12-12', 'Pending'),
(9, 'C1010', 'P103', 1.0, 55000.0, 'COD', '2023-12-13', 'Delivered'),
(10, 'C1011', 'P108', 3.0, 45000.0, 'Credit Card', '2023-12-14', 'Shipped'),
(11, 'C1012', 'P110', 5.0, 7500.0, 'UPI', '2023-12-15', 'Pending'),
(12, 'C1013', 'P109', 1.0, 45000.0, 'Debit Card', '2023-12-16', 'Shipped'),
(13, 'C1014', 'P107', 1.0, 12000.0, 'COD', '2023-12-17', 'Delivered'),
(14, 'C1015', 'P106', 1.0, 55000.99, 'Credit Card', '2023-12-18', 'Pending'),
(15, 'C1009', 'P104', 2.0, 80000.0, 'Net Banking', '2023-12-19', 'Delivered');




