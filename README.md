# Analyzing Price Trends and Predicting Economic Index Movements Using Machine Learning on the All India Consumer Price Index  up to February 2024
## Overview

This project aims to analyze price trends and predict the movement of the economic general index using machine learning techniques. The dataset consists of the **Consumer Price Index (CPI) for Rural and Urban India** up to February 2024. The primary focus is on building a predictive model to forecast changes in the **General Index** using various CPI components.

## Project Structure

The project is divided into the following stages:
1. **Data Preprocessing:**
   - Loading and cleaning the CPI dataset.
   - Handling missing values using linear interpolation.
   - Removing outliers and redundant features.
   
2. **Exploratory Data Analysis (EDA):**
   - Descriptive statistics of the data.
   - Visualization techniques (box plots, scatter plots) to identify trends and relationships between variables.
   
3. **Feature Selection:**
   - Identifying important features affecting the general index using linear regression.

4. **Machine Learning Models:**
   - **Linear Regression**: Used to predict the general index and evaluate performance using Mean Squared Error (MSE) and R-squared values.
   - **Decision Tree Regressor**: Used for comparative analysis with linear regression and evaluated similarly.

## Dataset

- The dataset consists of various CPI components for both rural and urban areas. The redundant sector **"Rural+Urban"** was removed to avoid duplication.

## Installation

### Prerequisites:
- Python 3.x
- The following Python libraries are required to run the project:
  - `pandas`
  - `numpy`
  - `matplotlib`
  - `seaborn`
  - `scikit-learn`

### Instructions:
1. Clone the repository or download the script file.
2. Install the required libraries using the following command:
   ```bash
   pip install -r requirements.txt
