Project Report: Global Socio-Economic Risk Analysis
1. Problem Understanding
The primary challenge addressed in this project is the inequitable distribution of global resources. International organizations often struggle to identify which countries require the most urgent intervention due to the complex interplay between health metrics and economic stability.

Objective: To move beyond simple GDP rankings and create a multi-dimensional risk profile that identifies countries where high child mortality, low income, and poor health spending intersect, signaling a "Critical Risk" status.

2. Approach
We followed a structured data science lifecycle to ensure the findings were statistically sound and actionable:

Data Cleaning: Focused on handling missing values and treating extreme outliers in variables like inflation and gdpp using the IQR method to prevent skewed segmentation.

Exploratory Data Analysis (EDA): Used univariate analysis to understand distributions and bivariate analysis (Scatter plots) to visualize the strong negative correlation between wealth (gdpp) and health risks (child_mort).

Rule-Based Segmentation: Instead of an arbitrary split, we used a logical threshold approach. We defined "Critical Risk" countries as those falling in the bottom 25th percentile for income while simultaneously being in the top 25th percentile for child mortality.

Integrated Tooling: Python was used for the heavy lifting (data processing), SQL for structured storage, and Power BI for executive-level storytelling.

3. Key Findings
Wealth-Health Paradox: The analysis confirms a "floor effect" where countries with a GDP per capita below a certain threshold see exponential increases in child mortality rates.

Cluster Identification: A distinct group of countries (primarily in specific geographical regions) emerged as "Critical Risk," characterized by low health spending relative to their total population needs.

Inflation Impact: High inflation was found to be a significant secondary stressor, often correlating with economic instability that further exacerbates health risks.

4. Recommendations
Targeted Aid: International aid should be prioritized for the identified "Critical Risk" segment, specifically focusing on primary healthcare infrastructure to lower child mortality.

Economic Stabilization: For countries in the "Moderate Risk" category, policy interventions should focus on controlling inflation and diversifying exports to stabilize the GDP.

Monitoring System: Implement a quarterly refresh of this data model to track the movement of countries between segments, allowing for proactive rather than reactive aid allocation.
