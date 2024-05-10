# SQL Challenge: Employee Database

## Project Background ##

You were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. 
All that remains of the employee database from that period are six CSV files.
<br>For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then analyse the data. 
<br>That is, you’ll perform : 

---
#### 1.	Data modeling 
#### 2.	Data engineering  
#### 3.	Data analysis

---
## Data Modeling

#### Inspect the CSV files: 
At this stage it is about gaining insight of all the CSV files, respective columns, Rows, unique values within a column and developing Conceptual & Logical finding and probable relationship between these files.

#### Sketch an Entity Relationship Diagram of the tables: <br> 
After inspection and developing our findings, We have created ERD sketch using QuickDBD. 
and the model can be seen as under: -

---
<img width="1370" alt="erd diagram" src="https://github.com/AVI-1213/sql_challenge/assets/156638175/5bb83b8b-af3b-40da-bdac-c9ed887fff6d">
---

## Data Engineering ##

Using our ERD, we then created all six tables directly in PostgreSQL by export tools available within QuickDBD application and performed the following:
   - Properly specified the data types, primary keys, foreign keys, and other constraints.
   - Verified the uniqueness of primary keys and created composite keys where necessary.
   - Created the tables in the correct order to handle foreign keys.
   - Imported each CSV file into its corresponding SQL table in sequence.
<br>[Link to .sql file](EmployeeSQL/emp_create_table.sql)

<img width="785" alt="Screenshot 2024-05-01 at 11 40 41 PM" src="https://github.com/AVI-1213/sql_challenge/assets/156638175/537bcd92-7735-43a9-add3-5da12756098c">


## Data Analysis

Once, the Data was imported Successfully, we then delve into further analysis as per the requirements <br>
Here are the 8 requirements, which we addressed over here :- <br>

[Link to Solution for all 8 questions .sql file](EmployeeSQL/Analysis.sql)

1.	List the employee number, last name, first name, sex, and salary of each employee.
2.	List the first name, last name, and hire date for the employees who were hired in 1986.
3.	List the manager of each department along with their department number, department name, employee number, last name, and first name.
4.	List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5.	List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6.	List each employee in the Sales department, including their employee number, last name, and first name.
7.	List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8.	List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

## Tools Used
  - QuickDBD for ERD diagram
  - PostgreSQL for Analysis and Database
  - VS Code 


- [Avinash K]([link to your GitHub profile](https://github.com/AVI-1213))

