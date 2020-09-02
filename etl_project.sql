-- Create Two Tables
CREATE TABLE twentyeighteen (
  rank INT PRIMARY KEY,
  country_or_region TEXT,
  score FLOAT,
  gdp_per_capita FLOAT,
  healthy_life_expectancy FLOAT
);

CREATE TABLE twentynineteen (
  rank INT PRIMARY KEY,
  country_or_region TEXT,
  score FLOAT,
  gdp_per_capita FLOAT,
  healthy_life_expectancy FLOAT
);

DROP TABLE twentyeighteen, twentynineteen;

-- Query to check successful load
SELECT * FROM twentyeighteen;

SELECT * FROM twentynineteen;

-- Join tables on Rank
SELECT twentyeighteen.country_or_region, twentyeighteen.rank AS twentyeighteen_rank, twentynineteen.rank AS twentynineteen_rank
FROM twentyeighteen
JOIN twentynineteen
ON twentyeighteen.country_or_region = twentynineteen.country_or_region
ORDER BY twentyeighteen.rank ASC;

-- Join tables on Score
SELECT twentyeighteen.country_or_region, twentyeighteen.score AS twentyeighteen_score, twentynineteen.score AS twentynineteen_score
FROM twentyeighteen
JOIN twentynineteen
ON twentyeighteen.country_or_region = twentynineteen.country_or_region
ORDER BY twentyeighteen.score ASC;

-- Join tables on GDP Per Capita
SELECT twentyeighteen.country_or_region, twentyeighteen.gdp_per_capita AS twentyeighteen_gdp_per_capita, twentynineteen.gdp_per_capita AS twentynineteen_gdp_per_capita
FROM twentyeighteen
JOIN twentynineteen
ON twentyeighteen.country_or_region = twentynineteen.country_or_region
ORDER BY twentyeighteen.gdp_per_capita DESC;

-- Join tables on Healthy Life Expectancy
SELECT twentyeighteen.country_or_region, twentyeighteen.healthy_life_expectancy AS twentyeighteen_healthy_life_expectancy, twentynineteen.healthy_life_expectancy AS twentynineteen_healthy_life_expectancy
FROM twentyeighteen
JOIN twentynineteen
ON twentyeighteen.country_or_region = twentynineteen.country_or_region
ORDER BY twentyeighteen.healthy_life_expectancy DESC;