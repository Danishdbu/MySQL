-- UPDATE 

SELECT * FROM campusx.smartphones
WHERE processor_brand = 'mediatek';

-- i want to update mediatek processor brand with dimensity

UPDATE campusx.smartphones
SET processor_brand = 'dimensity' WHERE processor_brand = 'mediatek';


UPDATE campusx.users
SET email = 'syeddanish@gmail.com', password = 'S123' WHERE name = 'D';

-- DELETE 

SELECT * FROM campusx.smartphones
WHERE price > 200000;

DELETE FROM campusx.smartphones
WHERE price > 200000;

SELECT * FROM campusx.smartphones
WHERE primary_camera_rear > 150;
-- DELETE

DELETE FROM campusx.smartphones
WHERE primary_camera_rear > 150 AND brand_name = 'samsung';







