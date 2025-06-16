ERD는 erd.png 이미지파일로 올려뒀습니다.

USE testdatabase;

-- CREATE TABLE PetOwners(
-- 	ownerID INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(100),
--     contact VARCHAR(100)
-- );

-- CREATE TABLE Pets(
-- 	petID INT PRIMARY KEY AUTO_INCREMENT,
-- 	ownerID INT,
-- 	FOREIGN KEY (ownerID) REFERENCES PetOwners(ownerID),
--     name VARCHAR(100),
--     species VARCHAR(100),
--     breed VARCHAR(100)
-- );

-- CREATE TABLE Rooms(
-- 	roomID INT PRIMARY KEY AUTO_INCREMENT,
--     roomNumber VARCHAR(100),
--     roomType VARCHAR(100),
--     pricePerNight DECIMAL(10,2)
-- );

-- CREATE TABLE Reservations(
-- 	reservationID INT PRIMARY KEY AUTO_INCREMENT,
--     petID INT,
--     FOREIGN KEY (petID) REFERENCES Pets(petID),
--     roomID INT,
--     FOREIGN KEY (roomID) REFERENCES Rooms(roomID),
--     startDate DATE,
--     endDate DATE
-- );

-- CREATE TABLE Services(
-- 	serviceID INT PRIMARY KEY AUTO_INCREMENT,
--     reservationID INT,
--     FOREIGN KEY (reservationID) REFERENCES Reservations(reservationID),
--     serviceName VARCHAR(100),
--     servicePrice DECIMAL(10,2)
-- );