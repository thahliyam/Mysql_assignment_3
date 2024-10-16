-- create table Managers

create table Managers(Manager_id  int auto_increment primary key ,First_name varchar(15) not null, 
Last_name varchar(15) not null,DOB date not null,Age int not null check(age >=18 and age< 55),
Last_update date not null,Gender char(1) not null,Department varchar(20) not null,Salary int not null);

desc managers;

-- 1 Insert 10 rows
INSERT INTO Managers ( First_Name, Last_Name, DOB, Age, Last_Update, Gender, Department, Salary)
VALUES
  ( 'John', 'Doe', '1980-11-01', 43, '2024-10-15', 'M', 'IT', 30000),
  ( 'Jane', 'Smith', '1990-10-15', 33, '2024-10-15', 'F', 'Sales', 28000),
  ( 'Alitta', 'Tom', '1988-09-01', 44, '2024-10-15', 'F', 'IT', 32000),
  ( 'Aaliya', 'Sana', '1999-07-15', 25, '2024-10-15', 'F', 'Marketing', 35000),
  ( 'Raj', 'Gopal', '1997-07-01', 28, '2024-10-15', 'M', 'Finance', 33000),
  ( 'Meenu', 'Thambi', '2000-05-15', 24, '2024-10-15', 'F', 'HR', 25000),
  ( 'Fathima', 'Riya', '1984-01-01', 40, '2024-10-15', 'F', 'Research', 30000),
  ( 'Noel', 'Smith', '1992-02-15', 32, '2024-10-15', 'M', 'HR', 25000),
  ( 'Abdul', 'Sathar', '1999-03-01', 25, '2024-10-15', 'M', 'Customer service', 38000),
  ( 'Roshan', 'Mohammed', '2000-02-25', 24, '2024-10-15', 'M', 'HR', 42000);
  
  select * from managers;
  
  -- 2 Write a query that retrieves the name and date of birth of the manager with manager_id.
  select concat(First_name, ' ' , Last_name) as Name ,DOB from Managers where Manager_id=1;
  -- OR
  Select First_name, Last_name ,DOB from Managers where Manager_id=1;
  
  
  -- 3 Write a query to display the annual income of all managers.
  Select Manager_id,First_name,Last_name, 12*salary as Annual_income from Managers;  
  
  -- 4 Write a query to display records of all managers except 'Aaliya'.
  Select * from Managers where First_name <> 'Aaliya';
  
  -- 5 Write a query to display details of managers whose department is IT and earns more than 25000 per month. 
  Select * from Managers where Department='IT'and Salary>25000;
  
  
  -- 6 Write a query to display details of managers whose salary is between 10000 and 35000.
  Select * from Managers where Salary between 10000 and 25000;
  