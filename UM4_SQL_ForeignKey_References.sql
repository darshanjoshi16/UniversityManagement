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
