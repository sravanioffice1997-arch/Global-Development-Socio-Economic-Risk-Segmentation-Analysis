Global Development & Socio-Economic Risk Segmentation Analysis
📌 Project Overview
This project focuses on analyzing global development indicators (Health, Economic, and Social) to identify and segment countries based on socio-economic risk. By using a combination of Python for statistical analysis and SQL for data modeling, the goal is to provide a data-driven framework for international organizations to prioritize aid and strategic interventions.

📂 Repository Structure
According to the repository layout, the project is organized as follows:

Python Notebook_cleaned_data/: Contains colab for data cleaning, outlier treatment, and Exploratory Data Analysis (EDA).

SQL Scripts/: Includes SQL queries for data modeling, table creation, and KPI derivation.

Dashboard (Power BI)/: Contains the interactive visualization files for reporting insights.

🛠️ Setup Instructions
1. Prerequisites
Python 3.8+

SQL Database (MySQL/PostgreSQL)

Power BI Desktop (for viewing the dashboard)

2. Installation
Clone the repository and install the required Python libraries:

Bash
git clone https://github.com/sravanioffice1997-arch/Global-Development-Socio-Economic-Risk-Segmentation-Analysis.git
cd Global-Development-Socio-Economic-Risk-Segmentation-Analysis
pip install -r requirements.txt
🚀 Steps to Run
Step 1: Data Analysis (Python)
Navigate to the Python Notebook_cleaned_data/ folder.

Run the notebook to perform Outlier Treatment and Rule-Based Segmentation.

This step will produce the cleaned dataset required for the next stages.

Step 2: Data Modeling (SQL)
Use the scripts in the SQL Scripts/ folder to set up your database schema.

Import the cleaned data to execute complex queries and identify high-priority segments based on KPIs like GDP per capita and Child Mortality.

Step 3: Visualization (Dashboard)
Open the file in the Dashboard (Power BI)/ folder.

Explore the three main views:

Global Overview: A bird's-eye view of development metrics.

Health & Economic Risk: Deep dive into the correlation between health and wealth.

Segmentation Insights: Direct identification of countries in the "Critical Risk" category.

📊 Project Guidelines
Coding Standards: All Python code follows functional programming principles for modularity.

Version Control: This project utilizes Git for tracking version history and document updates.
