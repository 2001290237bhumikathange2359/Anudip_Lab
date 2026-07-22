
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ecommerse          |
| hospital           |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
8 rows in set (0.00 sec)

mysql> create database Hospital;
ERROR 1007 (HY000): Can't create database 'hospital'; database exists
mysql> use hospital;
Database changed
mysql> create table Hospital_name(hosp_id varchar(10) primary key,p_id varchar(10) not null ,patient_name varchar(40) not null,p_age int not null, p_address varchar(50) not null,p_disease varchar(50) not null);
Query OK, 0 rows affected (0.10 sec)

mysql> desc hospital_name;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| hosp_id      | varchar(10) | NO   | PRI | NULL    |       |
| p_id         | varchar(10) | NO   |     | NULL    |       |
| patient_name | varchar(40) | NO   |     | NULL    |       |
| p_age        | int         | NO   |     | NULL    |       |
| p_address    | varchar(50) | NO   |     | NULL    |       |
| p_disease    | varchar(50) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> insert into hospital_name values('H101','P234','PRAVIN',54,'thane','fever'),('H102','P896','nalini',26,'panvel','cough'),('H103','p745','priya',35,'chembur','cold'),('H104','P192','Asha',30,'Nerul','dengu');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select*from hospital_name;
+---------+------+--------------+-------+-----------+-----------+
| hosp_id | p_id | patient_name | p_age | p_address | p_disease |
+---------+------+--------------+-------+-----------+-----------+
| H101    | P234 | PRAVIN       |    54 | thane     | fever     |
| H102    | P896 | nalini       |    26 | panvel    | cough     |
| H103    | p745 | priya        |    35 | chembur   | cold      |
| H104    | P192 | Asha         |    30 | Nerul     | dengu     |
+---------+------+--------------+-------+-----------+-----------+
4 rows in set (0.00 sec)

mysql> insert into hospital_name values('H105','P267','gauri',22,'rabale','cold'),('H106','p89','hrushi',36,'sanapada','fever');
Query OK, 2 rows affected (0.04 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select*from hospital_name;
+---------+------+--------------+-------+-----------+-----------+
| hosp_id | p_id | patient_name | p_age | p_address | p_disease |
+---------+------+--------------+-------+-----------+-----------+
| H101    | P234 | PRAVIN       |    54 | thane     | fever     |
| H102    | P896 | nalini       |    26 | panvel    | cough     |
| H103    | p745 | priya        |    35 | chembur   | cold      |
| H104    | P192 | Asha         |    30 | Nerul     | dengu     |
| H105    | P267 | gauri        |    22 | rabale    | cold      |
| H106    | p89  | hrushi       |    36 | sanapada  | fever     |
+---------+------+--------------+-------+-----------+-----------+
6 rows in set (0.00 sec)

mysql> desc hospital_name;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| hosp_id      | varchar(10) | NO   | PRI | NULL    |       |
| p_id         | varchar(10) | NO   |     | NULL    |       |
| patient_name | varchar(40) | NO   |     | NULL    |       |
| p_age        | int         | NO   |     | NULL    |       |
| p_address    | varchar(50) | NO   |     | NULL    |       |
| p_disease    | varchar(50) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)