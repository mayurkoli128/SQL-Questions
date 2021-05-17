
Question 1 : How to find Nth largest salary? 
=>    N = 4 ;
    select salary from 
    (
    select distinct salary from department 
    order by salary desc 
    limit 4 
    ) as result
    order by salary 
    limit 1 ;

Question 2 : How to remove duplicate rows from table?

Question 3 : SQL Query to find department with highest number of employees?
=>    select * from 
    (select deptName, count(*) as Number_of_employees from employees
    inner join department
    on employees.deptId = department.id 
    group by deptName) As result
    order by Number_of_employees desc 
    limit 1;

Question 4: query to find employees hired in last n months



Question 5: SQL query to find rows that contain only numerical data
 =>   SELECT value
    FROM TestTable 
    WHERE value REGEXP '^[0-9]+$';

Question 6 : What is difference between inner join and left join ?

Question 7 : What is difference between Union and Union all ?

Question 9 : What is difference between Union and Join ?

Question 10 :  Join 3 tables in sql server.

Question 11: sql query to find number of male and female employees for each department.
=>    select deptName, gender, count(*) as "Number of employees" from employees
    join department 
    on employees.deptId = department.id 
    group by deptName, gender 
    order by deptName ;

    eg : 
        "IT department" Male 2
        "IT department" Female 3
        "CONSULTING department" Male 5
        "CONSULTING department" Female 1


Question 12: Can you list different types of JOINS available in SQL Server?
=>    Inner Join, Left Join, Right Join, Full Join and Cross Join

Question 13: Can you tell me the purpose of Right Join?
=>    Right Join returns all rows from the Right Table irrespective of whether a match exists in the left table or not.

    Can you give me an example?
        => Consider Departments and Employees tables.
        In this case we use RIGHT JOIN To retrieve all Department and Employee names, irrespective of whether a Department has Employees or not.

        Select DepartmentName, EmployeeName
        From Employees
        Right Join Departments
        On Employees.DepartmentID = Departments.DepartmentID

    Any real time example for using Right Join.
        => To find the number of employees in each of the department.

        select deptName, count(employees.id) "Number of employees"  from employees
        right join department
        on employees.deptId = department.id 
        group by deptName ;

Question 14: Can we join two tables without primary-foreign key relation?
