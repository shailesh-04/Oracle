SELECT EMP.ENAME, EMP.JOB, EMP.SAL, DEPT.DNAME, LOC FROM EMP, DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO;

OR 

SELECT EMP.ENAME, EMP.JOB, EMP.SAL, DEPT.DNAME, LOC FROM EMP INNER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;


ENAME      JOB              SAL DNAME          LOC
---------- --------- ---------- -------------- -------------
KING       PRESIDENT       5000 ACCOUNTING     NEW YORK
RAJES      CLERK           1600 ACCOUNTING     NEW YORK
MILLER     CLERK           1300 ACCOUNTING     NEW YORK
JONES      MANAGER         2975 RESEARCH       DALLAS
SMITH      CLERK            800 RESEARCH       DALLAS
SCOTT      ANALYST         3000 RESEARCH       DALLAS
FORD       ANALYST         3000 RESEARCH       DALLAS
ADAMS      CLERK           1100 RESEARCH       DALLAS
ANKESH     ANALYST         1150 RESEARCH       DALLAS
TURNER     SALESMAN      1464.1 SALES          CHICAGO
Ward       SALESMAN      1464.1 SALES          CHICAGO

ENAME      JOB              SAL DNAME          LOC
---------- --------- ---------- -------------- -------------
JAMES      CLERK         1464.1 SALES          CHICAGO
MARTIN     SALESMAN      1464.1 SALES          CHICAGO
ALLEN      SALESMAN      1464.1 SALES          CHICAGO
BLAKE      MANAGER       1464.1 SALES          CHICAGO

15 rows selected.


SELECT EMP.ENAME, EMP.JOB, EMP.SAL, DEPT.DNAME, LOC FROM EMP, DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO(+);
OR

SELECT EMP.ENAME, EMP.JOB, EMP.SAL, DEPT.DNAME, LOC FROM EMP LEFT OUTER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;

ENAME      JOB              SAL DNAME          LOC
---------- --------- ---------- -------------- -------------
RAJES      CLERK           1600 ACCOUNTING     NEW YORK
MILLER     CLERK           1300 ACCOUNTING     NEW YORK
KING       PRESIDENT       5000 ACCOUNTING     NEW YORK
ANKESH     ANALYST         1150 RESEARCH       DALLAS
FORD       ANALYST         3000 RESEARCH       DALLAS
ADAMS      CLERK           1100 RESEARCH       DALLAS
SCOTT      ANALYST         3000 RESEARCH       DALLAS
JONES      MANAGER         2975 RESEARCH       DALLAS
SMITH      CLERK            800 RESEARCH       DALLAS
JAMES      CLERK         1464.1 SALES          CHICAGO
TURNER     SALESMAN      1464.1 SALES          CHICAGO

ENAME      JOB              SAL DNAME          LOC
---------- --------- ---------- -------------- -------------
BLAKE      MANAGER       1464.1 SALES          CHICAGO
MARTIN     SALESMAN      1464.1 SALES          CHICAGO
Ward       SALESMAN      1464.1 SALES          CHICAGO
ALLEN      SALESMAN      1464.1 SALES          CHICAGO
CLARK      MANAGER         2450

16 rows selected.





SQL> SELECT EMP.ENAME, EMP.JOB, EMP.SAL, DEPT.DNAME, LOC FROM EMP, DEPT WHERE EMP.DEPTNO(+)=DEPT.DEPTNO;

OR 

SELECT EMP.ENAME, EMP.JOB, EMP.SAL, DEPT.DNAME, LOC FROM EMP RIGHT OUTER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;

ENAME      JOB              SAL DNAME          LOC
---------- --------- ---------- -------------- -------------
KING       PRESIDENT       5000 ACCOUNTING     NEW YORK
RAJES      CLERK           1600 ACCOUNTING     NEW YORK
MILLER     CLERK           1300 ACCOUNTING     NEW YORK
JONES      MANAGER         2975 RESEARCH       DALLAS
SMITH      CLERK            800 RESEARCH       DALLAS
SCOTT      ANALYST         3000 RESEARCH       DALLAS
FORD       ANALYST         3000 RESEARCH       DALLAS
ADAMS      CLERK           1100 RESEARCH       DALLAS
ANKESH     ANALYST         1150 RESEARCH       DALLAS
TURNER     SALESMAN      1464.1 SALES          CHICAGO
Ward       SALESMAN      1464.1 SALES          CHICAGO

ENAME      JOB              SAL DNAME          LOC
---------- --------- ---------- -------------- -------------
JAMES      CLERK         1464.1 SALES          CHICAGO
MARTIN     SALESMAN      1464.1 SALES          CHICAGO
ALLEN      SALESMAN      1464.1 SALES          CHICAGO
BLAKE      MANAGER       1464.1 SALES          CHICAGO
                                OPERATIONS     BOSTON

16 rows selected.



SELECT EMP.ENAME, EMP.JOB, EMP.SAL, DEPT.DNAME, LOC FROM EMP FULL OUTER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;


ENAME      JOB              SAL DNAME          LOC
---------- --------- ---------- -------------- -------------
SMITH      CLERK            800 RESEARCH       DALLAS
ALLEN      SALESMAN      1464.1 SALES          CHICAGO
Ward       SALESMAN      1464.1 SALES          CHICAGO
JONES      MANAGER         2975 RESEARCH       DALLAS
MARTIN     SALESMAN      1464.1 SALES          CHICAGO
BLAKE      MANAGER       1464.1 SALES          CHICAGO
CLARK      MANAGER         2450
SCOTT      ANALYST         3000 RESEARCH       DALLAS
KING       PRESIDENT       5000 ACCOUNTING     NEW YORK
TURNER     SALESMAN      1464.1 SALES          CHICAGO
ADAMS      CLERK           1100 RESEARCH       DALLAS

ENAME      JOB              SAL DNAME          LOC
---------- --------- ---------- -------------- -------------
JAMES      CLERK         1464.1 SALES          CHICAGO
FORD       ANALYST         3000 RESEARCH       DALLAS
MILLER     CLERK           1300 ACCOUNTING     NEW YORK
RAJES      CLERK           1600 ACCOUNTING     NEW YORK
ANKESH     ANALYST         1150 RESEARCH       DALLAS
                                OPERATIONS     BOSTON

17 rows selected.





SELECT EMP.ENAME, EMP.JOB, EMP.SAL, DEPT.DNAME, LOC FROM EMP, DEPT;
OR

SQL> SELECT EMP.ENAME, EMP.JOB, EMP.SAL, DEPT.DNAME, LOC FROM EMP CROSS JOIN DEPT;

ENAME      JOB              SAL DNAME          LOC
---------- --------- ---------- -------------- -------------
SMITH      CLERK            800 ACCOUNTING     NEW YORK
ALLEN      SALESMAN      1464.1 ACCOUNTING     NEW YORK
Ward       SALESMAN      1464.1 ACCOUNTING     NEW YORK
JONES      MANAGER         2975 ACCOUNTING     NEW YORK
MARTIN     SALESMAN      1464.1 ACCOUNTING     NEW YORK
BLAKE      MANAGER       1464.1 ACCOUNTING     NEW YORK
CLARK      MANAGER         2450 ACCOUNTING     NEW YORK
SCOTT      ANALYST         3000 ACCOUNTING     NEW YORK
KING       PRESIDENT       5000 ACCOUNTING     NEW YORK
TURNER     SALESMAN      1464.1 ACCOUNTING     NEW YORK
ADAMS      CLERK           1100 ACCOUNTING     NEW YORK

ENAME      JOB              SAL DNAME          LOC
---------- --------- ---------- -------------- -------------
JAMES      CLERK         1464.1 ACCOUNTING     NEW YORK
FORD       ANALYST         3000 ACCOUNTING     NEW YORK
MILLER     CLERK           1300 ACCOUNTING     NEW YORK
RAJES      CLERK           1600 ACCOUNTING     NEW YORK
ANKESH     ANALYST         1150 ACCOUNTING     NEW YORK
SMITH      CLERK            800 RESEARCH       DALLAS
ALLEN      SALESMAN      1464.1 RESEARCH       DALLAS
Ward       SALESMAN      1464.1 RESEARCH       DALLAS
JONES      MANAGER         2975 RESEARCH       DALLAS
MARTIN     SALESMAN      1464.1 RESEARCH       DALLAS
BLAKE      MANAGER       1464.1 RESEARCH       DALLAS

ENAME      JOB              SAL DNAME          LOC
---------- --------- ---------- -------------- -------------
CLARK      MANAGER         2450 RESEARCH       DALLAS
SCOTT      ANALYST         3000 RESEARCH       DALLAS
KING       PRESIDENT       5000 RESEARCH       DALLAS
TURNER     SALESMAN      1464.1 RESEARCH       DALLAS
ADAMS      CLERK           1100 RESEARCH       DALLAS
JAMES      CLERK         1464.1 RESEARCH       DALLAS
FORD       ANALYST         3000 RESEARCH       DALLAS
MILLER     CLERK           1300 RESEARCH       DALLAS
RAJES      CLERK           1600 RESEARCH       DALLAS
ANKESH     ANALYST         1150 RESEARCH       DALLAS
SMITH      CLERK            800 SALES          CHICAGO

ENAME      JOB              SAL DNAME          LOC
---------- --------- ---------- -------------- -------------
ALLEN      SALESMAN      1464.1 SALES          CHICAGO
Ward       SALESMAN      1464.1 SALES          CHICAGO
JONES      MANAGER         2975 SALES          CHICAGO
MARTIN     SALESMAN      1464.1 SALES          CHICAGO
BLAKE      MANAGER       1464.1 SALES          CHICAGO
CLARK      MANAGER         2450 SALES          CHICAGO
SCOTT      ANALYST         3000 SALES          CHICAGO
KING       PRESIDENT       5000 SALES          CHICAGO
TURNER     SALESMAN      1464.1 SALES          CHICAGO
ADAMS      CLERK           1100 SALES          CHICAGO
JAMES      CLERK         1464.1 SALES          CHICAGO

ENAME      JOB              SAL DNAME          LOC
---------- --------- ---------- -------------- -------------
FORD       ANALYST         3000 SALES          CHICAGO
MILLER     CLERK           1300 SALES          CHICAGO
RAJES      CLERK           1600 SALES          CHICAGO
ANKESH     ANALYST         1150 SALES          CHICAGO
SMITH      CLERK            800 OPERATIONS     BOSTON
ALLEN      SALESMAN      1464.1 OPERATIONS     BOSTON
Ward       SALESMAN      1464.1 OPERATIONS     BOSTON
JONES      MANAGER         2975 OPERATIONS     BOSTON
MARTIN     SALESMAN      1464.1 OPERATIONS     BOSTON
BLAKE      MANAGER       1464.1 OPERATIONS     BOSTON
CLARK      MANAGER         2450 OPERATIONS     BOSTON

ENAME      JOB              SAL DNAME          LOC
---------- --------- ---------- -------------- -------------
SCOTT      ANALYST         3000 OPERATIONS     BOSTON
KING       PRESIDENT       5000 OPERATIONS     BOSTON
TURNER     SALESMAN      1464.1 OPERATIONS     BOSTON
ADAMS      CLERK           1100 OPERATIONS     BOSTON
JAMES      CLERK         1464.1 OPERATIONS     BOSTON
FORD       ANALYST         3000 OPERATIONS     BOSTON
MILLER     CLERK           1300 OPERATIONS     BOSTON
RAJES      CLERK           1600 OPERATIONS     BOSTON
ANKESH     ANALYST         1150 OPERATIONS     BOSTON

64 rows selected.

--SELF JOIN

 SELECT E.ENAME "EMPLOYEE", M.ENAME "MANAGER"  FROM EMP E, EMP M WHERE E.MGR=M.EMPNO;
OR 
SELECT E.ENAME "EMPLOYEE", M.ENAME "MANAGER"   FROM EMP E INNER JOIN EMP M  ON E.MGR=M.EMPNO;
ENAME      ENAME
---------- ----------
FORD       JONES
SCOTT      JONES
Ward       BLAKE
ALLEN      BLAKE
JAMES      BLAKE
TURNER     BLAKE
MARTIN     BLAKE
MILLER     CLARK
ADAMS      SCOTT
CLARK      KING
BLAKE      KING

ENAME      ENAME
---------- ----------
JONES      KING
SMITH      FORD

13 rows selected.

 SELECT E.ENAME, M.ENAME   FROM EMP E, EMP M WHERE E.MGR=M.EMPNO(+);





SQL> SELECT E.ENAME "EMPLOYEE", M.ENAME "MANAGER"  FROM EMP E FULL JOIN EMP M ON E.MGR=M.EMPNO;

EMPLOYEE   MANAGER
---------- ----------
           SMITH
           ALLEN
           Ward
FORD       JONES
SCOTT      JONES
           MARTIN
JAMES      BLAKE
TURNER     BLAKE
MARTIN     BLAKE
Ward       BLAKE
ALLEN      BLAKE

EMPLOYEE   MANAGER
---------- ----------
MILLER     CLARK
ADAMS      SCOTT
CLARK      KING
BLAKE      KING
JONES      KING
           TURNER
           ADAMS
           JAMES
SMITH      FORD
           MILLER
           RAJES

EMPLOYEE   MANAGER
---------- ----------
           ANKESH
KING
RAJES
ANKESH

26 rows selected.


SQL> SELECT ENAME, SAL, JOB FROM EMP WHERE SAL>=1000 AND (JOB='CLERK' OR JOB='SALESMAN');

ENAME             SAL JOB
---------- ---------- ---------
ALLEN          1464.1 SALESMAN
Ward           1464.1 SALESMAN
MARTIN         1464.1 SALESMAN
TURNER         1464.1 SALESMAN
ADAMS            1100 CLERK
JAMES          1464.1 CLERK
MILLER           1300 CLERK
RAJES            1600 CLERK




SELECT ENAME, SAL, JOB FROM EMP WHERE DEPTNO=30 AND JOB=  ANY('CLERK','MANAGER','SALESMAN');

ENAME             SAL JOB
---------- ---------- ---------
ALLEN          1464.1 SALESMAN
Ward           1464.1 SALESMAN
MARTIN         1464.1 SALESMAN
BLAKE          1464.1 MANAGER
TURNER         1464.1 SALESMAN
JAMES          1464.1 CLERK

SQL> SELECT * FROM EMP WHERE COMM IS NULL OR COMM=0;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81     1464.1                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81     1464.1          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81     1464.1                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      4390 RAJES      CLERK           9898 16-JUN-90       1600          0         10
      5391 ANKESH     ANALYST         9498 15-JUN-80       1150          0         20

13 rows selected.
List the details of the
employees which have ‘R’ or ‘r’ followed by ‘s’ or ‘S’ in their name.


SQL> SELECT * FROM EMP WHERE ENAME LIKE 'R%S' OR  ENAME LIKE 'r%s';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      4390 RAJES      CLERK           9898 16-JUN-90       1600          0         10

SQL> SELECT * FROM EMP WHERE UPPER(ENAME) LIKE 'R%S';



[05] List all the employees whose earning is in the list followed and whose name starts
with ‘A’ or ‘a’.
Salary: 1250, 1150, 950, 2975, 5000, 3000, 10000


SELECT * FROM EMP WHERE (ENAME LIKE 'a%' OR ENAME LIKE 'A%') AND SAL IN (1250, 1150, 950, 2975, 5000, 3000, 10000);


SQL> SELECT * FROM EMP WHERE (ENAME LIKE 'a%' OR ENAME LIKE 'A%') AND SAL IN (1250, 1150, 950, 2975, 5000, 3000, 10000);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      5391 ANKESH     ANALYST         9498 15-JUN-80       1150          0         20

List all employees whose ‘HIREDATE’ year between 1981 and 1987 with initial
character of name in uppercase and remaining characters in lowercase.

SELECT ENAME,HIREDATE FROM EMP WHERE HIREDATE BETWEEN '1-JAN-1981' AND '31-DEC-1987' AND ENAME=INITCAP(ENAME);

ENAME      HIREDATE
---------- ---------
ALLEN      20-FEB-81
Ward       22-FEB-81
JONES      02-APR-81
MARTIN     28-SEP-81
BLAKE      01-MAY-81
CLARK      09-JUN-81
SCOTT      19-APR-87
KING       17-NOV-81
TURNER     08-SEP-81
ADAMS      23-MAY-87
JAMES      03-DEC-81

ENAME      HIREDATE
---------- ---------
FORD       03-DEC-81
MILLER     23-JAN-82

13 rows selected.

Find the number
of employees working in department inputted by user. [


SELECT * FROM EMP WHERE DEPTNO=&DEPTNO;



Calculate number of employees
holding different jobs in different departments. 

SQL> SELECT DEPTNO, JOB, COUNT(*) FROM EMP GROUP BY DEPTNO, JOB ORDER BY DEPTNO;

    DEPTNO JOB         COUNT(*)
---------- --------- ----------
        10 CLERK              2
        10 PRESIDENT          1
        20 ANALYST            3
        20 CLERK              2
        20 MANAGER            1
        30 CLERK              1
        30 MANAGER            1
        30 SALESMAN           4
           MANAGER            1



] Calculate the number of employees
excluding president holding different job titles in different departments.


 SELECT DEPTNO, JOB, COUNT(*) FROM EMP WHERE JOB <> 'PRESIDENT' GROUP BY DEPTNO, JOB ORDER BY DEPTNO;


Display all jobs in different departments each have more than two employees with
that job titles.

 SELECT DEPTNO, JOB, COUNT(*) FROM EMP GROUP BY DEPTNO, JOB HAVING COUNT(*) >= 2 ORDER BY DEPTNO;


Find all the departments that have at least two clerks

SELECT DEPTNO, JOB, COUNT(*) FROM EMP GROUP BY DEPTNO, JOB HAVING COUNT(*) >= 2 AND JOB='CLERK' ORDER BY DEPTNO ;

