# Customer Retention & Growth Analysis

**Project Overview**  

This project analyzes customer churn for a SaaS company using customer profile, subscription, product usage, support, and churn data. SQL was used to build a customer-level dataset from multiple relational tables, followed by exploratory analysis, hypothesis testing, customer segmentation, and predictive modeling. The goal was to identify churn patterns and evaluate machine learning models capable of identifying customers at risk of leaving.

**Problem Statement**  

When customer retention weakens, a company can lack visibility into which customers are most at risk of churning and the factors driving those decisions. An onboarding experiment had already been implemented in an effort to improve retention, but the results showed no statistically significant reduction in churn. Without a clear understanding of customer behavior and churn risk, retention efforts can be difficult to target effectively. This analysis was conducted to identify the characteristics most closely associated with churn and provide data driven recommendations to support future retention strategies.

**Interactive Tableau Dashboard:**
https://public.tableau.com/app/profile/alfred.rico/viz/CustomerRetentionChurnAnalysis_17821991224520/CustomerRetentionChurnRiskDashboard

---

# Running the Project

Clone the repository:

```bash
git clone <repository-url>
cd customer_retention_growth
```

Install project dependencies:

```bash
uv sync
```

Launch Jupyter:

```bash
uv run jupyter lab
```

Open:

```
notebooks/Customer_Retention_Growth_Analysis.ipynb
```

---

# Repository Structure

```text
customer_retention_growth/
│
├── data/
│   ├── customer_retention_growth.db
│   ├── customers.csv
│   ├── subscriptions.csv
│   ├── usage_metrics.csv
│   ├── support_tickets.csv
│   ├── churn.csv
│   ├── experiments.csv
│   ├── tableau_customer_retention_export.csv
│   ├── feature_importance_tableau.csv
│
├── documentation/
│   ├── README.md
│   └── data_dictionary.csv
│
├── images/
│   ├── correlation_heatmap.png
│   ├── feature_importance.png
│   ├── tableau_dashboard.png
│	
├── notebooks/
│   └── Customer_Retention_Growth_Analysis.ipynb
│
├── sql/
│   └── customer_kpis.sql
│
├── Customer_Retention_Churn_Dashboard.twb
├── pyproject.toml
├── uv.lock
└── .gitignore
```

---

## Technologies Used

### Programming & Data Processing
- Python
- SQLite
- Pandas
- NumPy

### Statistical Analysis
- SciPy
- Statsmodels

### Machine Learning
- Scikit-learn

### Data Visualization
- Matplotlib
- Tableau Public

### Development Environment
- Jupyter Notebook
- uv

---

# Project Workflow

1. SQL data extraction
2. Data cleaning and preprocessing
3. Feature engineering
4. Exploratory data analysis
5. Statistical hypothesis testing
6. A/B testing
7. Customer segmentation using K-Means
8. Predictive modeling
9. Model evaluation
10. Interactive Tableau dashboard
11. Business recommendations

---

# Dataset

Customer information was originally distributed across multiple relational tables containing:

* Customer demographics
* Subscription history
* Product usage
* Support interactions
* Churn outcomes
* Onboarding experiment participation

SQL joins and aggregate queries were used to consolidate these tables into a single customer-level analytical dataset containing approximately **14,800 customers**.

---

# Analysis Summary

## Data Preparation

The analytical dataset was prepared through:

* Missing value treatment
* Datetime conversion
* Customer tenure calculation
* Feature engineering
* One-hot encoding
* Feature scaling
* Correlation analysis
* Multicollinearity assessment

Business-specific features were also engineered, including lifetime revenue, average monthly revenue, recent login activity, customer tenure, support metrics, and customer segments.

---

## Exploratory Data Analysis

EDA focused on identifying differences between retained and churned customers by examining:

* Revenue
* Customer tenure
* Product engagement
* Login frequency
* Feature usage
* Subscription plans
* Customer segments
* Support activity

These analyses established the relationships later confirmed through statistical testing and predictive modeling.

---

## Statistical Analysis

Hypothesis testing was used to determine whether observed relationships represented statistically significant differences rather than random variation.

An A/B test evaluating a proposed onboarding intervention found **no statistically significant reduction in customer churn**, suggesting the current onboarding strategy was not effective at improving retention.

---

## Customer Segmentation

K-Means clustering identified four distinct customer segments based on customer value and engagement.

One segment consistently demonstrated lower engagement, lower revenue, and substantially higher churn, making it the highest priority group for future retention efforts.

---

## Predictive Modeling

Three classification models were trained and evaluated:

* Logistic Regression
* Decision Tree
* Random Forest

Models were compared using:

* Accuracy
* Precision
* Recall
* F1 Score
* ROC AUC

The Random Forest model achieved the strongest overall performance, producing the highest accuracy and ROC-AUC score while maintaining competitive churn detection performance.

Feature importance analysis identified revenue, tenure, engagement, and customer segment membership as the strongest predictors of customer churn.

---

# Tableau Dashboard

The accompanying Tableau dashboard translates the analytical findings into an interactive executive summary.

Dashboard features include:

* Customers at Risk
* Overall Churn Rate
* Average Risk Score
* Revenue at Risk
* Top Churn Drivers
* Customer Risk vs Monthly Usage
* Churn Rate by Subscription Plan
* Churn Rate by Customer Segment

The Customer Segment visualization functions as an interactive dashboard filter, allowing users to isolate individual customer segments while dynamically updating the remaining dashboard metrics and visualizations.

---

# Key Findings

* Customers with lower revenue, shorter tenure, and lower product engagement were significantly more likely to churn.
* Customer segmentation identified one high-risk group characterized by lower engagement and substantially higher churn.
* Revenue, tenure, engagement, and customer segment membership were the strongest predictors of customer churn.
* The onboarding A/B test found no statistically significant improvement in customer retention.
* The Random Forest model provided the strongest overall predictive performance.

---

# Business Recommendations

* Segment 1 customers should be the primary focus of retention efforts, as they experienced the highest churn rates and the lowest engagement levels.
* Customers averaging fewer than 20 monthly logins exhibit substantially higher predicted churn risk. Retention efforts should prioritize low-login customers through onboarding campaigns, feature adoption outreach, and intervention resources.
* The onboarding experiment did not significantly improve retention, suggesting that a different approach may be needed.
* The model identified 7,113 customers in the High Risk segment representing approximately $6.9M in revenue exposure. Prioritizing retention efforts on this segment offers the highest potential return on intervention resources.
* Customer behavior was a much stronger indicator of churn than demographic characteristics, so future retention strategies should focus on engagement and product adoption.