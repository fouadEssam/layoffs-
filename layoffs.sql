--1-Data Cleaning Steps:
----Identify Missing Values:

------- Find rows with missing values in specific columns
SELECT * FROM layoffs
WHERE Company_Name IS NULL OR Location IS NULL OR Industry IS NULL;
-- Remove rows with missing values
DELETE FROM layoffs
WHERE Company_Name IS NULL OR Location IS NULL OR Industry IS NULL;


-------Check Data Types and Formatting:
-------- Alter column data types if necessary
ALTER TABLE layoffs
MODIFY COLUMN Date DATE;

-------Check Spelling Mistakes and Inconsistencies:
-------- Use pattern matching to find potential spelling mistakes
SELECT Company_Name, COUNT(*)
FROM layoffs
GROUP BY Company_Name
HAVING COUNT(*) = 1;

-------Remove Duplicate Values in Company Column:
--------- Remove duplicate company names
DELETE l1 FROM layoffs l1
INNER JOIN layoffs l2 
WHERE l1.id > l2.id AND l1.Company_Name = l2.Company_Name;

--2-Exploratory Data Analysis (EDA) Steps:
-------Descriptive Statistics:
--------- Calculate summary statistics
SELECT 
  AVG(Laid_Off_Counts) AS average_laid_off,
  MEDIAN(Laid_Off_Counts) AS median_laid_off, -
  STD(Laid_Off_Counts) AS std_dev_laid_off,
  MIN(Laid_Off_Counts) AS min_laid_off,
  MAX(Laid_Off_Counts) AS max_laid_off
FROM layoffs;

-------Frequency Tables and Cross-Tabulations:
--------- Frequency table for Industry
SELECT Industry, COUNT(*) AS layoffs_count
FROM layoffs
GROUP BY Industry;

-- Frequency table for Location
SELECT Location, COUNT(*) AS layoffs_count
FROM layoffs
GROUP BY Location;

-- Cross-tabulation of layoffs by industry and location
SELECT Industry, Location, COUNT(*) AS layoffs_count
FROM layoffs
GROUP BY Industry, Location;





