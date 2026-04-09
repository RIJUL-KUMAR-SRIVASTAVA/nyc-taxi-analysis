create database taxi_project;
USE taxi_project;
CREATE TABLE yellow_taxi_trips_new (
    tpep_pickup_datetime DATETIME,
    tpep_dropoff_datetime DATETIME,
    passenger_count INT,
    trip_distance FLOAT,
    PULocationID INT,
    DOLocationID INT,
    fare_amount FLOAT,
    extra FLOAT,
    tax FLOAT,
    tip_amount FLOAT,
    total_amount FLOAT
);
SELECT 
    tpep_pickup_datetime,
    HOUR(tpep_pickup_datetime)
FROM clean_taxi_final
LIMIT 10;

SELECT COUNT(*) FROM clean_taxi_final;


SELECT MONTH(tpep_pickup_datetime) AS month, 
SUM(total_amount) AS revenue
FROM clean_taxi_final
GROUP BY month;


SELECT HOUR(tpep_pickup_datetime) AS hour, 
COUNT(*) AS total_trips
FROM clean_taxi_final
GROUP BY hour
ORDER BY hour;


SELECT DAYNAME(tpep_pickup_datetime) AS day, 
COUNT(*) AS total_trips
FROM clean_taxi_final
GROUP BY day;


