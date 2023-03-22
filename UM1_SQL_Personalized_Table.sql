--first of all we will create the database in which we are going to work for university
CREATE DATABASE UniversityManagement

--now we will change the present working database
USE UniversityManagement


--=============================================================================================================================================

--first of all we will create student's personal information 
CREATE TABLE Student_Personal_Details
(
	Student_ID INT IDENTITY(1,1) PRIMARY KEY,
	Student_Name VARCHAR(20) NOT NULL,
	Student_Email VARCHAR(30) NOT NULL,
	Student_DOB  DATE NOT NULL ,
	Student_Phone VARCHAR(15) NOT NULL,
	Student_Address VARCHAR(25) NOT NULL,
	Created_Date DATE NOT NULL CONSTRAINT Default_Date DEFAULT GETDATE(),
	CreatedBy VARCHAR(20) NOT NULL DEFAULT SYSTEM_USER,
	Modified_Date DATE,
	ModifiedBy VARCHAR(15),
	Deleted_Date DATE,
	DeletedBy VARCHAR(15)
)

-- incase we need to delete the table
--DROP TABLE Student_Personal_Details;

--==============================================================================================================================================

--now we will create professor's personal information table
CREATE TABLE Professor_Personal_Details
(
	Prof_ID INT IDENTITY(100,1) PRIMARY KEY,
	Prof_Name VARCHAR(20) NOT NULL,
	Prof_Email VARCHAR(30) NOT NULL,
	Prof_DOB DATE NOT NULL,
	Prof_Phone VARCHAR(15) NOT NULL,
	Prof_DOJ DATE NOT NULL,
	Prof_Address VARCHAR(25) NOT NULL,
	Created_Date DATE NOT NULL DEFAULT GETDATE(),
	CreatedBY VARCHAR(20) NOT NULL DEFAULT SYSTEM_USER,
	Modified_Date DATE,
	ModifiedBy VARCHAR(15),
	Deleted_Date DATE,
	DeletedBy VARCHAR(20)
)

--incase we need to drop the table
 --DROP TABLE Professor_Personal_Details

--===============================================================================================================================================

--now we will create the non academic staff's personal details
CREATE TABLE Staff_Personal_Details
(
	Staff_ID INT IDENTITY(200,1) PRIMARY KEY,
	Staff_Name VARCHAR(20) NOT NULL,
	Staff_Email VARCHAR(20) NOT NULL,
	Staff_DOB DATE NOT NULL,
	Staff_Phone VARCHAR(15) NOT NULL,
	Staff_DOJ DATE NOT NULL,
	Staff_Address VARCHAR(25) NOT NULL,
	Created_Date DATE NOT NULL DEFAULT GETDATE(),
	CreatedBY VARCHAR(20) NOT NULL DEFAULT SYSTEM_USER,
	Modified_Date DATE,
	ModifiedBy VARCHAR(15),
	Deleted_Date DATE,
	DeletedBy VARCHAR(15)
)

--incase we need to delete the table
--DROP TABLE Staff_Personal_Details








	