--first of all we will change the present working database 
USE UniversityManagement

--==============================================================================================================================
--now we will create the essential tables which are important to determine the relationships between different entities


--first of all we will create the department table which will contain the details of the department
CREATE TABLE Department_Details
(
	Department_ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	Department_Name VARCHAR(20) NOT NULL,
	Department_Desc VARCHAR(40) NOT NULL,
	Department_Head VARCHAR(15) NOT NULL,
	Department_Phone VARCHAR(15) NOT NULL,
	Created_Date VARCHAR(12) NOT NULL DEFAULT CONVERT(VARCHAR(10),GETDATE(),105),
	CreatedBy VARCHAR(10) NOT NULL DEFAULT SYSTEM_USER
)

--Incase we need to drop the table
--DROP TABLE Department_Details

--===============================================================================================================================

--now we will create the table of degrees offered by the department/university
CREATE TABLE Degree_Details
(
	Degree_ID INT IDENTITY(100,1) NOT NULL PRIMARY KEY,
	Degree_Name VARCHAR(20) NOT NULL,
	Degree_Type VARCHAR(10) NOT NULL,
	Degree_Duration TINYINT NOT NULL,
	Degree_Desc VARCHAR(40) NOT NULL,
	Created_Date VARCHAR(12) NOT NULL DEFAULT CONVERT(VARCHAR(10),GETDATE(),105),
	CreatedBy VARCHAR(10) NOT NULL DEFAULT SYSTEM_USER
)

--Incase we need to drop the table
--DROP TABLE Degree_Details

--================================================================================================================================

--now we will create the tables of subjects offered in the degree by the department/university
CREATE TABLE Subject_Details
(
	Subject_ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	Subject_Name VARCHAR(20) NOT NULL,
	Subject_Credits TINYINT NOT NULL,
	Subject_Desc VARCHAR(40) NOT NULL,
	Created_Date VARCHAR(12) NOT NULL DEFAULT CONVERT(VARCHAR(10),GETDATE(),105),
	CreatedBy VARCHAR(10) NOT NULL DEFAULT SYSTEM_USER

)

--Incase we need to drop the table
--DROP TABLE Subject_Details