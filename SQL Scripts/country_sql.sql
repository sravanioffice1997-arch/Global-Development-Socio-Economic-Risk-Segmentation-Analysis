use global_database;
create table global_database.country_stats(
country VARCHAR(100) PRIMARY KEY,
    child_mort REAL NOT NULL,
    exports REAL NOT NULL,
    health REAL NOT NULL,
    imports REAL NOT NULL,
    income INTEGER NOT NULL,
    inflation REAL NOT NULL,
    life_expec REAL NOT NULL,
    total_fer REAL NOT NULL,
    gdpp INTEGER NOT NULL
);
ALTER TABLE country_stats ADD COLUMN segment VARCHAR(50);
select * from country_stats;
SET SQL_SAFE_UPDATES = 0;
UPDATE country_stats
SET segment =
    CASE
        WHEN child_mort > 80 AND income < 5000 THEN 'High Risk Country'
        WHEN income > 30000 AND life_expec > 78 THEN 'Developed Nation'
        WHEN income BETWEEN 8000 AND 30000 THEN 'Emerging Economy'
        WHEN inflation > 15 THEN 'High Inflation Risk'
        WHEN health < 5 AND child_mort > 70 THEN 'Health Critical'
        WHEN gdpp < 2000 THEN 'Low GDP Trap'
        ELSE 'Other'
    END;
    SELECT 
    segment,
    COUNT(*) AS country_count,
    AVG(income) AS avg_income,
    AVG(gdpp) AS avg_gdpp,
    AVG(round(child_mort,2)) AS avg_child_mort,
    AVG(life_expec) AS avg_life_expec,
    AVG(inflation) AS avg_inflation
FROM country_stats
GROUP BY segment
ORDER BY country_count DESC;
#Average income per segment:
SELECT segment, AVG(income) AS avg_income
FROM country_stats
GROUP BY segment;
#Top 10 high-risk countries.
SELECT country, income, child_mort
FROM country_stats
WHERE segment = 'High Risk Country'
ORDER BY child_mort DESC
LIMIT 10;
#Countries with highest inflation.
SELECT country, inflation
FROM country_stats
ORDER BY inflation DESC
LIMIT 10;
#Countries with lowest GDP
SELECT country, gdpp
FROM country_stats
ORDER BY gdpp ASC
LIMIT 10;
#Avg life expectancy by segment
SELECT segment, AVG(life_expec) AS avg_life
FROM country_stats
GROUP BY segment;
#Fertility rate comparison
SELECT segment, AVG(total_fer) AS avg_fertility
FROM country_stats
GROUP BY segment;