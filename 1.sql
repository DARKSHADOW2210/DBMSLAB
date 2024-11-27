create table customers(cust_id int primary key,cust_name varchar(255));
create table items(item_id int primary key,item_name varchar(255),price int);
create table sales(bill_no int,bill_date date,cust_id int,item_id int,qty_sold int,foreign key (cust_id) references customers(cust_id),foreign key (item_id) references items(item_id));

-- Insert records into Customer table
INSERT INTO Customers (cust_id, cust_name) VALUES 
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Alice Johnson'),
(4, 'Bob Brown'),
(5, 'Charlie Davis');

-- Insert records into Item table
INSERT INTO Items (item_id, item_name, price) VALUES
(1, 'Laptop', 800),
(2, 'Smartphone', 600),
(3, 'Tablet', 300),
(4, 'Headphones', 100),
(5, 'Keyboard', 50);

-- Insert records into Sale table
INSERT INTO Sales (bill_no, bill_date, cust_id, item_id, qty_sold) VALUES
(1001, '2024-11-27', 1, 1, 1),
(1002, '2024-11-27', 2, 2, 2),
(1003, '2024-11-27', 3, 3, 1),
(1004, '2024-11-27', 4, 4, 3),
(1005, '2024-11-27', 5, 5, 1);

select c.cust_name, i.item_id,s.bill_no
from customers c,items i, sales s
where c.cust_id = s.cust_id and i.item_id = s.item_id and s.bill_date = current_date; 
