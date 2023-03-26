CREATE TABLE PERSON (
  
  P_Ssn VARCHAR(11) PRIMARY KEY,
  P_Name VARCHAR(50) NOT NULL,
  P_Address VARCHAR(100) NOT NULL,
  P_Phone VARCHAR(20) NOT NULL
);
INSERT INTO PERSON (P_Ssn, P_Name, P_Address, P_Phone) VALUES
('111-11-1111', 'John Doe', '123 Main St, Anytown USA', '555-555-1212'),
('222-22-2222', 'Jane Smith', '456 Oak St, Anytown USA', '555-555-2323'),
('333-33-3333', 'Bob Johnson', '789 Maple St, Anytown USA', '555-555-3434'),
('444-44-4444', 'Mary Brown', '246 Elm St, Anytown USA', '555-555-4545'),
('555-55-5555', 'Tom Davis', '369 Pine St, Anytown USA', '555-555-5656'),
('666-66-6666', 'Samantha Lee', '258 Cedar St, Anytown USA', '555-555-6767'),
('777-77-7777', 'David Kim', '147 Birch St, Anytown USA', '555-555-7878'),
('888-88-8888', 'Amy Chen', '369 Spruce St, Anytown USA', '555-555-8989'),
('999-99-9999', 'Kevin Brown', '789 Walnut St, Anytown USA', '555-555-9090'),
('111-22-3333', 'Jennifer Lee', '456 Pine St, Anytown USA', '555-555-0101'),
('222-33-4444', 'Michael Lee', '789 Maple St, Anytown USA', '555-555-1212'),
('333-44-5555', 'Karen Smith', '123 Main St, Anytown USA', '555-555-2323'),
('444-55-6666', 'Andrew Johnson', '456 Oak St, Anytown USA', '555-555-3434'),
('555-66-7777', 'Amy Lee', '789 Maple St, Anytown USA', '555-555-4545'),
('666-77-8888', 'Mark Davis', '246 Elm St, Anytown USA', '555-555-5656'),
('777-88-9999', 'Kimberly Chen', '369 Pine St, Anytown USA', '555-555-6767'),
('888-99-0000', 'Jason Kim', '258 Cedar St, Anytown USA', '555-555-7878'),
('999-00-1111', 'Jenny Brown', '147 Birch St, Anytown USA', '555-555-8989'),
('123-45-6789', 'Emily Chen', '369 Spruce St, Anytown USA', '555-555-9090'),
('101-11-2131', 'James Lee', '789 Walnut St, Anytown USA', '555-555-0101');


CREATE TABLE CORPORATION (
  C_ID INT PRIMARY KEY,
  C_Name VARCHAR(50) NOT NULL,
  C_Address VARCHAR(100) NOT NULL,
  C_Phone VARCHAR(20) NOT NULL
);

INSERT INTO CORPORATION (C_ID, C_Name, C_Address, C_Phone)
VALUES 
    (1, 'ABC Corporation', '123 Main St., Anytown, USA', '555-1234'),
    (2, 'XYZ Company', '456 High St., Anytown, USA', '555-5678'),
    (3, 'DEF Enterprises', '789 Oak St., Anytown, USA', '555-9012'),
    (4, 'GHI Inc.', '321 Maple St., Anytown, USA', '555-3456'),
    (5, 'JKL Corp.', '654 Elm St., Anytown, USA', '555-7890'),
    (6, 'MNO Industries', '987 Pine St., Anytown, USA', '555-4321'),
    (7, 'PQR Limited', '246 Birch St., Anytown, USA', '555-8765'),
    (8, 'STU Co.', '369 Cedar St., Anytown, USA', '555-2109'),
    (9, 'VWX Corporation', '582 Walnut St., Anytown, USA', '555-6543'),
    (10, 'YZA Enterprises', '705 Cherry St., Anytown, USA', '555-0987'),
    (11, 'BCD Inc.', '838 Peach St., Anytown, USA', '555-5321'),
    (12, 'EFG Corp.', '961 Plum St., Anytown, USA', '555-9765'),
    (13, 'HIJ Limited', '294 Pineapple St., Anytown, USA', '555-3109'),
    (14, 'KLM Company', '427 Orange St., Anytown, USA', '555-7543'),
    (15, 'NOP Industries', '560 Grape St., Anytown, USA', '555-1987'),
    (16, 'QRS Corporation', '693 Lemon St., Anytown, USA', '555-6432'),
    (17, 'TUV Enterprises', '726 Lime St., Anytown, USA', '555-0876'),
    (18, 'WXY Inc.', '859 Mango St., Anytown, USA', '555-5321'),
    (19, 'ZAB Corp.', '992 Papaya St., Anytown, USA', '555-9765'),
    (20, 'CDE Limited', '125 Raspberry St., Anytown, USA', '555-4209');

CREATE TABLE OWNER (
  O_ID INT PRIMARY KEY,
  P_Ssn VARCHAR(11) NOT NULL,
  C_ID INT,
  FOREIGN KEY (P_Ssn) REFERENCES PERSON (P_Ssn),
  FOREIGN KEY (C_ID) REFERENCES CORPORATION (C_ID)
);

INSERT INTO OWNER (O_ID, P_Ssn, C_ID) VALUES 
    (1, '111-11-1111',NULL),
    (2, '222-22-2222',1),
    (3, '333-33-3333',NULL),
    (4, '444-44-4444',NULL),
    (5, '555-55-5555',NULL),
    (6, '666-66-6666',2),
    (7, '777-77-7777',NULL),
    (8, '888-88-8888',NULL),
    (9, '999-99-9999',NULL),
    (10,'111-22-3333', NULL),
    (11,'222-33-4444', NULL),
    (12,'333-44-5555', NULL),
    (13,'444-55-6666', NULL),
    (14,'555-66-7777', 3),
    (15,'666-77-8888', NULL),
    (16,'777-88-9999', NULL),
    (17,'888-99-0000', NULL),
    (18,'999-00-1111', NULL),
    (19,'123-45-6789', NULL),
    (20,'101-11-2131', NULL);




CREATE TABLE PLANE_TYPE (
  Model VARCHAR(30) PRIMARY KEY,
  P_Capacity INT NOT NULL,
  P_Weight INT NOT NULL
);

INSERT INTO PLANE_TYPE (Model, P_Capacity, P_Weight) VALUES
('Boeing 747', 660, 379800),
('Airbus A320', 220, 77000),
('Cessna 172', 4, 2300),
('Piper Cherokee', 4, 2300),
('Beechcraft Baron', 6, 3800),
('Cirrus SR22', 4, 3000),
('Piper Cub', 2, 750),
('Boeing 737', 189, 82000),
('Airbus A380', 853, 560000),
('Embraer Phenom', 8, 8300),
('Cessna Citation', 9, 4500),
('Pilatus PC-12', 9, 10700),
('Boeing 787', 330, 227800),
('Piper Meridian', 6, 4200),
('Cessna Caravan', 14, 4500),
('Airbus A330', 335, 230000),
('Beechcraft King Air', 8, 7500),
('Gulfstream G650', 19, 54000),
('Bombardier Global Express', 19, 95000),
('Boeing 777', 396, 347100);




CREATE TABLE HANGAR (
  Number INT PRIMARY KEY,
  H_Capacity INT,
  H_Location VARCHAR(10) NOT NULL
);
INSERT INTO Hangar (Number, H_Capacity, H_Location) VALUES 
  (1, 10, 'North'),
  (2, 8, 'South'),
  (3, 12, 'East'),
  (4, 6, 'West'),
  (5, 14, 'Central'),
  (6, 10, 'North'),
  (7, 8, 'South'),
  (8, 12, 'East'),
  (9, 6, 'West'),
  (10, 14, 'Central'),
  (11, 10, 'North'),
  (12, 8, 'South'),
  (13, 12, 'East'),
  (14, 6, 'West'),
  (15, 14, 'Central'),
  (16, 10, 'North'),
  (17, 8, 'South'),
  (18, 12, 'East'),
  (19, 6, 'West'),
  (20, 14, 'Central');
 



CREATE TABLE AIRPLANE (
  Reg# VARCHAR(10) PRIMARY KEY,
  Of_Type VARCHAR(30) NOT NULL, /*relation*/
  Stored_In INT NOT NULL, /*relation*/
  FOREIGN KEY (Of_Type) REFERENCES PLANE_TYPE (Model),
  FOREIGN KEY (Stored_In) REFERENCES HANGAR (Number)
);

INSERT INTO AIRPLANE (Reg#, OF_TYPE, STORED_IN) VALUES
('N1234', 'Boeing 747', 1),
('N2345', 'Airbus A320', 2),
('N3456', 'Cessna 172', 3),
('N4567', 'Piper Cherokee', 1),
('N5678', 'Beechcraft Baron', 2),
('N6789', 'Cirrus SR22', 3),
('N7890', 'Piper Cub', 1),
('N8901', 'Boeing 737', 2),
('N9012', 'Airbus A380', 3),
('N0123', 'Embraer Phenom', 1),
('N2341', 'Cessna Citation', 2),
('N3412', 'Pilatus PC-12', 3),
('N4123', 'Boeing 787', 1),
('N4456', 'Piper Meridian', 2),
('N4789', 'Cessna Caravan', 3),
('N5123', 'Airbus A330', 1),
('N5456', 'Beechcraft King Air', 2),
('N5789', 'Gulfstream G650', 3),
('N6123', 'Bombardier Global Express', 1),
('N6456', 'Boeing 777', 2);





CREATE TABLE EMPLOYEE (
  E_ID INT PRIMARY KEY,
  E_Ssn VARCHAR(11) NOT NULL,
  Salary DECIMAL(10,2) NOT NULL,
  E_Shift VARCHAR(10) NOT NULL,
  FOREIGN KEY (E_Ssn) REFERENCES PERSON (P_Ssn)
);

INSERT INTO Employee (E_ID,E_Ssn, Salary, E_Shift) VALUES 
  (1, '111-11-1111', 50000, 'Day'),
  (2, '222-22-2222', 60000, 'Night'),
  (3, '333-33-3333', 55000, 'Day'),
  (4, '444-44-4444', 65000, 'Night'),
  (5, '555-55-5555', 70000, 'Day'),
  (6, '666-66-6666' , 45000, 'Night'),
  (7, '777-77-7777', 55000, 'Day'),
  (8, '888-88-8888', 60000, 'Night'),
  (9, '999-99-9999', 65000, 'Day'),
  (10,'111-22-3333', 50000, 'Night'),
  (11,'222-33-4444', 55000, 'Day'),
  (12,'333-44-5555', 60000, 'Night'),
  (13,'444-55-6666', 65000, 'Day'),
  (14,'555-66-7777', 70000, 'Night'),
  (15,'666-77-8888', 45000, 'Day'),
  (16,'777-88-9999', 50000, 'Night'),
  (17,'888-99-0000', 55000, 'Day'),
  (18,'999-00-1111' , 60000, 'Night'),
  (19,'123-45-6789', 65000, 'Day'),
  (20,'101-11-2131', 70000, 'Night');





CREATE TABLE PILOT (
  Lic_No VARCHAR(20) PRIMARY KEY,
  Restr VARCHAR(50) NOT NULL,
  Pi_Ssn VARCHAR(11) NOT NULL,
  FOREIGN KEY (Pi_Ssn) REFERENCES PERSON (P_Ssn)
);

INSERT INTO PILOT (Lic_No, Restr, Pi_Ssn) VALUES
('P123456', 'Boeing 747, Airbus A380', '111-11-1111'),
('P234567', 'Airbus A320, Boeing 737', '222-22-2222'),
('P345678', 'Cessna 172', '333-33-3333'),
('P456789', 'Bombardier Global 7500, Gulfstream G550', '444-44-4444'),
('P567890', 'Embraer Phenom 300', '555-55-5555'),
('P678901', 'Piper Cherokee 140', '666-66-6666'),
('P789012', 'Boeing 787, Airbus A380', '777-77-7777'),
('P890123', 'Airbus A320, Boeing 737', '888-88-8888'),
('P901234', 'Cessna 172', '999-99-9999'),
('P012345', 'Bombardier Global 7500, Gulfstream G550', '111-22-3333'),
('P123457', 'Boeing 747, Airbus A380', '222-33-4444'),
('P234568', 'Airbus A320, Boeing 737', '333-44-5555'),
('P345679', 'Cessna 172', '444-55-6666'),
('P456790', 'Bombardier Global 7500, Gulfstream G550', '555-66-7777'),
('P567891', 'Embraer Phenom 300', '666-77-8888'),
('P678902', 'Piper Cherokee 140', '777-88-9999'),
('P789013', 'Boeing 787, Airbus A380', '888-99-0000'),
('P890124', 'Airbus A320, Boeing 737','123-45-6789'),
('P901235', 'Cessna 172', '999-00-1111'),
('P453212','Airbus A320, Boeing 787','101-11-2131');

CREATE TABLE SERVICE_RECORD (
  Service_Id INT PRIMARY KEY,
  Date DATE NOT NULL,
  Hours INT NOT NULL,
  Work_Code VARCHAR(30) NOT NULL
);

INSERT INTO SERVICE_RECORD (Service_Id, Date, Hours, Work_code) VALUES 
    (1, '2022-01-02', 3, 'Oil Change'),
    (2, '2022-03-04', 5, 'Tire Replacement'),
    (3, '2022-05-06', 8, 'Engine Overhaul'),
    (4, '2022-02-10', 4, 'Oil Change'),
    (5, '2022-04-20', 6, 'Tire Replacement'),
    (6, '2022-06-30', 9, 'Engine Overhaul'),
    (7, '2022-01-12', 2, 'Oil Change'),
    (8, '2022-03-24', 7, 'Tire Replacement'),
    (9, '2022-05-28', 10, 'Engine Overhaul'),
    (10, '2022-02-15', 3, 'Oil Change'),
    (11, '2022-04-30', 6, 'Tire Replacement'),
    (12, '2022-07-05', 9, 'Engine Overhaul'),
    (13, '2022-01-22', 5, 'Oil Change'),
    (14, '2022-04-02', 4, 'Tire Replacement'),
    (15, '2022-06-11', 7, 'Engine Overhaul'),
    (16, '2022-02-18', 2, 'Oil Change'),
    (17, '2022-04-24', 3, 'Tire Replacement'),
    (18, '2022-06-26', 8, 'Engine Overhaul'),
    (19, '2022-01-28', 4, 'Oil Change'),
    (20, '2022-03-16', 6, 'Tire Replacement');


/*relates the Airplane and Service Record table*/

CREATE TABLE PLANE_SERVICE (
  Reg# VARCHAR(10) NOT NULL,
  ServiceID INT NOT NULL,
  FOREIGN KEY (Reg#) REFERENCES AIRPLANE (Reg#),
  FOREIGN KEY (ServiceID) REFERENCES SERVICE_RECORD (Service_Id)
);
INSERT INTO PLANE_SERVICE (Reg#, ServiceID) VALUES
('N1234', '1'),
('N2345', '2'),
('N3456', '3'),
('N4567', '4'),
('N5678', '5'),
('N6789', '6'),
('N7890', '7'),
('N8901', '8'),
('N9012', '9'),
('N0123', '10'),
('N2341', '11'),
('N3412', '12'),
('N4123', '13'),
('N4456', '14'),
('N4789', '15'),
('N5123', '16'),
('N5456', '17'),
('N5789', '18'),
('N6123', '19'),
('N6456', '20');

/*relates the Airplane and Owner Record table*/
CREATE TABLE OWNS (
  OwnerID INT NOT NULL,
  Reg# VARCHAR(10) NOT NULL,
  Pdate DATE NOT NULL,
  FOREIGN KEY (OwnerID) REFERENCES OWNER (O_ID),
  FOREIGN KEY (Reg#) REFERENCES AIRPLANE (Reg#)
);

INSERT INTO OWNS (OwnerID, Reg#, Pdate) VALUES
(1, 'N1234', '2022-01-01'),
(2, 'N2345', '2022-02-15'),
(3, 'N3456', '2022-03-20'),
(4, 'N4567', '2022-04-03'),
(5, 'N5678', '2022-05-10'),
(6, 'N6789', '2022-06-14'),
(7, 'N7890', '2022-07-22'),
(8, 'N8901', '2022-08-28'),
(9, 'N9012', '2022-09-10'),
(10,'N0123', '2022-10-15'),
(11,'N2341', '2022-11-18'),
(12,'N3412', '2022-12-22'),
(13,'N4123', '2023-01-01'),
(14,'N4456', '2023-02-14'),
(15,'N4789', '2023-03-20'),
(16,'N5123', '2023-04-03'),
(17,'N5456', '2023-05-10'),
(18,'N5789', '2023-06-14'),
(19,'N6123', '2023-07-22'),
(20,'N6456', '2023-08-28');


/*relates the Plane Type and Employee Record table*/
CREATE TABLE WORKS_ON (
  EmpID INT NOT NULL,
  OF_TYPE VARCHAR(30) NOT NULL,
  FOREIGN KEY (EmpID) REFERENCES EMPLOYEE (E_ID),
  FOREIGN KEY (OF_TYPE) REFERENCES PLANE_TYPE (Model)
);

INSERT INTO WORKS_ON (EmpID, OF_TYPE) VALUES
(1, 'Boeing 747'),
(2, 'Airbus A320'),
(3, 'Cessna 172'),
(4, 'Piper Cherokee'),
(5, 'Beechcraft Baron'),
(6, 'Cirrus SR22'),
(7, 'Piper Cub'),
(8, 'Boeing 737'),
(9, 'Airbus A380'),
(10,'Embraer Phenom'),
(11,'Cessna Citation'),
(12,'Pilatus PC-12'),
(13,'Boeing 787'),
(14,'Piper Meridian'),
(15,'Cessna Caravan'),
(16,'Airbus A330'),
(17,'Beechcraft King Air'),
(18,'Gulfstream G650'),
(19,'Bombardier Global Express'),
(20,'Boeing 777');




/*relates the Plane Type and Employee Record table*/
CREATE TABLE FLIES (
  Lic_num VARCHAR(20) NOT NULL,
  OF_TYPE VARCHAR(30) NOT NULL,
  FOREIGN KEY (Lic_num) REFERENCES PILOT (Lic_no),
  FOREIGN KEY (OF_TYPE) REFERENCES PLANE_TYPE (Model)
);
INSERT INTO FLIES (Lic_num, OF_TYPE) VALUES
('P123456', 'Boeing 747'),
('P234567', 'Airbus A320'),
('P345678', 'Cessna 172'),
('P456789', 'Piper Cherokee'),
('P567890', 'Beechcraft Baron'),
('P678901', 'Cirrus SR22'),
('P789012', 'Piper Cub'),
('P890123', 'Boeing 737'),
('P901234', 'Airbus A380'),
('P012345', 'Embraer Phenom'),
('P123457', 'Cessna Citation'),
('P234568', 'Pilatus PC-12'),
('P345679', 'Boeing 787'),
('P456790', 'Piper Meridian'),
('P567891', 'Cessna Caravan'),
('P678902', 'Airbus A330'),
('P789013', 'Beechcraft King Air'),
('P890124', 'Gulfstream G650'),
('P901235', 'Bombardier Global Express'),
('P453212', 'Boeing 777');
/*
select * from PERSON
select * from CORPORATION
select * from EMPLOYEE
select * from WORKS_ON
select * from PLANE_SERVICE
select * from PILOT
select * from FLIES
select * from PLANE_TYPE
select * from AIRPLANE
select * from SERVICE_RECORD
select * from HANGAR
*/


--plane that has not undergone mantainance does not exist in the PLANE_SERVICE
--meaning its's Reg# is not in PLANE_SERVICE

--Q#3
SELECT AIRPLANE.Reg#
FROM AIRPLANE
LEFT JOIN PLANE_SERVICE ON AIRPLANE.Reg# = PLANE_SERVICE.Reg#
WHERE PLANE_SERVICE.Reg# IS NULL;

--Q#4
SELECT C.C_Name, C.C_Address
FROM CORPORATION C
JOIN OWNS o ON c.C_ID = o.OwnerID
JOIN AIRPLANE a ON o.Reg# = a.Reg#
JOIN PLANE_TYPE p ON p.Model = a.Of_Type
WHERE p.P_Capacity>200;

--Q#5
SELECT AVG(E.Salary) as AVG_Employee_Salary
FROM EMPLOYEE E
WHERE E.E_Shift = 'Night';

--Q#6
SELECT top 5 (employee.E_ID),PERSON.P_Name, SUM(SERVICE_RECORD.Hours) AS total_hours
FROM employee
INNER JOIN SERVICE_RECORD ON employee.E_ID = SERVICE_RECORD.Service_Id
JOIN PERSON on EMPLOYEE.E_Ssn = PERSON.P_Ssn
GROUP BY employee.E_ID,PERSON.P_Name
ORDER BY total_hours DESC;

--Q#7
SELECT AIRPLANE.Of_Type, AIRPLANE.Reg#
FROM PLANE_SERVICE
INNER JOIN AIRPLANE ON PLANE_SERVICE.Reg# = AIRPLANE.Reg#
Join SERVICE_RECORD ON SERVICE_RECORD.Service_Id =PLANE_SERVICE.ServiceID
WHERE SERVICE_RECORD.Date >= DATEADD(WEEK, -1, GETDATE());
--Our data has no record of -1 week but we can change the time duration to determine its working

--Q#8
SELECT PERSON.P_Name, PERSON.P_Phone
FROM OWNER
INNER JOIN PERSON ON OWNER.P_Ssn = PERSON.P_Ssn
INNER JOIN OWNS ON OWNER.O_ID = OWNS.OwnerID
WHERE OWNS.Pdate >= DATEADD(month, -1, GETDATE());


--Q#9
SELECT PERSON.P_Name,count(FLIES.OF_TYPE)
FROM PILOT
inner join PERSON on PILOT.Pi_Ssn = PERSON.P_Ssn
inner join FLIES on PILOT.Lic_No = FLIES.Lic_num
group by P_Name, Lic_No


--Q#10

select top 1(HANGAR.Number),HANGAR.H_Location, max(HANGAR.H_Capacity) as h
from HANGAR
group by Hangar.Number, HANGAR.H_Location 
order by h desc;

--q#11

select corporation.C_ID,CORPORATION.C_Name, count(OWNS.Reg#) as Num_Of_Planes
from CORPORATION 
inner join owner on CORPORATION.C_ID=OWNER.C_ID
inner join OWNS on Owner.O_ID=OWNS.OwnerID
group by Corporation.C_ID, CORPORATION.C_Name, Owns.Reg#
order by Num_Of_Planes desc;

--q#12
select PLANE_TYPE.Model,avg(SERVICE_RECORD.Hours) as Avg_Num_Of_Maintenance_Hours
from PLANE_TYPE
inner join AIRPLANE on PLANE_TYPE.Model=AIRPLANE.Of_Type
inner join PLANE_SERVICE on AIRPLANE.Reg#=PLANE_SERVICE.Reg#
inner join SERVICE_RECORD on PLANE_SERVICE.ServiceID=SERVICE_RECORD.Service_Id
group by PLANE_TYPE.Model
order by Avg_Num_Of_Maintenance_Hours desc;


--Q#13
SELECT DISTINCT o.O_ID,PERSON.P_Name,CORPORATION.C_Name
FROM Owner o
INNER JOIN owns ON owns.OwnerID = o.O_ID
Inner JOIN PERSON on Person.P_Ssn=o.P_Ssn
Inner JOIN CORPORATION on CORPORATION.C_ID=o.C_ID
INNER JOIN AIRPLANE a ON a.Reg# = owns.Reg#
JOIN Employee e ON e.E_ID = e.E_ID
JOIN SERVICE_RECORD s ON s.Service_Id = e.E_ID
JOIN PLANE_SERVICE p ON p.ServiceID = s.Service_Id
WHERE s.Work_Code IS NULL
group by o.O_ID,PERSON.P_Name,CORPORATION.C_Name


--Q#14
SELECT DISTINCT c.C_Name,c.C_Phone
FROM OWNER o
JOIN OWNS ow ON o.O_ID = ow.OwnerID
JOIN CORPORATION c ON o.C_ID = c.C_ID
join AIRPLANE a ON ow.Reg# = a.Reg#
JOIN HANGAR h ON a.Stored_In = h.Number
WHERE c.C_Address = h.H_Location;

--Q#15
SELECT DISTINCT PERSON.P_Name AS pilot_name
FROM PILOT AS p
Join PERSON ON p.Pi_Ssn = PERSON.P_Ssn 
Join FLIES On p.Lic_No = FLIES.Lic_num
Join AIRPLANE on FLIES.OF_TYPE = AIRPLANE.Of_Type
Join PLANE_SERVICE on AIRPLANE.Reg# = PLANE_SERVICE.Reg#
Join SERVICE_RECORD on PLANE_SERVICE.ServiceID = SERVICE_RECORD.Service_Id
where SERVICE_RECORD.Work_Code is not null;


--q#16

select PERSON.P_Name,CORPORATION.C_Name, sum(SERVICE_RECORD.Hours) as Total_Num_Of_Hours
from EMPLOYEE
join  PERSON on EMPLOYEE.E_Ssn=PERSON.P_Ssn
join WORKS_ON on EMPLOYEE.E_ID=WORKS_ON.EmpID
join PLANE_SERVICE on PLANE_SERVICE.ServiceID=WORKS_ON.EmpID
join SERVICE_RECORD on PLANE_SERVICE.ServiceID=SERVICE_RECORD.Service_Id
join AIRPLANE on AIRPLANE.Reg#=PLANE_SERVICE.Reg#
join OWNS on AIRPLANE.Reg#=OWNS.Reg#
join OWNER on owns.OwnerID=OWNER.O_ID
join CORPORATION on CORPORATION.C_ID=owner.C_ID
where C_Name= 'XYZ COMPANY'
group by PERSON.P_Name, C_Name
order by Total_Num_Of_Hours desc;

--q#17

select distinct AIRPLANE.Reg#,AIRPLANE.Of_Type
from AIRPLANE
join OWNS on AIRPLANE.Reg#=OWNS.Reg#
join OWNER on OWNER.O_ID=owns.OwnerID 
join PLANE_SERVICE on PLANE_SERVICE.Reg#=AIRPLANE.Reg#
join SERVICE_RECORD on PLANE_SERVICE.ServiceID=SERVICE_RECORD.Service_Id
join EMPLOYEE on SERVICE_RECORD.Service_Id=EMPLOYEE.E_ID
where OWNER.C_ID is null
and EMPLOYEE.E_Shift='Day';

--q#18

select CORPORATION.C_Name,CORPORATION.C_Address
from CORPORATION
join OWNER on OWNER.C_ID=CORPORATION.C_ID
join OWNS o1 on OWNER.O_ID=o1.OwnerID
join owns o2 on OWNER.O_ID=o2.OwnerID
join AIRPLANE a1 on o1.Reg#= a1.Reg#
join airplane a2 on o2.Reg#=a2.Reg#
where a1.Of_Type=a2.Of_Type
and o1.Pdate>DATEADD(month,-1,GETDATE());


--Q#19
SELECT hangar.Number, COUNT(AIRPLANE.Stored_In) as total_planes
FROM hangar
LEFT JOIN AIRPLANE ON hangar.Number = AIRPLANE.Stored_In
GROUP BY hangar.Number

--Q#20
SELECT AIRPLANE.Of_Type, COUNT(AIRPLANE.Of_Type) as total_planes_of_this_type
FROM AIRPLANE
LEFT JOIN PLANE_TYPE ON AIRPLANE.Of_Type = PLANE_TYPE.Model
GROUP BY AIRPLANE.Of_Type;

--Q#21
SELECT PLANE_SERVICE.Reg#, COUNT(*) as Total_Services
from SERVICE_RECORD
join PLANE_SERVICE ON PLANE_SERVICE.ServiceID=SERVICE_RECORD.Service_Id
group by PLANE_SERVICE.Reg#
order by total_services desc;

--Q#22
SELECT EMPLOYEE.E_Shift,AVG(EMPLOYEE.Salary) as Average_Employees
from EMPLOYEE
group by EMPLOYEE.E_Shift;

--Q#23
SELECT O_ID, COUNT(*) as Number_Of_Planes
from OWNER
join owns ON owns.OwnerID=OWNER.O_ID
group by O_ID
order by Number_Of_Planes desc;

--Q#24
SELECT PILOT.Lic_No, COUNT(FLIES.OF_TYPE) as Num_Types_Planes_Auth
from PILOT
join FLIES ON flies.Lic_num=PILOT.Lic_No
group by PILOT.Lic_No
order by Num_Types_Planes_Auth desc;

--Q#25
--Total number of pilots and employees in the airport
select count(*) from EMPLOYEE
select count(*) from PILOT;
/*
As simple as it may sound, query is important because it provides the total count of employees 
in the company. This information can be used for various purposes such as tracking employee growth, 
analyzing labor costs, and comparing employee counts across different departments or shifts.
*/

--most common service
SELECT top 1 (service_record.Work_Code), COUNT(*) AS times_done
FROM SERVICE_RECORD
GROUP BY SERVICE_RECORD.Work_Code
ORDER BY times_done DESC;
/*
This query finds the most common work code performed on planes 
by grouping the service_records table by the work code
and counting the number of services for each type. 
*/

--number of planes owned by persons
SELECT person.P_Name, COUNT(DISTINCT AIRPLANE.Reg#) AS num_planes
FROM PERSON
INNER JOIN OWNER ON OWNER.P_Ssn = PERSON.P_Ssn
INNER JOIN owns ON owns.OwnerID = owner.O_ID
INNER JOIN AIRPLANE ON AIRPLANE.Reg# = owns.Reg#
where OWNER.C_ID is NULL
GROUP BY PERSON.P_Name;


-- models of airplanes and their registered planes in service with capacity more than 300
select PLANE_TYPE.Model,AIRPLANE.Reg#,PLANE_TYPE.P_Capacity
from PLANE_TYPE
left join AIRPLANE on AIRPLANE.Of_Type = PLANE_TYPE.Model
where PLANE_TYPE.P_Capacity>300
group by AIRPLANE.Reg#,PLANE_TYPE.Model,PLANE_TYPE.P_Capacity;
