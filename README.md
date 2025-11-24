# Employee Attrition Analysis (SQL + Power BI)

This project is an HR analytics case study where I analyze **Employee Attrition** using SQL and visualize the insights in **Power BI**.

The main objective is to understand:
- How serious the attrition problem is
- Which groups of employees are at higher risk of leaving
- What factors (age, tenure, department, gender, work–life balance, etc.) are linked with higher attrition

---

##  Business Questions

In this project, I try to answer the following questions:

1. **Overall attrition**
   - How many employees does the company have?
   - How many employees have left?
   - What is the overall attrition rate?

2. **Department-level risk**
   - Which departments have the highest attrition rate?
   - Are some departments more at risk than others?

3. **Age & Tenure**
   - Does age group affect attrition?
   - At what **years at company** are employees most likely to leave?

4. **Work–Life Balance & Satisfaction**
   - Is poor work–life balance related to higher attrition?
   - How does attrition change with satisfaction score?

5. **Demographics**
   - Is there any noticeable difference in attrition by gender?
   - Does marital status or employee type (full-time/contract) show different attrition patterns?

6. **Job Role**
   - For each job role, how do satisfaction and attrition relate?

---

##  SQL Analysis

All the SQL queries used in this project are available in the analysis file:

 - [`Hr_analysis.sql`](Hr_analysis.sql)

This script includes:
- Overall employee and attrition summary (counts + attrition rate)
- Attrition by age band, tenure, department, gender, work–life balance, employee type, and marital status
- Job role and satisfaction score analysis

You can open this file directly in GitHub to view the queries, or download it and run them in your SQL environment.

---

##  Power BI Dashboard

I used **Power BI** to build an interactive dashboard on top of the SQL results.

Power BI file:

- `HR_Report.pbix`  

You can download this file from the repository and open it in **Power BI Desktop** to explore the visuals and filters.

### Dashboard Views (example)

The dashboard includes views like:

- **Overview**
  - Total Employees
  - Total Attrition
  - Overall Attrition %
  - High-level KPIs

- **Attrition by Demographics**
  - Attrition by Age Band
  - Attrition by Gender
  - Attrition by Marital Status

- **Tenure & Department**
  - Attrition by Years at Company
  - Attrition by DepartmentType

- **Work–Life Balance & Satisfaction**
  - Attrition by WLB score
  - Job role vs Satisfaction vs Attrition

---

##  Key Insights 

Key Insights

The overall attrition rate is **51% (1,460 employees)**, meaning more than half of the workforce has left the company. This makes attrition a critical HR and business issue, not just a normal turnover level.

Employees in their first year at the company show the highest attrition, with**687 exits**. After the first year, attrition gradually declines and falls to around**110 exits by year 5**. This points to problems in onboarding, role clarity, training, and early employee experience.

Older employees show higher attrition levels. Employees aged **46+ account for 941 exits**, compared to **293 exits in the 25–35** group and **226 exits in the 36–45 group**. This suggests possible issues around career progression, role stagnation, succession/retirement planning, or engagement for senior employees.

Attrition is also high among high performers. A total of **1,325 high-performing employees have left**, which means the company is losing valuable, skilled talent. This is a major risk for productivity, delivery timelines, knowledge retention, and overall performance, and needs urgent attention.

Work–Life Balance (WLB):
Attrition occurs across all WLB ratings, and even **employees who rate their work–life balance as “Excellent” are leaving**. There are **549 exits among employees with Excellent WLB**, which shows that good WLB alone is not enough to retain talent. Other factors such as career growth, compensation, leadership quality, and job-role fit are likely influencing their decision to leave.

By marital status, attrition is spread across Married, Single, Divorced, and Widowed employees, with **Married and Single employees contributing a slightly higher share of exits**. This may be linked to financial responsibilities, desire for stability, and work–life balance expectations, but would need deeper analysis to confirm.

At the department level, the **Production department has the highest attrition with 974 exits**, significantly more than other departments. This indicates potential issues such as workload, work environment, shift patterns, safety concerns, or limited growth opportunities in Production.

Looking at job roles, **Laborer (255), Technician (182), Engineer (152), and Foreman (129) roles show higher attrition compared to other positions**. This suggests that employees in frontline and technical roles are more likely to leave and may be facing higher workload, limited growth, lower pay satisfaction, or higher job pressure.

---

##  Tools Used

- **SQL** – for data querying and analysis  
- **Power BI Desktop** – for building interactive dashboards and visuals  
- **GitHub** – for version control and portfolio hosting

---



