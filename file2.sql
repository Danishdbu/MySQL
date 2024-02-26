SELECT model,price,rating FROM campusx.smartphones;
SELECT model,battery_capacity,os FROM campusx.smartphones;

SELECT os, model,battery_capacity FROM campusx.smartphones;

SELECT os AS 'Operating system', model,battery_capacity AS 'Amh' FROM campusx.smartphones;

SELECT  model,
sqrt(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size AS 'ppi'
FROM campusx.smartphones;

SELECT model, 'smartphone' AS 'type' FROM campusx.smartphones;

select distinct(brand_name) as 'ALL Brands' from campusx.smartphones;

select distinct(os) as 'ALL processors'
from campusx.smartphones;

SELECT DISTINCT brand_name , processor_brand 
FROM  campusx.smartphones;

/* find all samsung phone */

SELECT * FROM campusx.smartphones
WHERE  brand_name = 'samsung';

SELECT * FROM campusx.smartphones
WHERE  brand_name = 'apple';

/* find all phone with price > 50000 */

SELECT * FROM campusx.smartphones
WHERE price > 50000;


-- SELECT * FROM campusx.smartphones
-- WHERE price > 10000 AND price < 20000;

SELECT * FROM campusx.smartphones
WHERE  price BETWEEN 10000 AND 25000;


-- FIND PHONE WITH RATING > 80 AND PRICE < 25000

SELECT * FROM campusx.smartphones
WHERE price < 25000 AND rating > 80;


SELECT * FROM campusx.smartphones
WHERE price < 15000 AND rating > 80 AND processor_brand = 'snapdragon' ;


-- find all samsung phones with ram > 8GB
SELECT * FROM campusx.smartphones
WHERE brand_name = 'samsung' AND ram_capacity > 8  ;


SELECT * FROM campusx.smartphones
WHERE processor_brand = 'snapdragon' OR processor_brand = 'exynos' OR 
processor_brand = 'bionic' ;


SELECT * FROM campusx.smartphones
WHERE processor_brand IN ('snapdragon','exynos','bionic');



SELECT * FROM campusx.smartphones
WHERE processor_brand NOT IN ('snapdragon','exynos','bionic');





