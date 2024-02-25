CREATE DATABASE TransilvaniaHotels
GO

USE TransilvaniaHotels
GO

CREATE TABLE Hotel (
    hotelId INT PRIMARY KEY,
    hotelName VARCHAR(20) NOT NULL,
    hotelStars INT NOT NULL,
    hotelAddress VARCHAR(50) NOT NULL,
    hotelPhone VARCHAR(20) NOT NULL
)
GO

CREATE TABLE Room (
    roomId INT PRIMARY KEY,
    roomNumber VARCHAR(10) NOT NULL,
    roomType VARCHAR(20) NOT NULL,
    roomPrice MONEY NOT NULL,
    hotelId INT FOREIGN KEY (hotelId) REFERENCES Hotel(hotelId) NOT NULL
)
GO

CREATE TABLE Client (
    clientId INT PRIMARY KEY,
    clientName VARCHAR(20) NOT NULL,
    clientEmail VARCHAR(20) NOT NULL,
    clientPhone VARCHAR(20) NOT NULL
)
GO

select * from Client

CREATE TABLE Reservation (
    reservationId INT PRIMARY KEY,
    startDate VARCHAR(20) NOT NULL,
    endDate VARCHAR(20) NOT NULL,
    roomId INT FOREIGN KEY REFERENCES Room(roomId),
    clientId INT FOREIGN KEY REFERENCES Client(clientId) NOT NULL,
    paidReservation BIT NOT NULL
)
GO