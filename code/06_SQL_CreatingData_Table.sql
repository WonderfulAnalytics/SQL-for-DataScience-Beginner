/****************************************************************
  Create Database and Tables
****************************************************************/

/* 
-- Create and Drop "exampledb" database
-- Create sample database for our future use
-- Create employee, manager and department tables for our future use
*/

/******************* CREATE DATABASE AND DROP IT EXAMPLE START *******************************************/
CREATE DATABASE exampledb;

/*Drop this database (Make sure this database is disconnected first, 
otherwise you won't be able to delete)*/
DROP DATABASE IF EXISTS exampledb;
/******************* CREATE DATABASE AND DROP IT EXAMPLE START *******************************************/


/******************* CREATE DATABASE AND TABLES for our use in this course ******************************/
-- Let's create sample database and tables: employee, manager and department 
CREATE DATABASE sample;
-- Click on database "sample" to create tables inside that database.


/*********************** CREATE manager TABLE START *************************************/
-- manager- Creating manager sample table
CREATE TABLE manager(
manager_id INT,
manager_name VARCHAR(50),
manager_gender VARCHAR(2)
);

INSERT INTO manager(manager_id, manager_name, manager_gender)
VALUES (10, 'Maya Pradhan', 'F'),
	   (20, 'Reju Rai', 'M'),
	   (30, 'Preema Chetri', 'F'),
	   (40, 'Nirmal Baral', 'M'),
	   (50, 'Shreemaya Magar', 'F'),
	   (60, 'Reejan Lepcha', 'M');
SELECT * FROM manager;	 
/*********************** CREATE manager TABLE END **************************************************/


/*********************** CREATE department TABLE START **************************************************/
-- department -Creating sample department table
CREATE TABLE department(
	department_id INT NOT NULL,
	department_name VARCHAR(50) NOT NULL,
	CONSTRAINT dept_key PRIMARY KEY (department_id)
);

INSERT INTO department(department_id, department_name)
VALUES(1, 'Marketing'),
	  (2, 'Administration'),
	  (3, 'Modeling'),
	  (4, 'Engineering');

SELECT * FROM department;
/*********************** CREATE department TABLE END *************************************/


/*********************** CREATE employee TABLE START ***************************************************/
CREATE TABLE employee(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(2),
	hire_date date,
	state VARCHAR(2),
	salary INT,
	manager_id INT,
	department_id INT,
	job_id INT,
	yearsinschool INT
);

-- INSERTING data into the employee table
-- employee_id is serial data type hence we don't need to provide it
-- some variable like first_name and last_name can't be null
INSERT INTO employee(first_name, last_name, gender, hire_date, state, salary, manager_id, department_id, job_id, yearsinschool)
VALUES('Kancha', 'Rai', 'M', '2020-01-01', 'MD', 50000, 10, 1, 100, 1),
	  ('Rita', 'Patel', 'F', '2020-05-01', 'OK', 55000, 10, 1,100, 1),
	  ('Amar', 'Limbu', 'M','2020-08-15', 'TN', 35000, 10, 1,100, 1),
	  ('John', 'greenwood', 'M', '2021-01-01', 'MD', 70000, 20, 1,200, 2),
	  ('Lee', 'Bush', 'M', '2020-08-01', 'MD', 72000, 20, 1,200, 2),
	  ('Jimmy', 'Shrestha', 'M', '2020-12-01', 'VA', 75000, 30, 2,300, 3),
	  ('Niku', 'Smith', 'M', '2020-12-15', 'CA', 80000, 30, 2,NULL, 4),
	  ('Gari', 'Kc', 'F', '2021-03-15', 'VA', 80000, 30, 2,300, 1),
	  ('Gauri', 'Kc', 'F', '2021-02-15', 'CA', 90000, 30, 2,400, 2),
	  ('Samantha', 'Shrestha', 'F', '2019-10-30', 'MA', 100000, 30, 2,NULL, 2),
	  ('Jyamire', 'Gupta', 'M', '2019-01-15', 'AZ', 90000, 30, 2,400, NULL),
	  ('Jiwan', 'Smith', 'M', '2019-12-15', 'CA', 72000, 40, 3,500, NULL),
	  ('Rani', 'Pathak', 'F', '2021-03-15', 'MA', 100000, 40, 3,500, NULL),
	  ('Ram', 'Saran', 'M', '2021-02-15', 'AZ', 120000, 40, 3,550, NULL),
	  ('Hari', 'Saranam', 'M', '2019-10-30', 'MA', 100000, 40, 3,500, NULL),
	  ('Jhilke', 'Rana', 'M', '2019-08-15', 'MD', 310000, 50, 3,600, NULL),
	  ('Kalu', 'Rana', 'M', '2021-05-15', 'AZ', 140000, 50, 3,600, NULL),
	   ('Menuka', 'Rana', 'F', '2020-02-15', 'AZ', 300000, 60, 4,700, NULL),
	  ('Manu', 'Rai', 'F', '2020-10-30', 'MA', 300000, 60, 4,750, NULL),
	  ('Samuel', 'Cole', 'M', '2019-10-15', 'MD', 350000, 60, 4,750, NULL),
	  ('Thule', 'Rai', 'M', '2020-01-15', 'MD', 77000, 10, 1, 100, NULL),
	  ('Reema', 'Patel', 'F', '2020-05-01', 'OK', 80000, 10, 1,100, NULL),
	  ('Amarnath', 'Limbu', 'M', '2020-08-15', 'TN', 58000, 10, 1,100, NULL),
	  ('Jonathan', 'greenwood', 'M', '2021-01-01', 'MD', 76000, 20, 1,200, NULL),
	  ('Leema', 'Bean', 'F', '2020-08-15', 'MD', 100000, 20, 1,200, NULL),
	  ('Jimmu', 'Shrestha', 'M', '2020-12-15', 'VA', 75000, 30, 2,300, NULL),
	  ('Babu', 'Smith', 'M', '2020-12-15', 'CA', 80000, 30, 2,NULL, NULL),
	  ('Garisika', 'Limbu', 'F', '2021-03-20', 'VA', 100000, 30, 2,300, NULL),
	  ('Gaurika', 'Lamsal', 'F', '2021-02-20', 'CA', 90000, 30, 2,400, NULL),
	  ('Sam', 'Shrestha', 'M', '2019-10-30', 'MA', 100000, 30, 2,NULL, NULL),
	  ('Jhilke', 'Gupta', 'M', '2019-3-15', 'AZ', 200000, 30, 2,400, 3),
	  ('Jamune', 'Chaudhary', 'M', '2019-12-15', 'CA', 200000, 40, 3,500, 5),
	  ('Nirmaya', 'Raut', 'F', '2021-03-15', 'MA', 150000, 40, 3,500, 2),
	  ('Ram', 'Saran', 'M', '2021-02-22', 'AZ', 340000, 40, 3,550, 2),
	  ('Hari', 'Saranam', 'M', '2019-10-30', 'MA', 100000, 40, 3,500, 3),
	  ('Reyaj', 'Rana', 'M', '2019-08-15', 'MD', 310000, 50, 3,600, 4),
	  ('Komal', 'Rana', 'F', '2021-05-15', 'AZ', 300000, 50, 3,600, 5),
	   ('Maya', 'Rana', 'F', '2020-02-15', 'AZ', 300000, 60, 4,700, 1),
	  ('Manu', 'Rai', 'F', '2020-10-30', 'MA', 400000, 60, 4,750, 3),
	  ('Samuel', 'Cole', 'M', '2019-10-15', 'MD', 410000, 60, 4,750, 3);
	  
SELECT * FROM employee;
/*********************** CREATE employee TABLE END *************************************/



/***************************IMPORT FROM CSV START********************************************/
-- Importing data from csv:employee_demographics.csv
--1. First we need to create a table in our database in POstgreSQL to hold the data
--2. COPY data
CREATE TABLE emp_demographics(
	jobtitle VARCHAR(100),
	sex VARCHAR(2),
	Race VARCHAR(100),
	jobtype VARCHAR(100),
	startyear INTEGER
);

-- Check columns
SELECT * FROM emp_demographics;
-- COPY data: showing permission denied error: To resolve this 
-- MAC: go to documents, 
COPY emp_demographics
FROM '/Users/sudipshrestha/Documents/ML_DS/SQL/data/employee_demographics.csv'
WITH (FORMAT CSV, HEADER);

SELECT * FROM emp_demographics;
/***************************IMPORT FROM CSV END********************************************/



/********** SECTION 3- EXCERCISE 1 START*******************************************************/
--Quiz1 to create job table 
CREATE TABLE job(
	job_id INT NOT NULL,
	job_title VARCHAR(50) NOT NULL
);

INSERT INTO job(job_id, job_title)
VALUES(100, 'Sales Representative'),
	  (200, 'Marketing Manager'),
	  (300, 'Administrative Assistant'),
	  (400,'Supervisor'),
	  (500, 'Quantitative Senior'),
	  (550, 'Data Scientist'),
	  (600, 'Senior Data Scientist'),
	  (700, 'ML Engineer'),
	  (750, 'Senior Engineer');
	
SELECT * FROM job;

SELECT COUNT(*) FROM job;
/********** SECTION 3- EXCERCISE 1 END*******************************************************/





/**********************************END****************************************************/
