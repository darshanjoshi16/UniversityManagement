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
	Created_Date VARCHAR(20) NOT NULL CONSTRAINT Default_Date DEFAULT CONVERT(VARCHAR(10),GETDATE(),105),
	CreatedBy VARCHAR(20) NOT NULL DEFAULT SYSTEM_USER,
	Modified_Date VARCHAR(20),
	ModifiedBy VARCHAR(15),
	Deleted_Date VARCHAR(20),
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
	Created_Date VARCHAR(20) NOT NULL DEFAULT CONVERT(VARCHAR(10),GETDATE(),105),
	CreatedBY VARCHAR(20) NOT NULL DEFAULT SYSTEM_USER,
	Modified_Date VARCHAR(20),
	ModifiedBy VARCHAR(15),
	Deleted_Date VARCHAR(20),
	DeletedBy VARCHAR(15)
)

--incase we need to drop the table
-- DROP TABLE Professor_Personal_Details

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
	Created_Date VARCHAR(20) NOT NULL DEFAULT CONVERT(VARCHAR(10),GETDATE(),105),
	CreatedBY VARCHAR(20) NOT NULL DEFAULT SYSTEM_USER,
	Modified_Date VARCHAR(20),
	ModifiedBy VARCHAR(15),
	Deleted_Date VARCHAR(20),
	DeletedBy VARCHAR(15)
)

--incase we need to delete the table
-- DROP TABLE Staff_Personal_Details



--===========================================================================================================

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


--======================================================================================================================

--first of all we will change the present working database
USE UniversityManagement

--in this file we will create the tables which will establish the relationship between the entities

--===================================================================================================================

--we will create the table to establish relation between Professor and Department entities
CREATE TABLE Professor_Department
(
	Prof_ID INT NOT NULL,
	Department_ID INT NOT NULL
	PRIMARY KEY (Prof_ID,Department_ID)
)

--incase we need to drop the table
--DROP TABLE Professor_Department;

--===================================================================================================================

--we will create the table to establish the relation between non academic staff and Department entities
CREATE TABLE Staff_Department
(
	Staff_ID INT NOT NULL,
	Department_ID INT NOT NULL
	PRIMARY KEY (Staff_ID,Department_ID)
)

--incase we need to drop the table
--DROP TABLE Staff_Department


--===================================================================================================================

--we will create the table to establish the relation between subjects and department and degree
CREATE TABLE Subject_Department_Degree
(
	Subject_ID INT NOT NULL,
	Degree_ID INT NOT NULL,
	Department_ID INT NOT NULL
	PRIMARY KEY (Subject_ID,Degree_ID)
)

--incase we need to drop the table
--DROP TABLE Subject_Department_Degree

--==================================================================================================================

--we will create the table to establish the relation between professor and subjects
CREATE TABLE Professor_Subject
(
	Prof_ID INT NOT NULL,
	Subject_ID INT NOT NULL
	PRIMARY KEY(Prof_ID,Subject_ID)
)

--incase we need to drop the table
--DROP TABLE Professor_Subject

--==================================================================================================================

--we will create the table to establish the relation between the student and degree
CREATE TABLE Student_Degree
(
	Student_ID INT NOT NULL,
	Degree_ID INT NOT NULL,
	PRIMARY KEY (Student_ID,Degree_ID)
)

--incase we need to drop the table
--DROP TABLE Student_Degree




--=====================================================================================================================================

--first of all we will change the present working database
USE UniversityManagement

--ALTER TABLE ChildTable
--ADD CONSTRAINT FK_ForeignKeyName
--FOREIGN KEY (ChildTableColumnName) REFERENCES ParentTable (ParentTableColumnName);

--in this file we will establish the neccesary foreign key constraints which will establish the relationships

--===================================================================================================================

--we will establish the foreign key references for Professor_Department table

--it will create the foreign key reference for the Prof_ID column
ALTER TABLE Professor_Department
ADD CONSTRAINT FK_Professor_1
FOREIGN KEY (Prof_ID) REFERENCES Professor_Personal_Details(Prof_ID);

--it will create the foreign key reference for Department_ID column
ALTER TABLE Professor_Department
ADD CONSTRAINT FK_Department_1
FOREIGN KEY (Department_ID) REFERENCES Department_Details(Department_ID);

--====================================================================================================================

--we will establish the foreign key references for the Professor_Subject table

--it will create the foreign key reference for Prof_ID column
ALTER TABLE Professor_Subject
ADD CONSTRAINT FK_Professor_2
FOREIGN KEY (Prof_ID) REFERENCES Professor_Personal_Details(Prof_ID);

--it will create the foreign key reference for Subject_ID column
ALTER TABLE Professor_Subject
ADD CONSTRAINT FK_Subject_1
FOREIGN KEY (Subject_ID) REFERENCES Subject_Details(Subject_ID);

--====================================================================================================================

--we will establish the foreign key references for staff_Department table

--it will create the foreign key reference for the Staff_ID column
ALTER TABLE Staff_Department
ADD CONSTRAINT FK_Staff_1
FOREIGN KEY (Staff_ID) REFERENCES Staff_Personal_Details(Staff_ID);

--it will create the foreign key reference for Department_ID column
ALTER TABLE Staff_Department
ADD CONSTRAINT FK_Department_2
FOREIGN KEY (Department_ID) REFERENCES Department_Details(Department_ID);

--===================================================================================================================

--we will establish the foreign key reference for the Student_Degree table

--it will create the foreign key reference for the Student_ID column
ALTER TABLE Student_Degree
ADD CONSTRAINT FK_Student_1
FOREIGN KEY (Student_ID) REFERENCES Student_Personal_Details(Student_ID);

--it will create the foreign key reference for Degree_ID column
ALTER TABLE Student_Degree
ADD CONSTRAINT FK_Degree_1
FOREIGN KEY (Degree_ID) REFERENCES Degree_Details(Degree_ID);

--====================================================================================================================

--we will establish the foreign key references for Subject_Department table

--it will create the foreign key reference for the Subject_ID column
ALTER TABLE Subject_Department_Degree
ADD CONSTRAINT FK_Subject_2
FOREIGN KEY (Subject_ID) REFERENCES Subject_Details(Subject_ID);

--it will create the foreign key reference for Degree_ID column
ALTER TABLE Subject_Department_Degree
ADD CONSTRAINT FK_Degree_2
FOREIGN KEY (Degree_ID) REFERENCES Degree_Details(Degree_ID);

--it will create the foreign key reference for the Department_ID column
ALTER TABLE Subject_Department_Degree
ADD CONSTRAINT FK_Department_3
FOREIGN KEY (Department_ID) REFERENCES Department_Details (Department_ID);


--==========================END=====================================================================================






	