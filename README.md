# 🏦 Bank Customer & Loan Analytics

## 📌 Project Overview

Bank Customer & Loan Analytics is a data analytics portfolio project built using **Power BI and SQL** to analyze customer profiles, loan applications, approvals, defaults, credit risk, and repayment performance.

The project demonstrates an end-to-end analytics workflow including data preparation, SQL analysis, DAX calculations, and interactive Power BI reporting.

> **Dataset:** Synthetic data created for educational and portfolio purposes.

## 🎯 Business Objectives

- Analyze customer demographics and financial profiles
- Track loan applications and approval performance
- Analyze loan amounts by loan type
- Identify default patterns and high-risk customers
- Analyze credit score and income segments
- Evaluate repayment and payment performance
- Identify business trends across cities and loan categories

## 🛠️ Tools & Technologies

- **Power BI**
- **SQL**
- **Power Query**
- **DAX**
- **CSV / Data Cleaning**
- **Data Visualization**
- **Data Analysis**

## 📊 Planned Power BI Dashboard

### 1. Executive Overview

- Total Customers
- Total Loan Applications
- Approved Loans
- Rejected Loans
- Total Loan Amount
- Defaulted Loans
- Approval Rate
- Default Rate
- Loan Application Trends
- Loan Status Analysis
- Loan Type Performance

### 2. Customer Analytics

- Customer Age Distribution
- Income Segmentation
- Credit Score Distribution
- Employment Type
- Customer Location
- Customer Risk Categories

### 3. Loan & Risk Analytics

- Default Rate by Loan Type
- Default Amount by City
- Credit Score vs Loan Amount
- Loan Tenure Analysis
- Payment Performance
- High-Risk Customer Analysis

## 🗄️ SQL Analysis

SQL is used to analyze:

- Loan applications by status
- Approved loan amounts
- Default rates
- Loan type performance
- Customer risk categories
- Monthly application trends
- Default amounts by city
- Payment performance

See [`loan_analysis.sql`](loan_analysis.sql).

## 🧮 DAX Measures

Starter DAX measures include:

- Total Customers
- Total Applications
- Approved Loans
- Rejected Loans
- Defaulted Loans
- Total Loan Amount
- Approved Loan Amount
- Approval Rate
- Default Rate
- Average Loan Amount

See [`DAX_Measures.txt`](DAX_Measures.txt).

## 📁 Dataset

| File | Description |
|---|---|
| `customers.csv` | Customer demographic and financial information |
| `loans.csv` | Loan applications and loan status |
| `payments.csv` | Loan payment records |
| `branches.csv` | Branch and regional information |

## 📂 Project Structure

```text
bank-customer-loan-analytics/
├── customers.csv
├── loans.csv
├── payments.csv
├── branches.csv
├── loan_analysis.sql
├── DAX_Measures.txt
└── README.md
