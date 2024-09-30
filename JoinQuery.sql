----------INNER JOIN-------------
-- (THETA)
SELECT ENAME DEPTNAME FROM EMP,DEPT WHERE DEPT.DEPTNO = EMP.DEPTNO;

-- (ANSI)
SELECT ENAME,DNAME FROM EMP INNER JOIN DEPT ON DEPT.DEPTNO = EMP.DEPTNO;

----------OUTER JOIN-------------
-- LEFT (THETA)
SELECT ENAME,DNAME FROM EMP,DEPT WHERE EMP.DEPTNO = DEPT.DEPTNO(+);

-- RIGHT (THETA)
SELECT ENAME,DNAME FROM EMP,DEPT WHERE EMP.DEPTNO(+) = DEPT.DEPTNO;

-- LEFT (ANSI)
SELECT ENAME,DNAME FROM EMP LEFT OUTER JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;

-- RIGHT (ANSI)
SELECT ENAME,DNAME FROM EMP RIGHT OUTER JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;

-- FULL (ANSI)
SELECT ENAME,DNAME FROM EMP FULL OUTER JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;

----------SELF JOIN-------------
--(THETA)
SELECT E.ENAME,M.ENAME FROM EMP E, EMP M WHERE E.MGR = M.EMPNO; 

--(THETA)
SELECT E.ENAME,M.ENAME FROM EMP E JOIN EMP M ON E.MGR = M.EMPNO; 

----------SELF JOIN-------------
--(THETA)
SELECT ENAME,DNAME FROM EMP,DEPT;

--(ANSI)
SELECT ENAME,DNAME FROM EMP CROSS JOIN DEPT;

