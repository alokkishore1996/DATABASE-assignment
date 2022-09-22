#create Database called Salespeople_and_Customers_and_Orders
CREATE DATABASE salespeole_and_customers_and_orders;
USE salespeole_and_customers_and_orders;

CREATE TABLE salespeople(
Snum INT PRIMARY KEY,
Sname VARCHAR(50),
city VARCHAR(50),
comm INT);
SELECT * FROM salespeople;
INSERT INTO salespeople(Snum,Sname,city,comm) VALUES("1001","Peel","London","12");
INSERT INTO salespeople(Snum,Sname,city,comm) VALUES("1002","Serres","Sanjose","13");
INSERT INTO salespeople(Snum,Sname,city,comm) VALUES("1004","Motika","London","11");
INSERT INTO salespeople(Snum,Sname,city,comm) VALUES("1007","Rifkin","Barcelona","15");
INSERT INTO salespeople(Snum,Sname,city,comm) VALUES("1003","Axelroad","Newyork","10");
CREATE TABLE customers(
Cnum INT PRIMARY KEY,
Cname VARCHAR(50),
city VARCHAR(50) NOT NULL,
Snum INT,
FOREIGN KEY(Snum) REFERENCES salespeople(Snum)
);
SELECT * FROM customers;
INSERT INTO customers(Cnum,Cname,city,Snum) VALUES("2001","Hoffman","London","1001");
INSERT INTO customers(Cnum,Cname,city,Snum) VALUES("2002","Giovaani","Rome","1003");
INSERT INTO customers(Cnum,Cname,city,Snum) VALUES("2003","Liu","Sanjose","1002");
INSERT INTO customers(Cnum,Cname,city,Snum) VALUES("2004","Grass","Berlin","1002");
INSERT INTO customers(Cnum,Cname,city,Snum) VALUES("2006","Clemens","London","1001");
INSERT INTO customers(Cnum,Cname,city,Snum) VALUES("2008","Cisneros","Sanjose","1007");
INSERT INTO customers(Cnum,Cname,city,Snum) VALUES("2007","Pereira","Rome","1004");
CREATE TABLE orders(
Onum INT PRIMARY KEY,
Amt FLOAT,
Odate DATE,
Cnum INT,
Snum INT,
FOREIGN KEY(Snum) REFERENCES salespeople(Snum),
FOREIGN KEY(Cnum) REFERENCES customers(Cnum)
);
SELECT * FROM orders;
INSERT INTO orders(Onum,Amt,Odate,Cnum,Snum) VALUES("3001","18.69",'1990-10-3',"2008","1007");
INSERT INTO orders(Onum,Amt,Odate,Cnum,Snum) VALUES("3003","767.19",'1990-10-03',"2001","1001");
INSERT INTO orders(Onum,Amt,Odate,Cnum,Snum) VALUES("3002","1900.10",'1990-10-03',"2007","1004");
INSERT INTO orders(Onum,Amt,Odate,Cnum,Snum) VALUES("3005","5160.45",'1990-10-03',"2003","1002");
INSERT INTO orders(Onum,Amt,Odate,Cnum,Snum) VALUES("3006","1098.16",'1990-10-03',"2008","1007");
INSERT INTO orders(Onum,Amt,Odate,Cnum,Snum) VALUES("3009","1713.23",'1990-10-04',"2002","1003");
INSERT INTO orders(Onum,Amt,Odate,Cnum,Snum) VALUES("3007","75.75",'1990-10-04',"2004","1002");
INSERT INTO orders(Onum,Amt,Odate,Cnum,Snum) VALUES("3008","4273.00",'1990-10-05',"2006","1001");
INSERT INTO orders(Onum,Amt,Odate,Cnum,Snum) VALUES("3010","1309.95",'1990-10-06',"2004","1002");
INSERT INTO orders(Onum,Amt,Odate,Cnum,Snum) VALUES("3011","9891.88",'1990-10-06',"2006","1001");

 #Count the number of Salesperson whose name begin with ‘a’/’A’.
 SELECT * FROM salespeople WHERE Sname LIKE 'A%';
 
  #Display all the Salesperson whose all orders worth is more than Rs. 2000
 SELECT Sname,Amt
 FROM salespeople,orders
 WHERE Amt>2000
 GROUP BY Amt;

#Count the number of Salesperson belonging to Newyork.
 SELECT * FROM salespeople WHERE city LIKE 'Newyork';
 
  #Display the number of Salespeople belonging to London .
 SELECT * FROM salespeople WHERE city LIKE 'London';
   #Display the number of Salespeople belonging to paris .
 SELECT * FROM salespeople WHERE city LIKE 'paris';  
 
  
 #Display the number of orders taken by each Salesperson and their date of orders.
 
 SELECT sname,Odate,comm
 FROM salespeople,orders
 GROUP BY Sname;
  
   
 
 
 
 
 
 
 
 
 
 