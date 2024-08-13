--1 . display all employe detail
 SELECT * FROM EMP;

--2. display all employe detail who working dep in 10 ?
 SELECT  *  FROM EMP WHERE  DEPTNO = 10;

--3. display all manager having salery > 5000.
SELECT * FROM EMP WHERE JOB = 'MANAGER' AND SAL > 5000;

--4. display employ name and hire date who joint compny detail 
 SELECT  ENAME,HIREDATE FROM EMP WHERE HIREDATE <= '31-DEC-1981';

--5. dispaly employ name who is are  workind dep 20 and job is clerk.
 SELECT  ENAME FROM EMP WHERE DEPNO = 20 AND JOB = CLERK; 

--6. display employ detail who no comison.
 SELECT * FROM EMP WHERE COMM = 0  OR COMM IS NULL;

--7. dispaly empoye detail more 3000 .
 SELECT * FROM EMP WHERE  SAL  >  3000;
