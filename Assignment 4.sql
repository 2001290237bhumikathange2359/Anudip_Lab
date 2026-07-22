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

mysql> create database Employee;
Query OK, 1 row affected (0.01 sec)

mysql> use employee;
Database changed
mysql> create table emp_details(emp_name varchar(40) not null,emp_id varchar(20) primary key,emp_add varchar(30) not null,emp_salary int(10) not null);
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> insert into emp_details values('tarun','A101','thane',25000),('mukund','A102','chembur',16500),('rohini','A105','panvel',35000),('lata','A103','vashi',28000);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from emp_details;
+----------+--------+---------+------------+
| emp_name | emp_id | emp_add | emp_salary |
+----------+--------+---------+------------+
| tarun    | A101   | thane   |      25000 |
| mukund   | A102   | chembur |      16500 |
| lata     | A103   | vashi   |      28000 |
| rohini   | A105   | panvel  |      35000 |
+----------+--------+---------+------------+
4 rows in set (0.00 sec)

mysql> insert into emp_details values('nandini','A106','thane',25000),('bela','A107','panvel',16500);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from emp_details;
+----------+--------+---------+------------+
| emp_name | emp_id | emp_add | emp_salary |
+----------+--------+---------+------------+
| tarun    | A101   | thane   |      25000 |
| mukund   | A102   | chembur |      16500 |
| lata     | A103   | vashi   |      28000 |
| rohini   | A105   | panvel  |      35000 |
| nandini  | A106   | thane   |      25000 |
| bela     | A107   | panvel  |      16500 |
+----------+--------+---------+------------+
6 rows in set (0.00 sec)

mysql> select distinct emp_add from emp_details;
+---------+
| emp_add |
+---------+
| thane   |
| chembur |
| vashi   |
| panvel  |
+---------+
4 rows in set (0.00 sec)

mysql> select * from emp_details where emp_salary between 20000 and 30000;
+----------+--------+---------+------------+
| emp_name | emp_id | emp_add | emp_salary |
+----------+--------+---------+------------+
| tarun    | A101   | thane   |      25000 |
| lata     | A103   | vashi   |      28000 |
| nandini  | A106   | thane   |      25000 |
+----------+--------+---------+------------+
3 rows in set (0.00 sec)

mysql> select * from emp_details where emp_id between 'A103' and 'A106';
+----------+--------+---------+------------+
| emp_name | emp_id | emp_add | emp_salary |
+----------+--------+---------+------------+
| lata     | A103   | vashi   |      28000 |
| rohini   | A105   | panvel  |      35000 |
| nandini  | A106   | thane   |      25000 |
+----------+--------+---------+------------+
3 rows in set (0.00 sec)

mysql> select * from emp_details where emp_name between 'A' and 'G';
+----------+--------+---------+------------+
| emp_name | emp_id | emp_add | emp_salary |
+----------+--------+---------+------------+
| bela     | A107   | panvel  |      16500 |
+----------+--------+---------+------------+
1 row in set (0.00 sec)

mysql> select * from emp_details where emp_name  not between 'A' and 'G';
+----------+--------+---------+------------+
| emp_name | emp_id | emp_add | emp_salary |
+----------+--------+---------+------------+
| tarun    | A101   | thane   |      25000 |
| mukund   | A102   | chembur |      16500 |
| lata     | A103   | vashi   |      28000 |
| rohini   | A105   | panvel  |      35000 |
| nandini  | A106   | thane   |      25000 |
+----------+--------+---------+------------+
5 rows in set (0.00 sec)

mysql> select * from emp_details where emp_id in('A107','A103');
+----------+--------+---------+------------+
| emp_name | emp_id | emp_add | emp_salary |
+----------+--------+---------+------------+
| lata     | A103   | vashi   |      28000 |
| bela     | A107   | panvel  |      16500 |
+----------+--------+---------+------------+
2 rows in set (0.00 sec)

mysql> select * from emp_details where emp_name not in('lata','bela');
+----------+--------+---------+------------+
| emp_name | emp_id | emp_add | emp_salary |
+----------+--------+---------+------------+
| tarun    | A101   | thane   |      25000 |
| mukund   | A102   | chembur |      16500 |
| rohini   | A105   | panvel  |      35000 |
| nandini  | A106   | thane   |      25000 |
+----------+--------+---------+------------+
4 rows in set (0.00 sec)

mysql> select * from emp_details where emp_name is not null;
+----------+--------+---------+------------+
| emp_name | emp_id | emp_add | emp_salary |
+----------+--------+---------+------------+
| tarun    | A101   | thane   |      25000 |
| mukund   | A102   | chembur |      16500 |
| lata     | A103   | vashi   |      28000 |
| rohini   | A105   | panvel  |      35000 |
| nandini  | A106   | thane   |      25000 |
| bela     | A107   | panvel  |      16500 |
+----------+--------+---------+------------+
6 rows in set (0.00 sec)

mysql> select * from emp_details ORDER BY emp_salary;
+----------+--------+---------+------------+
| emp_name | emp_id | emp_add | emp_salary |
+----------+--------+---------+------------+
| mukund   | A102   | chembur |      16500 |
| bela     | A107   | panvel  |      16500 |
| tarun    | A101   | thane   |      25000 |
| nandini  | A106   | thane   |      25000 |
| lata     | A103   | vashi   |      28000 |
| rohini   | A105   | panvel  |      35000 |
+----------+--------+---------+------------+
6 rows in set (0.00 sec)

mysql> select * from emp_details ORDER BY emp_id;
+----------+--------+---------+------------+
| emp_name | emp_id | emp_add | emp_salary |
+----------+--------+---------+------------+
| tarun    | A101   | thane   |      25000 |
| mukund   | A102   | chembur |      16500 |
| lata     | A103   | vashi   |      28000 |
| rohini   | A105   | panvel  |      35000 |
| nandini  | A106   | thane   |      25000 |
| bela     | A107   | panvel  |      16500 |
+----------+--------+---------+------------+
6 rows in set (0.00 sec)

mysql> select * from emp_details ORDER BY emp_id desc;
+----------+--------+---------+------------+
| emp_name | emp_id | emp_add | emp_salary |
+----------+--------+---------+------------+
| bela     | A107   | panvel  |      16500 |
| nandini  | A106   | thane   |      25000 |
| rohini   | A105   | panvel  |      35000 |
| lata     | A103   | vashi   |      28000 |
| mukund   | A102   | chembur |      16500 |
| tarun    | A101   | thane   |      25000 |
+----------+--------+---------+------------+
6 rows in set (0.00 sec)

mysql> select * from emp_details ORDER BY emp_id limit 4;
+----------+--------+---------+------------+
| emp_name | emp_id | emp_add | emp_salary |
+----------+--------+---------+------------+
| tarun    | A101   | thane   |      25000 |
| mukund   | A102   | chembur |      16500 |
| lata     | A103   | vashi   |      28000 |
| rohini   | A105   | panvel  |      35000 |
+----------+--------+---------+------------+
4 rows in set (0.00 sec)

mysql> select * from emp_details where emp_id='A103' and emp_add='vashi';
+----------+--------+---------+------------+
| emp_name | emp_id | emp_add | emp_salary |
+----------+--------+---------+------------+
| lata     | A103   | vashi   |      28000 |
+----------+--------+---------+------------+
1 row in set (0.00 sec)

mysql> select sum(emp_salary) from emp_details;
+-----------------+
| sum(emp_salary) |
+-----------------+
|          146000 |
+-----------------+
1 row in set (0.00 sec)

mysql> select avg(emp_salary) from emp_details;
+-----------------+
| avg(emp_salary) |
+-----------------+
|      24333.3333 |
+-----------------+
1 row in set (0.00 sec)

mysql> select count(emp_id) from emp_details;
+---------------+
| count(emp_id) |
+---------------+
|             6 |
+---------------+
1 row in set (0.01 sec)

mysql> select min(emp_salary) from emp_details;
+-----------------+
| min(emp_salary) |
+-----------------+
|           16500 |
+-----------------+
1 row in set (0.00 sec)

mysql>