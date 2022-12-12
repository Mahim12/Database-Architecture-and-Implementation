INSERT INTO Amazon_Category (Category_ID, Category_Name)
VALUES (1, 'Electronics');
INSERT INTO Amazon_Category (Category_ID, Category_Name)
VALUES (2, 'Accessories');
INSERT INTO Amazon_Category (Category_ID, Category_Name)
VALUES (3, 'Garments');
INSERT INTO Amazon_Category (Category_ID, Category_Name)
VALUES (4, 'Food and Beverage');


INSERT INTO amazon_seller (seller_ID, seller_name, Address, Phonenum, Email)
VALUES (1, 'Basic Electronics', 'Boston 21', '8740061122', 'basicelectronics@gmail.com');
INSERT INTO amazon_seller (seller_ID, seller_name, Address, Phonenum, Email)
VALUES (2, 'General Electronics', 'worcestor 21', '8740062222', 'generalelectronics@gmail.com');
INSERT INTO amazon_seller (seller_ID, seller_name, Address, Phonenum, Email)
VALUES (3, 'Electro dynamics', 'revere 11', '87400632122', 'electrodynamics@gmail.com');
INSERT INTO amazon_seller (seller_ID, seller_name, Address, Phonenum, Email)
VALUES (4, 'baby and mama', 'main south', '87422632122', 'babyandmama@gmail.com');


INSERT INTO amazon_products (product_ID, product_name, descrip, price, seller_ID, Category_ID)
VALUES (1, 'Normal Keyboard', 'A generic keyboard for all computer', 50, 1, 1);
INSERT INTO amazon_products (product_ID, product_name, descrip, price, seller_ID, Category_ID)
VALUES (2, 'Normal Mouse', 'A generic moue for all computer', 20, 2, 1);
INSERT INTO amazon_products (product_ID, product_name, descrip, price, seller_ID, Category_ID)
VALUES (3, 'DSLR', 'A camera that brings out the photographer in you', 350, 1, 1);
INSERT INTO amazon_products (product_ID, product_name, descrip, price, seller_ID, Category_ID)
VALUES (4, 'keystroke', 'A paint brush for the canvas in your computer', 150, 2, 1);
INSERT INTO amazon_products (product_ID, product_name, descrip, price, seller_ID, Category_ID)
VALUES (5, 'diapers', 'Now, the diaper cares about your baby', 120, 4, 4);


INSERT INTO amazon_customers (customer_ID, firstname, lastname, address, email, phonenum)
VALUES (1, 'Mahim', 'Dhungel', '23 washington street Brighton', 'mdhungel@clarku.edu', '8578320002');
INSERT INTO amazon_customers (customer_ID, firstname, lastname, address, email, phonenum)
VALUES (2, 'Aarya', 'Paudel', 'Balkumari Unknown', 'ariapdl22@gmail.com', '9843796447');
INSERT INTO amazon_customers (customer_ID, firstname, lastname, address, email, phonenum)
VALUES (3, 'Mohan', 'Dhungel', 'persicola nepal', 'mahimenterprises@gmail.com', '9851045840');


INSERT INTO amazon_speed (speed_ID, speed_name)
VALUES (1, 'super saver shipping');
INSERT INTO amazon_speed (speed_ID, speed_name)
VALUES (2, 'standard shipping');
INSERT INTO amazon_speed (speed_ID, speed_name)
VALUES (3, 'two‐day');
INSERT INTO amazon_speed (speed_ID, speed_name)
VALUES (4, 'one‐day');


INSERT INTO amazon_warehouse (warehouse_ID, seller_id, product_id, units, category_id, condition)
VALUES (1, 1,1,3,1,'new');
INSERT INTO amazon_warehouse (warehouse_ID, seller_id, product_id, units, category_id, condition)
VALUES (2, 2, 2, 1, 1,'refurbished');
INSERT INTO amazon_warehouse (warehouse_ID, seller_id, product_id, units, category_id, condition)
VALUES (3, 4, 5, 5, 4, 'new');


I INSERT INTO amazon_orders (Order_ID, Customer_id, product_id, seller_id)
VALUES (1, 1, 1, 1);
INSERT INTO amazon_orders (Order_ID, Customer_id, product_id, seller_id)
VALUES (2, 1, 3, 1);
INSERT INTO amazon_orders (Order_ID, Customer_id, product_id, seller_id)
VALUES (3, 2, 2, 2);


INSERT INTO amazon_package (Package_ID, Order_id, Speed_id)
VALUES (1, 1, 1);
INSERT INTO amazon_package (Package_ID, Order_id, Speed_id)
VALUES (2, 2, 1);
INSERT INTO amazon_package (Package_ID, Order_id, Speed_id)
VALUES (3, 3, 2);


INSERT INTO amazon_notification (notification_ID, customer_id, package_id)
VALUES (1, 1, 1);
INSERT INTO amazon_notification (notification_ID, customer_id, package_id)
VALUES (2, 1, 2);
INSERT INTO amazon_notification (notification_ID, customer_id, package_id)
VALUES (3, 2, 3);


