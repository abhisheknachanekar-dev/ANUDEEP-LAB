mysql> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| Abhishek           |
| information_schema |
| mysql              |
| performance_schema |
| startersql         |
| sys                |
+--------------------+
6 rows in set (0.001 sec)

mysql> use Abhishek;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+--------------------+
| Tables_in_abhishek |
+--------------------+
| students           |
+--------------------+
1 row in set (0.001 sec)

mysql> create table enrollment(en_id varchar(10) not null,stud_id varchar(10) primary key not null,course_id varchar(10) not null,foreign key(stud_id) references students(stud_id));
Query OK, 0 rows affected (0.010 sec)

mysql> show tables;
+--------------------+
| Tables_in_abhishek |
+--------------------+
| enrollment         |
| students           |
+--------------------+
2 rows in set (0.002 sec)

mysql> desc students;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| stud_id    | varchar(10) | NO   | PRI | NULL    |       |
| first_name | varchar(10) | NO   |     | NULL    |       |
| last_name  | varchar(10) | NO   |     | NULL    |       |
| dob        | date        | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.003 sec)

mysql> insert into students values('S101','Abhishek','Nachanekar','2001-03-29');
Query OK, 1 row affected (0.004 sec)

mysql> insert into students values('S102','Sahil','Nachanekar','2002-04-19'),('S103','Aditya','Jogmare','2005-06-02'),('S104','Ajay','Sing','2000-05-12');
Query OK, 3 rows affected (0.001 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from students;
+---------+------------+------------+------------+
| stud_id | first_name | last_name  | dob        |
+---------+------------+------------+------------+
| S101    | Abhishek   | Nachanekar | 2001-03-29 |
| S102    | Sahil      | Nachanekar | 2002-04-19 |
| S103    | Aditya     | Jogmare    | 2005-06-02 |
| S104    | Ajay       | Sing       | 2000-05-12 |
+---------+------------+------------+------------+
4 rows in set (0.000 sec)

mysql> desc enrollment;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| en_id     | varchar(10) | NO   |     | NULL    |       |
| stud_id   | varchar(10) | NO   | PRI | NULL    |       |
| course_id | varchar(10) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.002 sec)

mysql> insert into enrollment values('E101','S101','WDR101'),('E102','S102','WDR102'),('E103','S103','WDR103');
Query OK, 3 rows affected (0.002 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select *from enrollment
    -> select *from enrollment;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select *from enrollment' at line 2
mysql> select *from enrollment;
+-------+---------+-----------+
| en_id | stud_id | course_id |
+-------+---------+-----------+
| E101  | S101    | WDR101    |
| E102  | S102    | WDR102    |
| E103  | S103    | WDR103    |
+-------+---------+-----------+
3 rows in set (0.000 sec)
mysql> select students.stud_id,students.first_name,students.last_name,enrollment.en_id,enrollment.course_id from students inner join enrollment on students.stud_id=enrollment.stud_id;
+---------+------------+------------+-------+-----------+
| stud_id | first_name | last_name  | en_id | course_id |
+---------+------------+------------+-------+-----------+
| S101    | Abhishek   | Nachanekar | E101  | WDR101    |
| S102    | Sahil      | Nachanekar | E102  | WDR102    |
| S103    | Aditya     | Jogmare    | E103  | WDR103    |
+---------+------------+------------+-------+-----------+
3 rows in set (0.001 sec)

mysql> select students.stud_id,students.first_name,students.last_name,enrollment.en_id,enrollment.course_id from students cross join enrollment on students.stud_id=enrollment.stud_id;
+---------+------------+------------+-------+-----------+
| stud_id | first_name | last_name  | en_id | course_id |
+---------+------------+------------+-------+-----------+
| S101    | Abhishek   | Nachanekar | E101  | WDR101    |
| S102    | Sahil      | Nachanekar | E102  | WDR102    |
| S103    | Aditya     | Jogmare    | E103  | WDR103    |
+---------+------------+------------+-------+-----------+
3 rows in set (0.001 sec)

mysql> select students.stud_id,students.first_name,students.last_name,enrollment.en_id,enrollment.course_id from students left join enrollment on students.stud_id=enrollment.stud_id;
+---------+------------+------------+-------+-----------+
| stud_id | first_name | last_name  | en_id | course_id |
+---------+------------+------------+-------+-----------+
| S101    | Abhishek   | Nachanekar | E101  | WDR101    |
| S102    | Sahil      | Nachanekar | E102  | WDR102    |
| S103    | Aditya     | Jogmare    | E103  | WDR103    |
| S104    | Ajay       | Sing       | NULL  | NULL      |
+---------+------------+------------+-------+-----------+
4 rows in set (0.001 sec)
