# EngineeringCoursesDatabase

Created a database of First Year Engineering Courses

Initial code to create table: 
```
CREATE table engineering_courses 
(ID int NOT NULL auto_increment PRIMARY KEY, 
CourseCode varchar(10), 
Name varchar(100),
Department varchar(50), 
Discipline varchar(500), 
Year varchar(20), 
Prerequisites varchar(100));
```

Inserted all 1st year engineering courses values:
```
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
```


Below are screenshots of the SQL queries

First Query - table data:
```
SELECT *
FROM engineering_courses
```
![Query1](https://user-images.githubusercontent.com/104281046/183228563-88d4ff76-0a82-44c0-bfb4-bf5b42e759d2.png)

Second Query - data where all disciplines take same courses:
```
SELECT CourseCode
FROM engineering_courses 
WHERE Discipline = 'ALL'
```
![Query2](https://user-images.githubusercontent.com/104281046/183228473-f97c09b1-3ad7-4099-a2a2-587ad5b149e0.png)


Third Query - courses where there are prerequisites:
```
SELECT CourseCode, Prerequisites
FROM engineering_courses
WHERE Prerequisites != 'None'
ORDER BY CourseCode
```
![Query3](https://user-images.githubusercontent.com/104281046/183228485-27473d4f-0d45-490c-af5c-4d6bdf677da2.png)


Fourth Query - Finding the amount of courses that mechanical engineering students take:
```
SELECT COUNT(*) as num_of_courses
FROM engineering_courses
WHERE Discipline LIKE '%Mechanical%'
OR Discipline = 'ALL'
```

![Query4](https://user-images.githubusercontent.com/104281046/183228506-31e3fb89-dd42-45e1-b07a-0a5b8e74e532.png)

Fifth Query - comparing departments that have the most courses:
```
SELECT Department,Count(*) as num_of_courses
FROM engineering_courses 
GROUP BY Department 
ORDER BY num_of_courses DESC
```
![Query5](https://user-images.githubusercontent.com/104281046/183228379-37927075-c107-4478-81e5-606ffdc17820.png)
