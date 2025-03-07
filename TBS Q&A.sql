use traval_booking_system;

-- 1.Retrieve all customers' names and emails.
SELECT name, email FROM Customers;
-------------------------------------------------------------------------------------------
-- 2.Find the details of all flights departing from 'Dubai'.
SELECT * FROM Flights WHERE origin = 'Dubai';
---------------------------------------------------------------------------------------
-- 3.Get the names and locations of all hotels with a rating of 4.5 or higher.
SELECT name, location FROM Hotels WHERE rating >= 4.5;
----------------------------------------------------------------------------------------
-- 4.List all bookings along with the customer name and flight details.
SELECT B.booking_id, C.name, F.airline, F.origin, F.destination, B.booking_date 
FROM Bookings B
JOIN Customers C ON B.customer_id = C.customer_id
JOIN Flights F ON B.flight_id = F.flight_id;
--------------------------------------------------------------------------------------------
-- 5.Show all reservations, including the customer name and hotel details.
SELECT R.reservation_id, C.name, H.name AS hotel_name, H.location, R.check_in, R.check_out
FROM Reservations R
JOIN Customers C ON R.customer_id = C.customer_id
JOIN Hotels H ON R.hotel_id = H.hotel_id;
-----------------------------------------------------------------------------------
-- 6.Find flights that have more than 150 available seats.
SELECT * FROM Flights WHERE available_seats > 150;
--------------------------------------------------------------------------------------
-- 7.Get all reservations for customers staying in 'The Ritz-Carlton'.
SELECT R.* FROM Reservations R
JOIN Hotels H ON R.hotel_id = H.hotel_id
WHERE H.name = 'The Ritz-Carlton';
----------------------------------------------------------------------------------------
-- 8.Retrieve all bookings made before '2025-03-10'.
SELECT * FROM Bookings WHERE booking_date < '2025-03-10';
-------------------------------------------------------------------------------------------
-- 9.Show all flights arriving after '2025-04-02 18:00:00'.
SELECT * FROM Flights WHERE arrival > '2025-04-02 18:00:00';
-------------------------------------------------------------------------------------------
-- 10.Find the top 3 airlines with the highest number of bookings.
SELECT F.airline, COUNT(B.booking_id) AS total_bookings 
FROM Flights F
JOIN Bookings B ON F.flight_id = B.flight_id
GROUP BY F.airline
ORDER BY total_bookings DESC
LIMIT 3;
---------------------------------------------------------------------------------------
-- 11.Count the number of flights for each airline.
SELECT airline, COUNT(*) AS total_flights FROM Flights GROUP BY airline;
----------------------------------------------------------------------------------------
-- 12.Find the total number of bookings for each flight.
SELECT F.airline, F.origin, F.destination, COUNT(B.booking_id) AS total_bookings
FROM Bookings B
JOIN Flights F ON B.flight_id = F.flight_id
GROUP BY B.flight_id;
--------------------------------------------------------------------------
-- 13.Get the number of customers who have made at least one reservation.
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM Reservations;
--------------------------------------------------------------------------------
-- 14.Show the total number of available rooms in each hotel.
SELECT name, SUM(available_rooms) AS total_rooms FROM Hotels GROUP BY name;
-----------------------------------------------------------------------------------
-- 15.Count how many bookings each customer has made.
SELECT C.name, COUNT(B.booking_id) AS total_bookings
FROM Customers C
LEFT JOIN Bookings B ON C.customer_id = B.customer_id
GROUP BY C.customer_id;
--------------------------------------------------------------------------------------
-- 16.Get a list of customers who have booked both a flight and a hotel.
SELECT DISTINCT C.name
FROM Customers C
JOIN Bookings B ON C.customer_id = B.customer_id
JOIN Reservations R ON C.customer_id = R.customer_id;
---------------------------------------------------------------------------
-- 17.Retrieve all hotel reservations along with customer and hotel details.
SELECT R.reservation_id, C.name, H.name AS hotel_name, R.check_in, R.check_out
FROM Reservations R
JOIN Customers C ON R.customer_id = C.customer_id
JOIN Hotels H ON R.hotel_id = H.hotel_id;
-------------------------------------------------------------------------------------------
-- 18.Show the total number of available seats for flights booked by customers staying at 'Burj Al Arab'.
SELECT SUM(F.available_seats) AS total_available_seats
FROM Flights F
JOIN Bookings B ON F.flight_id = B.flight_id
JOIN Reservations R ON B.customer_id = R.customer_id
JOIN Hotels H ON R.hotel_id = H.hotel_id
WHERE H.name = 'Burj Al Arab';
-----------------------------------------------------------------------------------------
-- 19.List all customers along with their booking and reservation details (even if they haven’t booked anything).
SELECT C.name, B.booking_id, R.reservation_id
FROM Customers C
LEFT JOIN Bookings B ON C.customer_id = B.customer_id
LEFT JOIN Reservations R ON C.customer_id = R.customer_id;
------------------------------------------------------------------------------
-- 20.Find the most frequently booked flight.
SELECT F.airline, F.origin, F.destination, COUNT(B.booking_id) AS total_bookings
FROM Bookings B
JOIN Flights F ON B.flight_id = F.flight_id
GROUP BY F.airline, F.origin, F.destination
ORDER BY total_bookings DESC
LIMIT 1;
---------------------------------------------------------------------------------------------
delimiter  &&
create procedure getbookings()
begin
select * from bookings;
end&& ;
delimiter &&
call getbookings();
-------------------------------------
delimiter  &&
create procedure getcustomer()
begin
select * from customers;
end&& ;
delimiter &&
call getcustomer();
----------------------------------------
delimiter  &&
create procedure getflights()
begin
select * from flights;
end&& ;
delimiter &&
call getflights();
-----------------------------------------------
delimiter  &&
create procedure gethotels()
begin
select * from hotels;
end&& ;
delimiter &&
call gethotels();
---------------------------------
delimiter  &&
create procedure getreservation()
begin
select * from reservations;
end&& ;
delimiter &&
call getreservation();
------------------------------------










