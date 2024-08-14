--https://github.com/shailesh-04
--================= Assingment 5 ===========
--[01] List all information about those employees whose earning at least 1000 and are either clerk or salesman.
  SELECT * FROM EMP WHERE SAL >= 1000 AND JOB IN ('Clerk','Manager');
   
--[02] List all employees of dept no. 30 who are manager, salesman or clerk.
  SELECT * FROM EMP WHERE  DEPNO = 30 AND JOB IN ('Clerk','Manager','Salesman');
   
--[03] List the details of the employees who are not getting commission.
  SELECT * FROM EMP WHERE  COMM = 0 OR COMM IS NULL;
   
--[04] List the details of the employees which have ‘R’ or ‘r’ followed by ‘s’ or ‘S’ in their name.
	--====================================================
	SELECT * FROM EMP WHERE ENAME LIKE '%A';
	SELECT * FROM EMP WHERE ENAME LIKE 'A%';
	SELECT * FROM EMP WHERE ENAME LIKE '%s%';
	SELECT * FROM EMP WHERE ENAME LIKE '__A%';
	--====================================================
  SELECT * FROM EMP UPPER WHERE  ENAME LIKE  'A%'  OR ENAME LIKE  'S%' ;
 
--[05] List all the employees whose earning is in the list followed and whose name starts with ‘A’ or ‘a’. Salary: 1250, 1150, 950, 2975, 5000, 3000, 10000.
  SELECT * FROM EMP WHERE   SAL IN (1250, 1150, 950, 2975, 5454, 3600, 10000) AND ENAME LIKE  'S%' ;
   
  
--[06] List all employees whose ‘HIREDATE’ year between 1981 and 1987 with initial character of name in uppercase and remaining characters in lowercase.
  SELECT * FROM EMP WHERE HIREDATE >= '1-JAN-1981' AND HIREDATE <= '31-DEC-1987' AND ENAME=INITCAP(ENAME);
  SELECT * FROM EMP WHERE HIREDATE BETWEEN '1-JAN-1981' AND '31-DEC-1987' AND ENAME=INITCAP(ENAME);
	--INITCAP(ENAME)=> print first capital later 
   
--[07] Find the number of employees working in department inputted by user.
  SELECT COUNT(DEPTNO) FROM EMP WHERE DEPTNO = &DEPTNO;
   
--[08] Calculate number of employees holding different jobs in different departments.
 SELECT 
    ID, 
    JOB, 
    COUNT(ID) AS select * from
FROM 
    employees
GROUP BY 
    department_id, 
    job_title;

--[09] Calculate the number of employees holding different jobs in different departments.
--[10] Calculate the number of employees excluding president holding different job titles in different departments.
--[11] Display all jobs in different departments each have more than two employees with that job titles.
--[12] Find all the departments that have at least two clerks.
--[13] Determine average annual salary per department excluding the manager and  president.
--[14] List employee job titles immediately followed by name.
--[15] List the department name as four letter code ordered by the department name.
--[16] Find out the name of hiredate of the last person hired.
--[17] Decode deptno into dept name from dept table.
--[18] List all last characters from the position of character ‘A’ or ‘a’ in ename.
--[19] Find names of the employees who are working in sales department.
--[20] List name, job and salary of the employees in department 20 who have the same job as that of employees in ‘SALES’ and ‘HRD’.
--[22] Find out the highest paid employee in each department and display their name and deptno.
--[23] List employee who have the same job as that of Mr. Jones and who have more salary than any one employee of Dept 30.
--[24] list the employee name , deptno and dept location of all clerks.
--[25] List the location of all departments and the employees working at those location.
--[26] list the employees who are earning more than their managers.
--[27] list all character from the position of character ‘A’ or ‘a’ in empname.
--[28] Select name , job and salary of employee in dept 20 who have the same job as that of each in ‘SALES\’ or ‘HRD’.
