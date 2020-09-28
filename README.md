# ETL_Project: World Happiness Reports 2018 and 2019
Team Members: Catherine Smith, Grant Leach, Tomorrow Rose

## Project Description
For this project, we will be analyzing World Happiness data from two csv files found on Kaggle. Our analysis will involve extracting, transforming, and loading the data into a database.

## Extract
Our group found information on the World Happiness Reports from 2015 to 2020 on Kaggle. There was a csv file for each year. Over the years, data collection looked slightly different. Therefore, not all years had similar columns. 2018 and 2019 had a very similar set up in terms of information gathered so we decided to use those two csvs for our comparison.

## Transform
We changed the names of the csv files and saved them into the ETL folder we created. Then we created dataframes for the files in the Jupyter notebook for each year (2018 and 2019). We created a filtered dataframe from the specified columns and included a list of the column names for each year. We renamed the column headers for each dataframe and cleaned the data by dropping duplicates and setting the index by “rank”. We included the connection string for the postgres database. Finally, we created the “transformed.to_sql” functions for each year to create the tables in SQL.

## Load
we loaded data into pgAdmin 4 and ran queries to create 4 separate tables to compare the 2018 and 2019 data. Then, we created a table for the Rank, Score, GDP Per Capita and Healthy Life Expectancy - each table was joined on country for an easy side by side comparison. The Rank table was ordered in ascending order while the GDP Per Capita, Score, and Healthy Life Expectancy tables were displayed in descending order. This allowed the tables to show countries with the most desirable outcomes first.

## Analysis
We were interested in seeing how the United States matched up with other countries on these measures. According to the tables in our analysis, the United States was ranked 18th overall in 2018 and 19th in 2019. In 2018, the United States was 18th for overall score. The score improved slightly in 2019 from 6.886 to 6.892. Finland had the highest score with 7.63 in 2018 and 7.769 in 2019. The United States ranked 10th for GDP per capita in 2018. The score increased from 1.39 in 2018 to 1.43 in 2019. Lastly, the United States was 33rd in the world for life expectancy in 2018 with a score of .819 and increased slightly in 2019 with a score of .874.

The documentation on Kaggle for our data set says that the overall Happiness Score is determined from the following measurements: GDP per capita, Healthy Life Expectancy, Social support, Freedom to make life choices, Generosity, Corruption Perception, Residual error. Keeping an eye on these measures can be a good method for reflection for individual countries and the world as a whole. Seeing these reports can also give direction in terms of where to focus efforts for improvement and which countries to look to for inspiration.