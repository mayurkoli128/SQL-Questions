

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
    =>  Yes, we can join two tables without primary foreign key relation as long as the column values involved in the join can be converted to one type.
    ID column in Departments table is not the primary Key and DepartmentId column in Employees table is not the foreign key. But we can still join these 
    tables using ID column from Departments table and DepartmentId column from Employees table, as both the columns involved in the join have same data type 
    i.e int.

Question 15: if primary foreign key relation is not mandatory for 2 tables to be joined then what is the use of these keys?
    => Primary key enforces uniqueness of values over one or more columns. Since ID is not a primary key in Departments table, 2 or more departments may 
    end up having same ID value, which makes it impossible to distinguish between them based on the ID column value.Foreign key enforces referential integrity.
    Without foreign key constraint on DepartmentId column in Employees table, it is possible to insert a row 
    into Employees table with a value for DepartmentId column that does not exist in Departments table.

Question 16: How to create empty tables with the same structure as another table?
    => Creating empty tables with the same structure can be done smartly by fetching the records of one table into a new table using the INTO operator while 
    fixing a WHERE clause to be false for all records. Hence, SQL prepares the new table with a duplicate structure to accept the fetched records but since no 
    records get fetched due to the WHERE clause in action, nothing is inserted into the new table.
    For example - 
    SELECT * INTO Students_copy
    FROM Students WHERE 1 = 2;  
