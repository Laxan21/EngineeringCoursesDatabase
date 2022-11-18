# EngineeringCoursesDatabase

Created a database of First Year Engineering Courses

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
