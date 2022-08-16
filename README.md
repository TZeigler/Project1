# Project1

This project is to be used as a snapshot of my abilities and understanding of SQL
The first part of the display is “Data Engineering” or “Data Modeling.” It is important to know the tables within the database and the information of which the tables consist of. 
Once I identified the tables and its information, I was able to create the schema or relational diagram to link the tables. Each table has been assigned a primary key and foreign key.
There is one table within the diagram that did not have a column with a common name to any other table. Upon review there were two tables with the same values. I duplicated the column with the matching values and gave it the same name to create the relationship in the schema. 
The second part of this display is Data Analytics. 
1. To identify each employee’s employee number, last name, first name, sex, and salary on one table. I used the “select” function, listed all values desired and joined tables for all information to be present in one search.
2. To identify the employees hired in 1986, I selected the columns to be identified. I used the “where” function for the hire_date column. I then used the “between” function to pull just the employees hired in 1986.
3. The information that was requested was not available on one table. In this matter I used the “join” function twice to join three tables. I used “order by” the department name for structure. In this request the department name seems to be the highlight of the request.
4. The information that was requested was not available on one table. In this matter I used the “join” function twice to join three tables. I used “order by” the employee’s last name for structure. In this request the employee information seems to be the highlight of the request.
5. I used the “where” function to pull the first name “Hercules”. To add to the desired results for those with the last names starting with “B” on the same table, I used the “and” and “like” functions. Since the first names are the same, I used “order by” last name.
6. For this request I had to “join” multiple tables. The desired information was of those employees in the sale department. I used the “where” function to identify sales in the dept_name column using “=”.
7. For this request I had to “join” multiple tables. The desired information was of those employees in the sale and development departments. I used the “where” function to identify “sales” and “development” in the dept_name column using “in.”
8. For this task I used the “count” function to get the total number of each last name. I named the column for the count (total). I “group by” and “order by” the last name and put it in “desc” order.
