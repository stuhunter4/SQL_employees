# sql-challenge
<p>Data engineering and analysis researching employess of a hypothetical corporation.  Datasets on the corporation and its employess from the 1980s and 1990s came in the form of six CSV files.</p>
<p>Designed tables to hold CSV data, imported CSVs into a SQL database (pgAdmin), and performed data analysis through SQL queries.</p>
<p>Many of the solutions involved using JOIN to access data across multiple SQL tables.  Bonus Analysis involved using SQLAchemy to import the SQL database into Pandas.</p>
<h3>EmployeeSQL folder described:</h3>
<p><strong>QuickDBD_SQL-challenge.png: </strong>Image file of the entity relationship diagram created using http://www.quickdatabasediagrams.com.</p>
<p><strong>table_schemata.sql: </strong>CSV files imported into corresponding SQL table in pgAdmin.</p>
<p><strong>queries.sql: </strong>Data analysis performing SQL queries for a variety of cross-table information, for example: first name, last name, and hire date for employees who were hired in 1986; all employees in the Sales and Development departments, including their employee number, last name, first name, and department name, etc.</p>
<p><strong>Bonus_Analysis.ipynb: </strong>Additional analysis utilizing SQLAlchemy to import the SQL database into Pandas.  Includes a histogram to visualize the most common salary ranges for employees, and a bar chart of average salary by title, to qualify the spurious nature of the dataset.</p>