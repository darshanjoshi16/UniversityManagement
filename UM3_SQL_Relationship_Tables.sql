--first of all we will change the present working database
USE UniversityManagement

--in this file we will create the tables which will establish the relationship between the entities

--===================================================================================================================

--we will create the table to establish relation between Professor and Department entities
CREATE TABLE Professor_Department
(
	Professor_Department_ID INT NOT NULL PRIMARY KEY,
	Prof_ID INT NOT NULL,
	Department_ID INT NOT NULL
	
)

--incase we need to drop the table
--DROP TABLE Professor_Department;

--===================================================================================================================

--we will create the table to establish the relation between non academic staff and Department entities
CREATE TABLE Staff_Department
(
	Staff_Department_ID INT NOT NULL PRIMARY KEY,
	Staff_ID INT NOT NULL,
	Department_ID INT NOT NULL
	
)

--incase we need to drop the table
--DROP TABLE Staff_Department


--===================================================================================================================

--we will create the table to establish the relation between subjects and department and degree
CREATE TABLE Subject_Department_Degree
(
	Subject_Department_Degree_ID INT NOT NULL PRIMARY KEY,
	Subject_ID INT NOT NULL,
	Degree_ID INT NOT NULL,
	Department_ID INT NOT NULL
	
)

--incase we need to drop the table
--DROP TABLE Subject_Department_Degree

--==================================================================================================================

--we will create the table to establish the relation between professor and subjects
CREATE TABLE Professor_Subject
(
	Professor_Subject_ID INT NOT NULL PRIMARY KEY,
	Prof_ID INT NOT NULL,
	Subject_ID INT NOT NULL
)

--incase we need to drop the table
--DROP TABLE Professor_Subject

--==================================================================================================================

--we will create the table to establish the relation between the student and degree
CREATE TABLE Student_Degree
(
	Student_Degree_ID INT NOT NULL PRIMARY KEY,
	Student_ID INT NOT NULL,
	Degree_ID INT NOT NULL,
	
)

--incase we need to drop the table
--DROP TABLE Student_Degree




