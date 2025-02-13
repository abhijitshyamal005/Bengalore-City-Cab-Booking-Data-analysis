DashBoard-----https://app.powerbi.com/reportEmbed?reportId=7529183d-b4bf-4f99-b30a-b8ccdacd5b74&autoAuth=true&ctid=923b0ec0-0899-47b3-80bf-07605c1e50d8

# Jamshedpur-City OLA Cab January Month Data Analyst Project

## Overview
This project involves analyzing OLA ride data using SQL and Power BI to extract valuable insights, such as booking trends, customer behavior, and ride performance.

## SQL Questions & Answers
### 1. Retrieve all successful bookings:
```sql
SELECT * FROM bookings WHERE Booking_Status = 'Success';
```
### 2. Find the average ride distance for each vehicle type:
```sql
SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance
FROM bookings
GROUP BY Vehicle_Type;
```
### 3. Get the total number of cancelled rides by customers:
```sql
SELECT COUNT(*) FROM bookings WHERE Booking_Status = 'Cancelled by Customer';
```
### 4. List the top 5 customers who booked the highest number of rides:
```sql
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC
LIMIT 5;
```
### 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
```sql
SELECT COUNT(*) FROM bookings WHERE cancelled_Rides_by_Driver = 'Personal & Car related issue';
```
### 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
```sql
SELECT MAX(Driver_Ratings) as max_rating, MIN(Driver_Ratings) as min_rating
FROM bookings WHERE Vehicle_Type = 'Prime Sedan';
```
### 7. Retrieve all rides where payment was made using UPI:
```sql
SELECT * FROM bookings WHERE Payment_Method = 'UPI';
```
### 8. Find the average customer rating per vehicle type:
```sql
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;
```
### 9. Calculate the total booking value of rides completed successfully:
```sql
SELECT SUM(Booking_Value) as total_successful_value
FROM bookings WHERE Booking_Status = 'Success';
```
### 10. List all incomplete rides along with the reason:
```sql
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings WHERE Incomplete_Rides = 'Yes';
```

## Power BI Questions & Insights
1. **Ride Volume Over Time** - A time-series chart showing ride trends.
2. **Booking Status Breakdown** - A pie chart showing ride status distribution.
3. **Top 5 Vehicle Types by Ride Distance** - A bar chart ranking vehicle types.
4. **Average Customer Ratings by Vehicle Type** - A column chart displaying customer ratings.
5. **Cancelled Rides Reasons** - A bar chart showing cancellation reasons.
6. **Revenue by Payment Method** - A stacked bar chart categorizing revenue by payment method.
7. **Top 5 Customers by Total Booking Value** - A leaderboard for high-value customers.
8. **Ride Distance Distribution Per Day** - A histogram showing ride distances.
9. **Driver Ratings Distribution** - A box plot analyzing rating spreads.
10. **Customer vs. Driver Ratings** - A scatter plot comparing ratings.

## Data Columns
1. **Date** - Ride booking date.
2. **Time** - Ride booking time.
3. **Booking_ID** - Unique ride identifier.
4. **Booking_Status** - Ride status (Success, Cancelled, Incomplete).
5. **Customer_ID** - Unique customer identifier.
6. **Vehicle_Type** - Type of vehicle booked.
7. **Pickup_Location** - Pickup address.
8. **Drop_Location** - Destination address.
9. **V_TAT** - Vehicle Turnaround Time.
10. **C_TAT** - Customer Turnaround Time.
11. **Cancelled_Rides_by_Customer** - Count of customer-cancelled rides.
12. **Cancelled_Rides_by_Driver** - Count of driver-cancelled rides.
13. **Incomplete_Rides** - Incomplete ride status.
14. **Incomplete_Rides_Reason** - Reason for ride incompletion.
15. **Booking_Value** - Total booking cost.
16. **Payment_Method** - Method used for payment.
17. **Ride_Distance** - Distance covered in the ride.
18. **Driver_Ratings** - Driver’s rating.
19. **Customer_Rating** - Customer’s rating.

## SQL Views
To optimize queries, SQL views have been created:
```sql
CREATE VIEW Successful_Bookings AS
SELECT * FROM bookings WHERE Booking_Status = 'Success';

CREATE VIEW ride_distance_for_each_vehicle AS
SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance
FROM bookings
GROUP BY Vehicle_Type;

CREATE VIEW cancelled_rides_by_customers AS
SELECT COUNT(*) FROM bookings WHERE Booking_Status = 'Cancelled by Customer';
```
(Additional views follow the same structure.)

## Usage
1. Use the SQL queries to retrieve data insights.
2. Utilize Power BI to visualize the results.
3. Modify or extend queries as needed to analyze specific trends.

## Author
Developed by [Your Name]

## License
This project is open-source and available for public use and modifications.

