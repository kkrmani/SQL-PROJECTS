Create database Traval_Booking_System;
use Traval_Booking_System;
CREATE TABLE Flights (
    flight_id    INT PRIMARY KEY AUTO_INCREMENT,
    airline      VARCHAR(100) NOT NULL,
    origin       VARCHAR(100) NOT NULL,
    destination  VARCHAR(100) NOT NULL,
    departure    DATETIME NOT NULL,
    arrival      DATETIME NOT NULL,
    available_seats INT NOT NULL
);
select * from flights
INSERT INTO Flights (flight_id,airline, origin, destination, departure, arrival, available_seats) VALUES 
    (1,'Emirates', 'Dubai', 'London', '2025-04-01 10:00:00', '2025-04-01 18:00:00', 150),
    (2,'Qatar Airways', 'Doha', 'New York', '2025-04-02 12:00:00', '2025-04-02 20:00:00', 200),
    (3,'Singapore Airlines', 'Singapore', 'Los Angeles', '2025-04-03 14:00:00', '2025-04-03 22:00:00', 180),
    (4,'Lufthansa', 'Frankfurt', 'Tokyo', '2025-04-04 16:00:00', '2025-04-05 02:00:00', 160),
    (5,'British Airways', 'London', 'Sydney', '2025-04-05 18:00:00', '2025-04-06 06:00:00', 170);
    ------------------------------------------------------------------------------------------------------------------
    CREATE TABLE Hotels (
    hotel_id     INT PRIMARY KEY AUTO_INCREMENT,
    name         VARCHAR(100) NOT NULL,
    location     VARCHAR(100) NOT NULL,
    rating       DECIMAL(2,1) NOT NULL,
    available_rooms INT NOT NULL
);

select * from hotels
INSERT INTO Hotels (hotel_id,name, location, rating, available_rooms) VALUES 
    (1,'The Grand Hyatt', 'New York', 4.5, 50),
    (2,'The Oberoi', 'Mumbai', 4.8, 40),
    (3,'Marina Bay Sands', 'Singapore', 5.0, 60),
    (4,'Burj Al Arab', 'Dubai', 5.0, 30),
    (5,'The Ritz-Carlton', 'Paris', 4.7, 45);
    ----------------------------------------------------------------------------------------------------------------
    CREATE TABLE Customers (
    customer_id   INT PRIMARY KEY AUTO_INCREMENT,
    name          VARCHAR(100) NOT NULL,
    email         VARCHAR(100) UNIQUE NOT NULL,
    phone         VARCHAR(15) NOT NULL,
    address       TEXT NOT NULL
);
select * from customers
INSERT INTO Customers ( customer_id,name, email, phone, address) VALUES 
    (1,'John Doe', 'john.doe@google.com', '9876543210', '742 Evergreen Terrace, Springfield'),
    (2,'Alice Smith', 'alice.smith@google.com', '8765432109', '221B Baker Street, London'),
    (3,'Bob Johnson', 'bob.johnson@google.com', '7654321098', '10 Downing Street, London'),
    (4,'Charlie Brown', 'charlie.brown@google.com', '6543210987', '4 Privet Drive, Surrey'),
    (5,'David White', 'david.white@google.com', '5432109876', '31 Spooner Street, Quahog'),
    (6,'Emily Davis', 'emily.davis@google.com', '9321654780', '5th Avenue, New York'),
    (7,'Frank Miller', 'frank.miller@google.com', '8213467590', 'Sunset Boulevard, Los Angeles'),
    (8,'Grace Wilson', 'grace.wilson@google.com', '7109234567', 'Palm Jumeirah, Dubai'),
    (9,'Henry Clark', 'henry.clark@google.com', '6098743125', 'Central Park West, New York'),
    (10,'Ivy Adams', 'ivy.adams@google.com', '5987234106', 'Broadway, Manhattan'),
    (11,'Jack Taylor', 'jack.taylor@google.com', '4871206593', 'Collins Street, Melbourne'),
    (12,'Kelly Martinez', 'kelly.martinez@google.com', '3765482901', 'Orchard Road, Singapore'),
    (13,'Leo Anderson', 'leo.anderson@google.com', '2654398712', 'Marina Bay Sands, Singapore'),
    (14,'Mia Thompson', 'mia.thompson@google.com', '1543287690', 'Copacabana Beach, Rio de Janeiro'),
    (15,'Nathan Lewis', 'nathan.lewis@google.com', '9876142350', 'Taj Mahal, Agra'),
    (16,'Olivia Harris', 'olivia.harris@google.com', '8765124309', 'Eiffel Tower, Paris'),
    (17,'Peter Walker', 'peter.walker@google.com', '7654012398', 'Times Square, New York'),
    (18,'Quinn Scott', 'quinn.scott@google.com', '6543127890', 'Santorini, Greece'),
    (19,'Rachel King', 'rachel.king@google.com', '5432789012', 'Burj Khalifa, Dubai'),
    (20,'Sam Green', 'sam.green@google.com', '4321890675', 'Great Wall of China, Beijing'),
    (21,'Tony Stark', 'tony.stark@google.com', '3217896540', 'Malibu, California'),
    (22,'Bruce Wayne', 'bruce.wayne@google.com', '2143658709', 'Wayne Manor, Gotham'),
    (23,'Clark Kent', 'clark.kent@google.com', '1234567890', 'Metropolis, USA'),
    (24,'Diana Prince', 'diana.prince@google.com', '9876541230', 'Themyscira'),
    (25,'Steve Rogers', 'steve.rogers@google.com', '8765432190', 'Brooklyn, New York'),
    (26,'Natasha Romanoff', 'natasha.romanoff@google.com', '7654321980', 'Budapest, Hungary'),
    (27,'Thor Odinson', 'thor.odinson@google.com', '6543219870', 'Asgard'),
    (28,'Loki Laufeyson', 'loki.laufeyson@google.com', '5432198760', 'Jotunheim'),
    (29,'Wanda Maximoff', 'wanda.maximoff@google.com', '4321987650', 'Sokovia'),
    (30,'manikandan','kkrmaniravi5@google.com','7397115699','chennai');
-----------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Reservations (
    reservation_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id    INT NOT NULL,
    hotel_id       INT NOT NULL,
    check_in       DATE NOT NULL,
    check_out      DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (hotel_id) REFERENCES Hotels(hotel_id)
);
select * from reservations
INSERT INTO Reservations (reservation_id,customer_id, hotel_id, check_in, check_out) VALUES 
    (101,1, 1, '2025-04-01', '2025-04-05'),
    (102,2, 2, '2025-04-02', '2025-04-06'),
    (103,3, 3, '2025-04-03', '2025-04-07'),
    (104,4, 4, '2025-04-04', '2025-04-08'),
    (105,5, 5, '2025-04-05', '2025-04-09'),
    (106,6, 1, '2025-04-06', '2025-04-10'),
    (107,7, 2, '2025-04-07', '2025-04-11'),
    (108,8, 3, '2025-04-08', '2025-04-12'),
    (109,9, 4, '2025-04-09', '2025-04-13'),
    (110,10, 5, '2025-04-10', '2025-04-14'),
    (111,11, 1, '2025-04-11', '2025-04-15'),
    (112,12, 2, '2025-04-12', '2025-04-16'),
    (113,13, 3, '2025-04-13', '2025-04-17'),
    (114,14, 4, '2025-04-14', '2025-04-18'),
    (115,15, 5, '2025-04-15', '2025-04-19');
    -----------------------------------------------------------------------------------------------------------------------
    CREATE TABLE Bookings (
    booking_id   INT PRIMARY KEY AUTO_INCREMENT,
    customer_id  INT NOT NULL,
    flight_id    INT NOT NULL,
    booking_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);
select * from bookings
    INSERT INTO Bookings (booking_id, customer_id, flight_id, booking_date) 
VALUES
    (201, 1, 1, '2025-03-01'),
    (202, 2, 2, '2025-03-02'),
    (203, 3, 3, '2025-03-03'),
    (204, 4, 4, '2025-03-04'),
    (205, 5, 5, '2025-03-05'),
    (206, 6, 1, '2025-03-06'),
    (207, 7, 2, '2025-03-07'),
    (208, 8, 3, '2025-03-08'),
    (209, 9, 4, '2025-03-09'),
    (210, 10, 5, '2025-03-10'),
    (211, 11, 1, '2025-03-11'),
    (212, 12, 2, '2025-03-12'),
    (213, 13, 3, '2025-03-13'),
    (214, 14, 4, '2025-03-14'),
    (215, 15, 5, '2025-03-15');
    --------------------------------------------------------------------------------------------------------------------------------------
