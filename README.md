# ETL_Project: World Happiness Reports 2018 and 2019
Team Members: Catherine Smith, Grant Leach, Tomorrow Rose

## Project Description
For this project, we will be analyzing World Happiness data from two csv files found on Kaggle. Our analysis will involve extracting, transforming, and loading the data into a database.

## Extract
Our group found information on the World Happiness Reports from 2015 to 2020 on Kaggle. There was a csv file for each year. Over the years, data collection looked slightly different. Therefore, not all years had similar columns. 2018 and 2019 had a very similar set up in terms of information gathered so we decided to use those two csvs for our comparison.

## Transform
We changed the names of the csv files and saved them into the ETL folder we created. Then we created dataframes for the files in the Jupyter notebook for each year (2018 and 2019). We created a filtered dataframe from the specified columns and included a list of the column names for each year. We renamed the column headers for each dataframe and cleaned the data by dropping duplicates and setting the index by “rank”. We included the connection string for the postgres database. Finally, we created the “transformed.to_sql” functions for each year to create the tables in SQL.

## Load
*  Loaded data into pgAdmin 4
*  Ran queries to create 4 separate tables to compare the 2018 data vs the 2019 data
*  Created a table for the Rank, Score, GDP Per Capita and Healthy Life Expectancy - each table was joined on country for an easy side by side comparison
*  The Rank table was ordered in ascending order while the GDP Per Capita, Score, and Healthy Life Expectancy tables were displayed in descending order - this allowed the tables to show countries with the most desirable outcomes first


Data source: https://www.kaggle.com/mathurinache/world-happiness-report

Transformation needed: We will clean our data with pandas in a jupyter notebook and then perform joins and filtering with SQL.

Final production database: Relational

The final tables or collections that will be used in the production database will include side by side comparisons of different metrics (overall rank, score GDP per capita, generosity, etc.) for each country for the years 2018 and 2019.

Our final technical report will include the above information and steps required to reproduce the ETL process.



Rough Breakdown of Tasks:
    We will each be submitting the github link to BCS.
    During class, we will be sharing one screen to complete the required task.

## Analysis