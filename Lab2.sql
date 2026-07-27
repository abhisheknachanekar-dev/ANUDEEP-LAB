Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use bank;
Database changed
mysql> create table BankAccount(account_id int(10)primary key,account_holder_name VARCHAR(30),account_balance int(10));
Query OK, 0 rows affected, 2 warnings (0.04 sec)
mysql> insert into BankAccount values(101,"Abhishek",15000),(102,"Sahil",25000),(103,"Sheha",40000),(104,"Sakshi",50000);
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select account_holder_name,account_balance from BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Abhishek            |           15000 |
| Sahil               |           25000 |
| Sheha               |           40000 |
| Sakshi              |           50000 |
+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql> select account_holder_name,account_balance from BankAccount where account_balance>30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Sheha               |           40000 |
| Sakshi              |           50000 |
+---------------------+-----------------+
2 rows in set (0.00 sec)

mysql> update BankAccount set account_balance=40000 where account_id=101;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Abhishek            |           40000 |
|        102 | Sahil               |           25000 |
|        103 | Sheha               |           40000 |
|        104 | Sakshi              |           50000 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql>