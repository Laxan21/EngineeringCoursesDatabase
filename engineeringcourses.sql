-- initial code to create table 
CREATE table engineering_courses 
(ID int NOT NULL auto_increment PRIMARY KEY, 
CourseCode varchar(10), 
Name varchar(100),
Department varchar(50), 
Discipline varchar(500), 
Year varchar(20), 
Prerequisites varchar(100));

-- inserted values are all 1st year engineering courses 
INSERT INTO engineering_courses(CourseCode,Name,Department,Discipline,Year,Prerequisites)
VALUES
('CEN 100', 'Introduction to Engineering','Common Engineering','All','1','None'),
('CHY 102', 'General Chemistry','Chemistry','All','1','None'),
('MTH 140','Calculus 1','Mathematics','All','1','None'),
('MTH 141','Linear ALgebra','Mathematics','All','1','None'),
('PCS 211','Physics: Mechanics','Physics','All','1','None'),
('ECN 801','Principles of Engineering Economics','Economics','All','1','None'),
('MTH 240','Calculus 2','Mathematics','All','1','MTH 140'),
('PCS 125','Physics: Waves and Fields','Physics','All','1','None'),
('AER 222','Engineering Design and Graphical Communication','Aerospace Engineering','Aerospace','1','None'),
('CPS 125','Digital Computation and Programming','Computer Science','Aerospace,Chemical,Civil','1','None'),
('MTL 200','Material Science Fundamentals','Mechanical Engineering','Aerospace,Civil,Industrial,Mechanical','1','CHY 102'),
('BME 100','Introduction to Biomedical Engineering','Biomedical Engineering','Biomedical','1','None'),
('CPS 188','Computer Programming Fundamentals','Computer Science','Biomedical,Computer,Electrical,Industrial,Mechanical','1','None'),
('ELE 202','Electric Circuit Analysis','Electrical Engineering','Biomedical,Computer,Electrical','1','MTH 140,MTH 141'),
('CHE 202','Chemical Engineering Fundamentals','Chemical Engineering','Chemical','1','CHY 102'),
('CHY 211','General Chemistry Laboratory','Chemical Engineering','Chemical','1','CHY 102'),
('CVL 207','Graphics','Civil Engineering','Civil','1','None'),
('MEC 222','Engineering Graphical Communication','Mechanical Engineering','Mechanical,Industrial','1','None');

-- error of course name: Linear ALgebra 
UPDATE engineering_courses
SET Name = 'Linear Algebra'
WHERE ID = 4

-- Example Queries 

-- Select statement used to view the table
SELECT *
FROM engineering_courses

-- looking at data where all disciplines take same courses 
SELECT CourseCode
FROM engineering_courses 
WHERE Discipline = 'ALL'

-- ordering courses where there are prerequisites
SELECT CourseCode, Prerequisites
FROM engineering_courses
WHERE Prerequisites != 'None'
ORDER BY CourseCode

-- finding the amount of courses that mechanical engineering students take 
SELECT COUNT(*) as num_of_courses
FROM engineering_courses
WHERE Discipline LIKE '%Mechanical%'
OR Discipline = 'ALL'

-- comparing the departments that have the most courses 
SELECT Department,Count(*) as num_of_courses 
FROM engineering_courses 
GROUP BY Department 
ORDER BY num_of_courses DESC 


 



	
