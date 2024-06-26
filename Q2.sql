--Q2--
CREATE TABLE AIRPLANE (
  Reg# INT PRIMARY KEY,
  OF_TYPE INT,
  STORED_IN INT,
 FOREIGN KEY (OF_TYPE) REFERENCES PLANE_TYPE (Model)
 FOREIGN KEY (STORED_IN) REFERENCES HANGAR(Number)
);


CREATE TABLE PLANE_TYPE (
  Model INT PRIMARY KEY,
  Capacity INT,
  Weight INT
  
);


CREATE TABLE HANGAR (
  Number INT PRIMARY KEY ,
  Capacity INT,
  Location VARCHAR(255)
);




CREATE TABLE PERSON (
  Ssn INT PRIMARY KEY,
  Name VARCHAR(50),
  Address VARCHAR(100),
  Phone VARCHAR(20)
);


CREATE TABLE EMPLOYEE (
  Ssn INT,
  Name VARCHAR(50),
  Address VARCHAR(100),
  Phone VARCHAR(20),
  Salary DECIMAL(10, 2),
  Shift VARCHAR(10)
  FOREIGN KEY (Ssn) REFERENCES Person(Ssn)
);

CREATE TABLE PILOT (
  Ssn INT,
  Name VARCHAR(50),
  Address VARCHAR(100),
  Phone VARCHAR(20),
  Lic_num VARCHAR(20),
  Restr VARCHAR(50),
  FOREIGN KEY (Ssn) REFERENCES PERSON(Ssn)
);



CREATE TABLE CORPORATION (
  Name VARCHAR(255) PRIMARY KEY,
  Address VARCHAR(255),
  Phone VARCHAR(255)
);

CREATE TABLE OWNER (
  Ssn INT PRIMARY KEY,
  Name VARCHAR(255),
  Address VARCHAR(255),
  Phone VARCHAR(255)
  FOREIGN KEY (Ssn) REFERENCES PERSON(Ssn)
);


CREATE TABLE OWNS (
  Reg# INT,
  Ssn INT,
  C_name INT,
  Pdate DATE,
  FOREIGN KEY (Reg#) REFERENCES AIRPLANE(Reg#),
  FOREIGN KEY (Ssn) REFERENCES OWNER(Ssn)
);



CREATE TABLE SERVICE (
  ServiceID INT PRIMARY KEY,
  Reg# INT,
  Date DATE,
  Hours DECIMAL(5, 2),
  Work_code VARCHAR(10),
  FOREIGN KEY (Reg#) REFERENCES AIRPLANE(Reg#)
);

CREATE TABLE MAINTAINS (
  ServiceID INT,
  Ssn INT,
  PRIMARY KEY (ServiceID, Ssn),
  FOREIGN KEY (ServiceID) REFERENCES SERVICE(ServiceID),
  FOREIGN KEY (Ssn) REFERENCES PERSON(Ssn)
);

CREATE TABLE PLANE_SERVICE (
  Reg# INT,
  Service_id INT,
  PRIMARY KEY (Reg#, Service_id),
  FOREIGN KEY (Reg#) REFERENCES AIRPLANE (Reg#),
  FOREIGN KEY (Service_id) REFERENCES SERVICE (ServiceId)
);

-- Create the FLIES table
CREATE TABLE FLIES (
  Ssn INT ,
  Model INT,
  PRIMARY KEY (Ssn, Model),
  FOREIGN KEY (Ssn) REFERENCES PERSON (Ssn),
  
);

-- Create the WORKS_ON table
CREATE TABLE WORKS_ON (
  Ssn INT,
  Model INT,
  PRIMARY KEY (Ssn, Model),
  FOREIGN KEY (Ssn) REFERENCES PERSON (Ssn),
 
);

