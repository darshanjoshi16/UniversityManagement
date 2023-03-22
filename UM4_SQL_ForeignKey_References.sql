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
ADD CONSTRAINT FK_Professor_Personal_Department
FOREIGN KEY (Prof_ID) REFERENCES Professor_Personal_Details(Prof_ID)

--incase we need to drop the constraint
--ALTER TABLE Professor_Department DROP CONSTRAINT FK_Professor_Personal_Department

--it will create the foreign key reference for Department_ID column
ALTER TABLE Professor_Department
ADD CONSTRAINT FK_Professor_Department_Details
FOREIGN KEY (Department_ID) REFERENCES Department_Details(Department_ID);

--incase we need to drop the constraint 
--ALTER TABLE Professor_Department DROP CONSTRAINT FK_Professor_Department_Details

--====================================================================================================================

--we will establish the foreign key references for the Professor_Subject table

--it will create the foreign key reference for Prof_ID column
ALTER TABLE Professor_Subject
ADD CONSTRAINT FK_Professor_Subject_Personal_Details
FOREIGN KEY (Prof_ID) REFERENCES Professor_Personal_Details(Prof_ID);

--incase we need to drop the constraint
--ALTER TABLE Professor_Subject DROP CONSTRAINT FK_Professor_Subject_Personal_Details

--it will create the foreign key reference for Subject_ID column
ALTER TABLE Professor_Subject
ADD CONSTRAINT FK_Subject_Professor_Personal_Details
FOREIGN KEY (Subject_ID) REFERENCES Subject_Details(Subject_ID);

--incase we need to drop the constraint
--ALTER TABLE Professor_Subject DROP CONSTRAINT FK_Subject_Professor_Personal_Details

--====================================================================================================================

--we will establish the foreign key references for staff_Department table

--it will create the foreign key reference for the Staff_ID column
ALTER TABLE Staff_Department
ADD CONSTRAINT FK_Staff_Department_Personal_Details
FOREIGN KEY (Staff_ID) REFERENCES Staff_Personal_Details(Staff_ID);

--incase we need to drop the constraint
--ALTER TABLE Staff_Department DROP CONSTRAINT FK_Staff_Department_Personal_Details

--it will create the foreign key reference for Department_ID column
ALTER TABLE Staff_Department
ADD CONSTRAINT FK_Department_Staff_Department_Details
FOREIGN KEY (Department_ID) REFERENCES Department_Details(Department_ID);

--incase we need to drop the constraint
--ALTER TABLE Staff_Department DROP CONSTRAINT FK_Department_Staff_Department_Details

--===================================================================================================================

--we will establish the foreign key reference for the Student_Degree table

--it will create the foreign key reference for the Student_ID column
ALTER TABLE Student_Degree
ADD CONSTRAINT FK_Student_Degree_Personal_Details
FOREIGN KEY (Student_ID) REFERENCES Student_Personal_Details(Student_ID);

--incase we need to drop the constraint
--ALTER TABLE Student_Degree DROP CONSTRAINT FK_Student_Degree_Personal_Details

--it will create the foreign key reference for Degree_ID column
ALTER TABLE Student_Degree
ADD CONSTRAINT FK_Degree_Student_Degree_Details
FOREIGN KEY (Degree_ID) REFERENCES Degree_Details(Degree_ID);

--incase we need to drop the constraint
--ALTER TABLE Student_Degree DROP CONSTRAINT FK_Degree_Student_Degree_Details

--====================================================================================================================

--we will establish the foreign key references for Subject_Department table

--it will create the foreign key reference for the Subject_ID column
ALTER TABLE Subject_Department_Degree
ADD CONSTRAINT FK_Subject_Department_Degree_Subject_Details
FOREIGN KEY (Subject_ID) REFERENCES Subject_Details(Subject_ID);

--incase we need to drop the constraint
--ALTER TABLE Subject_Department_Degree DROP CONSTRAINT FK_Subject_Department_Degree_Subject_Details

--it will create the foreign key reference for Degree_ID column
ALTER TABLE Subject_Department_Degree
ADD CONSTRAINT FK_Subject_Degree_Department_Degree_Details
FOREIGN KEY (Degree_ID) REFERENCES Degree_Details(Degree_ID);

--incase we need to drop the constraint
--ALTER TABLE Subject_Department_Degree DROP CONSTRAINT FK_Subject_Degree_Department_Degree_Details

--it will create the foreign key reference for the Department_ID column
ALTER TABLE Subject_Department_Degree
ADD CONSTRAINT FK_Subject_Department_Degree_Department_Details
FOREIGN KEY (Department_ID) REFERENCES Department_Details (Department_ID);

--incase we need to drop the constraint
--ALTER TABLE Subject_Department_Degree DROP CONSTRAINT FK_Subject_Department_Degree_Department_Details.
