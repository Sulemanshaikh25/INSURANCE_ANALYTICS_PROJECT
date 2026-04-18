-- Add age groups
CREATE OR REPLACE TABLE insurance AS
SELECT *,
  CASE 
    WHEN age < 25 THEN '18-24'
    WHEN age BETWEEN 25 AND 40 THEN '25-40'
    WHEN age BETWEEN 41 AND 60 THEN '41-60'
    ELSE '60+'
  END AS age_group
FROM insurance;
