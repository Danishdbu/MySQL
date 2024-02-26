-- Sorting

-- find top 5 samsung phone with biggest screen size
SELECT model ,screen_size FROM campusx.smartphones
WHERE brand_name = 'samsung' ORDER BY screen_size DESC LIMIT 5 ;

SELECT model ,screen_size FROM campusx.smartphones
WHERE brand_name = 'samsung' ORDER BY screen_size DESC LIMIT 1;

-- SORT ALL THE PHONE WITH IN DECENDING ORDER OF NUMBER OF TOTAL CAMERAS

SELECT model , num_front_cameras + num_rear_cameras AS 'total_cameras' 
FROM campusx.smartphones
ORDER BY total_cameras DESC;

-- SORT DATA ON THE BASIS OF PPI IN DECREASING ORDER

SELECT  model,
ROUND(sqrt(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size,2) AS 'ppi'
FROM campusx.smartphones
ORDER BY ppi DESC LIMIT 2;

-- FIND THE PHONE WITH 2ND LARGEST BATTERY
SELECT model, battery_capacity
FROM campusx.smartphones
ORDER BY battery_capacity DESC LIMIT 1,1;


SELECT model, battery_capacity
FROM campusx.smartphones
ORDER BY battery_capacity DESC LIMIT 4,1;


SELECT model, battery_capacity
FROM campusx.smartphones
ORDER BY battery_capacity DESC LIMIT 4,5; 

SELECT model, battery_capacity
FROM campusx.smartphones
ORDER BY battery_capacity ASC LIMIT 1,1; 

-- FIND THE NAME AND RATING OF THE WORST RATED APPLE PHONE

SELECT model, rating
FROM campusx.smartphones
WHERE brand_name = 'apple'
ORDER BY rating ASC LIMIT 1;

-- SORT PHONES ALPHABETICALLY AND THEN ON THE BASIC OF RATING IN DESC ORDER

SELECT brand_name,price FROM campusx.smartphones
ORDER BY brand_name ASC , price ASC ;



-- SORT PHONES ALPHABETICALLY AND THEN ON THE BASIC OF PRICE IN ASE ORDER


SELECT brand_name,price FROM campusx.smartphones
ORDER BY brand_name DESC , price DESC ;























