--============================== UNDESTANDING ORDERBY ============================--
--A-Z : ENAME
SELECT * FROM EMP ORDER BY ENAME;

--Z-A : ENAME
SELECT * FROM EMP ORDER BY ENAME DESC;

--Z-1 : ENAME , DEPTNO 0-9 
SELECT * FROM EMP ORDER BY DEPTNO ASC,ENAME DESC;