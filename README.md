# layoffs Anlysis Project
![](layoffs.jpg)


## Project Description

This project analyzes a dataset of company layoffs, aiming to identify trends and insights based on factors like company, location, and industry.
The data covers layoffs from November-2020 to May-2024. We'll explore how layoffs vary across industries, locations, and time.

## Data Description
The layoffs.csv file in the data directory contains the dataset used in this
project.
Columns:
Company Name: Name of the company experiencing layoffs.
Location: Geographic location (city, state, country) of the layoffs.
Industry: Industry sector of the company (e.g., technology, finance,
healthcare).
Laid-Off Counts: Number of employees laid off.
Date: Date the layoffs occurred (format: YYYY-MM-DD).
Percentage: Percentage of the workforce laid off 
## Data Cleaning Steps:
-Identify Missing Values by Apply filters to my data to quickly find cells that are empty or have specific error values like N/A then remove them.
-Check Data Types and Formatting
- Check spelliing mistakes and inconsistencies
- remove Duplicates Valus in Company Column by Useing conditional formatting to highlight cells that are duplicated
## Exploratory Data Analysis (EDA) Steps:
-Descriptive Statistics:
Calculate summary statistics for numeric columns (Laid-Off Counts,
possibly Percentage):  Mean, median, standard deviation, minimum, and maximum values. Use functions like AVERAGE, MEDIAN, STDEV, MIN, and MAX.
-Frequency Tables and Cross-Tabulations:
Create frequency tables to understand the distribution of layoffs by:
Industry (using COUNTIF or a pivot table).
Location (city, state, country, using pivot tables or conditional formatting).
Generate cross-tabulations to explore relationships between variables:
layoffs by industry and location (using pivot tables).
Layoffs by company .
## Visualizations:
-Count of laidoff emplyee: 


![](count_of_laidoff_employee.png)       

-Bar charts to compare layoffs by industry, location:


![](ladioff_by_industry.png)                    ![](ladioff_by_country.png)

-Line charts to analyze trends in layoffs over time:

![](Average_of_Laid_Off_Count_by_Year.png)

-Line charts to analyze trends in raised funds in a company compars to ladioffs employee by the same company:


![](relationship_between_funds_and_laidoffs.png) 







