-- Grouping Data
-- GROUP BY
-- group smartphone by brand and get the count , average price, max rating ,avg screen size and avg battery capacity

SELECT brand_name, COUNT(*) AS 'num_phones',
ROUND(AVG(price)) AS 'ANG_PRICE',
MAX(rating) AS 'max_rating',
ROUND(AVG(screen_size),2) AS 'avg_S_size',
ROUND(AVG(battery_capacity),2) AS 'avg battery capacity'
FROM campusx.smartphones
GROUP BY brand_name
ORDER BY num_phones DESC ;

-- group smartphone by whether they have an NFC and get the average price and rating
SELECT has_nfc,
ROUND(AVG(price)) AS 'ANG_PRICE',
ROUND(AVG(rating)) AS 'avg_rating'
FROM  campusx.smartphones
GROUP BY has_nfc;

SELECT has_5g,
ROUND(AVG(price)) AS 'ANG_PRICE',
ROUND(AVG(rating)) AS 'avg_rating'
FROM  campusx.smartphones
GROUP BY has_5g;

-- GROUP SMARTPHONE BY THE EXTENDED MEMORY AVAILABLE AND GET THE AVG PRICE

SELECT extended_memory_available,
ROUND(AVG(price)) AS 'ANG_PRICE'
FROM  campusx.smartphones
GROUP BY extended_memory_available;

--  group SMARTPHONE  by the brand and processor brand and get the count of models and the avg primary camera resolution

SELECT brand_name,processor_brand,
COUNT(*) AS 'num_phone',
ROUND(AVG(primary_camera_rear)) AS 'avg camera resolution'
FROM campusx.smartphones
GROUP BY brand_name, processor_brand;

-- FIND TOP 5 MOST COSTLY PHONE BRAND
SELECT brand_name,
ROUND(AVG(price)) AS 'COSTLY'
FROM campusx.smartphones
GROUP BY brand_name
ORDER BY COSTLY DESC LIMIT 5;

-- WHICH BRAND MAKE THE SMALLEST SCREEN SMARTPHONE

SELECT brand_name,
AVG(screen_size) AS 'SC_size'
FROM campusx.smartphones
GROUP BY brand_name
ORDER BY SC_size ASC LIMIT 1 ;

-- HAVING 


SELECT brand_name,
COUNT(*) AS 'count',
AVG(price) AS 'avg_price'
FROM campusx.smartphones
GROUP BY brand_name
HAVING count > 40
ORDER BY avg_price ASC;

-- FIND THE AVG RATING OF SMARTPHONE BRAND WHICH HAVE MORE THAN 20 PHONES

SELECT brand_name,
COUNT(*) AS 'count',
AVG(rating) AS 'avg_rating'
FROM campusx.smartphones
GROUP BY brand_name
HAVING count > 40
ORDER BY avg_rating DESC;















