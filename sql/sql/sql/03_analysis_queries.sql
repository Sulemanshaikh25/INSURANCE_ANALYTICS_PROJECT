-- Top 5 Marketing Segments
SELECT 
  RANK() OVER (ORDER BY SUM(charges) DESC) AS priority,
  age,
  region,
  smoker,
  SUM(charges) AS total_revenue
FROM insurance
GROUP BY age_group, region, smoker
LIMIT 5;

-- Improvement Areas
SELECT 
  age,
  region,
  smoker,
  SUM(charges) AS total_revenue
FROM insurance
GROUP BY age, region, smoker
ORDER BY total_revenue ASC
LIMIT 5;

-- Highest Revenue Customers
SELECT *
FROM insurance
ORDER BY charges DESC
LIMIT 10;
