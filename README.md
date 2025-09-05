# 🚨 Insurance Fraud Detection – End-to-End Project

An end-to-end machine learning project to detect fraudulent insurance claims using Python (EDA, feature engineering, model development) and Power BI (business dashboard).  
The solution balances **recall** (fraud detection coverage) and **precision** (investigation efficiency) while providing **interpretable results** for business stakeholders.

---

## 📊 Project Overview

Fraudulent claims cause significant financial losses for insurers.  
This project demonstrates how machine learning can help **identify high-risk claims**, reduce losses, and provide **transparent explanations** for fraud decisions.

Key components:
- **Exploratory Data Analysis (EDA)** – cleaning, binning, handling leakage.
- **Modeling** – Logistic Regression, Random Forest, and tuned XGBoost with SMOTE for class imbalance.
- **Threshold Optimization** – F2/F3 score and precision-recall trade-offs.
- **Interpretability** – Global & Local SHAP explanations.
- **Business Dashboard** – One-page Power BI dashboard with KPIs, trends, fraud by category, and top fraud drivers.

---

## 🚀 Features

- **Machine Learning**
  - Handles severe class imbalance with SMOTE.
  - Hyperparameter tuning with Optuna.
  - Evaluation using ROC-AUC, PR-AUC, precision, recall, F2/F3.

- **Explainability**
  - Global SHAP (top contributing fraud drivers).
  - Local SHAP (top reasons per claim flagged as fraud).
  - Aggregated outputs for business users.

- **Power BI Dashboard**
  - [Live Dashboard Link](https://app.powerbi.com/links/JUvaJPDvtY?ctid=08983daf-5aca-4f44-bc65-c23ce32d46ec&pbi_source=linkShare)

  [![Power BI Dashboard](https://img.shields.io/badge/Dashboard-Live-blue)](https://app.powerbi.com/links/JUvaJPDvtY?ctid=08983daf-5aca-4f44-bc65-c23ce32d46ec&pbi_source=linkShare)
  
  - KPIs: Fraud Rate %, Fraud Detected, Investigation Efficiency %, Fraud Detection Coverage %.  
  - Fraud trends over time.  
  - Fraud by categories (vehicle usage, region, etc.).  
  - Top fraud drivers (interpretable).  
  - Per-claim fraud explanations.

---

## 🛠 Repository Structure
.
├── notebooks/ # Jupyter notebooks for EDA & modeling
│ └── Insurance_Fraud_Detection.ipynb
├── data/ # Processed datasets (CSV exports for Power BI)
│ ├── FactClaims.csv
│ ├── FactModelScores.csv
│ ├── FactLocalReasons.csv
│ ├── FactLocalReasonsAgg.csv
│ ├── DimFeature.csv
│ └── DimDate.csv
├── dashboard/ # Power BI artifacts
│ └── Insurance_Fraud_Dashboard.pbix
├── src/ # Python utility scripts (preprocessing, SHAP export)
├── requirements.txt
└── README.md

---

## ⚙️ Installation

Clone the repo:

git clone https://github.com/your-username/insurance-fraud-detection.git
cd insurance-fraud-detection

Create a virtual environment and install dependencies:
python -m venv venv
source venv/bin/activate  # or venv\Scripts\activate on Windows
pip install -r requirements.txt

📈 Usage
1. Data Preparation & Modeling

Run the Jupyter notebook:
jupyter notebook notebooks/Insurance_Fraud_Detection.ipynb

3. Export Model Outputs for Power BI

The notebook generates CSVs:
FactClaims
FactModelScores
FactLocalReasons
FactLocalReasonsAgg
DimFeature
DimDate

3. Open Dashboard

Open Insurance_Fraud_Dashboard.pbix in Power BI Desktop.
Or view the published dashboard here:
👉 Insurance Fraud Detection Dashboard: [Live Dashboard Link](https://app.powerbi.com/links/JUvaJPDvtY?ctid=08983daf-5aca-4f44-bc65-c23ce32d46ec&pbi_source=linkShare)
