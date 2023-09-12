-- Insertar datos de prueba en la tabla Category
INSERT INTO category (category_id, category_name, description, picture)
VALUES
    (1, 'Electrónicos', 'Productos electrónicos de consumo', 'imagen1.jpg'),
    (2, 'Ropa', 'Ropa de moda para todas las edades', 'imagen2.jpg'),
    (3, 'Hogar', 'Artículos para el hogar', 'imagen3.jpg'),
    (4, 'Deportes', 'Artículos deportivos y equipos', 'imagen4.jpg'),
    (5, 'Juguetes', 'Juguetes para niños de todas las edades', 'imagen5.jpg'),
    (6, 'Muebles', 'Muebles para el hogar y la oficina', 'imagen6.jpg'),
    (7, 'Alimentos', 'Productos alimenticios y comestibles', 'imagen7.jpg'),
    (8, 'Automóviles', 'Piezas y accesorios para automóviles', 'imagen8.jpg'),
    (9, 'Libros', 'Libros de diferentes géneros', 'imagen9.jpg'),
    (10, 'Joyería', 'Joyas de lujo y accesorios', 'imagen10.jpg');
    
-- Insertar datos de prueba en la tabla Customers
INSERT INTO customers (company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax)
VALUES
    ('Customer1', 'Contact1', 'Title1', 'Address1', 'City1', 'Region1', '12345', 'Country1', '123456789', '987654321'),
    ('Customer2', 'Contact2', 'Title2', 'Address2', 'City2', 'Region2', '23456', 'Country2', '234567890', '876543210'),
    ('Customer3', 'Contact3', 'Title3', 'Address3', 'City3', 'Region3', '34567', 'Country3', '345678901', '765432109'),
    ('Customer4', 'Contact4', 'Title4', 'Address4', 'City4', 'Region4', '45678', 'Country4', '456789012', '654321098'),
    ('Customer5', 'Contact5', 'Title5', 'Address5', 'City5', 'Region5', '56789', 'Country5', '567890123', '543210987'),
    ('Customer6', 'Contact6', 'Title6', 'Address6', 'City6', 'Region6', '67890', 'Country6', '678901234', '432109876'),
    ('Customer7', 'Contact7', 'Title7', 'Address7', 'City7', 'Region7', '78901', 'Country7', '789012345', '321098765'),
    ('Customer8', 'Contact8', 'Title8', 'Address8', 'City8', 'Region8', '89012', 'Country8', '890123456', '210987654'),
    ('Customer9', 'Contact9', 'Title9', 'Address9', 'City9', 'Region9', '90123', 'Country9', '901234567', '109876543'),
    ('Customer10', 'Contact10', 'Title10', 'Address10', 'City10', 'Region10', '01234', 'Country10', '012345678', '098765432');

-- Insertar datos de prueba en la tabla Employees
INSERT INTO employees (employee_id, last_name, first_name, title, title_of_courtesy, birth_date, hire_date, address, city, region, postal_code, country, home_phone, extension, photo, notes, reports_to)
VALUES
    (1, 'LastName1', 'FirstName1', 'Title1', 'Courtesy1', '1990-01-01', '2010-01-01', 'Address1', 'City1', 'Region1', '12345', 'Country1', '123456789', 1001, 'photo1.jpg', 'Notes1', 'Manager1'),
    (2, 'LastName2', 'FirstName2', 'Title2', 'Courtesy2', '1991-02-02', '2011-02-02', 'Address2', 'City2', 'Region2', '23456', 'Country2', '234567890', 1002, 'photo2.jpg', 'Notes2', 'Manager2'),
    (3, 'LastName3', 'FirstName3', 'Title3', 'Courtesy3', '1992-03-03', '2012-03-03', 'Address3', 'City3', 'Region3', '34567', 'Country3', '345678901', 1003, 'photo3.jpg', 'Notes3', 'Manager3'),
    (4, 'LastName4', 'FirstName4', 'Title4', 'Courtesy4', '1993-04-04', '2013-04-04', 'Address4', 'City4', 'Region4', '45678', 'Country4', '456789012', 1004, 'photo4.jpg', 'Notes4', 'Manager1'),
    (5, 'LastName5', 'FirstName5', 'Title5', 'Courtesy5', '1994-05-05', '2014-05-05', 'Address5', 'City5', 'Region5', '56789', 'Country5', '567890123', 1005, 'photo5.jpg', 'Notes5', 'Manager2'),
    (6, 'LastName6', 'FirstName6', 'Title6', 'Courtesy6', '1995-06-06', '2015-06-06', 'Address6', 'City6', 'Region6', '67890', 'Country6', '678901234', 1006, 'photo6.jpg', 'Notes6', 'Manager3'),
    (7, 'LastName7', 'FirstName7', 'Title7', 'Courtesy7', '1996-07-07', '2016-07-07', 'Address7', 'City7', 'Region7', '78901', 'Country7', '789012345', 1007, 'photo7.jpg', 'Notes7', 'Manager1'),
    (8, 'LastName8', 'FirstName8', 'Title8', 'Courtesy8', '1997-08-08', '2017-08-08', 'Address8', 'City8', 'Region8', '89012', 'Country8', '890123456', 1008, 'photo8.jpg', 'Notes8', 'Manager2'),
    (9, 'LastName9', 'FirstName9', 'Title9', 'Courtesy9', '1998-09-09', '2018-09-09', 'Address9', 'City9', 'Region9', '90123', 'Country9', '901234567', 1009, 'photo9.jpg', 'Notes9', 'Manager3'),
    (10, 'LastName10', 'FirstName10', 'Title10', 'Courtesy10', '1999-10-10', '2019-10-10', 'Address10', 'City10', 'Region10', '01234', 'Country10', '012345678', 1010, 'photo10.jpg', 'Notes10', 'Manager1');
    
-- Insertar datos de prueba en la tabla Shippers
INSERT INTO shippers (shipper_id, company_name, phone)
VALUES
    (1, 'Shipper1', '123456780'),
    (2, 'Shipper2', '234567801'),
    (3, 'Shipper3', '345678912');

-- Insertar datos de prueba en la tabla Suppliers
INSERT INTO suppliers (supplier_id, company_name, contact_name, address, city, region, postal_code, country, phone, fax, home_page)
VALUES
    (1, 'Supplier1', 'Contact1', 'SupplierAddress1', 'SupplierCity1', 'SupplierRegion1', '54321', 'SupplierCountry1', '123123121', '1234567890', 'http://www.supplier1.com'),
    (2, 'Supplier2', 'Contact2', 'SupplierAddress2', 'SupplierCity2', 'SupplierRegion2', '65432', 'SupplierCountry2', '876543211', '2345678901', 'http://www.supplier2.com'),
    (3, 'Supplier3', 'Contact3', 'SupplierAddress3', 'SupplierCity3', 'SupplierRegion3', '76543', 'SupplierCountry3', '765432101', '3456789012', 'http://www.supplier3.com');

-- Insertar datos de prueba en la tabla Products
INSERT INTO products (product_id, product_name, supplier_id, category_id, quantity_per_unit, unit_price, units_in_stock, units_on_order, reorder_level, discontinued)
VALUES
    (1, 'Product1', 1, 1, 10, 100.00, 100, 20, 10, 0),
    (2, 'Product2', 2, 1, 5, 200.00, 50, 5, 5, 0),
    (3, 'Product3', 3, 2, 8, 50.00, 200, 10, 20, 0),
    (4, 'Product4', 1, 2, 12, 75.00, 150, 15, 15, 0),
    (5, 'Product5', 2, 3, 6, 30.00, 300, 25, 5, 0),
    (6, 'Product6', 3, 3, 4, 45.00, 100, 8, 10, 0),
    (7, 'Product7', 1, 1, 20, 10.00, 500, 30, 25, 0),
    (8, 'Product8', 2, 1, 15, 15.00, 250, 20, 20, 0),
    (9, 'Product9', 3, 2, 18, 20.00, 400, 35, 30, 0),
    (10, 'Product10', 1, 2, 24, 25.00, 200, 40, 35, 0);

-- Insertar datos de prueba en la tabla Orders
INSERT INTO orders (order_id, customer_id, employee_id, order_date, required_date, shipped_date, ship_via, freight, ship_name, ship_address, ship_city, ship_region, ship_postal_code, ship_country, shipper_id)
VALUES
    (1, 1, 1, '2023-01-01', '2023-01-10', '2023-01-05', 'Shipper1', 10.00, 'ShipName1', 'ShipAddress1', 'ShipCity1', 'ShipRegion1', '12345', 'ShipCountry1', 1),
    (2, 2, 2, '2023-02-01', '2023-02-10', '2023-02-06', 'Shipper2', 15.00, 'ShipName2', 'ShipAddress2', 'ShipCity2', 'ShipRegion2', '23456', 'ShipCountry2', 2),
    (3, 3, 3, '2023-03-01', '2023-03-10', '2023-03-07', 'Shipper3', 20.00, 'ShipName3', 'ShipAddress3', 'ShipCity3', 'ShipRegion3', '34567', 'ShipCountry3', 3),
    (4, 4, 4, '2023-04-01', '2023-04-10', '2023-04-08', 'Shipper4', 25.00, 'ShipName4', 'ShipAddress4', 'ShipCity4', 'ShipRegion4', '45678', 'ShipCountry4', 1),
    (5, 5, 5, '2023-05-01', '2023-05-10', '2023-05-09', 'Shipper5', 30.00, 'ShipName5', 'ShipAddress5', 'ShipCity5', 'ShipRegion5', '56789', 'ShipCountry5', 2),
    (6, 6, 6, '2023-06-01', '2023-06-10', '2023-06-10', 'Shipper6', 35.00, 'ShipName6', 'ShipAddress6', 'ShipCity6', 'ShipRegion6', '67890', 'ShipCountry6', 3),
    (7, 7, 7, '2023-07-01', '2023-07-10', '2023-07-11', 'Shipper1', 40.00, 'ShipName7', 'ShipAddress7', 'ShipCity7', 'ShipRegion7', '78901', 'ShipCountry7', 1),
    (8, 8, 8, '2023-08-01', '2023-08-10', '2023-08-12', 'Shipper2', 45.00, 'ShipName8', 'ShipAddress8', 'ShipCity8', 'ShipRegion8', '89012', 'ShipCountry8', 2),
    (9, 9, 9, '2023-09-01', '2023-09-10', '2023-09-13', 'Shipper3', 50.00, 'ShipName9', 'ShipAddress9', 'ShipCity9', 'ShipRegion9', '90123', 'ShipCountry9', 3),
    (10, 10, 10, '2023-10-01', '2023-10-10', '2023-10-14', 'Shipper4', 55.00, 'ShipName10', 'ShipAddress10', 'ShipCity10', 'ShipRegion10', '01234', 'ShipCountry10', 1);

-- Insertar datos de prueba en la tabla Order_Detail
INSERT INTO order_detail (product_id, order_id, unit_price, quantity, discount)
VALUES
    (1, 1, 10.00, 5, 0.05),
    (2, 1, 15.00, 3, 0.10),
    (3, 2, 20.00, 4, 0.05),
    (4, 2, 25.00, 2, 0.15),
    (5, 3, 30.00, 6, 0.10),
    (6, 3, 35.00, 1, 0.05),
    (7, 4, 40.00, 2, 0.10),
    (8, 4, 45.00, 7, 0.05),
    (9, 5, 50.00, 3, 0.15),
    (10, 5, 55.00, 5, 0.10);