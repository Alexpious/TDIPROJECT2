--RETRIEVING ALL RECORDS FROM ATTRITION TABLE
--Ordered by age in asc order, then within each age group, order by years at company in asc order.

SELECT*
FROM Attrition
ORDER BY AGE ,YearsAtCompany 

--Ordering the data alphabetically by dept in asc order, then within each department, order by job role in asc order.

SELECT*
FROM Attrition
ORDER BY Department ,jobRole

--Number of companies worked at in asc order, then within each number of companies group, order by age in asc order.

SELECT*
FROM Attrition
ORDER BY NumCompaniesWorked ,age

--Ordered by education field in asc order, then within each education field, order by gender in asc order.

SELECT*
FROM Attrition
ORDER BY EducationField , gender

--Ordered by age in desc order, then within each age group, order by years at company in desc order.

SELECT*
FROM Attrition
ORDER BY AGE desc ,YearsAtCompany desc

--Ordering the data alphabetically by dept in desc order, then within each department, order by job role in desc order.

SELECT*
FROM Attrition
ORDER BY Department desc ,jobRole desc

--Number of companies worked at in desc order, then within each number of companies group, order by age in desc order.

SELECT*
FROM Attrition
ORDER BY NumCompaniesWorked desc ,age desc

--Ordered by education field in desc order, then within each education field, order by gender in desc order.

SELECT*
FROM Attrition
ORDER BY EducationField desc , gender desc

--SUM
--Calculating the number of years at the company for all employees

SELECT sum(YearsAtCompany) As 'Total Years At company'
FROM Attrition

--Sum of ages for employees with the attrition status (yes)

SELECT sum(Age) As 'Total ages'
FROM Attrition
Where Attrition = 'Yes'

--Sum of years at the company for employees in life sciences.

SELECT sum(YearsAtCompany) As 'Sum of years of employee in life sciences at the company'
FROM Attrition
Where EducationField = 'Life sciences'

--Total sum of ages for employees who have worked in more than two companies.

SELECT sum(Age) As 'Employees with more than two companies sum of age'
FROM Attrition
Where YearsAtCompany > 2 

--Total number of attritions for employees in each department.

SELECT Department, Count(Attrition) As 'Total number of attritions for employees in each dept'
FROM Attrition
Where Attrition = 'Yes' 
Group by department 

--AVG
--Calculate the average age of employees in each department.

SELECT department, AVG (age) As 'Avg age'
FROM Attrition
GROUP by department

--avg number of years at the company with the attrition status (yes)

SELECT avg(YearsAtCompany) As 'avg age'
FROM Attrition
Where Attrition = 'Yes'

--average age of employees in the research and development department

SELECT avg(age) As 'Avg age in R and D department'
FROM Attrition
Where department = 'Research & development'

--Average number of years at the company for male employees.

SELECT avg(YearsAtCompany) As 'Avg number of years of male'
FROM Attrition
Where Gender = 'male' 

--Average number of companies worked at by employees in each job role.

SELECT jobrole, avg(Numcompaniesworked) As 'Number of companies worked in each job roles'
FROM Attrition 
Group by jobrole

--COUNT
--Count the number of employees in each department


SELECT DEPARTMENT, COUNT(DEPARTMENT) As 'NUMBER OF EMPLOYEE'
FROM Attrition
GROUP by department

--count of attritions for employees with attrition status (yes) in each education field.
SELECT EDUCATIONFIELD, count(EDUCATIONFIELD) AS 'Count of attrition'
FROM Attrition
Where Attrition = 'Yes'
GROUP BY EDUCATIONFIELD

--Count the number of employees in each job role who have an attrition status (yes).

SELECT jOBROLE, count(JOBROLE) AS 'Count of EMPLOYEE IN EACH JOB ROLE'
FROM Attrition
Where Attrition = 'Yes'
GROUP BY JOBROLE


--Find the count of employees who have worked in only one company and are married.

SELECT count(*) As 'count of employees '
FROM Attrition
Where Numcompaniesworked = 1 and Maritalstatus = 'married' 

---number of attritions for laboratory technicians

SELECT count(*) as 'number of attrition for laboratory technicians'
FROM Attrition 
Where Attrition = 'Yes' AND Jobrole = 'Laboratory Technicians'

--MIN
--Find the minimum age among all employees.


SELECT min(age) As 'Minimum age'
FROM Attrition

---Minimum number of years at the company among all employees with attrition status (yes).

SELECT min(YearsAtCompany) As 'Minimum Years AT Company'
FROM Attrition
Where Attrition = 'Yes'

--Find the minimum age of employees in each department..

SELECT department, min(age) As 'Minimum age in each dept'
FROM Attrition
GROUP BY department

--minimum number of companies worked at by research scientists.

SELECT min(numcompaniesworked) As 'Minimum number of companies for research scientist'
FROM Attrition
Where jobrole = 'Research Scientist'


--minimum age of employees who have attrition status (no) and are married.

SELECT min(age) As 'Minimum age of employee thaT IS MARRIED AND NO ATTRITION'
FROM Attrition 
Where Attrition = 'No' AND MaritalStatus = 'Married'

MAX
--Find the mAX age among all employees.


SELECT max(age) As 'Minimum age'
FROM Attrition

---Maximum number of years at the company among all employees with attrition status (yes).

SELECT max(YearsAtCompany) As 'Maximum Years AT Company'
FROM Attrition
Where Attrition = 'Yes'

--Find the maximum age of employees in each department..

SELECT department, max(age) As 'Maximum age in each dept'
FROM Attrition
GROUP BY department

--maximum number of companies worked at by research scientists.

SELECT max(numcompaniesworked) As 'Maximum number of companies for research scientist'
FROM Attrition
Where jobrole = 'Research Scientist'


--maximum age of employees who have attrition status (no) and are married.

SELECT max(age) As 'Maximum age of employee thaT IS MARRIED AND NO ATTRITION'
FROM Attrition 
Where Attrition = 'No' AND MaritalStatus = 'Married'
