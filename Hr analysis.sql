-- Q1. What is the overall size of the workforce and how serious is the attrition problem?
--     - How many employees does the company have in total?
--     - How many employees have left the company?
--     - What is the overall attrition rate (%)?
SELECT 
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition_Flag = 'Yes' THEN 1 ELSE 0 END) AS Total_Attrition,
    SUM(CASE WHEN Attrition_Flag = 'No'  THEN 1 ELSE 0 END) AS Total_Active,
    ROUND(100.0 * SUM(CASE WHEN Attrition_Flag = 'Yes' THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0),2) AS Attrition_Rate_Percent
FROM Emp;

-- Q2. Are certain departments driving most of the attrition?
--     - How many employees work in each department?
--     - How many have left from each department?
--     - Which departments have the highest attrition rate (%)?
--     - Which departments should HR prioritize for retention initiatives?
SELECT 
    DepartmentType,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition_Flag = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(100.0 * SUM(CASE WHEN Attrition_Flag = 'Yes' THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0),2) AS Attrition_Rate_Percent
FROM Emp
GROUP BY DepartmentType
ORDER BY Attrition_Rate_Percent DESC;

-- Q3. Does age group have an impact on employee attrition?
--     - How is attrition distributed across different age bands?
--     - Which age group shows the highest attrition rate?
--     - Are younger employees leaving more frequently than older employees?
SELECT 
    Age_Band,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition_Flag = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(100.0 * SUM(CASE WHEN Attrition_Flag = 'Yes' THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0),2) AS Attrition_Rate_Percent
FROM Emp
GROUP BY Age_Band
ORDER BY Attrition_Rate_Percent DESC;

-- Q4. At what stage in an employee's journey are they most likely to leave?
--     - How does attrition vary by Years_At_Company?
--     - Do most employees leave in the first year, mid-career, or later?
--     - Is there a "critical" tenure period when the risk of leaving is highest?
SELECT 
    Year_At_Company,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition_Flag = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(100.0 * SUM(CASE WHEN Attrition_Flag = 'Yes' THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0),2) AS Attrition_Rate_Percent
FROM Emp
GROUP BY Year_At_Company
ORDER BY Year_At_Company;

-- Q5. Is poor work–life balance contributing to attrition?
--     - How many employees fall into each WLB score?
--     - How does attrition rate change as WLB improves or worsens?
--     - Do employees with low WLB scores leave significantly more?
SELECT 
    WLB,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition_Flag = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(100.0 * SUM(CASE WHEN Attrition_Flag = 'Yes' THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0),2) AS Attrition_Rate_Percent
FROM Emp
GROUP BY WLB
ORDER BY Attrition_Rate_Percent DESC;

-- Q6. Is there any noticeable difference in attrition between male and female employees?
--     - What is the gender distribution in the company?
--     - What is the attrition rate for each gender?
--     - Is one gender leaving significantly more than the other?
SELECT 
    GenderCode,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition_Flag = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(100.0 * SUM(CASE WHEN Attrition_Flag = 'Yes' THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0),2) AS Attrition_Rate_Percent
FROM Emp
GROUP BY GenderCode
ORDER BY Attrition_Rate_Percent DESC;

-- Q7. Does type of employment (full-time, part-time, contract) influence attrition?
--     - How many employees are there in each EmployeeType category?
--     - Which employment type has the highest attrition rate?
--     - Are contract/part-time workers more likely to leave than full-time employees?
SELECT 
    EmployeeType,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition_Flag = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(100.0 * SUM(CASE WHEN Attrition_Flag = 'Yes' THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0),2) AS Attrition_Rate_Percent
FROM Emp
GROUP BY EmployeeType
ORDER BY Attrition_Rate_Percent DESC;

-- Q8. Does marital status have any relationship with attrition?
--     - How is the workforce split across different marital statuses?
--     - Which marital group has the highest attrition rate?
--     - Do single or married employees tend to leave more often?

SELECT 
    MaritalDesc,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition_Flag = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(100.0 * SUM(CASE WHEN Attrition_Flag = 'Yes' THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0),2) AS Attrition_Rate_Percent
FROM Emp
GROUP BY MaritalDesc
ORDER BY Attrition_Rate_Percent DESC;

-- Q9. How does job satisfaction interact with attrition across different job roles?
--     - For each job function, how many employees fall under each satisfaction score?
--     - Within each job function, how does attrition rate change as satisfaction decreases?
--     - Which job roles with low satisfaction scores show the highest attrition risk?
SELECT
    JobFunctionDescription,
    Satisfaction_Score,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition_Flag = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(100.0 * SUM(CASE WHEN Attrition_Flag = 'Yes' THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0),2) AS Attrition_Rate_Percent
FROM Emp
GROUP BY JobFunctionDescription, Satisfaction_Score
ORDER BY JobFunctionDescription, Satisfaction_Score DESC, Attrition_Rate_Percent DESC;
