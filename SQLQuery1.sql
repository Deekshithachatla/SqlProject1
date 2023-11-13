create Database SchoolDB 
go
--Creating Database
use SchoolDB
go
--Subject Table
Create Table Subjects 
(
 subjectId int primary key Identity (1,1),
 subjectName varchar(50),
 TeacherName varchar(50)
)
INSERT INTO Subjects
VALUES
 ( 'Mathematics','ram'),
 ( 'Science','Sam'),
 ( 'History','Suma'),
 ( 'English','Vinnu'),
 ( 'Computer Science','Venky')
--Classes Table
Create Table Classes 
(
 ClassId int primary key Identity (1,1),
 ClassName varchar(50),
 ClassFloor int
)
INSERT INTO Classes 
VALUES
 ('Class 1',0),
('Class 2',0),
 ('Class 3',1),
 ('Class 4',1),
 ('Class 5',2),
 ('Class 6',2),
 ('Class 7',2)
--Student Table
create Table Student
(
 RollNo int primary key Identity (1,1),
 studentName varchar(50),
 classId int foreign key references Classes(ClassId),
 subjectId int foreign key references Subjects(subjectId) 
)
INSERT into Student 
Values 
('Venky',3,1),
('Loki',1,4),
('Vinny',2,3),
('Lucky',4,1),
('Tina',7,5),
('Nikki',5,3),
('Nicy',6,4),
('Peter park',7,2)
--printing Values
select * from Subjects
select * from Classes
select * from Student