Last login: Mon Jan 22 15:37:11 on ttys000
Michelles-MacBook-Pro:~ michellelee$ cd /usr/local/mysql/bin
Michelles-MacBook-Pro:bin michellelee$ ./mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 6
Server version: 5.7.17 MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database denver;
Query OK, 1 row affected (0.01 sec)

mysql> use denver;
Database changed
mysql> create table baker_realestate (id INT, streetnumber INT, streetname TEXT, listprice INT, soldprice INT, listdate DATE, solddate DATE, sqft INT, bedroom INT, bathroom INT, yearbuilt YEAR);
Query OK, 0 rows affected (0.09 sec)

mysql> show tables;
+------------------+
| Tables_in_denver |
+------------------+
| baker_realestate |
+------------------+
1 row in set (0.00 sec)

mysql> describe baker_realestate;
+--------------+---------+------+-----+---------+-------+
| Field        | Type    | Null | Key | Default | Extra |
+--------------+---------+------+-----+---------+-------+
| id           | int(11) | YES  |     | NULL    |       |
| streetnumber | int(11) | YES  |     | NULL    |       |
| streetname   | text    | YES  |     | NULL    |       |
| listprice    | int(11) | YES  |     | NULL    |       |
| soldprice    | int(11) | YES  |     | NULL    |       |
| listdate     | date    | YES  |     | NULL    |       |
| solddate     | date    | YES  |     | NULL    |       |
| sqft         | int(11) | YES  |     | NULL    |       |
| bedroom      | int(11) | YES  |     | NULL    |       |
| bathroom     | int(11) | YES  |     | NULL    |       |
| yearbuilt    | year(4) | YES  |     | NULL    |       |
+--------------+---------+------+-----+---------+-------+
11 rows in set (0.01 sec)

mysql> insert into baker_realestate values ('1', '630', '4th', '289900', '250000', '2017-11-02', '2017-11-30', '983', '2', '1', '1901');
Query OK, 1 row affected (0.00 sec)

mysql> insert into baker_realestate values ('2', '114', 'galapago', '389900', '395000', '2017-11-01', '2017-12-04', '1288', '3', '1', '1910');
Query OK, 1 row affected (0.00 sec)

mysql> insert into baker_realestate values ('3', '722', '2nd', '274000', '270000', '2017-10-25', '2017-11-29', '697', '2', '1', '1901');
Query OK, 1 row affected (0.00 sec)

mysql> insert into baker_realestate values ('4', '604', 'inca', '250000', '220000'
Query OK, 1 row affected (0.00 sec)

mysql> insert into baker_realestate values ('5', '215', 'inca', '325000', '325000', '2017-10-05', '2017-11-20', '1644', '4', '2', '1955');
Query OK, 1 row affected (0.01 sec)

mysql> insert into baker_realestate values ('6', '446', 'delaware', '400000', '400000', '2017-09-15', '2017-11-07', '1422', '4', '2', '1901');
Query OK, 1 row affected (0.00 sec)
 
mysql> insert into baker_realestate values ('7', '519', 'galapago', '415000', '430000', '2017-09-15', '2017-11-21', '1175', '3', '2', '1901');
Query OK, 1 row affected (0.01 sec)

mysql> insert into baker_realestate values ('8', '147', '1st', '615000', '629000', '2017-09-14', '2017-11-22', '2312', '4', '3', '1901');
Query OK, 1 row affected (0.01 sec)

mysql> insert into baker_realestate values ('9', '409', 'inca', '550000', '549900', '2017-07-10', '2017-08-25', '1677', '3', '3', '1901');
Query OK, 1 row affected (0.00 sec)

mysql> insert into baker_realestate values ('10', '346', 'galapago', '425000', '412000', '2017-10-12', '2017-12-29', '836', '2', '2', '1901');
Query OK, 1 row affected (0.00 sec)

mysql> insert into baker_realestate values ('11', '341', 'fox', '423000', '450000', '2017-02-18', '2017-03-21', '1301', '3', '2', '1910');
Query OK, 1 row affected (0.00 sec)

mysql> insert into baker_realestate values ('12', '43', 'elati', '580500', '570000', '2017-04-10', '2017-05-19', '1575', '3', '2', '1901');
Query OK, 1 row affected (0.03 sec)

mysql> insert into baker_realestate values ('13', '311', 'inca', '450000', '448000', '2016-06-26', '2017-08-23', '1075', '3', '2', '1901');
Query OK, 1 row affected (0.00 sec)

mysql> insert into baker_realestate values ('14', '261', 'inca', '399000', '363000', '2016-06-21', '2017-09-15', '723', '2', '1', '1959');
Query OK, 1 row affected (0.00 sec)

mysql> select * from baker_realestate;
+------+--------------+------------+-----------+-----------+------------+------------+------+---------+----------+-----------+
| id   | streetnumber | streetname | listprice | soldprice | listdate   | solddate   | sqft | bedroom | bathroom | yearbuilt |
+------+--------------+------------+-----------+-----------+------------+------------+------+---------+----------+-----------+
|    1 |          630 | 4th        |    289900 |    250000 | 2017-11-02 | 2017-11-30 |  983 |       2 |        1 |      1901 |
|    2 |          114 | galapago   |    389900 |    395000 | 2017-11-01 | 2017-12-04 | 1288 |       3 |        1 |      1910 |
|    3 |          722 | 2nd        |    274000 |    270000 | 2017-10-25 | 2017-11-29 |  697 |       2 |        1 |      1901 |
|    4 |          604 | inca       |    250000 |    220000 | 2017-10-12 | 2017-11-16 |  887 |       2 |        1 |      1901 |
|    5 |          215 | inca       |    325000 |    325000 | 2017-10-05 | 2017-11-20 | 1644 |       4 |        2 |      1955 |
|    6 |          446 | delaware   |    400000 |    400000 | 2017-09-15 | 2017-11-07 | 1422 |       4 |        2 |      1901 |
|    7 |          519 | galapago   |    415000 |    430000 | 2017-09-15 | 2017-11-21 | 1175 |       3 |        2 |      1901 |
|    8 |          147 | 1st        |    615000 |    629000 | 2017-09-14 | 2017-11-22 | 2312 |       4 |        3 |      1901 |
|    9 |          409 | inca       |    550000 |    549900 | 2017-07-10 | 2017-08-25 | 1677 |       3 |        3 |      1901 |
|   10 |          346 | galapago   |    425000 |    412000 | 2017-10-12 | 2017-12-29 |  836 |       2 |        2 |      1901 |
|   11 |          341 | fox        |    423000 |    450000 | 2017-02-18 | 2017-03-21 | 1301 |       3 |        2 |      1910 |
|   12 |           43 | elati      |    580500 |    570000 | 2017-04-10 | 2017-05-19 | 1575 |       3 |        2 |      1901 |
|   13 |          311 | inca       |    450000 |    448000 | 2016-06-26 | 2017-08-23 | 1075 |       3 |        2 |      1901 |
|   14 |          261 | inca       |    399000 |    363000 | 2016-06-21 | 2017-09-15 |  723 |       2 |        1 |      1959 |
+------+--------------+------------+-----------+-----------+------------+------------+------+---------+----------+-----------+
14 rows in set (0.00 sec)
                                            
