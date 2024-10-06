SELECT * FROM cpi_index.consumer_price_index;

-- CHECKING FOR NULL OR EMPTY VALUES
SELECT *
FROM consumer_price_index
WHERE TRIM(`Cereals and Products`) = '' OR `Cereals and Products` IS NULL
  OR TRIM(`Meat and Fish`) = '' OR `Meat and Fish` IS NULL
  OR TRIM(Egg) = '' OR Egg IS NULL
  OR TRIM(`Milk and Products`) = '' OR `Milk and Products` IS NULL
  OR TRIM(`Oils and Fats`) = '' OR `Oils and Fats` IS NULL
  OR TRIM(Fruits) = '' OR Fruits IS NULL
  OR TRIM(Vegetables) = '' OR Vegetables IS NULL
  OR TRIM(`Fuel and Light`) = '' OR `Fuel and Light` IS NULL
  OR TRIM(`Transport and Communication`) = '' OR `Transport and Communication` IS NULL
  OR TRIM(`Recreation and Amusement`) = '' OR `Recreation and Amusement` IS NULL
  OR TRIM(Education) = '' OR Education IS NULL
  OR TRIM(Housing) = '' OR Housing IS NULL
  OR TRIM(`Personal Care and Effects`) = '' OR `Personal Care and Effects` IS NULL
  OR TRIM(Miscellaneous) = '' OR Miscellaneous IS NULL
  OR TRIM(`General Index`) = '' OR `General Index` IS NULL;

-- imputing missing values of Housing column
-- Step 1: Creating a temporary table for housing average, rounded to one decimal place
CREATE TEMPORARY TABLE temp_avg_housing AS
SELECT ROUND(AVG(Housing), 1) AS avg_housing
FROM consumer_price_index
WHERE Housing IS NOT NULL AND TRIM(Housing) != '';

-- Step 2: Imputing the empty values with rounded average value(avg_housing)
UPDATE consumer_price_index
SET Housing = (SELECT avg_housing FROM temp_avg_housing)
WHERE Housing IS NULL OR TRIM(Housing) = '';

-- Step 3: Drop the temporary table
DROP TEMPORARY TABLE temp_avg_housing;
