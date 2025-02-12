create database Booking_Cabs;
use Booking_Cabs ;


-- 1. Retrieve all successful booking
CREATE VIEW Successful_booking AS
SELECT * FROM booking
WHERE `Booking Status` = 'Success';

-- 2. Find the average ride distance for each vehicle type
CREATE VIEW Ride_Distance_For_Each_Vehicle AS
SELECT `Vehicle Type`, AVG(`Ride Distance`) AS avg_distance 
FROM booking
GROUP BY `Vehicle Type`;

-- 3. Get the total number of cancelled rides by customers
CREATE VIEW Cancelled_Rides_By_Customers AS
SELECT COUNT(*) AS total_cancelled_rides
FROM booking
WHERE `Booking Status` = 'Cancelled by Customer';

-- 4. List the top 5 customers who booked the highest number of rides
CREATE VIEW Top_5_Customers AS
SELECT `Customer ID`, COUNT(`Booking ID`) AS total_rides
FROM booking
GROUP BY `Customer ID`
ORDER BY total_rides DESC
LIMIT 5;

-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues
CREATE VIEW Rides_Cancelled_By_Drivers_P_C_Issues AS
SELECT COUNT(*) AS total_driver_cancelled_rides
FROM booking
WHERE `Cancelled Rides By Driver` = 'Personal & Car related issue';

-- 6. Find the maximum and minimum driver ratings for Prime Sedan booking
CREATE VIEW Max_Min_Driver_Rating AS
SELECT MAX(`Driver Ratings`) AS max_rating,
       MIN(`Driver Ratings`) AS min_rating
FROM booking
WHERE `Vehicle Type` = 'Prime Sedan';

-- 7. Retrieve all rides where payment was made using UPI
CREATE VIEW UPI_Payment AS
SELECT * FROM booking
WHERE `Payment Method` = 'UPI';

-- 8. Find the average customer rating per vehicle type
CREATE VIEW AVG_Cust_Rating AS
SELECT `Vehicle Type`, AVG(`Customer Rating`) AS avg_customer_rating
FROM booking
GROUP BY `Vehicle Type`;

-- 9. Calculate the total booking value of rides completed successfully
CREATE VIEW Total_Successful_Ride_Value AS
SELECT SUM(`Booking Value`) AS total_successful_ride_value
FROM booking
WHERE `Booking Status` = 'Success';

-- 10. List all incomplete rides along with the reason
CREATE VIEW Incomplete_Rides_Reason AS
SELECT `Booking ID`, `Incomplete Rides Reason`
FROM booking
WHERE `Incomplete Rides` = 'Yes';

