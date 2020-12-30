--change the datatype 
alter table [dbo].[tblEmployee]
alter column Name   int

--change column null or not null
ALTER TABLE tblEmployee
ALTER COLUMN Name int  NULL;

ALTER TABLE tblEmployee
ADD dasunq int NOT NULL 
CONSTRAINT cont_das DEFAULT 1
--

CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL,
    PersonID int CONSTRAINT cont_das FOREIGN KEY REFERENCES Persons(PersonID)
);

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT uniqu_one UNIQUE (ID,LastName)
);

alter table tblEmployee
add constraint cont_de
default('a') for DepartmentId


CREATE TABLE Personsaaa (
    ID int NOT NULL CONSTRAINT asasa UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);