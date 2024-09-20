--LAB 11 (IMPLEMENT SQL JOINS)

--CREATE BELOW TABLES AS PER FOLLOWING DATA




		CREATE TABLE STU_INFO (
			RNO INT ,
			NAME VARCHAR(50),
			BRANCH VARCHAR(50)
		);

		INSERT INTO STU_INFO (RNO, NAME, BRANCH)
		VALUES 
			(101, 'RAJU', 'CE'),
			(102, 'AMIT', 'CE'),
			(103, 'SANJAY', 'ME'),
			(104, 'NEHA', 'EC'),
			(105, 'MEERA', 'EE'),
			(106, 'MAHESH', 'ME');

	UPDATE STU_INFO SET  BRANCH = 'ME' WHERE RNO = 106
		CREATE TABLE RESULT (
			RNO INT,
			SPI DECIMAL(4, 2),
			);

		INSERT INTO RESULT (RNO, SPI)
		VALUES 
			(101, 8.8),
			(102, 9.2),
			(103, 7.6),
			(104, 8.2),
			(105, 7.0),
			(107, 8.9);  

		CREATE TABLE EMPLOYEE_MASTERS (
			EMPLOYEENO VARCHAR(50) ,
			NAME VARCHAR(50),
			MANAGERNO VARCHAR(50)
		);

		

		INSERT INTO EMPLOYEE_MASTERS
		VALUES 
			('E01', 'TARUN', NULL),
			('E02', 'ROHAN', 'E02'),
			('E03', 'PRIYA', 'E01'),
			('E04', 'MILAN', 'E03'),
			('E05', 'JAY', 'E01'),
			('E06', 'ANJANA', 'E04')

			SELECT * FROM EMPLOYEE_MASTERS


--PART � A:

	--1. COMBINE INFORMATION FROM STUDENT AND RESULT TABLE USING CROSS JOIN OR CARTESIAN PRODUCT.
		SELECT * FROM STU_INFO 
		CROSS JOIN RESULT

		----OR----

		SELECT * FROM STU_INFO , RESULT


	--2. PERFORM INNER JOIN ON STUDENT AND RESULT TABLES.
		SELECT * FROM STU_INFO AS SI 
		INNER JOIN RESULT AS R
		ON SI.RNO = R.RNO


	--3. PERFORM THE LEFT OUTER JOIN ON STUDENT AND RESULT TABLES.
		SELECT * FROM STU_INFO AS SI 
		LEFT OUTER JOIN  RESULT AS R
		ON SI.RNO = R.RNO

	--4. PERFORM THE RIGHT OUTER JOIN ON STUDENT AND RESULT TABLES.
		SELECT * FROM STU_INFO AS SI 
		RIGHT OUTER JOIN  RESULT AS R
		ON SI.RNO = R.RNO

	--5. PERFORM THE FULL OUTER JOIN ON STUDENT AND RESULT TABLES.
		SELECT * FROM STU_INFO AS SI 
		FULL OUTER JOIN  RESULT AS R
		ON SI.RNO = R.RNO

	--6. DISPLAY RNO, NAME, BRANCH AND SPI OF ALL STUDENTS.
		SELECT * FROM STU_INFO AS SI 
		LEFT OUTER JOIN  RESULT AS R
		ON SI.RNO = R.RNO

	--7. DISPLAY RNO, NAME, BRANCH AND SPI OF CE BRANCH�S STUDENT ONLY.
		SELECT * FROM STU_INFO SI 
		LEFT OUTER JOIN  RESULT R
		ON SI.RNO = R.RNO
		WHERE SI.Branch = 'CE'

	--8. DISPLAY RNO, NAME, BRANCH AND SPI OF OTHER THAN EC BRANCH�S STUDENT ONLY.
		SELECT * FROM STU_INFO SI 
		LEFT OUTER JOIN  RESULT R
		ON SI.RNO = R.RNO
		WHERE SI.Branch !='EC'

	--9. DISPLAY AVERAGE RESULT OF EACH BRANCH.
		SELECT SI.BRANCH,AVG(R.SPI) FROM STU_INFO SI 
		LEFT OUTER JOIN  RESULT R
		ON SI.RNO = R.RNO
		GROUP BY BRANCH

	--10. DISPLAY AVERAGE RESULT OF CE AND ME BRANCH.
		SELECT SI.BRANCH,AVG(R.SPI) AS AVG FROM STU_INFO SI 
		JOIN  RESULT R
		ON SI.RNO = R.RNO
		WHERE SI.Branch = 'CE' OR SI.BRANCH = 'ME'
		GROUP BY BRANCH


--PART � B:


	--1. DISPLAY AVERAGE RESULT OF EACH BRANCH AND SORT THEM IN ASCENDING ORDER BY SPI.
		SELECT SI.BRANCH,AVG(R.SPI)  FROM STU_INFO SI 
		JOIN  RESULT R
		ON SI.RNO = R.RNO
		GROUP BY SI.BRANCH
		ORDER BY AVG(R.SPI) ASC

	--2. DISPLAY HIGHEST SPI FROM EACH BRANCH AND SORT THEM IN DESCENDING ORDER.
		SELECT SI.BRANCH,MAX(R.SPI)  AS MAX_SPI
		FROM STU_INFO SI 
		JOIN  RESULT R
		ON SI.RNO = R.RNO
		GROUP BY SI.BRANCH
		ORDER BY MAX(R.SPI) DESC
		

--PART � C:

	--1. RETRIEVE THE NAMES OF EMPLOYEE ALONG WITH THEIR MANAGER�S NAME FROM THE EMPLOYEE TABLE
		SELECT EM1.NAME AS EMPNAME , EM2.NAME AS MANGERNAME FROM EMPLOYEE_MASTERS EM1
		JOIN EMPLOYEE_MASTERS EM2
		ON EM1.EMPLOYEENO = EM2.MANAGERNO
