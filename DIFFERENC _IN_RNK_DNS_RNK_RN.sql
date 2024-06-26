


USE  project;

DROP TABLE AB_EMPLOYEE;

Create table AB_EMPLOYEE( 
EMP_ID varchar(20),
EMP_NAME varchar(30),
DEPT_ID varchar(30),
EXPERTISE Varchar(30),
Salary int(10),
RESULTS Varchar(20)
);
Insert into AB_EMPLOYEE (EMP_ID,EMP_NAME,DEPT_ID,EXPERTISE,RESULTS,SALARY) values ('5003','ABINASH','1','SCIENCE','PASS',50000);
Insert into AB_EMPLOYEE (EMP_ID,EMP_NAME,DEPT_ID,EXPERTISE,RESULTS,SALARY) values ('5003','ABINASH','1','ENGLISH','PASS',50000);
Insert into AB_EMPLOYEE (EMP_ID,EMP_NAME,DEPT_ID,EXPERTISE,RESULTS,SALARY) values ('5003','ABINASH','1','MATH','PASS',50000);
Insert into AB_EMPLOYEE (EMP_ID,EMP_NAME,DEPT_ID,EXPERTISE,RESULTS,SALARY) values ('107','AMARESH','2','MATH','PASS',50000);
Insert into AB_EMPLOYEE (EMP_ID,EMP_NAME,DEPT_ID,EXPERTISE,RESULTS,SALARY) values ('107','AMARESH','2','ENGLISH','PASS',50000);
Insert into AB_EMPLOYEE (EMP_ID,EMP_NAME,DEPT_ID,EXPERTISE,RESULTS,SALARY) values ('105','JYOTI','3','MATH','FAIL',75000);
Insert into AB_EMPLOYEE (EMP_ID,EMP_NAME,DEPT_ID,EXPERTISE,RESULTS,SALARY) values ('105','JYOTI','3','MATH','FAIL',75000);

Insert into AB_EMPLOYEE (EMP_ID,EMP_NAME,DEPT_ID,EXPERTISE,RESULTS,SALARY) values ('105','JYOTI','3','ENGLISH','PASS',75000);
Insert into AB_EMPLOYEE (EMP_ID,EMP_NAME,DEPT_ID,EXPERTISE,RESULTS,SALARY) values ('7003','NISHAD','2','ENGLISH','FAIL',70000);
Insert into AB_EMPLOYEE (EMP_ID,EMP_NAME,DEPT_ID,EXPERTISE,RESULTS,SALARY) values ('7003','NISHAD','2','MATH','PASS',70000);
Insert into AB_EMPLOYEE (EMP_ID,EMP_NAME,DEPT_ID,EXPERTISE,RESULTS,SALARY) values ('6003','RAKESH','2','MATH','PASS',50556);
Insert into AB_EMPLOYEE (EMP_ID,EMP_NAME,DEPT_ID,EXPERTISE,RESULTS,SALARY) values ('6003','RAKESH','2','ENGLISH','FAIL',50556);
Insert into AB_EMPLOYEE (EMP_ID,EMP_NAME,DEPT_ID,EXPERTISE,RESULTS,SALARY) values ('104','RAVI','2','MATH','PASS',70000);
Insert into AB_EMPLOYEE (EMP_ID,EMP_NAME,DEPT_ID,EXPERTISE,RESULTS,SALARY) values ('104','RAVI','2','ENGLISH','PASS',70000);
Insert into AB_EMPLOYEE (EMP_ID,EMP_NAME,DEPT_ID,EXPERTISE,RESULTS,SALARY) values ('106','REDDY','2','MATH','FAIL',80000);
Insert into AB_EMPLOYEE (EMP_ID,EMP_NAME,DEPT_ID,EXPERTISE,RESULTS,SALARY) values ('106','REDDY','2','ENGLISH','PASS',80000);

Select * from AB_EMPLOYEE;


SELECT EMP_ID, DEPT_ID, EXPERTISE, SALARY,
       SUM(SALARY) OVER (PARTITION BY DEPT_ID) AS DEPT_SALARY,
       SUM(SALARY) OVER (PARTITION BY EXPERTISE) AS EXPERTISE_SALARY,
       ROW_NUMBER() OVER (PARTITION BY DEPT_ID ORDER BY SALARY DESC) AS ROW_NUM,
       RANK() OVER (PARTITION BY DEPT_ID ORDER BY SALARY DESC) AS RANK_NUM,
       DENSE_RANK() OVER (PARTITION BY DEPT_ID ORDER BY SALARY DESC) AS D_RANK_NUM
FROM AB_EMPLOYEE
ORDER BY DEPT_ID, SALARY DESC;











   

   
