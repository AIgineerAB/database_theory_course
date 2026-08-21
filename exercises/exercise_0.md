# Exercise 0 - What is data, databases and SQL 

In this exercise, you get to familiarize yourself with data, databases and SQL 

## 0. DBA role

In the lectures we have covered a little bit about the DBA role. In this exercise you should look up DBA related jobs to navigate in the market. Here is a few tips where you can look (some are Sweden specific)

- [platsbanken](https://arbetsformedlingen.se/platsbanken/annonser)
- [indeed](https://se.indeed.com/)
- [linkedin](https://www.linkedin.com/jobs) 

note that linkedin requires account, which is good to have when you are within IT field

Look for DBA jobs and within related fields. Find the ads and note down which companies they are. Check their webpages briefly and note down interested ones as this can be useful when it's time to serach for internship and jobs. 


## 1. What is data?

Here are some theoretical questions to get an overview of data and databases

a) What are the difference between data and information? 

b) Give some examples of data, what it can be used for and how to store it 

c) Give a few examples of DBMS

d) What is the difference between DBMS and a database? 

e) How does structured data differ from semi-structured data and unstructured data? 


## 2. Basic SQL queries on jokes

In this exercise you should start with copying this code into Avien PostgreSQL playground [sql_scripts/jokes.sql](https://github.com/AIgineerAB/database_theory_course/tree/main/exercises/assets/jokes.sql) to create a table. 

a) Create a query to select all jokes 

b) Now select setup and punchline

c) Select the jokes with rating above 4.4

d) Select only jokes with category database

e) Select jokes with category database and rating above 4



## 3. More SQL queries on rabbits

In this exercise you should start with copying this code into Avien PostgreSQL playground [sql_scripts/rabbits.sql](https://github.com/AIgineerAB/database_theory_course/tree/main/exercises/assets/rabbits.sql) to create a table. 

a) Create a query to select all rabbits 

b) Create a query to select all breeds

c) Join together breeds and rabbits and select all rows

d) Join together breeds and rabbits and select rabbit_name, breed_name and age_months

e) Join together breeds and rabbits and select rabbit_name, breed_name and age_months for rabbits over 6lbs


## 4. Toy library

A toy library wants to note down all the borrowers and the toy they borrow in an Excel sheet. How would you design this excel sheet? 
Think about which columns (fields) to include. 

What are the pros and cons using Excel sheet for this?


## 5. Toy library SQL

Based on the fields you have decided in your Excel sheet, use LLM to generate fake data for you to insert into Avien. Then try out different SQL queries and filtering on your data.


## Glossary

Fill in this table either by copying this into your own markdown file or copy it into a spreadsheet if you feel that is easier to work with.

| terminology  | explanation |
| ------------ | ----------- |
| data         |             |
| database     |             |
| schema       |             |
| table        |             |
| SQL          |             |
| NoSQL        |             |
| row          |             |
| column       |             |
| DBMS         |             |
| RDBMS        |             |
| SELECT       |             |
| WHERE        |             |
| JOIN         |             |
| CREATE TABLE |             |
| INSERT       |             |
| query        |             |
|              |             |
|              |             |
|              |             |
