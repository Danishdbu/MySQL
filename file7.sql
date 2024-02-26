-- join
SELECT * FROM sql_cx_live.users1;
SELECT * FROM sql_cx_live.membership;
SELECT * FROM sql_cx_live.groups;
-- CROSS JOIN


SELECT * FROM sql_cx_live.users1 t1
CROSS JOIN sql_cx_live.groups t2;

-- INNER JOIN
SELECT * FROM sql_cx_live.membership t1
INNER JOIN sql_cx_live.users1 t2
ON t1.user_id = t2.user_id;

-- LEFT JOIN
SELECT * FROM sql_cx_live.membership t1
LEFT JOIN sql_cx_live.users1 t2
ON t1.user_id = t2.user_id;

-- RIGHT JOIN

SELECT * FROM sql_cx_live.membership t1
RIGHT JOIN sql_cx_live.users1 t2
ON t1.user_id = t2.user_id; 

-- FULL OUTER JOIN

-- NOT WORK IN MYSQL
SELECT * FROM sql_cx_live.membership t1
FULL OUTER JOIN sql_cx_live.users1 t2
ON t1.user_id = t2.user_id; 

-- SET Operation

-- UNION 

 SELECT * FROM sql_cx_live.person1
 UNION 
 SELECT *FROM sql_cx_live.person2;

-- UNION ALL
 SELECT * FROM sql_cx_live.person1
 UNION 
 SELECT *FROM sql_cx_live.person2 ;

-- INTERSECTION
SELECT * FROM sql_cx_live.person1
INTERSECT
SELECT *FROM sql_cx_live.person2 ;

-- EXCEPT 
SELECT * FROM sql_cx_live.person1
EXCEPT
SELECT *FROM sql_cx_live.person2 ;


-- FULL OUTER JOIN

-- NOT WORK IN MYSQL
SELECT * FROM sql_cx_live.membership t1
FULL OUTER JOIN sql_cx_live.users1 t2
ON t1.user_id = t2.user_id; -- IT RESOLVE IT

SELECT * FROM sql_cx_live.membership t1
LEFT JOIN sql_cx_live.users1 t2
ON t1.user_id = t2.user_id 
UNION
SELECT * FROM sql_cx_live.membership t1
RIGHT JOIN sql_cx_live.users1 t2
ON t1.user_id = t2.user_id ; 


-- SELF JOIN

SELECT *FROM sql_cx_live.users1 t1
JOIN sql_cx_live.users1 t2 
ON t1.emergency_contact = t2.user_id 
;


-- joining onmore than one column

SELECT * FROM sql_cx_live.students t1
JOIN sql_cx_live.class t2
ON t1.class_id = t2.class_id
AND t1.enrollment_year = t2.class_year;


SELECT * FROM sql_cx_live.students t1
LEFT JOIN sql_cx_live.class t2
ON t1.class_id = t2.class_id
AND t1.enrollment_year = t2.class_year;

SELECT * FROM sql_cx_live.students t1
RIGHT JOIN sql_cx_live.class t2
ON t1.class_id = t2.class_id
AND t1.enrollment_year = t2.class_year;

-- JOINING MORE THAN 2 TABLE

SELECT * FROM flipkart.order_details t1
JOIN flipkart.orders t2
ON t1.order_id = t2.order_id
JOIN flipkart.users  t3
ON t2.user_id = t3.user_id;

-- FILTERING COLUMNS

SELECT t1.class_id,t1.first_name, t2.teacher FROM sql_cx_live.students t1
JOIN sql_cx_live.class t2
ON t1.class_id = t2.class_id
AND t1.enrollment_year = t2.class_year;



SELECT t1.order_id,t1.amount,t1.profit ,t3.name FROM flipkart.order_details t1
JOIN flipkart.orders t2
ON t1.order_id = t2.order_id
JOIN flipkart.users  t3
ON t2.user_id = t3.user_id;


-- FILTERING ROWS
-- FIND ALL THE ORDER PLACED IN PUNE

SELECT * FROM flipkart.orders t1
JOIN flipkart.users t2
ON t1.user_id = t2.user_id
WHERE t2.city= 'Pune';


SELECT * FROM flipkart.orders t1
JOIN flipkart.users t2
ON t1.user_id = t2.user_id
WHERE t2.city= 'Pune' AND t2.name = 'Syed';
















