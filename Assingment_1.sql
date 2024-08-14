-- 1.  Create following tables and perform following operations
  --ACMASTER 
  CREATE TABLE ACMASTER(
    ACNO INT,
    NAME VARCHAR(10),
    ADATE DATE,
    BAL DECIMAL(9,3),
    CONSTRAINTS PRIMARY_ACNO PRIMARY KEY(ACNO) 
  ); 
  --ACTRAN 
  CREATE TABLE ACTRAN (
    TNO INT(3),
    TDATE DATE,
    AMOUNT DECIMAL(7,2),
    TYPE CHAR(1),
    ACNO INT(3),
    CONSTRAINTS FK_ACNO FOREIGN KEY (ACNO) REFERENCES ACMASTER(ACNO)
);

-- 2. Insert 10 records in ACMASTER table
INSERT INTO ACMASTER (ACNO, NAME, ADATE, BAL) VALUES(101, 'ASHOK', '1997-04-01', 5000.00);
INSERT INTO ACMASTER (ACNO, NAME, ADATE, BAL) VALUES(102, 'NILESH', '1998-06-02', 1000.00);
INSERT INTO ACMASTER (ACNO, NAME, ADATE, BAL) VALUES(103, 'RITESH', '1998-07-04', 2060.00);
INSERT INTO ACMASTER (ACNO, NAME, ADATE, BAL) VALUES(104, 'MUKESH', '1998-12-20', 5000.00);
INSERT INTO ACMASTER (ACNO, NAME, ADATE, BAL) VALUES(105, 'JAYESH', '1998-12-25', 60000.00);
INSERT INTO ACMASTER (ACNO, NAME, ADATE, BAL) VALUES(106, 'RAJESH', '1999-01-26', 2400.00);
INSERT INTO ACMASTER (ACNO, NAME, ADATE, BAL) VALUES(107, 'KUNAL', '1999-01-21', 1500.00);
INSERT INTO ACMASTER (ACNO, NAME, ADATE, BAL) VALUES(108, 'DEVANG', '1999-01-20', 1999.00);
INSERT INTO ACMASTER (ACNO, NAME, ADATE, BAL) VALUES(109, 'ABHAY', '1999-02-26', 2050.00);
INSERT INTO ACMASTER (ACNO, NAME, ADATE, BAL) VALUES(110, 'KAPIL', '1999-03-25', 1000.00);
-- 3. Insert 10 records in ACTRAN table
INSERT INTO ACTRAN (TNO, TDATE, AMOUNT, TYPE, ACNO) VALUES(1, '2000-04-01', 500.00, 'W', 101);
INSERT INTO ACTRAN (TNO, TDATE, AMOUNT, TYPE, ACNO) VALUES(2, '2000-06-02', 1000.00, 'D', 101);
INSERT INTO ACTRAN (TNO, TDATE, AMOUNT, TYPE, ACNO) VALUES(3, '2000-07-04', 500.00, 'W', 102);
INSERT INTO ACTRAN (TNO, TDATE, AMOUNT, TYPE, ACNO) VALUES(4, '2000-12-20', 6000.00, 'D', 103);
INSERT INTO ACTRAN (TNO, TDATE, AMOUNT, TYPE, ACNO) VALUES(5, '2001-12-25', 200.00, 'D', 105);
INSERT INTO ACTRAN (TNO, TDATE, AMOUNT, TYPE, ACNO) VALUES(6, '2001-01-26', 1500.00, 'D', 106);
INSERT INTO ACTRAN (TNO, TDATE, AMOUNT, TYPE, ACNO) VALUES(7, '2001-01-21', 3000.00, 'D', 105);
INSERT INTO ACTRAN (TNO, TDATE, AMOUNT, TYPE, ACNO) VALUES(8, '2002-01-20', 5000.00, 'D', 102);
INSERT INTO ACTRAN (TNO, TDATE, AMOUNT, TYPE, ACNO) VALUES(9, '2002-02-26', 50000.00, 'D', 101);
INSERT INTO ACTRAN (TNO, TDATE, AMOUNT, TYPE, ACNO) VALUES(10, '2003-03-25', 4500.00, 'D', 109);
/*
ALTER table ACMASTER MODIFY BAL DECIMAL(9,3);
SELECT * FROM information_schema.TABLE_CONSTRAINTS;
*/
-- 4. Add column USERNM VARCHER2(10) in ACTRAN table.
ALTER TABLE ACTRAN 
  ADD COLUMN UNAME VARCHAR(10);
-- 5. Add constraint UNIQUE in TNO column.
ALTER TABLE ACTRAN 
  ADD CONSTRAINTS UNIQUE_TNO UNIQUE(TNO);
-- 6. Remove constraints primary key from ACMASTER table.
ALTER TABLE ACMASTER 
  DROP CONSTRAINTS PRIMARY_ACNO;
/*  ALTER TABLE ACMASTER
      DROP PRIMARY KEY;
*/
-- 7. Decrease the size VARCHAR2(8) of NAME column in ACMASTER table.
ALTER TABLE ACMASTER 
  MODIFY NAME VARCHAR(8);
-- 8. Remove foreign key constraint from ACTRAN table.
ALTER TABLE ACTRAN 
  DROP CONSTRAINTS FK_ACNO;
-- 9. Add constraints primary key in ACMASTER table.
ALTER TABLE ACMASTER
  ADD CONSTRAINTS PRIMARY_ACNO PRIMARY kEY(ACNO);
/*ALTER TABLE ACMASTER
  ADD  PRIMARY kEY(ACNO);*/
-- 10. Add constraints not null in NAME column in ACMASTER table.
ALTER TABLE ACMASTER 
  MODIFY NAME VARCHAR(8) NOT NULL;
-- 11. Add constraints CHECK(BAL>0) in ACMASTER table.
ALTER TABLE ACMASTER
  ADD CONSTRAINTS CHECK_BAL CHECK(BAL>0);
/*ALTER TABLE ACMASTER
  ADD CHECK(BAL>0);  */
-- 12. Rename any one column in any table (check is it possible)
ALTER TABLE ACMASTER 
  RENAME COLUMN NAME TO CNAME;
-- 13. Remove NOT NULL constraint of NAME column from ACMASTER table.
ALTER TABLE ACMASTER 
  MODIFY CNAME VARCHAR(8)  NULL;
-- 14. Remove check constraints of BAL column from ACMASTER table. 
ALTER TABLE ACTRAN 
  DROP CONSTRAINTS CHECK_BAL;
  
  /*ALTER TABLE ACMASTER
      DROP CONSTRAINTS CONSTRAINT_1;
      
  ALTER TABLE ACMASTER
    DROP INDEX CONSTRAINT_1;*/

-- 15. Insert USERNM ‘SCOTT’ in all rows of ACTRAN
UPDATE ACTRAN SET USERNM = 'SCOTT';