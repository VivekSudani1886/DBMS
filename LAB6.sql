
--LAB6  (IMPLEMENT SQL IN-BUILT FUNCTIONS (MATH, STRING, AND DATE FUNCTIONS))

--MATH FUNCTIONS

--PART � A:

	--1. DISPLAY THE RESULT OF 5 MULTIPLY BY 30.
		SELECT 5*30 AS FIVE_MUL_30

	--2. FIND OUT THE ABSOLUTE VALUE OF -25, 25, -50 AND 50.
	     SELECT ABS(-25) AS ABS_M25,
		 ABS(25) AS ABS_25,
		 ABS(50) AS ABS_50,
		 ABS(-50) AS ABS_M50


	--3. FIND SMALLEST INTEGER VALUE THAT IS GREATER THAN OR EQUAL TO 25.2, 25.7 AND -25.2.
		SELECT CEILING(25.2) AS SEL_25_P2,
		CEILING(25.7) AS SEL_25_P7,
		CEILING(-25.2) AS SEL_M25_P2

	--4. FIND LARGEST INTEGER VALUE THAT IS SMALLER THAN OR EQUAL TO 25.2, 25.7 AND -25.2.
		SELECT FLOOR(25.2) AS FLR_25_P2,
		FLOOR(25.7) AS FLR_25_P7,
		FLOOR(-25.2) AS FLR_M25_P2

	--5. FIND OUT REMAINDER OF 5 DIVIDED 2 AND 5 DIVIDED BY 3.
		SELECT 5%2 AS REMAINDER
		SELECT 5%3 AS REMAINDER

	--6. FIND OUT VALUE OF 3 RAISED TO 2ND POWER AND 4 RAISED 3RD POWER.
		SELECT POWER(3,2) AS THREE_TWO,
		POWER(4,3) AS FOUR_3

	--7. FIND OUT THE SQUARE ROOT OF 25, 30 AND 50.
		SELECT SQRT(25) AS SQRT25,
		SQRT(30) AS SQRT30,
		SQRT(50) AS SQRT50

	--8. FIND OUT THE SQUARE OF 5, 15, AND 25.
		SELECT SQUARE(5) AS SQUARE5,
		SQUARE(15) AS SQUARE15,
		SQUARE(25) AS SQUARE25,

	--9. FIND OUT THE VALUE OF PI.
		SELECT PI() AS PI

	--10. FIND OUT ROUND VALUE OF 157.732 FOR 2, 0 AND -2 DECIMAL POINTS.
		SELECT ROUND(157.732,2) AS ROUNDOF2,
		ROUND(157.732,0) AS ROUNDOF0,
		ROUND(157.732,-2) AS ROUNDOFM2
		

	--11. FIND OUT EXPONENTIAL VALUE OF 2 AND 3.
		SELECT EXP(2) AS EXP2,
		EXP(3) AS EXP3

	--12. FIND OUT LOGARITHM HAVING BASE E OF 10 AND 2.
		 SELECT LOG(2) AS LOGE,
		 LOG10(2) AS LOG10,
		 LOG(2,2) AS LOGBASE2

	--13. FIND OUT LOGARITHM HAVING BASE B HAVING VALUE 10 OF 5 AND 100.
		SELECT LOG10(5) AS LOG10_5,
		LOG10(100) AS LOG10_100

	--14. FIND SINE, COSINE AND TANGENT OF 3.1415.
			SELECT SIN(3.1415) AS SIN,
			COS(3.1415) AS COS,
			TAN(3.1415) AS TAN
		
	--15. FIND SIGN OF -25, 0 AND 25.
		 SELECT SIGN(-25),SIGN(0),SIGN(25) 

	--16. GENERATE RANDOM NUMBER USING FUNCTION
			--SELECT RAND()*100
			SELECT RAND()

--		PART � B:
--CREATE AND INSERT THE FOLLOWING RECORDS IN THE EMP_MASTER TABLE. 

CREATE TABLE EMP_MASTER
	(
		EMPNO INT,
		EMPNAME VARCHAR(25),
		JOINGDATE DATETIME,
		SALARY INT,
		COMMISSION INT,
		CIRY VARCHAR(25),
		DEPT_CODE VARCHAR(25)
	);

	INSERT INTO EMP_MASTER VALUES
		(101,'KEYUR',2002-1-5,12000,4500,'RAJKOT','3@G'),
		(102,'HARDIK',2004-2-15,14000,2500,'AHMEDABAD','3@'),
		(103,'KAJAL',2006-3-14,15000,3000,'BARODA','3-GD'),
		(104,'BHOOMI',2005-6-25,12500,1000,'AHMEDABAD','1A3D'),
		(105,'HARMIT',2004-2-15,14000,2000,'RAJKOT','312A'),

		

		--TRUNCATE TABLE EMP_MASTER
		SELECT * FROM EMP_MASTER


	--1. DISPLAY THE RESULT OF SALARY PLUS COMMISSION.
		SELECT (SALARY+COMMISSION) FROM EMP_MASTER
	--2. FIND SMALLEST INTEGER VALUE THAT IS GREATER THAN OR EQUAL TO 55.2, 35.7 AND -55.2.
		SELECT CEILING(55.2),CEILING(35.7),CEILING(-55.2)
	--3. FIND LARGEST INTEGER VALUE THAT IS SMALLER THAN OR EQUAL TO 55.2, 35.7 AND -55.2.
		SELECT CEILING(55.2),CEILING(35.7),CEILING(-55.2)
	--4. FIND OUT REMAINDER OF 55 DIVIDED 2 AND 55 DIVIDED BY 3.
		SELECT 55%2 ,55%3
	--5. FIND OUT VALUE OF 23 RAISED TO 2ND POWER AND 14 RAISED 3RD POWER.
		SELECT POWER(23,2),
		POWER(14,2)


--PART � C:

	--1. FIND OUT THE SQUARE ROOT OF 36, 49 AND 81.
		SELECT SQRT(36),
		SQRT(49),
		SQRT(81)
	--2. FIND OUT THE SQUARE OF 3, 9, AND 12.
		SELECT SQUARE(3),
		SQUARE(9),
		SQUARE(12)
	--3. FIND OUT ROUND VALUE OF 280.8952 FOR 2, 0 AND -2 DECIMAL POINTS.
		SELECT ROUND(280.8952,2),ROUND(280.8952,-2)
	--4. FIND SINE, COSINE AND TANGENT OF 4.2014.
		SELECT SIN(4.2014),COS(4.2014),TAN(4.2014)
	--5. FIND SIGN OF -55, 0 AND 95.
		SELECT SIGN(-55),SIGN(0),SIGN(95)

--STRING FUNCTIONS


--PART � A:
	--1. FIND THE LENGTH OF FOLLOWING. (I) NULL (II) � HELLO � (III) BLANK
		SELECT  LEN(NULL),LEN(' HELLO'),LEN('')

	--2. DISPLAY YOUR NAME IN LOWER & UPPER CASE.
		SELECT UPPER('VIVEK') , LOWER('VIVEK')
	
	--3. DISPLAY FIRST THREE CHARACTERS OF YOUR NAME.
		SELECT SUBSTRING('VIVEK',1,3)
	
	--4. DISPLAY 3RD TO 10TH CHARACTER OF YOUR NAME.
		SELECT SUBSTRING ('SUDANI VIVEK J.',3,8)
		--LEFT('SUDANI VIVEK J.',3) , RIGHT('SUDANI VIVEK J.',10)
	
	--5. WRITE A QUERY TO CONVERT �ABC123EFG� TO �ABCXYZEFG� & �ABCABCABC� TO �AB5AB5AB5� USING REPLACE.
		SELECT REPLACE('ABC123EFG','123','XYZ')
		SELECT REPLACE('ABCABCABC','C','5')
	
	--6. WRITE A QUERY TO DISPLAY ASCII CODE FOR �A�,�A�,�Z�,�Z�, 0, 9.
		SELECT ASCII('A'),ASCII('Z') ,ASCII(0) ,ASCII(9)
	
	--7. WRITE A QUERY TO DISPLAY CHARACTER BASED ON NUMBER 97, 65,122,90,48,57.
		SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57)
		
	--8. WRITE A QUERY TO REMOVE SPACES FROM LEFT OF A GIVEN STRING �HELLO WORLD �.
		SELECT LTRIM('HELLO WORLD ') 
	
	--9. WRITE A QUERY TO REMOVE SPACES FROM RIGHT OF A GIVEN STRING � HELLO WORLD �.
		SELECT RTRIM('HELLO WORLD ') 
	
	--10. WRITE A QUERY TO DISPLAY FIRST 4 & LAST 5 CHARACTERS OF �SQL SERVER�.
		SELECT 
	
	--11. WRITE A QUERY TO CONVERT A STRING �1234.56� TO NUMBER (USE CAST AND CONVERT FUNCTION).
		SELECT CAST('1234.56' AS DECIMAL(8,2)) AS CAST,
		CONVERT(DECIMAL(10,2),'1234.56') AS CONVERTED
	
	--12. WRITE A QUERY TO CONVERT A FLOAT 10.58 TO INTEGER (USE CAST AND CONVERT FUNCTION).
		SELECT CAST(10.58 AS INT) AS CAST,
		CONVERT(INT,10.58) AS CONVERTED
	
	--13. PUT 10 SPACE BEFORE YOUR NAME USING FUNCTION.
		SELECT SPACE(10) + 'VIVEK'
	
	--14. COMBINE TWO STRINGS USING + SIGN AS WELL AS CONCAT ().
		SELECT CONCAT('VIVEK',' SUDANI') AS CONCAT
		SELECT 'VIVEK' + ' SUDANI' AS PLUSOPERATOR
	
	--15. FIND REVERSE OF �DARSHAN�.
		SELECT REVERSE('DARSHAN') AS REVERSE
	
	--16. REPEAT YOUR NAME 3 TIMES.
		SELECT REPLICATE('VIVEK ',3) AS REPEAT



--PART � B: PERFORM FOLLOWING QUERIES ON STUDENT TABLE OF PRACTICAL NO 5.

	--1. FIND THE LENGTH OF FIRSTNAME AND LASTNAME COLUMNS.	
		SELECT LEN(FIRSTNAME),LEN(LASTNAME) FROM STUDENT
		
	--2. DISPLAY FIRSTNAME AND LASTNAME COLUMNS IN LOWER & UPPER CASE.
		SELECT UPPER(FIRSTNAME),UPPER(LASTNAME) FROM STUDENT
		SELECT LOWER(FIRSTNAME),LOWER(LASTNAME) FROM STUDENT

	--3. DISPLAY FIRST THREE CHARACTERS OF FIRSTNAME COLUMN.
		SELECT SUBSTRING(FIRSTNAME,1,3) FROM STUDENT

	--4. DISPLAY 3RD TO 10TH CHARACTER OF WEBSITE COLUMN.

	--5. WRITE A QUERY TO DISPLAY FIRST 4 & LAST 5 CHARACTERS OF WEBSITE COLUMN.

--PART � C: PERFORM FOLLOWING QUERIES ON STUDENT TABLE OF PRACTICAL NO 5.

	--1. PUT 10 SPACE BEFORE FIRSTNAME USING FUNCTION.

	--2. COMBINE FIRSTNAME AND LASTNAME COLUMNS USING + SIGN AS WELL AS CONCAT ().

	--3. COMBINE ALL COLUMNS USING + SIGN AS WELL AS CONCAT ().

	--4. FIND REVERSE OF FIRSTNAME COLUMN.

	--5. REPEAT FIRSTNAME COLUMN 3 TIMES

	--6. GIVE THE NAMES WHICH CONTAINS 5 CHARACTERS.

	--7. COMBINE THE RESULT AS <FIRSTNAME> LIVES IN <CITY>.

	--8. COMBINE THE RESULT AS STUDENT_ID OF < FIRSTNAME > IS <STUID> .

--DATE FUNCTIONS

--PART � A:

	--1. WRITE A QUERY TO DISPLAY THE CURRENT DATE & TIME. LABEL THE COLUMN TODAY_DATE.
		SELECT GETDATE() AS TODAY_DATE

	--2. WRITE A QUERY TO FIND NEW DATE AFTER 365 DAY WITH REFERENCE TO TODAY.
		SELECT GETDATE()+365 AS DATE_AFTER_365 

	--3. DISPLAY THE CURRENT DATE IN A FORMAT THAT APPEARS AS MAY 5 1994 12:00AM.
		SELECT FORMAT(GETDATE(),'MMM dd yyyy HH:MM tt') AS GIVEN_FROMAT
		 
	--4. DISPLAY THE CURRENT DATE IN A FORMAT THAT APPEARS AS 03 JAN 1995.
		SELECT FORMAT(GETDATE(),'DD MMM YYYY')

	--5. DISPLAY THE CURRENT DATE IN A FORMAT THAT APPEARS AS JAN 04, 96.
		SELECT FORMAT(GETDATE(),'MMM DD, YY')

	--6. WRITE A QUERY TO FIND OUT TOTAL NUMBER OF MONTHS BETWEEN 31-DEC-08 AND 31-MAR-09.
		SELECT DATEDIFF(MONTH,'2008-12-31','2009-3-31') AS MONTH_DIFF 

	--7. WRITE A QUERY TO FIND OUT TOTAL NUMBER OF YEARS BETWEEN 25-JAN-12 AND 14-SEP-10.
		SELECT DATEDIFF(YEAR,'2012-1-25','2010-9-10') AS YEAR_DIFF 
		
	--8. WRITE A QUERY TO FIND OUT TOTAL NUMBER OF HOURS BETWEEN 25-JAN-12 7:00 AND 26-JAN-12 10:30.
		SELECT DATEDIFF(HOUR,'2012-1-25 7:00','2012-1-26 10:30')

	--9. WRITE A QUERY TO EXTRACT DAY, MONTH, YEAR FROM GIVEN DATE 12-MAY-16.
		SELECT DAY('12-MAY-16'),MONTH('12-MAY-16'),YEAR('12-MAY-16')

	--10. WRITE A QUERY THAT ADDS 5 YEARS TO CURRENT DATE.
		SELECT GETDATE()+(365*5) AS DATE_AFTER_365 
		SELECT DATEADD(YEAR,5,GETDATE())
	--11. WRITE A QUERY TO SUBTRACT 2 MONTHS FROM CURRENT DATE.
		SELECT DATEADD(MONTH,-2,GETDATE())
	--12. EXTRACT MONTH FROM CURRENT DATE USING DATENAME () AND DATEPART () FUNCTION.
		SELECT DATENAME(MONTH, GETDATE()) AS 'MONTH'
		SELECT DATEPART(MONTH, GETDATE()) AS 'MONTH' 

	--13. WRITE A QUERY TO FIND OUT LAST DATE OF CURRENT MONTH.
		SELECT EOMONTH(GETDATE())
		SELECT EOMONTH('20220701')

	--14. CALCULATE YOUR AGE IN YEARS AND MONTHS.
		SELECT DATEDIFF(YEAR,'2006-8-18',GETDATE())

--PART � B:

	--CREATE A TABLE EMP_DETAIL AND INSERT THE FOLLOWING RECORDS IN THE TABLE.
	

	CREATE TABLE EMP_DETAIL
	(
		EMPNO INT,
		EMPNAME VARCHAR(25),
		JOINGDATE DATE,
		SALARY INT,
		CITY VARCHAR(25),		
	);

	INSERT INTO EMP_DETAIL VALUES
		(101,'KEYUR','2002-1-15',12000,'RAJKOT'),
		(102,'HARDIK','2004-4-15',14000,'AHMEDABAD'),
		(103,'KAJAL','2006-3-14',15000,'BARODA'),
		(104,'BHOOMI','2005-6-23',12500,'AHMEDABAD'),
		(105,'HARMIT','2004-2-15',14000,'RAJKOT'),
		(106,'JAY','2007-3-12',12000,'SURAT')

		--TRUNCATE TABLE EMP_DETAIL
		ALTER TABLE EMP_DETAIL ALTER COLUMN JOINGDATE DATE
		SELECT * FROM EMP_DETAIL
		

	--1. WRITE A QUERY TO FIND NEW DATE AFTER 365 DAY WITH REFERENCE TO JOININGDATE.
		SELECT CAST(JOINGDATE AS DATE)+365  FROM EMP_DETAIL
		SELECT DATEADD(YEAR,1,JOINGDATE) FROM EMP_DETAIL	

	--2. DISPLAY THE JOININGDATE IN A FORMAT THAT APPEARS AS MAY 5 1994 12:00AM.
		SELECT FORMAT(JOINGDATE,'MMM dd yyyy HH:MM tt') AS GIVEN_FROMAT FROM EMP_DETAIL

	--3. DISPLAY THE JOININGDATE IN A FORMAT THAT APPEARS AS 03 JAN 1995.
		SELECT FORMAT(JOINGDATE,'dd MMM yyyy') FROM EMP_DETAIL

	--4. DISPLAY THE JOININGDATE IN A FORMAT THAT APPEARS AS JAN 04, 96.
		SELECT FORMAT(JOINGDATE,'MMM dd, yy') FROM EMP_DETAIL

	--5. WRITE A QUERY TO FIND OUT TOTAL NUMBER OF MONTHS BETWEEN JOININGDATE AND 31-MAR-09.
		SELECT DATEDIFF(MONTH,JOINGDATE ,'2009-3-31') AS MONTH_DIFF FROM EMP_DETAIL

	--6. WRITE A QUERY TO FIND OUT TOTAL NUMBER OF YEARS BETWEEN JOININGDATE AND 14-SEP-10.
		SELECT DATEDIFF(YEAR,JOINGDATE ,'2010-9-10') AS YEAR_DIFF  FROM EMP_DETAIL
		
--PART � C:

	--1. WRITE A QUERY TO EXTRACT DAY, MONTH, YEAR FROM JOININGDATE.
		SELECT DAY(JOINGDATE),MONTH(JOINGDATE),YEAR(JOINGDATE) FROM EMP_DETAIL

	--2. WRITE A QUERY THAT ADDS 5 YEARS TO JOININGDATE.
		SELECT DATEADD(YEAR,5,JOINGDATE) FROM	EMP_DETAIL

	--3. WRITE A QUERY TO SUBTRACT 2 MONTHS FROM JOININGDATE.
		SELECT DATEADD(MONTH,-2,JOINGDATE) FROM EMP_DETAIL

	--4. EXTRACT MONTH FROM JOININGDATE USING DATENAME () AND DATEPART () FUNCTION.
		SELECT DATENAME(MONTH, JOINGDATE) AS 'MONTH' FROM EMP_DETAIL
		SELECT DATEPART(MONTH, JOINGDATE) AS 'MONTH' FROM EMP_DETAIL

	--5. CALCULATE YOUR AGE IN YEARS AND MONTHS
		SELECT DATEDIFF(YEAR,'2006-8-18',JOINGDATE) FROM EMP_DETAIL	
