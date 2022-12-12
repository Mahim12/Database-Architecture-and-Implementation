
CREATE TABLE Amazon_Category (
    Category_ID int NOT NULL PRIMARY KEY,
    Category_Name varchar(255) NOT NULL
);

CREATE TABLE amazon_products (
    product_ID int NOT NULL PRIMARY KEY,
    product_name varchar(255) NOT NULL,
    descrip varchar(255) NOT NULL,
    price int NOT NULL,
    seller_ID int NOT NULL,
    Category_ID int NOT NULL,
    FOREIGN KEY (seller_ID) REFERENCES amazon_seller(seller_ID),
    FOREIGN KEY (Category_ID) REFERENCES amazon_seller(Category_ID)
);

CREATE TABLE amazon_seller (
    seller_ID int NOT NULL PRIMARY KEY,
    seller_name varchar(255) NOT NULL,
    Address varchar(255) NOT NULL,
    Phonenum varchar(15) NOT NULL,
    Email varchar(255) NOT NULL
);

CREATE TABLE amazon_customers (
    Customer_ID int NOT NULL PRIMARY KEY,
    firstname varchar(255) NOT NULL,
    lastname varchar(255) NOT NULL,
    Address varchar(255) NOT NULL,
    Email varchar(255) NOT NULL,
    Phonenum varchar(15) NOT NULL
);

CREATE TABLE amazon_warehouse (
    warehouse_ID int NOT NULL PRIMARY KEY,
    seller_ID int NOT NULL,
    product_ID int NOT NULL,
    units int NOT NULL,
    category_id int NOT NULL,
    condition varchar(255) NOT NULL,
    Foreign key(seller_ID) references amazon_seller(seller_ID),
    Foreign key(product_ID) references amazon_products(product_ID),
    Foreign key(Category_ID) references amazon_Category(Category_ID)
);

CREATE TABLE Amazon_speed (
    Speed_ID int NOT NULL PRIMARY KEY,
    Speed_Name varchar(255) NOT NULL
);

CREATE TABLE amazon_orders (
    Order_ID int NOT NULL PRIMARY KEY,
    Customer_ID int NOT NULL,
    Product_ID int NOT NULL,
    Seller_ID int NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES amazon_customers(Customer_ID),
    FOREIGN KEY (Product_ID) REFERENCES amazon_products(Product_ID),
    FOREIGN KEY (seller_ID) REFERENCES amazon_seller(seller_ID)
);

CREATE TABLE amazon_package (
    Package_ID int NOT NULL PRIMARY KEY,
    Order_ID int NOT NULL,
    Speed_ID int NOT NULL,
    FOREIGN KEY (Order_ID) REFERENCES AMAZON_ORDERS(Order_ID),
    FOREIGN KEY (Speed_ID) REFERENCES amazon_speed(Speed_ID)
);

CREATE TABLE amazon_notification (
    Notification_ID int NOT NULL PRIMARY KEY,
    Customer_ID int NOT NULL,
    Package_ID int NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES amazon_customers(Customer_ID),
    FOREIGN KEY (Package_ID) REFERENCES amazon_package(Package_ID)
);


