/*
--------------------------------------------------------------------
© 2017 sqlservertutorial.net All Rights Reserved
--------------------------------------------------------------------
Name   : bikeStores
Link   : http://www.sqlservertutorial.net/load-sample-database/
Version: 1.0
--------------------------------------------------------------------
*/

use bikeStores;

SET IDENTITY_INSERT dbo.brands ON;  

INSERT INTO dbo.brands(brand_id,brand_name) VALUES(1,'Electra')
INSERT INTO dbo.brands(brand_id,brand_name) VALUES(2,'Haro')
INSERT INTO dbo.brands(brand_id,brand_name) VALUES(3,'Heller')
INSERT INTO dbo.brands(brand_id,brand_name) VALUES(4,'Pure Cycles')
INSERT INTO dbo.brands(brand_id,brand_name) VALUES(5,'Ritchey')
INSERT INTO dbo.brands(brand_id,brand_name) VALUES(6,'Strider')
INSERT INTO dbo.brands(brand_id,brand_name) VALUES(7,'Sun Bicycles')
INSERT INTO dbo.brands(brand_id,brand_name) VALUES(8,'Surly')
INSERT INTO dbo.brands(brand_id,brand_name) VALUES(9,'Trek')

SET IDENTITY_INSERT dbo.brands OFF;  

SET IDENTITY_INSERT dbo.categories ON;  
INSERT INTO dbo.categories(category_id,category_name) VALUES(1,'Children Bicycles')
INSERT INTO dbo.categories(category_id,category_name) VALUES(2,'Comfort Bicycles')
INSERT INTO dbo.categories(category_id,category_name) VALUES(3,'Cruisers Bicycles')
INSERT INTO dbo.categories(category_id,category_name) VALUES(4,'Cyclocross Bicycles')
INSERT INTO dbo.categories(category_id,category_name) VALUES(5,'Electric Bikes')
INSERT INTO dbo.categories(category_id,category_name) VALUES(6,'Mountain Bikes')
INSERT INTO dbo.categories(category_id,category_name) VALUES(7,'Road Bikes')

SET IDENTITY_INSERT dbo.categories OFF;  

SET IDENTITY_INSERT dbo.products ON;
INSERT INTO dbo.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(1,'Trek 820 - 2016',9,6,2016,379.99)
INSERT INTO dbo.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(2,'Ritchey Timberwolf Frameset - 2016',5,6,2016,749.99)
INSERT INTO dbo.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(3,'Surly Wednesday Frameset - 2016',8,6,2016,999.99)
INSERT INTO dbo.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(4,'Trek Fuel EX 8 29 - 2016',9,6,2016,2899.99)
INSERT INTO dbo.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(5,'Heller Shagamaw Frame - 2016',3,6,2016,1320.99)
INSERT INTO dbo.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(6,'Surly Ice Cream Truck Frameset - 2016',8,6,2016,469.99)
INSERT INTO dbo.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(7,'Trek Slash 8 27.5 - 2016',9,6,2016,3999.99)
INSERT INTO dbo.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(8,'Trek Remedy 29 Carbon Frameset - 2016',9,6,2016,1799.99)
INSERT INTO dbo.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(9,'Trek Conduit+ - 2016',9,5,2016,2999.99)
INSERT INTO dbo.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(10,'Surly Straggler - 2016',8,4,2016,1549)

SET IDENTITY_INSERT dbo.products OFF;

-- dbo.customers table
INSERT INTO dbo.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Debra','Burks',NULL,'debra.burks@yahoo.com','9273 Thorne Ave. ','Orchard Park','NY',14127);
INSERT INTO dbo.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Kasha','Todd',NULL,'kasha.todd@yahoo.com','910 Vine Street ','Campbell','CA',95008);
INSERT INTO dbo.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Tameka','Fisher',NULL,'tameka.fisher@aol.com','769C Honey Creek St. ','Redondo Beach','CA',90278);
INSERT INTO dbo.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Daryl','Spence',NULL,'daryl.spence@aol.com','988 Pearl Lane ','Uniondale','NY',11553);
INSERT INTO dbo.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Charolette','Rice','(916) 381-6003','charolette.rice@msn.com','107 River Dr. ','Sacramento','CA',95820);
INSERT INTO dbo.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Lyndsey','Bean',NULL,'lyndsey.bean@hotmail.com','769 West Road ','Fairport','NY',14450);
INSERT INTO dbo.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Latasha','Hays','(716) 986-3359','latasha.hays@hotmail.com','7014 Manor Station Rd. ','Buffalo','NY',14215);
INSERT INTO dbo.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Jacquline','Duncan',NULL,'jacquline.duncan@yahoo.com','15 Brown St. ','Jackson Heights','NY',11372);
INSERT INTO dbo.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Genoveva','Baldwin',NULL,'genoveva.baldwin@msn.com','8550 Spruce Drive ','Port Washington','NY',11050);
INSERT INTO dbo.customers(first_name, last_name, phone, email, street, city, state, zip_code) VALUES('Pamelia','Newman',NULL,'pamelia.newman@gmail.com','476 Chestnut Ave. ','Monroe','NY',10950);

-- stores

INSERT INTO dbo.stores(store_name, phone, email, street, city, state, zip_code)
VALUES('Santa Cruz Bikes','(831) 476-4321','santacruz@bikes.shop','3700 Portola Drive', 'Santa Cruz','CA',95060),
      ('Baldwin Bikes','(516) 379-8888','baldwin@bikes.shop','4200 Chestnut Lane', 'Baldwin','NY',11432),
      ('Rowlett Bikes','(972) 530-5555','rowlett@bikes.shop','8000 Fairway Avenue', 'Rowlett','TX',75088);


-- dbo.stocks 
INSERT INTO dbo.stocks(store_id, product_id, quantity) VALUES(1,1,27);
INSERT INTO dbo.stocks(store_id, product_id, quantity) VALUES(1,2,5);
INSERT INTO dbo.stocks(store_id, product_id, quantity) VALUES(1,3,6);
INSERT INTO dbo.stocks(store_id, product_id, quantity) VALUES(1,4,23);
INSERT INTO dbo.stocks(store_id, product_id, quantity) VALUES(1,5,22);
INSERT INTO dbo.stocks(store_id, product_id, quantity) VALUES(1,6,0);
INSERT INTO dbo.stocks(store_id, product_id, quantity) VALUES(1,7,8);
INSERT INTO dbo.stocks(store_id, product_id, quantity) VALUES(1,8,0);
INSERT INTO dbo.stocks(store_id, product_id, quantity) VALUES(1,9,11);
INSERT INTO dbo.stocks(store_id, product_id, quantity) VALUES(1,10,15);

SET IDENTITY_INSERT dbo.staffs ON;  

INSERT INTO dbo.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(1,'Fabiola','Jackson','fabiola.jackson@bikes.shop','(831) 555-5554',1,1,NULL);
INSERT INTO dbo.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(2,'Mireya','Copeland','mireya.copeland@bikes.shop','(831) 555-5555',1,1,1);
INSERT INTO dbo.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(3,'Genna','Serrano','genna.serrano@bikes.shop','(831) 555-5556',1,1,2);
INSERT INTO dbo.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(4,'Virgie','Wiggins','virgie.wiggins@bikes.shop','(831) 555-5557',1,1,2);
INSERT INTO dbo.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(5,'Jannette','David','jannette.david@bikes.shop','(516) 379-4444',1,2,1);
INSERT INTO dbo.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(6,'Marcelene','Boyer','marcelene.boyer@bikes.shop','(516) 379-4445',1,2,5);
INSERT INTO dbo.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(7,'Venita','Daniel','venita.daniel@bikes.shop','(516) 379-4446',1,2,5);
INSERT INTO dbo.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(8,'Kali','Vargas','kali.vargas@bikes.shop','(972) 530-5555',1,3,1);
INSERT INTO dbo.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(9,'Layla','Terrell','layla.terrell@bikes.shop','(972) 530-5556',1,3,7);
INSERT INTO dbo.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(10,'Bernardine','Houston','bernardine.houston@bikes.shop','(972) 530-5557',1,3,7);

SET IDENTITY_INSERT dbo.staffs OFF;  

SET IDENTITY_INSERT dbo.orders ON;  
INSERT INTO dbo.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(1,1,4,'20160101','20160103','20160103',1,2);
INSERT INTO dbo.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(2,2,4,'20160101','20160104','20160103',2,6);
INSERT INTO dbo.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(3,3,4,'20160102','20160105','20160103',2,7);
INSERT INTO dbo.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(4,4,4,'20160103','20160104','20160105',1,3);
INSERT INTO dbo.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(5,4,4,'20160103','20160106','20160106',2,6);
INSERT INTO dbo.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(6,5,4,'20160104','20160107','20160105',2,6);
INSERT INTO dbo.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(7,6,4,'20160104','20160107','20160105',2,6);
INSERT INTO dbo.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(8,7,4,'20160104','20160105','20160105',2,7);
INSERT INTO dbo.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(9,8,4,'20160105','20160108','20160108',1,2);
INSERT INTO dbo.orders(order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id) VALUES(10,9,4,'20160105','20160106','20160106',2,6);

SET IDENTITY_INSERT dbo.orders OFF;  

INSERT INTO dbo.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(1,1,1,1,599.99,0.2);
INSERT INTO dbo.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(1,2,8,2,1799.99,0.07);
INSERT INTO dbo.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(1,3,10,2,1549.00,0.05);
INSERT INTO dbo.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(1,4,2,2,599.99,0.05);
INSERT INTO dbo.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(1,5,4,1,2899.99,0.2);
INSERT INTO dbo.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(2,1,2,1,599.99,0.07);
INSERT INTO dbo.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(2,2,6,2,599.99,0.05);
INSERT INTO dbo.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(3,1,3,1,999.99,0.05);
INSERT INTO dbo.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(3,2,2,1,599.99,0.05);
INSERT INTO dbo.order_items(order_id, item_id, product_id, quantity, list_price,discount) VALUES(4,1,2,2,749.99,0.1);