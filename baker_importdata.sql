Last login: Tue Jan 23 12:41:37 on ttys000
Michelles-MacBook-Pro:~ michellelee$ cd /usr/local/mysql/bin
Michelles-MacBook-Pro:bin michellelee$ ./mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 23
Server version: 5.7.17 MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use denver;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+------------------+
| Tables_in_denver |
+------------------+
| baker_realestate |
+------------------+
1 row in set (0.00 sec)

mysql> create table baker_realestate (id INT, streetnumber INT, streetname TEXT, listprice INT, soldprice INT, listdate DATE, solddate DATE, sqft INT, bedroom INT, bathroom INT, yearbuilt YEAR);
ERROR 1050 (42S01): Table 'baker_realestate' already exists
mysql> create table baker_realestate2 (id INT, streetnumber INT, streetname TEXT, listprice INT, soldprice INT, listdate DATE, solddate DATE, sqft INT, bedroom INT, bathroom INT, yearbuilt YEAR);
Query OK, 0 rows affected (0.45 sec)

mysql> load data local infile '/Users/michellelee/Desktop/development/baker_realestate2.csv' INTO TABLE baker_realestate2;
Query OK, 1 row affected, 11 warnings (0.18 sec)
Records: 1  Deleted: 0  Skipped: 0  Warnings: 11

mysql> describe baker_realestate2;
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
11 rows in set (0.07 sec)

mysql> select * from baker_realestate2;
+---------+--------------+------------+-----------+-----------+----------+----------+------+---------+----------+-----------+
| id      | streetnumber | streetname | listprice | soldprice | listdate | solddate | sqft | bedroom | bathroom | yearbuilt |
+---------+--------------+------------+-----------+-----------+----------+----------+------+---------+----------+-----------+
| 1904999 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
+---------+--------------+------------+-----------+-----------+----------+----------+------+---------+----------+-----------+
1 row in set (0.02 sec)

mysql> load data local infile '/Users/michellelee/Desktop/development/baker_realestate2.csv' INTO TABLE baker_realestate2
    -> LINES TERMINATED BY '\r';
Query OK, 90 rows affected, 990 warnings (0.03 sec)
Records: 90  Deleted: 0  Skipped: 0  Warnings: 990

mysql> select * from baker_realestate2;                                         +---------+--------------+------------+-----------+-----------+----------+----------+------+---------+----------+-----------+
| id      | streetnumber | streetname | listprice | soldprice | listdate | solddate | sqft | bedroom | bathroom | yearbuilt |
+---------+--------------+------------+-----------+-----------+----------+----------+------+---------+----------+-----------+
| 1904999 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 1904999 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8825883 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2078756 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9463291 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 4901616 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 3246219 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9459359 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 1705344 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 4701434 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8891762 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1000 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7113838 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8438062 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9892773 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7866680 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 6269020 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7636137 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7613132 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8573095 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9720494 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1001 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1002 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7040875 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1003 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 5304893 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1004 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 5976985 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 1620939 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8371496 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2238155 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9876608 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 6546655 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1005 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7999115 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 4841944 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9748461 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2460709 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9245155 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7636093 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1006 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 5230354 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 3316706 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 5561750 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8995663 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|  779751 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8794279 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1007 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7928290 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 6696594 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 4930953 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7503025 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8461257 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 6451943 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|  824574 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2381743 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 5300901 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9890023 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 3317276 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2141878 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 6851738 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 3712328 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1008 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1009 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7359216 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7610675 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1010 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7327439 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 3885828 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2793484 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7303168 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1011 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1012 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1013 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 1120590 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1014 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7335124 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9420304 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7598840 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7683882 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1015 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1016 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 4529122 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2715992 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7992317 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 4200662 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1017 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9139928 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 6405513 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1018 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2963558 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
+---------+--------------+------------+-----------+-----------+----------+----------+------+---------+----------+-----------+
91 rows in set (0.00 sec)

mysql> load data local infile '/Users/michellelee/Desktop/development/baker_realestate2.csv' INTO TABLE baker_realestate2 LINES TERMINATED BY '\r'(id, streetnumber, streetname, listprice, soldprice, listdate, solddate, sqft, bedroom, bathroom, yearbuilt)
    -> SET
    -> one = nullif(id, ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 3
mysql> load data local infile '/Users/michellelee/Desktop/development/baker_realestate2.csv' INTO TABLE baker_realestate2 LINES TERMINATED BY '\r'(id, streetnumber, streetname, listprice, soldprice, listdate, solddate, sqft, bedroom, bathroom, yearbuilt);
Query OK, 90 rows affected, 990 warnings (0.11 sec)
Records: 90  Deleted: 0  Skipped: 0  Warnings: 990

mysql> select * from baker_realestate2;                                                                                                            +---------+--------------+------------+-----------+-----------+----------+----------+------+---------+----------+-----------+
| id      | streetnumber | streetname | listprice | soldprice | listdate | solddate | sqft | bedroom | bathroom | yearbuilt |
+---------+--------------+------------+-----------+-----------+----------+----------+------+---------+----------+-----------+
| 1904999 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 1904999 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8825883 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2078756 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9463291 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 4901616 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 3246219 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9459359 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 1705344 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 4701434 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8891762 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1000 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7113838 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8438062 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9892773 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7866680 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 6269020 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7636137 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7613132 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8573095 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9720494 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1001 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1002 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7040875 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1003 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 5304893 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1004 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 5976985 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 1620939 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8371496 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2238155 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9876608 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 6546655 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1005 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7999115 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 4841944 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9748461 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2460709 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9245155 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7636093 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1006 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 5230354 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 3316706 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 5561750 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8995663 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|  779751 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8794279 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1007 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7928290 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 6696594 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 4930953 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7503025 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8461257 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 6451943 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|  824574 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2381743 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 5300901 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9890023 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 3317276 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2141878 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 6851738 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 3712328 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1008 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1009 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7359216 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7610675 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1010 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7327439 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 3885828 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2793484 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7303168 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1011 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1012 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1013 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 1120590 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1014 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7335124 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9420304 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7598840 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7683882 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1015 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1016 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 4529122 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2715992 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7992317 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 4200662 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1017 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9139928 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 6405513 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1018 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2963558 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 1904999 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8825883 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2078756 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9463291 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 4901616 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 3246219 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9459359 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 1705344 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 4701434 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8891762 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1000 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7113838 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8438062 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9892773 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7866680 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 6269020 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7636137 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7613132 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8573095 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9720494 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1001 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1002 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7040875 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1003 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 5304893 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1004 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 5976985 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 1620939 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8371496 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2238155 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9876608 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 6546655 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1005 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7999115 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 4841944 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9748461 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2460709 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9245155 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7636093 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1006 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 5230354 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 3316706 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 5561750 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8995663 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|  779751 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8794279 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1007 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7928290 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 6696594 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 4930953 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7503025 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 8461257 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 6451943 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|  824574 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2381743 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 5300901 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9890023 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 3317276 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2141878 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 6851738 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 3712328 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1008 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1009 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7359216 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7610675 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1010 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7327439 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 3885828 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2793484 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7303168 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1011 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1012 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1013 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 1120590 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1014 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7335124 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9420304 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7598840 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7683882 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1015 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1016 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 4529122 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2715992 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 7992317 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 4200662 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1017 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 9139928 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 6405513 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
|    1018 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
| 2963558 |         NULL | NULL       |      NULL |      NULL | NULL     | NULL     | NULL |    NULL |     NULL |      NULL |
+---------+--------------+------------+-----------+-----------+----------+----------+------+---------+----------+-----------+
181 rows in set (0.05 sec)

mysql> drop table baker_realestate2;
Query OK, 0 rows affected (0.24 sec)

mysql> show tables
    -> ;
+------------------+
| Tables_in_denver |
+------------------+
| baker_realestate |
+------------------+
1 row in set (0.05 sec)

mysql> create table baker_realestate2 (id INT, streetnumber INT, streetname TEXT, listprice INT, soldprice INT, listdate DATE, solddate DATE, sqft INT, bedroom INT, bathroom INT, yearbuilt YEAR);
Query OK, 0 rows affected (0.25 sec)

mysql> LOAD DATA LOCAL INFILE '/Users/michellelee/Desktop/development/baker_realestate2.csv'
    -> INTO TABLE baker_realestate2
    -> FIELDS TERMINATED BY ','
    -> ENCLOSED BY '"'
    -> LINES TERMINATED BY '\N';
Query OK, 1 row affected, 2 warnings (0.04 sec)
Records: 1  Deleted: 0  Skipped: 0  Warnings: 2

mysql> select * from baker_realestate2;                                                                                                            +---------+--------------+------------+-----------+-----------+------------+------------+------+---------+----------+-----------+
| id      | streetnumber | streetname | listprice | soldprice | listdate   | solddate   | sqft | bedroom | bathroom | yearbuilt |
+---------+--------------+------------+-----------+-----------+------------+------------+------+---------+----------+-----------+
| 1904999 |           43 | elati      |    580500 |    570000 | 0004-10-17 | 0000-00-00 | 1575 |       3 |        2 |      1901 |
+---------+--------------+------------+-----------+-----------+------------+------------+------+---------+----------+-----------+
1 row in set (0.00 sec)

mysql> LOAD DATA LOCAL INFILE '/Users/michellelee/Desktop/development/baker_realestate2.csv'                                                           -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> drop table baker_realestate2;                                                                                                               Query OK, 0 rows affected (0.20 sec)

mysql> create table baker_realestate2 (id INT, streetnumber INT, streetname TEXT, listprice INT, soldprice INT, listdate DATE, solddate DATE, sqft INT, bedroom INT, bathroom INT, yearbuilt YEAR);
Query OK, 0 rows affected (0.11 sec)

mysql> LOAD DATA LOCAL INFILE '/Users/michellelee/Desktop/development/baker_realestate2.csv' INTO TABLE baker_realestate2 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r';
Query OK, 90 rows affected, 107 warnings (0.01 sec)
Records: 90  Deleted: 0  Skipped: 0  Warnings: 107

mysql> select * from baker_realestate2;
+---------+--------------+------------+-----------+-----------+------------+------------+------+---------+----------+-----------+
| id      | streetnumber | streetname | listprice | soldprice | listdate   | solddate   | sqft | bedroom | bathroom | yearbuilt |
+---------+--------------+------------+-----------+-----------+------------+------------+------+---------+----------+-----------+
| 1904999 |           43 | elati      |    580500 |    570000 | 0004-10-17 | 0000-00-00 | 1575 |       3 |        2 |      1901 |
| 8825883 |          114 | galapago   |    389900 |    395000 | 2011-01-17 | 2012-04-17 | 1288 |       3 |        1 |      1910 |
| 2078756 |          147 | 1st        |    615000 |    629000 | 0000-00-00 | 0000-00-00 | 2312 |       4 |        3 |      1901 |
| 9463291 |          188 | byers      |    575000 |    561000 | 0000-00-00 | 0000-00-00 | 1845 |       4 |        2 |      1901 |
| 4901616 |          215 | inca       |    325000 |    325000 | 2010-05-17 | 0000-00-00 | 1644 |       4 |        2 |      1955 |
| 3246219 |          229 | inca       |    450000 |    415000 | 0000-00-00 | 0000-00-00 | 1464 |       3 |        2 |      1901 |
| 9459359 |          239 | fox        |    230000 |    240000 | 0000-00-00 | 0000-00-00 |  696 |       1 |        1 |      1901 |
| 1705344 |          243 | inca       |    325000 |    325000 | 0000-00-00 | 2010-02-17 |  778 |       2 |        1 |      1901 |
| 4701434 |          261 | inca       |    399000 |    363000 | 0000-00-00 | 0000-00-00 |  723 |       2 |        1 |      1959 |
| 8891762 |          275 | delaware   |    475000 |    451000 | 0000-00-00 | 0000-00-00 | 1205 |       3 |        2 |      1901 |
|    1000 |          295 | bannock    |      NULL |    750000 | NULL       | 0000-00-00 | 1345 |       2 |        2 |      1924 |
| 7113838 |          311 | inca       |    450000 |    448000 | 0000-00-00 | 0000-00-00 | 1075 |       3 |        2 |      1901 |
| 8438062 |          321 | galapago   |      NULL |    310000 | NULL       | 0007-03-17 |  690 |       1 |        1 |      1910 |
| 9892773 |          334 | fox        |    624900 |    608000 | 0000-00-00 | 0000-00-00 | 1859 |       3 |        3 |      2007 |
| 7866680 |          341 | fox        |    423000 |    450000 | 0000-00-00 | 0000-00-00 | 1301 |       3 |        2 |      1910 |
| 6269020 |          346 | galapago   |    425000 |    412000 | 2010-12-17 | 0000-00-00 |  836 |       2 |        2 |      1901 |
| 7636137 |          367 | cherokee   |    370000 |    385000 | 0000-00-00 | 0000-00-00 |  835 |       2 |        1 |      1901 |
| 7613132 |          409 | inca       |    550000 |    549900 | 0007-10-17 | 0000-00-00 | 1677 |       3 |        3 |      1901 |
| 8573095 |          424 | fox        |    300000 |    311000 | 0000-00-00 | 0008-08-17 | 1105 |       2 |        1 |      1902 |
| 9720494 |          436 | delaware   |    420000 |    440000 | 0000-00-00 | 0000-00-00 | 1250 |       2 |        1 |      1905 |
|    1001 |          436 | elati      |    500000 |    515000 | 0007-06-17 | 0000-00-00 | 1464 |       2 |        2 |      1901 |
|    1002 |          444 | elati      |      NULL |    334260 | NULL       | 0000-00-00 | 1087 |       3 |        1 |      1901 |
| 7040875 |          446 | delaware   |    400000 |    400000 | 0000-00-00 | 2011-07-17 | 1422 |       4 |        2 |      1901 |
|    1003 |          449 | galapago   |    565000 |    520000 | 0003-12-16 | 0000-00-00 | 2087 |       3 |        3 |      1901 |
| 5304893 |          453 | delaware   |    525000 |    507500 | 0000-00-00 | 2010-03-17 | 1558 |       3 |        2 |      1901 |
|    1004 |          462 | elati      |    399900 |    342000 | 0000-00-00 | 0000-00-00 | 1144 |       3 |        2 |      1901 |
| 5976985 |          466 | galapago   |    400000 |    450000 | 0000-00-00 | 0000-00-00 | 1166 |       2 |        1 |      1901 |
| 1620939 |          469 | delaware   |    650000 |    745000 | 0000-00-00 | 0000-00-00 | 1300 |       3 |        2 |      1901 |
| 8371496 |          500 | cherokee   |    295000 |    295000 | 0005-05-17 | 0007-05-17 |  690 |       1 |        1 |      1901 |
| 2238155 |          519 | galapago   |    415000 |    430000 | 0000-00-00 | 0000-00-00 | 1175 |       3 |        2 |      1901 |
| 9876608 |          534 | inca       |    599000 |    569900 | 0000-00-00 | 0000-00-00 | 3044 |       3 |        3 |      1914 |
| 6546655 |          534 | delaware   |    530000 |    541700 | 0000-00-00 | 0000-00-00 | 1678 |       4 |        2 |      1901 |
|    1005 |          547 | galapago   |    549000 |    575000 | 0000-00-00 | 0000-00-00 | 2067 |       3 |        3 |      1901 |
| 7999115 |          604 | inca       |    250000 |    220000 | 2010-12-17 | 0000-00-00 |  887 |       2 |        1 |      1901 |
| 4841944 |          630 | 4th        |    289900 |    250000 | 2011-02-17 | 0000-00-00 |  983 |       2 |        1 |      1901 |
| 9748461 |          722 | 2nd        |    274000 |    270000 | 0000-00-00 | 0000-00-00 |  697 |       2 |        1 |      1901 |
| 2460709 |          811 | 4th        |    400000 |    377500 | 0005-12-17 | 0000-00-00 | 1488 |       3 |        2 |      2001 |
| 9245155 |          369 | cherokee   |    340000 |    355000 | 0000-00-00 | 0006-09-17 |  835 |       2 |        1 |      1901 |
| 7636093 |          317 | delaware   |    300000 |    347000 | 0000-00-00 | 0006-06-17 | 1104 |       0 |        1 |      1901 |
|    1006 |          523 | 3rd        |      NULL |    385000 | NULL       | 0000-00-00 |  900 |       2 |        1 |      1924 |
| 5230354 |          241 | inca       |    410000 |    417000 | 0000-00-00 | 0000-00-00 |  942 |       2 |        1 |      1901 |
| 3316706 |          232 | galapago   |      NULL |    245000 | NULL       | 0003-01-17 |  600 |       2 |        1 |      1901 |
| 5561750 |          331 | cherokee   |    425000 |    425000 | 0000-00-00 | 0000-00-00 | 1885 |       2 |        3 |      1901 |
| 8995663 |          512 | cherokee   |    250000 |    240000 | 0000-00-00 | 0001-09-17 |  687 |       1 |        1 |      1901 |
|  779751 |          435 | cherokee   |    445000 |    450000 | 0000-00-00 | 0000-00-00 | 1366 |       3 |        2 |      1902 |
| 8794279 |          311 | elati      |      NULL |    260000 | NULL       | 2012-12-16 |  689 |       1 |        1 |      1901 |
|    1007 |          355 | galapago   |      NULL |    512000 | NULL       | 2012-01-16 | 1742 |       3 |        3 |      2015 |
| 7928290 |          447 | cherokee   |    337000 |    340000 | 0000-00-00 | 0000-00-00 |  777 |       2 |        1 |      1902 |
| 6696594 |          237 | 3rd        |    498000 |    470500 | 0000-00-00 | 0000-00-00 | 1998 |       3 |        2 |      1901 |
| 4930953 |          421 | cherokee   |    549900 |    530000 | 0009-07-16 | 2011-10-16 | 2172 |       2 |        2 |      1906 |
| 7503025 |          418 | fox        |    315000 |    300000 | 0009-05-16 | 0000-00-00 |  730 |       2 |        1 |      1901 |
| 8461257 |          257 | delaware   |      NULL |    487500 | NULL       | 0000-00-00 | 1842 |       3 |        2 |      1901 |
| 6451943 |          310 | delaware   |      NULL |    417000 | NULL       | 0000-00-00 | 1271 |       3 |        3 |      1901 |
|  824574 |          322 | inca       |      NULL |    424000 | NULL       | 2010-05-16 | 1206 |       3 |        2 |      1901 |
| 2381743 |          347 | galapago   |    393000 |    375000 | 0008-05-16 | 0000-00-00 | 1001 |       2 |        1 |      1901 |
| 5300901 |          728 | 5th        |    255000 |    255000 | 0000-00-00 | 0009-06-16 |  658 |       2 |        1 |      1901 |
| 9890023 |          549 | galapago   |    546000 |    548000 | 0007-07-16 | 0008-02-16 | 1877 |       3 |        3 |      1901 |
| 3317276 |          529 | cherokee   |    350000 |    350000 | 0000-00-00 | 0000-00-00 |  900 |       2 |        2 |      1915 |
| 2141878 |          415 | 3rd        |    450000 |    443500 | 0000-00-00 | 0000-00-00 | 1667 |       3 |        2 |      1901 |
| 6851738 |          440 | elati      |    480000 |    480000 | 0006-02-16 | 0007-12-16 | 1344 |       3 |        2 |      1901 |
| 3712328 |          353 | cherokee   |    400000 |    435000 | 0006-02-16 | 0007-08-16 | 1340 |       3 |        2 |      1901 |
|    1008 |          256 | galapago   |    445000 |    400000 | 0005-12-16 | 0007-06-16 | 1700 |       4 |        2 |      1923 |
|    1009 |          342 | galapago   |      NULL |    460000 | NULL       | 0000-00-00 |  672 |       2 |        2 |      1901 |
| 7359216 |          201 | 4th        |    525000 |    560000 | 0005-05-16 | 0000-00-00 | 2216 |       3 |        2 |      1921 |
| 7610675 |          335 | bannock    |    489000 |    525000 | 0000-00-00 | 0006-02-16 | 1473 |       2 |        3 |      1904 |
|    1010 |          234 | galapago   |      NULL |    239500 | NULL       | 0006-01-16 |  600 |       2 |        1 |      1901 |
| 7327439 |          404 | fox        |    375000 |    392000 | 0000-00-00 | 0000-00-00 | 1100 |       3 |        1 |      1901 |
| 3885828 |          309 | cherokee   |    495000 |    516000 | 0000-00-00 | 0000-00-00 | 1235 |       2 |        2 |      1954 |
| 2793484 |          226 | 3rd        |    420000 |    471000 | 0000-00-00 | 0005-09-16 | 1547 |       2 |        2 |      1901 |
| 7303168 |          430 | cherokee   |      NULL |    340000 | NULL       | 0000-00-00 |  800 |       1 |        1 |      1901 |
|    1011 |          305 | fox        |      NULL |    217000 | NULL       | 0004-08-16 |  610 |       2 |        1 |      1901 |
|    1012 |          508 | cherokee   |      NULL |    230000 | NULL       | 0000-00-00 |  700 |       1 |        1 |      1901 |
|    1013 |          344 | delaware   |    380000 |    395000 | 0000-00-00 | 0000-00-00 | 1443 |       3 |        2 |      1901 |
| 1120590 |          450 | fox        |      NULL |    394000 | NULL       | 0000-00-00 | 1725 |       3 |        2 |      1901 |
|    1014 |          448 | inca       |      NULL |    217500 | NULL       | 0002-11-16 | 1165 |       2 |        1 |      1901 |
| 7335124 |          547 | fox        |    415000 |    430000 | 0000-00-00 | 0002-01-16 | 1592 |       3 |        2 |      1901 |
| 9420304 |          263 | cherokee   |    450000 |    456500 | 2012-05-15 | 0000-00-00 | 1851 |       3 |        2 |      1901 |
| 7598840 |          611 | 4th        |    399000 |    385000 | 2010-06-15 | 0000-00-00 | 1656 |       3 |        2 |      1999 |
| 7683882 |          310 | fox        |    349000 |    305000 | 0000-00-00 | 0001-08-16 |  900 |       2 |        1 |      1901 |
|    1015 |          443 | galapago   |    439000 |    425000 | 0000-00-00 | 0000-00-00 | 1444 |       2 |        3 |      2015 |
|    1016 |          338 | inca       |      NULL |    200000 | NULL       | 2012-10-15 |  509 |       1 |        1 |      1905 |
| 4529122 |          351 | bannock    |    525000 |    525000 | 0000-00-00 | 0000-00-00 | 1916 |       3 |        3 |      1901 |
| 2715992 |          425 | galapago   |    475000 |    470000 | 0000-00-00 | 2011-03-15 |  831 |       2 |        1 |      1901 |
| 7992317 |          272 | inca       |    420000 |    402500 | 0000-00-00 | 0000-00-00 | 1340 |       3 |        2 |      1901 |
| 4200662 |          433 | fox        |    440000 |    455000 | 0000-00-00 | 0000-00-00 | 1602 |       3 |        2 |      1901 |
|    1017 |          339 | delaware   |      NULL |    200000 | NULL       | 0000-00-00 |  969 |       1 |        1 |      1901 |
| 9139928 |          229 | cherokee   |    268500 |    292500 | 0007-10-15 | 0008-10-15 |  782 |       2 |        1 |      1903 |
| 6405513 |          722 | 5th        |    210000 |    230000 | 0006-04-15 | 0000-00-00 |  645 |       2 |        1 |      1901 |
|    1018 |          516 | cherokee   |    220000 |    258500 | 0000-00-00 | 0000-00-00 |  700 |       1 |        1 |      1901 |
| 2963558 |          504 | cherokee   |    275000 |    250000 | 0005-01-15 | 0000-00-00 |  687 |       1 |        1 |      1901 |
+---------+--------------+------------+-----------+-----------+------------+------------+------+---------+----------+-----------+
90 rows in set (0.01 sec)

mysql> LOAD DATA LOCAL INFILE '/Users/michellelee/Desktop/development/baker_realestate2.csv' INTO TABLE baker_realestate2 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r';
Query OK, 90 rows affected (0.00 sec)
Records: 90  Deleted: 0  Skipped: 0  Warnings: 0

mysql> select * from baker_realestate2;                                                                                               +---------+--------------+------------+-----------+-----------+------------+------------+------+---------+----------+-----------+
| id      | streetnumber | streetname | listprice | soldprice | listdate   | solddate   | sqft | bedroom | bathroom | yearbuilt |
+---------+--------------+------------+-----------+-----------+------------+------------+------+---------+----------+-----------+
| 1904999 |           43 | elati      |    580500 |    570000 | 0004-10-17 | 0000-00-00 | 1575 |       3 |        2 |      1901 |
| 8825883 |          114 | galapago   |    389900 |    395000 | 2011-01-17 | 2012-04-17 | 1288 |       3 |        1 |      1910 |
| 2078756 |          147 | 1st        |    615000 |    629000 | 0000-00-00 | 0000-00-00 | 2312 |       4 |        3 |      1901 |
| 9463291 |          188 | byers      |    575000 |    561000 | 0000-00-00 | 0000-00-00 | 1845 |       4 |        2 |      1901 |
| 4901616 |          215 | inca       |    325000 |    325000 | 2010-05-17 | 0000-00-00 | 1644 |       4 |        2 |      1955 |
| 3246219 |          229 | inca       |    450000 |    415000 | 0000-00-00 | 0000-00-00 | 1464 |       3 |        2 |      1901 |
| 9459359 |          239 | fox        |    230000 |    240000 | 0000-00-00 | 0000-00-00 |  696 |       1 |        1 |      1901 |
| 1705344 |          243 | inca       |    325000 |    325000 | 0000-00-00 | 2010-02-17 |  778 |       2 |        1 |      1901 |
| 4701434 |          261 | inca       |    399000 |    363000 | 0000-00-00 | 0000-00-00 |  723 |       2 |        1 |      1959 |
| 8891762 |          275 | delaware   |    475000 |    451000 | 0000-00-00 | 0000-00-00 | 1205 |       3 |        2 |      1901 |
|    1000 |          295 | bannock    |      NULL |    750000 | NULL       | 0000-00-00 | 1345 |       2 |        2 |      1924 |
| 7113838 |          311 | inca       |    450000 |    448000 | 0000-00-00 | 0000-00-00 | 1075 |       3 |        2 |      1901 |
| 8438062 |          321 | galapago   |      NULL |    310000 | NULL       | 0007-03-17 |  690 |       1 |        1 |      1910 |
| 9892773 |          334 | fox        |    624900 |    608000 | 0000-00-00 | 0000-00-00 | 1859 |       3 |        3 |      2007 |
| 7866680 |          341 | fox        |    423000 |    450000 | 0000-00-00 | 0000-00-00 | 1301 |       3 |        2 |      1910 |
| 6269020 |          346 | galapago   |    425000 |    412000 | 2010-12-17 | 0000-00-00 |  836 |       2 |        2 |      1901 |
| 7636137 |          367 | cherokee   |    370000 |    385000 | 0000-00-00 | 0000-00-00 |  835 |       2 |        1 |      1901 |
| 7613132 |          409 | inca       |    550000 |    549900 | 0007-10-17 | 0000-00-00 | 1677 |       3 |        3 |      1901 |
| 8573095 |          424 | fox        |    300000 |    311000 | 0000-00-00 | 0008-08-17 | 1105 |       2 |        1 |      1902 |
| 9720494 |          436 | delaware   |    420000 |    440000 | 0000-00-00 | 0000-00-00 | 1250 |       2 |        1 |      1905 |
|    1001 |          436 | elati      |    500000 |    515000 | 0007-06-17 | 0000-00-00 | 1464 |       2 |        2 |      1901 |
|    1002 |          444 | elati      |      NULL |    334260 | NULL       | 0000-00-00 | 1087 |       3 |        1 |      1901 |
| 7040875 |          446 | delaware   |    400000 |    400000 | 0000-00-00 | 2011-07-17 | 1422 |       4 |        2 |      1901 |
|    1003 |          449 | galapago   |    565000 |    520000 | 0003-12-16 | 0000-00-00 | 2087 |       3 |        3 |      1901 |
| 5304893 |          453 | delaware   |    525000 |    507500 | 0000-00-00 | 2010-03-17 | 1558 |       3 |        2 |      1901 |
|    1004 |          462 | elati      |    399900 |    342000 | 0000-00-00 | 0000-00-00 | 1144 |       3 |        2 |      1901 |
| 5976985 |          466 | galapago   |    400000 |    450000 | 0000-00-00 | 0000-00-00 | 1166 |       2 |        1 |      1901 |
| 1620939 |          469 | delaware   |    650000 |    745000 | 0000-00-00 | 0000-00-00 | 1300 |       3 |        2 |      1901 |
| 8371496 |          500 | cherokee   |    295000 |    295000 | 0005-05-17 | 0007-05-17 |  690 |       1 |        1 |      1901 |
| 2238155 |          519 | galapago   |    415000 |    430000 | 0000-00-00 | 0000-00-00 | 1175 |       3 |        2 |      1901 |
| 9876608 |          534 | inca       |    599000 |    569900 | 0000-00-00 | 0000-00-00 | 3044 |       3 |        3 |      1914 |
| 6546655 |          534 | delaware   |    530000 |    541700 | 0000-00-00 | 0000-00-00 | 1678 |       4 |        2 |      1901 |
|    1005 |          547 | galapago   |    549000 |    575000 | 0000-00-00 | 0000-00-00 | 2067 |       3 |        3 |      1901 |
| 7999115 |          604 | inca       |    250000 |    220000 | 2010-12-17 | 0000-00-00 |  887 |       2 |        1 |      1901 |
| 4841944 |          630 | 4th        |    289900 |    250000 | 2011-02-17 | 0000-00-00 |  983 |       2 |        1 |      1901 |
| 9748461 |          722 | 2nd        |    274000 |    270000 | 0000-00-00 | 0000-00-00 |  697 |       2 |        1 |      1901 |
| 2460709 |          811 | 4th        |    400000 |    377500 | 0005-12-17 | 0000-00-00 | 1488 |       3 |        2 |      2001 |
| 9245155 |          369 | cherokee   |    340000 |    355000 | 0000-00-00 | 0006-09-17 |  835 |       2 |        1 |      1901 |
| 7636093 |          317 | delaware   |    300000 |    347000 | 0000-00-00 | 0006-06-17 | 1104 |       0 |        1 |      1901 |
|    1006 |          523 | 3rd        |      NULL |    385000 | NULL       | 0000-00-00 |  900 |       2 |        1 |      1924 |
| 5230354 |          241 | inca       |    410000 |    417000 | 0000-00-00 | 0000-00-00 |  942 |       2 |        1 |      1901 |
| 3316706 |          232 | galapago   |      NULL |    245000 | NULL       | 0003-01-17 |  600 |       2 |        1 |      1901 |
| 5561750 |          331 | cherokee   |    425000 |    425000 | 0000-00-00 | 0000-00-00 | 1885 |       2 |        3 |      1901 |
| 8995663 |          512 | cherokee   |    250000 |    240000 | 0000-00-00 | 0001-09-17 |  687 |       1 |        1 |      1901 |
|  779751 |          435 | cherokee   |    445000 |    450000 | 0000-00-00 | 0000-00-00 | 1366 |       3 |        2 |      1902 |
| 8794279 |          311 | elati      |      NULL |    260000 | NULL       | 2012-12-16 |  689 |       1 |        1 |      1901 |
|    1007 |          355 | galapago   |      NULL |    512000 | NULL       | 2012-01-16 | 1742 |       3 |        3 |      2015 |
| 7928290 |          447 | cherokee   |    337000 |    340000 | 0000-00-00 | 0000-00-00 |  777 |       2 |        1 |      1902 |
| 6696594 |          237 | 3rd        |    498000 |    470500 | 0000-00-00 | 0000-00-00 | 1998 |       3 |        2 |      1901 |
| 4930953 |          421 | cherokee   |    549900 |    530000 | 0009-07-16 | 2011-10-16 | 2172 |       2 |        2 |      1906 |
| 7503025 |          418 | fox        |    315000 |    300000 | 0009-05-16 | 0000-00-00 |  730 |       2 |        1 |      1901 |
| 8461257 |          257 | delaware   |      NULL |    487500 | NULL       | 0000-00-00 | 1842 |       3 |        2 |      1901 |
| 6451943 |          310 | delaware   |      NULL |    417000 | NULL       | 0000-00-00 | 1271 |       3 |        3 |      1901 |
|  824574 |          322 | inca       |      NULL |    424000 | NULL       | 2010-05-16 | 1206 |       3 |        2 |      1901 |
| 2381743 |          347 | galapago   |    393000 |    375000 | 0008-05-16 | 0000-00-00 | 1001 |       2 |        1 |      1901 |
| 5300901 |          728 | 5th        |    255000 |    255000 | 0000-00-00 | 0009-06-16 |  658 |       2 |        1 |      1901 |
| 9890023 |          549 | galapago   |    546000 |    548000 | 0007-07-16 | 0008-02-16 | 1877 |       3 |        3 |      1901 |
| 3317276 |          529 | cherokee   |    350000 |    350000 | 0000-00-00 | 0000-00-00 |  900 |       2 |        2 |      1915 |
| 2141878 |          415 | 3rd        |    450000 |    443500 | 0000-00-00 | 0000-00-00 | 1667 |       3 |        2 |      1901 |
| 6851738 |          440 | elati      |    480000 |    480000 | 0006-02-16 | 0007-12-16 | 1344 |       3 |        2 |      1901 |
| 3712328 |          353 | cherokee   |    400000 |    435000 | 0006-02-16 | 0007-08-16 | 1340 |       3 |        2 |      1901 |
|    1008 |          256 | galapago   |    445000 |    400000 | 0005-12-16 | 0007-06-16 | 1700 |       4 |        2 |      1923 |
|    1009 |          342 | galapago   |      NULL |    460000 | NULL       | 0000-00-00 |  672 |       2 |        2 |      1901 |
| 7359216 |          201 | 4th        |    525000 |    560000 | 0005-05-16 | 0000-00-00 | 2216 |       3 |        2 |      1921 |
| 7610675 |          335 | bannock    |    489000 |    525000 | 0000-00-00 | 0006-02-16 | 1473 |       2 |        3 |      1904 |
|    1010 |          234 | galapago   |      NULL |    239500 | NULL       | 0006-01-16 |  600 |       2 |        1 |      1901 |
| 7327439 |          404 | fox        |    375000 |    392000 | 0000-00-00 | 0000-00-00 | 1100 |       3 |        1 |      1901 |
| 3885828 |          309 | cherokee   |    495000 |    516000 | 0000-00-00 | 0000-00-00 | 1235 |       2 |        2 |      1954 |
| 2793484 |          226 | 3rd        |    420000 |    471000 | 0000-00-00 | 0005-09-16 | 1547 |       2 |        2 |      1901 |
| 7303168 |          430 | cherokee   |      NULL |    340000 | NULL       | 0000-00-00 |  800 |       1 |        1 |      1901 |
|    1011 |          305 | fox        |      NULL |    217000 | NULL       | 0004-08-16 |  610 |       2 |        1 |      1901 |
|    1012 |          508 | cherokee   |      NULL |    230000 | NULL       | 0000-00-00 |  700 |       1 |        1 |      1901 |
|    1013 |          344 | delaware   |    380000 |    395000 | 0000-00-00 | 0000-00-00 | 1443 |       3 |        2 |      1901 |
| 1120590 |          450 | fox        |      NULL |    394000 | NULL       | 0000-00-00 | 1725 |       3 |        2 |      1901 |
|    1014 |          448 | inca       |      NULL |    217500 | NULL       | 0002-11-16 | 1165 |       2 |        1 |      1901 |
| 7335124 |          547 | fox        |    415000 |    430000 | 0000-00-00 | 0002-01-16 | 1592 |       3 |        2 |      1901 |
| 9420304 |          263 | cherokee   |    450000 |    456500 | 2012-05-15 | 0000-00-00 | 1851 |       3 |        2 |      1901 |
| 7598840 |          611 | 4th        |    399000 |    385000 | 2010-06-15 | 0000-00-00 | 1656 |       3 |        2 |      1999 |
| 7683882 |          310 | fox        |    349000 |    305000 | 0000-00-00 | 0001-08-16 |  900 |       2 |        1 |      1901 |
|    1015 |          443 | galapago   |    439000 |    425000 | 0000-00-00 | 0000-00-00 | 1444 |       2 |        3 |      2015 |
|    1016 |          338 | inca       |      NULL |    200000 | NULL       | 2012-10-15 |  509 |       1 |        1 |      1905 |
| 4529122 |          351 | bannock    |    525000 |    525000 | 0000-00-00 | 0000-00-00 | 1916 |       3 |        3 |      1901 |
| 2715992 |          425 | galapago   |    475000 |    470000 | 0000-00-00 | 2011-03-15 |  831 |       2 |        1 |      1901 |
| 7992317 |          272 | inca       |    420000 |    402500 | 0000-00-00 | 0000-00-00 | 1340 |       3 |        2 |      1901 |
| 4200662 |          433 | fox        |    440000 |    455000 | 0000-00-00 | 0000-00-00 | 1602 |       3 |        2 |      1901 |
|    1017 |          339 | delaware   |      NULL |    200000 | NULL       | 0000-00-00 |  969 |       1 |        1 |      1901 |
| 9139928 |          229 | cherokee   |    268500 |    292500 | 0007-10-15 | 0008-10-15 |  782 |       2 |        1 |      1903 |
| 6405513 |          722 | 5th        |    210000 |    230000 | 0006-04-15 | 0000-00-00 |  645 |       2 |        1 |      1901 |
|    1018 |          516 | cherokee   |    220000 |    258500 | 0000-00-00 | 0000-00-00 |  700 |       1 |        1 |      1901 |
| 2963558 |          504 | cherokee   |    275000 |    250000 | 0005-01-15 | 0000-00-00 |  687 |       1 |        1 |      1901 |
| 1904999 |           43 | elati      |    580500 |    570000 | 2017-04-10 | 2017-05-19 | 1575 |       3 |        2 |      1901 |
| 8825883 |          114 | galapago   |    389900 |    395000 | 2017-11-01 | 2017-12-04 | 1288 |       3 |        1 |      1910 |
| 2078756 |          147 | 1st        |    615000 |    629000 | 2017-09-14 | 2017-11-22 | 2312 |       4 |        3 |      1901 |
| 9463291 |          188 | byers      |    575000 |    561000 | 2017-09-21 | 2017-12-29 | 1845 |       4 |        2 |      1901 |
| 4901616 |          215 | inca       |    325000 |    325000 | 2017-10-05 | 2017-11-20 | 1644 |       4 |        2 |      1955 |
| 3246219 |          229 | inca       |    450000 |    415000 | 2017-05-18 | 2017-06-26 | 1464 |       3 |        2 |      1901 |
| 9459359 |          239 | fox        |    230000 |    240000 | 2016-03-29 | 2017-12-14 |  696 |       1 |        1 |      1901 |
| 1705344 |          243 | inca       |    325000 |    325000 | 2017-09-21 | 2017-10-02 |  778 |       2 |        1 |      1901 |
| 4701434 |          261 | inca       |    399000 |    363000 | 2016-06-21 | 2017-09-15 |  723 |       2 |        1 |      1959 |
| 8891762 |          275 | delaware   |    475000 |    451000 | 2017-06-15 | 2017-07-24 | 1205 |       3 |        2 |      1901 |
|    1000 |          295 | bannock    |      NULL |    750000 | NULL       | 2017-06-22 | 1345 |       2 |        2 |      1924 |
| 7113838 |          311 | inca       |    450000 |    448000 | 2016-06-26 | 2017-08-23 | 1075 |       3 |        2 |      1901 |
| 8438062 |          321 | galapago   |      NULL |    310000 | NULL       | 2017-07-03 |  690 |       1 |        1 |      1910 |
| 9892773 |          334 | fox        |    624900 |    608000 | 2017-10-13 | 2017-12-27 | 1859 |       3 |        3 |      2007 |
| 7866680 |          341 | fox        |    423000 |    450000 | 2017-02-18 | 2017-03-21 | 1301 |       3 |        2 |      1910 |
| 6269020 |          346 | galapago   |    425000 |    412000 | 2017-10-12 | 2017-12-29 |  836 |       2 |        2 |      1901 |
| 7636137 |          367 | cherokee   |    370000 |    385000 | 2017-06-14 | 2017-07-24 |  835 |       2 |        1 |      1901 |
| 7613132 |          409 | inca       |    550000 |    549900 | 2017-07-10 | 2017-08-25 | 1677 |       3 |        3 |      1901 |
| 8573095 |          424 | fox        |    300000 |    311000 | 2017-06-28 | 2017-08-08 | 1105 |       2 |        1 |      1902 |
| 9720494 |          436 | delaware   |    420000 |    440000 | 2017-09-28 | 2017-10-26 | 1250 |       2 |        1 |      1905 |
|    1001 |          436 | elati      |    500000 |    515000 | 2017-07-06 | 2017-08-15 | 1464 |       2 |        2 |      1901 |
|    1002 |          444 | elati      |      NULL |    334260 | NULL       | 2017-06-14 | 1087 |       3 |        1 |      1901 |
| 7040875 |          446 | delaware   |    400000 |    400000 | 2017-09-15 | 2017-11-07 | 1422 |       4 |        2 |      1901 |
|    1003 |          449 | galapago   |    565000 |    520000 | 2016-03-12 | 2016-06-30 | 2087 |       3 |        3 |      1901 |
| 5304893 |          453 | delaware   |    525000 |    507500 | 2017-08-18 | 2017-10-03 | 1558 |       3 |        2 |      1901 |
|    1004 |          462 | elati      |    399900 |    342000 | 2017-05-26 | 2017-09-13 | 1144 |       3 |        2 |      1901 |
| 5976985 |          466 | galapago   |    400000 |    450000 | 2017-07-25 | 2017-08-29 | 1166 |       2 |        1 |      1901 |
| 1620939 |          469 | delaware   |    650000 |    745000 | 2017-05-17 | 2017-06-30 | 1300 |       3 |        2 |      1901 |
| 8371496 |          500 | cherokee   |    295000 |    295000 | 2017-05-05 | 2017-07-05 |  690 |       1 |        1 |      1901 |
| 2238155 |          519 | galapago   |    415000 |    430000 | 2017-09-15 | 2017-11-21 | 1175 |       3 |        2 |      1901 |
| 9876608 |          534 | inca       |    599000 |    569900 | 2017-06-13 | 2017-08-28 | 3044 |       3 |        3 |      1914 |
| 6546655 |          534 | delaware   |    530000 |    541700 | 2017-04-27 | 2017-06-13 | 1678 |       4 |        2 |      1901 |
|    1005 |          547 | galapago   |    549000 |    575000 | 2017-06-16 | 2017-09-14 | 2067 |       3 |        3 |      1901 |
| 7999115 |          604 | inca       |    250000 |    220000 | 2017-10-12 | 2017-11-16 |  887 |       2 |        1 |      1901 |
| 4841944 |          630 | 4th        |    289900 |    250000 | 2017-11-02 | 2017-11-30 |  983 |       2 |        1 |      1901 |
| 9748461 |          722 | 2nd        |    274000 |    270000 | 2017-10-25 | 2017-11-29 |  697 |       2 |        1 |      1901 |
| 2460709 |          811 | 4th        |    400000 |    377500 | 2017-05-12 | 2017-07-17 | 1488 |       3 |        2 |      2001 |
| 9245155 |          369 | cherokee   |    340000 |    355000 | 2017-04-25 | 2017-06-09 |  835 |       2 |        1 |      1901 |
| 7636093 |          317 | delaware   |    300000 |    347000 | 2017-05-19 | 2017-06-06 | 1104 |       0 |        1 |      1901 |
|    1006 |          523 | 3rd        |      NULL |    385000 | NULL       | 2017-05-19 |  900 |       2 |        1 |      1924 |
| 5230354 |          241 | inca       |    410000 |    417000 | 2017-04-13 | 2017-05-16 |  942 |       2 |        1 |      1901 |
| 3316706 |          232 | galapago   |      NULL |    245000 | NULL       | 2017-03-01 |  600 |       2 |        1 |      1901 |
| 5561750 |          331 | cherokee   |    425000 |    425000 | 2016-10-28 | 2017-01-27 | 1885 |       2 |        3 |      1901 |
| 8995663 |          512 | cherokee   |    250000 |    240000 | 2016-10-19 | 2017-01-09 |  687 |       1 |        1 |      1901 |
|  779751 |          435 | cherokee   |    445000 |    450000 | 2016-11-17 | 2016-12-27 | 1366 |       3 |        2 |      1902 |
| 8794279 |          311 | elati      |      NULL |    260000 | NULL       | 2016-12-12 |  689 |       1 |        1 |      1901 |
|    1007 |          355 | galapago   |      NULL |    512000 | NULL       | 2016-12-01 | 1742 |       3 |        3 |      2015 |
| 7928290 |          447 | cherokee   |    337000 |    340000 | 2016-09-17 | 2016-11-21 |  777 |       2 |        1 |      1902 |
| 6696594 |          237 | 3rd        |    498000 |    470500 | 2016-09-22 | 2016-11-14 | 1998 |       3 |        2 |      1901 |
| 4930953 |          421 | cherokee   |    549900 |    530000 | 2016-09-07 | 2016-11-10 | 2172 |       2 |        2 |      1906 |
| 7503025 |          418 | fox        |    315000 |    300000 | 2016-09-05 | 2016-10-27 |  730 |       2 |        1 |      1901 |
| 8461257 |          257 | delaware   |      NULL |    487500 | NULL       | 2016-10-25 | 1842 |       3 |        2 |      1901 |
| 6451943 |          310 | delaware   |      NULL |    417000 | NULL       | 2016-10-17 | 1271 |       3 |        3 |      1901 |
|  824574 |          322 | inca       |      NULL |    424000 | NULL       | 2016-10-05 | 1206 |       3 |        2 |      1901 |
| 2381743 |          347 | galapago   |    393000 |    375000 | 2016-08-05 | 2016-09-27 | 1001 |       2 |        1 |      1901 |
| 5300901 |          728 | 5th        |    255000 |    255000 | 2016-06-28 | 2016-09-06 |  658 |       2 |        1 |      1901 |
| 9890023 |          549 | galapago   |    546000 |    548000 | 2016-07-07 | 2016-08-02 | 1877 |       3 |        3 |      1901 |
| 3317276 |          529 | cherokee   |    350000 |    350000 | 2016-02-16 | 2016-07-28 |  900 |       2 |        2 |      1915 |
| 2141878 |          415 | 3rd        |    450000 |    443500 | 2016-06-16 | 2016-07-22 | 1667 |       3 |        2 |      1901 |
| 6851738 |          440 | elati      |    480000 |    480000 | 2016-06-02 | 2016-07-12 | 1344 |       3 |        2 |      1901 |
| 3712328 |          353 | cherokee   |    400000 |    435000 | 2016-06-02 | 2016-07-08 | 1340 |       3 |        2 |      1901 |
|    1008 |          256 | galapago   |    445000 |    400000 | 2016-05-12 | 2016-07-06 | 1700 |       4 |        2 |      1923 |
|    1009 |          342 | galapago   |      NULL |    460000 | NULL       | 2016-06-24 |  672 |       2 |        2 |      1901 |
| 7359216 |          201 | 4th        |    525000 |    560000 | 2016-05-05 | 2016-06-13 | 2216 |       3 |        2 |      1921 |
| 7610675 |          335 | bannock    |    489000 |    525000 | 2016-04-15 | 2016-06-02 | 1473 |       2 |        3 |      1904 |
|    1010 |          234 | galapago   |      NULL |    239500 | NULL       | 2016-06-01 |  600 |       2 |        1 |      1901 |
| 7327439 |          404 | fox        |    375000 |    392000 | 2016-04-14 | 2016-05-19 | 1100 |       3 |        1 |      1901 |
| 3885828 |          309 | cherokee   |    495000 |    516000 | 2016-02-26 | 2016-05-16 | 1235 |       2 |        2 |      1954 |
| 2793484 |          226 | 3rd        |    420000 |    471000 | 2016-03-31 | 2016-05-09 | 1547 |       2 |        2 |      1901 |
| 7303168 |          430 | cherokee   |      NULL |    340000 | NULL       | 2016-04-29 |  800 |       1 |        1 |      1901 |
|    1011 |          305 | fox        |      NULL |    217000 | NULL       | 2016-04-08 |  610 |       2 |        1 |      1901 |
|    1012 |          508 | cherokee   |      NULL |    230000 | NULL       | 2016-02-25 |  700 |       1 |        1 |      1901 |
|    1013 |          344 | delaware   |    380000 |    395000 | 2016-01-14 | 2016-02-25 | 1443 |       3 |        2 |      1901 |
| 1120590 |          450 | fox        |      NULL |    394000 | NULL       | 2016-02-23 | 1725 |       3 |        2 |      1901 |
|    1014 |          448 | inca       |      NULL |    217500 | NULL       | 2016-02-11 | 1165 |       2 |        1 |      1901 |
| 7335124 |          547 | fox        |    415000 |    430000 | 2015-12-16 | 2016-02-01 | 1592 |       3 |        2 |      1901 |
| 9420304 |          263 | cherokee   |    450000 |    456500 | 2015-12-05 | 2016-01-15 | 1851 |       3 |        2 |      1901 |
| 7598840 |          611 | 4th        |    399000 |    385000 | 2015-10-06 | 2016-01-14 | 1656 |       3 |        2 |      1999 |
| 7683882 |          310 | fox        |    349000 |    305000 | 2015-09-26 | 2016-01-08 |  900 |       2 |        1 |      1901 |
|    1015 |          443 | galapago   |    439000 |    425000 | 2015-05-19 | 2015-12-15 | 1444 |       2 |        3 |      2015 |
|    1016 |          338 | inca       |      NULL |    200000 | NULL       | 2015-12-10 |  509 |       1 |        1 |      1905 |
| 4529122 |          351 | bannock    |    525000 |    525000 | 2015-10-14 | 2015-11-30 | 1916 |       3 |        3 |      1901 |
| 2715992 |          425 | galapago   |    475000 |    470000 | 2015-09-24 | 2015-11-03 |  831 |       2 |        1 |      1901 |
| 7992317 |          272 | inca       |    420000 |    402500 | 2015-06-17 | 2015-09-30 | 1340 |       3 |        2 |      1901 |
| 4200662 |          433 | fox        |    440000 |    455000 | 2015-08-20 | 2015-09-22 | 1602 |       3 |        2 |      1901 |
|    1017 |          339 | delaware   |      NULL |    200000 | NULL       | 2015-09-14 |  969 |       1 |        1 |      1901 |
| 9139928 |          229 | cherokee   |    268500 |    292500 | 2015-07-10 | 2015-08-10 |  782 |       2 |        1 |      1903 |
| 6405513 |          722 | 5th        |    210000 |    230000 | 2015-06-04 | 2015-07-17 |  645 |       2 |        1 |      1901 |
|    1018 |          516 | cherokee   |    220000 |    258500 | 2015-05-22 | 2015-07-14 |  700 |       1 |        1 |      1901 |
| 2963558 |          504 | cherokee   |    275000 |    250000 | 2015-05-01 | 2015-07-13 |  687 |       1 |        1 |      1901 |
+---------+--------------+------------+-----------+-----------+------------+------------+------+---------+----------+-----------+
180 rows in set (0.00 sec)

mysql> 
