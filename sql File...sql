create database Samples
use Samples
CREATE TABLE Study(
reg_no INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
department VARCHAR(40) NOT NULL,
year INT NOT NULL);	
INSERT INTO Study(reg_no,name,department,year) VALUES
(111,'XXX','Computer Science',4),
(125,'yyy','CSE',3),
(126,'ZZZ','Information Technology',3),
(130,'abc','Cyber Security',1); 
SELECT * FROM Study;SET name='sdf',

UPDATE  Study
department='BCA',
year=3 WHERE reg_no =127;

INSERT INTO Study(reg_no,name,department,year)
VALUES (150,'sdfg','MSC CS',2);
SELECT * FROM Study;

ALTER TABLE Study
ADD phone_num VARCHAR(13);
UPDATE Study 
SET phone_num = '123465788' WHERE reg_no = 126;

UPDATE Study 
SET phone_num = '12348787' WHERE reg_no = 111;

UPDATE Study 
SET phone_num = '12379878787' WHERE reg_no = 125;

UPDATE Study 
SET phone_num = '1237678787' WHERE reg_no = 130;

UPDATE Study 
SET phone_num = '1234898987' WHERE reg_no = 150;

SELECT COUNT(*) AS tot_Student FROM Study;
SELECT MAX(year)AS max_yr FROM Study;
SELECT MIN(year) AS min_yr FROM Study;
SELECT AVG(year) AS av_yr FROM Study;
SELECT department,COUNT(*) AS dept_COUNT FROM  study GROUP BY department;
SELECT department ,MAX(year)AS max_yr FROM Study GROUP BY department;

SELECT * FROM Study
ORDER BY year ASC;

SELECT * FROM Study
ORDER BY name;

SELECT * FROM Study
ORDER BY department DESC;

SELECT UPPER(department) AS dep_upr FROM Study;
SELECT UPPER(name) AS name_up FROM Study;
SELECT LOWER(name) AS name_up FROM Study;
SELECT LEFT(name,2)AS srt FROM Study;
SELECT name,LENGTH(name)AS name_ln FROM Study;
SELECT CONCAT(name,' _ ',department)AS combine FROM Study;

SELECT name,year,year + 1 AS nx_yr FROM Study;
SELECT reg_no,MOD(reg_no,2) AS odr FROM Study;

ALTER TABLE study
ADD Date_Detail DATE;

SELECT * FROM Study;

UPDATE Study SET Date_Detail='2021-08-18' WHERE reg_no=111;
UPDATE Study SET Date_Detail='2022-05-03' WHERE reg_no=122;
UPDATE Study SET Date_Detail='2023-06-13' WHERE reg_no=124;
UPDATE Study SET Date_Detail='2024-09-22' WHERE reg_no=130;
UPDATE Study SET Date_Detail='2025-04-01' WHERE reg_no=145;

SELECT CURDATE();
SELECT CURTIME();

SELECT reg_no,name.YEAR(Date_Detail