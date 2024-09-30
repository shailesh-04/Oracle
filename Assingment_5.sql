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
	SELECT * FROM EMP WHERE ENAME LIKE '%A'; -- last char
	SELECT * FROM EMP WHERE ENAME LIKE 'A%'; -- first char
	SELECT * FROM EMP WHERE ENAME LIKE '%A%'; -- first and last 
	SELECT * FROM EMP WHERE ENAME LIKE '__A%'; -- first 3 char
	--====================================================
  SELECT * FROM EMP UPPER WHERE  ENAME LIKE '%R%S%'; -- first char 'R' or 's' -- last char 'R' or 's'13:03 18-09-2024
 
--[05] List all the employees whose earning is in the list followed and whose name starts with ‘A’ or ‘a’. Salary: 1250, 1150, 950, 2975, 5000, 3000, 10000.
  SELECT * FROM EMP WHERE   SAL IN (1250, 1150, 950, 2975, 5454, 3600, 10000) AND ENAME LIKE  'S%' ;
   
  
--[06] List all employees whose ‘HIREDATE’ year between 1981 and 1987 with initial character of name in uppercase and remaining characters in lowercase.
  SELECT * FROM EMP WHERE HIREDATE >= '1-JAN-1981' AND HIREDATE <= '31-DEC-1987' AND ENAME=INITCAP(ENAME);
  SELECT * FROM EMP WHERE HIREDATE BETWEEN '1-JAN-1981' AND '31-DEC-1987' AND ENAME=INITCAP(ENAME);
	--INITCAP(ENAME)=> print first capital later 
   
--[07] Find the number of employees working in department inputted by user.
  SELECT COUNT(DEPTNO) FROM EMP WHERE DEPTNO = &DEPTNO;
   
--[08] Calculate number of employees holding different jobs in different departments.
  SELECT DEPTNO,JOB,COUNT(*) FROM EMP 
  GROUP BY DEPTNO,JOB;

--[09] Calculate the number of employees holding different jobs in different departments.
	SELECT DEPTNO,JOB,COUNT(JOB) FROM EMP GROUP BY DEPTNO,JOB;

--[10] Calculate the number of employees excluding president holding different job titles in different departments.
	SELECT DEPTNO,JOB,COUNT(JOB) FROM EMP WHERE JOB != 'CLERK' GROUP BY DEPTNO,JOB;


--[11] Display all jobs in different departments each have more than two employees with that job titles.
		SELECT DEPTNO,JOB,COUNT(JOB) FROM EMP GROUP BY DEPTNO,JOB HAVING COUNT(*) > 2;
	
--[12] Find all the departments that have at least two clerks.
	SELECT DEPTNO,JOB,COUNT(JOB) FROM EMP WHERE JOB = 'CLERK' GROUP BY DEPTNO,JOB HAVING COUNT(*) > 2;	
 
--[13] Determine average annual salary per department excluding the manager and  president.
 SELECT DEPTNO, AVG(SAL*12)"ANUAL",COUNT(*)"COUNT" FROM EMP
	WHERE JOB NOT IN ('MANAGER','PRESIDENT') 
	GROUP BY DEPTNO ;

	--MUST USE ANY COLUM NAME SAME NAME GROU BY AND AFTER SELECT.
	--AND THE BUILD FUNCTION NOT USE N GROUP BY
	
--[14] List employee job titles immediately followed by name.
SELECT ENAME || ' - ' || JOB FROM EMP;
--CONCTINATION	

--[15] List the department name as four letter code ordered by the department name.
SELECT SUBSTR(DNAME,1,4)"CODE" FROM DEPT ORDER BY DNAME;

--[16] Find out the name of hiredate of the last person hired.
	SELECT ENAME,HIREDATE FROM EMP WHERE HIREDATE = (SELECT MAX(HIREDATE) FROM EMP);

--[17] Decode deptno into dept name from dept table.
	SELECT ENAME,DECODE(DEPTNO,10,'MNG',20,'QWE',30,'SAL') FROM EMP;


--[18] List all last characters from the position of character ‘A’ or ‘a’ in ename.

--	SELECT ENAME FROM EMP UPPER WHERE ENAME LIKE 'A%';
--	SELECT SUBSTR(ENAME,INSTR(ENAME,'A'),LENGTH(ENAME)) FROM EMP UPPER WHERE ENAME LIKE 'A%';
	SELECT SUBSTR(ENAME,INSTR(UPPER(ENAME),'A'),LENGTH(ENAME)) FROM EMP WHERE UPPER(ENAME) LIKE '%A%';
--[19] Find names of the employees who are working in sales department.
	SELECT EMP.ENAME FROM EMP,DEPT WHERE DEPT.DNAME='SALES' AND EMP.DEPTNO = DEPT.DEPTNO ;

--[20] List name, job and salary of the employees in department 20 who have the same job as that of employees in ‘SALES’ and ‘HRD’.
SELECT ENAME ,JOB,SAL FROM EMP 
	WHERE DEPTNO = 20 AND  JOB IN (	SELECT EMP.JOB FROM  EMP,DEPT 
	WHERE DEPT.DEPTNO = EMP.DEPTNO AND (DNAME='SALESMAN' OR DNAME='ACCOUNTING'));

--[22] Find out the highest paid employee in each department and display their name and deptno.
	SELECT ENAME,SAL FROM EMP WHERE SAL IN (SELECT MIN(SAL) FROM EMP GROUP BY DEPTNO);
	
--[23] List employee who have the same job as that of Mr. Jones and who have more salary than any one employee of Dept 30.
SELECT ENAME FROM EMP WHERE SAL > 3000 AND DEPTNO = 30;

--[24] list the employee name , deptno and dept location of all clerks.
	 SELECT E.ENAME,D.DEPTNO,D.LOC FROM EMP E,DEPT D WHERE D.DEPTNO = E.DEPTNO AND E.JOB = 'CLERK';

--[25] List the location of all departments and the employees working at those location.
SELECT ENAME,DNAME,LOC FROM EMP,DEPT 
	WHERE EMP.DEPTNO = DEPT.DEPTNO ORDER BY DNAME;

--[26] list the employees who are earning more than their managers.
--SELF JOIN QUERY
	  SELECT E.ENAME,M.ENAME FROM EMP E,EMP M WHERE E.MGR = M.EMPNO ;
-----------------
 SELECT E.ENAME,M.ENAME FROM EMP E,EMP M WHERE E.MGR = M.EMPNO AND E.SAL >= M.SAL ORDER BY E.MRG ;

--[27] list all character from the position of character ‘A’ or ‘a’ in empname.

1. SELECT INSTR(ENAME,'A') FROM EMP;
2.SELECT SUBSTR(ENAME,INSTR(ENAME,'A'),LENGTH (ENAME)) FROM EMP WHERE ENAME LIKE '%A%' ;

--[28] Select name , job and salary of employee in dept 20 who have the same job as that of each in ‘SALES\’ or ‘HRD’.
