CREATE OR REPLACE PROCEDURE ADD_AMAZON_PRODUCT(
product_id_arg IN INT,
product_name_arg IN VARCHAR,
description_arg IN VARCHAR,
price_arg IN DECIMAL,
seller_id_arg IN INT,
category_id_arg IN INT)
IS BEGIN
INSERT INTO amazon_products(product_id, product_name ,descrip, price, seller_id, category_id)
VALUES (product_id_arg, product_name_arg, description_arg, price_arg, seller_id_arg, category_id_arg);
end;

BEGIN
ADD_AMAZON_PRODUCT(6,' self‐driving video camera ',' automatically follows a subject that is being recorded ',100,2,1);
END;
/

BEGIN
ADD_AMAZON_PRODUCT(7,' holographic keyboard ',' emits a three‐dimensional projection of a keyboard and recognizes virtual key presses from the typist ',20,1,1);
END;
/

BEGIN
ADD_AMAZON_PRODUCT(8,'3d glasses','enjoy the depths of a movie',10,2,1);
END;
/


CREATE OR REPLACE PROCEDURE add_amazon_inventory(
warehouse_ID_arg IN int,
seller_ID_arg IN INT,
product_ID_ARG IN INT,
units_ARG IN INT,
category_id_ARG IN INT,
condition_ARG IN VARCHAR
)
IS BEGIN 
INSERT INTO amazon_warehouse(warehouse_ID,seller_ID,product_ID,units,category_id,condition) VALUES 
(warehouse_ID_arg,seller_ID_arg,product_ID_ARG,units_ARG,category_id_ARG,condition_ARG);
END;



BEGIN
add_amazon_inventory(4,1,6,4,1,'New');
END;
/
BEGIN
add_amazon_inventory(5,1,7,4,1,'New');
END;
/


select amazon_products.product_name, amazon_warehouse.units from 
amazon_products
join amazon_warehouse on amazon_warehouse.product_id = amazon_products.product_id where
amazon_warehouse.units<11;



create or replace procedure add_amazon_customer(
customer_ID_arg IN int,
firstname_arg IN VARCHAR,
lastname_ID_ARG IN VARCHAR,
address_ARG IN VARCHAR,
email_id_ARG IN VARCHAR,
phonenum_ARG IN VARCHAR
)
IS BEGIN 
INSERT INTO amazon_customers(customer_ID, firstname, lastname, address, email, phonenum) VALUES 
(customer_ID_arg, firstname_arg, lastname_ID_ARG, address_ARG, email_id_ARG, phonenum_ARG);
END;

BEGIN
add_amazon_customer(4,'Bandana','dhungel','Nepal', 'bandana@gmail.com','9801045840');
END;
/

BEGIN
add_amazon_customer(5,'Mayank','dhungel','Nepal', 'mayank@gmail.com','9841045884');
END;
/

select lastname   
from amazon_customers
Group by lastname 
having count(distinct customer_id)>= 4;


create or replace procedure products_purchased(
order_ID_arg IN int,
customer_id_arg IN int,
product_id_ARG IN int,
seller_id_ARG IN int
)
IS BEGIN
INSERT INTO amazon_orders(order_ID, customer_id, product_id, seller_id) VALUES 
(order_ID_arg, customer_id_arg, product_id_ARG, seller_id_ARG);
END;


create or replace procedure warehouse_update(
units_arg IN int,
warehouse_id_arg IN int
)
IS BEGIN
update amazon_warehouse set units = units-units_arg where warehouse_id = warehouse_id_arg;
END;

BEGIN
products_purchased(4,1,1,1);
END;
/

BEGIN
warehouse_update(1,1);
END;
/

BEGIN
products_purchased(5,1,6,2);
END;
/

BEGIN
products_purchased(6,2,7,1);
END;
/

create or replace procedure add_packaging(
PACKAGE_ID_ARG IN int,
ORDER_ID_ARG IN int, 
SPEED_ID_ARG IN int
)
IS BEGIN 
INSERT INTO AMAZON_PACKAGE(PACKAGE_ID, ORDER_ID, SPEED_ID) VALUES 
(PACKAGE_ID_ARG, ORDER_ID_ARG, SPEED_ID_ARG);
END;


BEGIN
add_packaging(4,5,1);
END;
/
BEGIN
add_packaging(5,6,1);
END;
/

CREATE INDEX idx_seller_id
ON amazon_warehouse (seller_id);

CREATE INDEX idx_product_name
ON amazon_products (product_name);

select amazon_orders.customer_id, amazon_customers.firstname, amazon_customers.lastname, amazon_customers.address from amazon_customers
join amazon_orders on amazon_orders.customer_id = amazon_customers.customer_id
where exists (select amazon_orders.customer_id from amazon_orders group by amazon_orders.customer_id having count(amazon_orders.customer_id) >=2);
