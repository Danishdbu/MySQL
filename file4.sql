-- function in sql
-- 1 aggregate function
-- max / min
SELECT MAX(price) FROM campusx.smartphones;

SELECT MIN(price) FROM campusx.smartphones;

-- FIND MAX RAM 
SELECT MAX(ram_capacity) FROM campusx.smartphones;
SELECT MIN(ram_capacity) FROM campusx.smartphones;

-- FIND THE PRICE OF THE COSTLIES SAMSUNG PHONE
SELECT MAX(price) FROM campusx.smartphones
WHERE brand_name= 'samsung';

SELECT * FROM campusx.smartphones
WHERE brand_name= 'samsung' AND price = 110999;

-- AVG

SELECT AVG(rating) FROM campusx.smartphones
WHERE brand_name = 'apple';


SELECT AVG(price) FROM campusx.smartphones
WHERE brand_name = 'samsung';

-- sum

SELECT SUM(price) FROM campusx.smartphones;

-- COUNT
-- FIND THE NUMBER OF ONEPLUS PHONE

SELECT COUNT(*) FROM campusx.smartphones
WHERE brand_name= 'oneplus';


SELECT COUNT(*) FROM campusx.smartphones
WHERE brand_name= 'samsung';


SELECT COUNT(*) FROM campusx.smartphones
WHERE brand_name= 'apple';

-- COUNT(DISTINCT)

SELECT DISTINCT(brand_name) FROM campusx.smartphones;

SELECT COUNT(DISTINCT(brand_name)) FROM campusx.smartphones;


SELECT COUNT(DISTINCT(processor_brand)) FROM campusx.smartphones; 

-- STD
-- FIND THE STD OF SCREEN SIZE
SELECT STD(screen_size) FROM campusx.smartphones;

SELECT VARIANCE(screen_size) FROM campusx.smartphones;

-- 2 scalar function

-- ABS

SELECT ABS(price - 100000) AS 'temp' FROM campusx.smartphones;

-- round
SELECT  model,
ROUND(sqrt(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size) AS 'ppi'
FROM campusx.smartphones;

SELECT  model,
ROUND(sqrt(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size,2) AS 'ppi'
FROM campusx.smartphones;


-- CEIL/FLOOR


SELECT CEIL(screen_size) FROM campusx.smartphones;

SELECT FLOOR(screen_size) FROM campusx.smartphones;





