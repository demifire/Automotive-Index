-- Create a new postgres user named indexed_cars_user

CREATE USER indexed_cars_user;

-- Create a new database named indexed_cars owned by indexed_cars_user

CREATE DATABASE indexed_cars;
ALTER DATABASE indexed_cars OWNER TO indexed_cars_user;

-- Run the provided scripts/car_models.sql script on the indexed_cars database

-- Completed

-- Run the provided scripts/car_model_data.sql script on the indexed_cars database 10 times

-- Completed

-- there should be 223380 rows in car_models

-- Confirmed

-- Run a query to get a list of all make_title values from the car_models table where the 
-- make_code is 'LAM', without any duplicate rows, and note the time somewhere. 
-- (should have 1 result)

SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
-- Returned Lamborghini 18 ms 

-- Run a query to list all `model_title` values where the `make_code` 
-- is `'NISSAN'`, and the `model_code` is `'GT-R'` without any duplicate 
-- rows, and note the time somewhere. (should have 1 result)

SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' 
AND model_code = 'GT-R';
-- Returned GT-R 22 ms