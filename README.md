# 🚨 Insurance Fraud Detection 🚨

A robust machine learning project to detect fraudulent insurance claims using Python (EDA, feature engineering, model development) and Power BI (business dashboard).  
The solution balances **recall** (fraud detection coverage) and **precision** (investigation efficiency) while providing **interpretable results** for business stakeholders.

---

## Project Overview

Fraudulent claims cause significant financial losses for insurers.  
This project demonstrates how machine learning can help **identify high-risk claims**, reduce losses, and provide **transparent explanations** for fraud decisions.

Key components:
- **Exploratory Data Analysis (EDA)** – cleaning, binning, handling leakage.
- **Modeling** – Logistic Regression, Random Forest, and tuned XGBoost with SMOTE for class imbalance.
- **Threshold Optimization** – F2/F3 score and precision-recall trade-offs.
- **Interpretability** – Global & Local SHAP explanations.
- **Business Dashboard** – One-page Power BI dashboard with KPIs, trends, fraud by category, and top fraud drivers.

---

## Features

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

## Repository Structure
.
├── notebooks/

│   └── Insurance_Fraud_Detection.ipynb

├── data/       

│   ├── FactClaims.csv

│   ├── FactModelScores.csv

│   ├── FactLocalReasons.csv

│   ├── FactLocalReasonsAgg.csv

│   ├── DimFeature.csv

│   └── DimDate.csv

├── r/

│   └── Load and Export Dataset from R.R

├── dashboard/   

│   └── Insurance_Fraud_Dashboard.pbix

├── src/             

├── requirements.txt

└── README.md

---

## Data Source & Preparation

This project uses the freMPL6 insurance claims dataset, available through the CASdatasets package in R.

We provide two options:

Option A — Quick Start (use the bundled CSV)
We’ve already exported the dataset for you: data/raw/freMPL6.csv.
Load it directly in Python with:
import pandas as pd
df_raw = pd.read_csv("data/raw/freMPL6.csv")

Option B — Reproduce the export with R (full reproducibility)
Use the provided R script: r/Load and Export Dataset from R.R.
Run it from the repo root:
Rscript "r/Load and Export Dataset from R.R"

⚠️ Note on provenance:
The dataset originates from actuarial research and teaching materials and is not owned by this repository. We credit the original authors and references below.

References
Agresti, Alan. 2013. Categorical Data Analysis, 3rd Edition.
Charpentier, Arthur. 2014. Computational Actuarial Science with R. The R Series. Chapman & Hall/CRC. 

Link Source Project and Author
Frequency analysis with a Zero Inflated Regression of a French Motor Third Party Liability dataset
Author: Siharath Julien
Published: October 1, 2024
Source Link (file:///C:/Users/Source/OneDrive%20-%20IESEG/Documents/Data%20Projects/Insurance%20Fraud%20Detection/Frequency%20analysis%20with%20a%20Zero%20Inflated%20Regression%20of%20a%20French%20Motor%20Third%20Party%20Liability%20dataset.htm)

---

## Installation

Clone the repo:

git clone https://github.com/your-username/insurance-fraud-detection.git
cd insurance-fraud-detection

Create a virtual environment and install dependencies:
python -m venv venv
source venv/bin/activate  # or venv\Scripts\activate on Windows
pip install -r requirements.txt

## Usage
1. Data Preparation & Modeling

2. Run the Jupyter notebook:
jupyter notebook notebooks/Insurance_Fraud_Detection.ipynb

3. Export Model Outputs for Power BI
The notebook generates CSVs:
FactClaims
FactModelScores
FactLocalReasons
FactLocalReasonsAgg
DimFeature
DimDate

4. Dashboard (Published and Public)
Open Insurance_Fraud_Dashboard.pbix in Power BI Desktop.
Or view the published dashboard here:
- Insurance Fraud Detection Dashboard: [Live Dashboard Link](https://app.powerbi.com/links/JUvaJPDvtY?ctid=08983daf-5aca-4f44-bc65-c23ce32d46ec&pbi_source=linkShare)


