-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-09-11 20:38:12.445

-- tables
-- Table: category
CREATE TABLE category (
    category_id int AUTO_INCREMENT NOT NULL,
    category_name varchar(30)  NOT NULL,
    description varchar(120)  NOT NULL,
    picture text  NOT NULL,
    CONSTRAINT category_pk PRIMARY KEY (category_id)
);

-- Table: customers
CREATE TABLE customers (
    customer_id int AUTO_INCREMENT NOT NULL,
    company_name varchar(30)  NOT NULL,
    contact_name varchar(30)  NOT NULL,
    contact_title varchar(30)  NOT NULL,
    address varchar(255)  NOT NULL,
    city varchar(58)  NOT NULL,
    region varchar(30)  NOT NULL,
    postal_code varchar(6)  NOT NULL,
    country varchar(40)  NOT NULL,
    phone varchar(9)  NOT NULL,
    fax varchar(10)  NOT NULL,
    CONSTRAINT customers_pk PRIMARY KEY (customer_id)
);

-- Table: customer_seq
create table customers_seq (next_val bigint) engine=InnoDB;
insert into customers_seq values ( 1 );

-- Table: employees
CREATE TABLE employees (
    employee_id int AUTO_INCREMENT NOT NULL,
    last_name varchar(30)  NOT NULL,
    first_name varchar(30)  NOT NULL,
    title varchar(20)  NOT NULL,
    title_of_courtesy varchar(10)  NOT NULL,
    birth_date date  NOT NULL,
    hire_date date  NOT NULL,
    address text  NOT NULL,
    city varchar(58)  NOT NULL,
    region varchar(30)  NOT NULL,
    postal_code varchar(6)  NOT NULL,
    country varchar(40)  NOT NULL,
    home_phone varchar(9)  NOT NULL,
    extension bigint  NOT NULL,
    photo text  NOT NULL,
    notes varchar(40)  NOT NULL,
    reports_to varchar(20)  NOT NULL,
    CONSTRAINT employees_pk PRIMARY KEY (employee_id)
);

-- Table: order_detail
CREATE TABLE order_detail (
    product_id int NOT NULL,
    order_id int  NOT NULL,
    unit_price decimal(5,2)  NOT NULL,
    quantity int  NOT NULL,
    discount decimal(5,2)  NOT NULL,
    CONSTRAINT order_detail_pk PRIMARY KEY (product_id,order_id)
);

-- Table: orders
CREATE TABLE orders (
    order_id int AUTO_INCREMENT NOT NULL,
    customer_id int  NOT NULL,
    employee_id int  NOT NULL,
    order_date date  NOT NULL,
    required_date date  NOT NULL,
    shipped_date date  NOT NULL,
    ship_via varchar(20)  NOT NULL,
    freight decimal(5,2)  NOT NULL,
    ship_name varchar(20)  NOT NULL,
    ship_address varchar(40)  NOT NULL,
    ship_city varchar(20)  NOT NULL,
    ship_region varchar(20)  NOT NULL,
    ship_postal_code varchar(9)  NOT NULL,
    ship_country varchar(20)  NOT NULL,
    shipper_id int  NOT NULL,
    CONSTRAINT orders_pk PRIMARY KEY (order_id)
);

-- Table: products
CREATE TABLE products (
    product_id int AUTO_INCREMENT NOT NULL,
    product_name varchar(45)  NOT NULL,
    supplier_id int  NOT NULL,
    category_id int  NOT NULL,
    quantity_per_unit int  NOT NULL,
    unit_price decimal(5,2)  NOT NULL,
    units_in_stock int  NOT NULL,
    units_on_order int  NOT NULL,
    reorder_level int  NOT NULL,
    discontinued bigint  NOT NULL,
    CONSTRAINT products_pk PRIMARY KEY (product_id)
);

-- Table: shippers
CREATE TABLE shippers (
    shipper_id int AUTO_INCREMENT NOT NULL,
    company_name varchar(30)  NOT NULL,
    phone varchar(9)  NOT NULL,
    CONSTRAINT shippers_pk PRIMARY KEY (shipper_id)
);

-- Table: suppliers
CREATE TABLE suppliers (
    supplier_id int AUTO_INCREMENT NOT NULL,
    company_name varchar(30)  NOT NULL,
    contact_name varchar(30)  NOT NULL,
    address text  NOT NULL,
    city varchar(58)  NOT NULL,
    region varchar(30)  NOT NULL,
    postal_code varchar(6)  NOT NULL,
    country varchar(40)  NOT NULL,
    phone varchar(9)  NOT NULL,
    fax varchar(10)  NOT NULL,
    home_page text  NOT NULL,
    CONSTRAINT suppliers_pk PRIMARY KEY (supplier_id)
);

-- foreign keys
-- Reference: Order_Detail_Orders (table: order_detail)
ALTER TABLE order_detail ADD CONSTRAINT Order_Detail_Orders FOREIGN KEY Order_Detail_Orders (order_id)
    REFERENCES orders (order_id);

-- Reference: Order_Detail_Products (table: order_detail)
ALTER TABLE order_detail ADD CONSTRAINT Order_Detail_Products FOREIGN KEY Order_Detail_Products (product_id)
    REFERENCES products (product_id);

-- Reference: Orders_Customers (table: orders)
ALTER TABLE orders ADD CONSTRAINT Orders_Customers FOREIGN KEY Orders_Customers (customer_id)
    REFERENCES customers (customer_id);

-- Reference: Orders_Employees (table: orders)
ALTER TABLE orders ADD CONSTRAINT Orders_Employees FOREIGN KEY Orders_Employees (employee_id)
    REFERENCES employees (employee_id);

-- Reference: Orders_Shippers (table: orders)
ALTER TABLE orders ADD CONSTRAINT Orders_Shippers FOREIGN KEY Orders_Shippers (shipper_id)
    REFERENCES shippers (shipper_id);

-- Reference: Products_Category (table: products)
ALTER TABLE products ADD CONSTRAINT Products_Category FOREIGN KEY Products_Category (category_id)
    REFERENCES category (category_id);

-- Reference: Products_Suppliers (table: products)
ALTER TABLE products ADD CONSTRAINT Products_Suppliers FOREIGN KEY Products_Suppliers (supplier_id)
    REFERENCES suppliers (supplier_id);

-- End of file.

