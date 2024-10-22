# Analyzing Price Trends and Predicting Economic Index Movements using Machine Learning

## Overview
This project focuses on analyzing **price trends** in India’s **Consumer Price Index (CPI)** dataset and predicting the **General Index** using machine learning models. The analysis aims to identify the influence of various CPI components such as housing, food, and transportation on overall inflation and predict future movements of the General Index.

## Dataset: All India Consumer Price Index (CPI) for Rural/Urban (up to February 2024)/Source: [Data.gov.in](https://www.data.gov.in/resource/all-india-consumer-price-index-ruralurban-upto-february-2024)

## Data Cleaning
- **Data Type Conversion**: The 'Housing' column was converted to a numeric data type for consistency in analysis.
- **Handling Missing Values**: Missing values were handled using **linear interpolation** and **backward fill** for filling missing values in the first row.
- **Outlier Detection and Removal**: Outliers were detected using box plots, and extreme outliers from columns such as **‘Cereals and Products’, ‘Vegetables’, and ‘Spices’** were removed to improve model performance.

## Exploratory Data Analysis (EDA)
- **Descriptive Statistics**: Summary statistics for all numerical columns were generated to understand the data distributions.
- **Scatter Plots**: Scatter plots were created to visualize the relationships between various CPI components and the **General Index**, revealing significant patterns.
- **Yearly Trends**: The **General Index** was analyzed from 2013 to 2024, showing a steady upward trend over time.
- **Correlation Matrix**: A heatmap was created to show the correlation between CPI components. Features like **Housing**, **Fuel and Light**, and **Pan, Tobacco and Intoxicants** were strongly correlated with the General Index.
- **Monthly Trends**: Monthly trends in the **General Index** were analyzed to capture seasonal patterns and variations.

## Models Used
1. **Linear Regression**:
   - The **Linear Regression** model was trained to predict the **General Index** using CPI components as features.
   - The model was evaluated using **Mean Squared Error (MSE)** and **R-squared (R²)** metrics. The results showed that Linear Regression provided a strong fit to the data, with a high R² value close to 1, indicating very high accuracy.

2. **Decision Tree Regressor**:
   - A **Decision Tree model** was trained as a comparison. While it provided reasonable predictions, it did not perform as well as the Linear Regression model.
   - The Decision Tree model had a higher **MSE** and lower **R-squared** than Linear Regression, indicating a weaker fit.

## Conclusion of Findings
- **Linear Regression** outperformed the **Decision Tree Regressor** in predicting the **General Index**, achieving a very high **R-squared** value, indicating superior performance.
- Important features impacting the General Index were identified, such as **Housing**, **Fuel and Light**, **Pan, Tobacco and Intoxicants**, and **Food and Beverages**.
- **Monthly and seasonal trends** were identified in the General Index, reflecting fluctuations in inflation throughout the year.
