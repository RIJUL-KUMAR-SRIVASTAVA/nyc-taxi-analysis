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


