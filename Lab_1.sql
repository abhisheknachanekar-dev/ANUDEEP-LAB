mysql> SHOW DATABASES;
+--------------------------+
| Database                 |
+--------------------------+
| e_commerce               |
| ecommerce                |
| information_schema       |
| joins                    |
| joins1                   |
| mydb                     |
| mysql                    |
| performance_schema       |
| practicedb               |
| sakila                   |
| student_management       |
| studentmanagementsystem  |
| studentmanagementsystem1 |
| sys                      |
| world                    |
+--------------------------+
15 rows in set (0.00 sec)

mysql> CREATE DATABASE ECOMMERCE;
ERROR 1007 (HY000): Can't create database 'ecommerce'; database exists
mysql> CREATE DATABASE ECOMMERCE12;
Query OK, 1 row affected (0.04 sec)

mysql> CREATE DATABASE ECOMMERCE;
ERROR 1007 (HY000): Can't create database 'ecommerce'; database exists
mysql> SHOW DATABASES;
+--------------------------+
| Database                 |
+--------------------------+
| e_commerce               |
| ecommerce                |
| ecommerce12              |
| information_schema       |
| joins                    |
| joins1                   |
| mydb                     |
| mysql                    |
| performance_schema       |
| practicedb               |
| sakila                   |
| student_management       |
| studentmanagementsystem  |
| studentmanagementsystem1 |
| sys                      |
| world                    |
+--------------------------+
16 rows in set (0.00 sec)

mysql> create database xyz
    -> create database xyz;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'create database xyz' at line 2
mysql> create database xyz;
Query OK, 1 row affected (0.03 sec)

mysql> SHOW DATABASES;
+--------------------------+
| Database                 |
+--------------------------+
| e_commerce               |
| ecommerce                |
| ecommerce12              |
| information_schema       |
| joins                    |
| joins1                   |
| mydb                     |
| mysql                    |
| performance_schema       |
| practicedb               |
| sakila                   |
| student_management       |
| studentmanagementsystem  |
| studentmanagementsystem1 |
| sys                      |
| world                    |
| xyz                      |
+--------------------------+
17 rows in set (0.00 sec)

mysql> drop database xyz;
Query OK, 0 rows affected (0.03 sec)

mysql> show database ecommerce;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database ecommerce' at line 1
mysql> show database likr 'ecommerce';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database likr 'ecommerce'' at line 1
mysql> use ecommerce12
Database changed
mysql> create table customer(cust_id VARCHAR(10) primary key, name VARCHAR(30) not null, city VARCHAR(20), pincode INT(6) NOT NULL);
Query OK, 0 rows affected, 1 warning (0.05 sec)

mysql> desc customer;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| cust_id | varchar(10) | NO   | PRI | NULL    |       |
| name    | varchar(30) | NO   |     | NULL    |       |
| city    | varchar(20) | YES  |     | NULL    |       |
| pincode | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

mysql> select * from customer;
Empty set (0.01 sec)

mysql> insert into customer (cust_id,name,city,pincode) values("C101","Jay Jadhav","Vasind", 421302);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values ("C102","Vivek Kathole","Bhiwandi", 421302)
    ->
    -> insert into customer values ("C102","Vivek Kathole","Bhiwandi", 421302)
    -> insert into customer (cust_id,name,city,pincode) values("C101","Jay Jadhav","Vasind", 421302);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'insert into customer values ("C102","Vivek Kathole","Bhiwandi", 421302)
insert i' at line 3
mysql> insert into customer values ("C102","Vivek Kathole","Bhiwandi", 421302)
    -> insert into customer (cust_id,name,city,pincode) values("C101","Jay Jadhav","Vasind", 421302);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'insert into customer (cust_id,name,city,pincode) values("C101","Jay Jadhav","Vas' at line 2
mysql> insert into customer values ("C102","Vivek Kathole","Bhiwandi", 421302);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values ("C103","Furkam Shah","Mumbra",403256),("C104","Mohmad Shah","Kalyan",421301);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+---------+---------------+----------+---------+
| cust_id | name          | city     | pincode |
+---------+---------------+----------+---------+
| C101    | Jay Jadhav    | Vasind   |  421302 |
| C102    | Vivek Kathole | Bhiwandi |  421302 |
| C103    | Furkam Shah   | Mumbra   |  403256 |
| C104    | Mohmad Shah   | Kalyan   |  421301 |
+---------+---------------+----------+---------+
4 rows in set (0.00 sec)

mysql> select name from customer;
+---------------+
| name          |
+---------------+
| Jay Jadhav    |
| Vivek Kathole |
| Furkam Shah   |
| Mohmad Shah   |
+---------------+
4 rows in set (0.00 sec)