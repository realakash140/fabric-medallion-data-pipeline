# 🚀 Fabric Medallion Data Pipeline

## 📌 Overview

This project demonstrates an end-to-end data pipeline built using Microsoft Fabric following the Medallion Architecture (Bronze, Silver, Gold layers).

The pipeline dynamically ingests multiple CSV files from GitHub, processes them using PySpark, and generates business insights using SQL.

---

## 🛠️ Tech Stack

* Microsoft Fabric
* PySpark
* SQL
* GitHub

---

## 🔄 Architecture

<img width="303" height="328" alt="image" src="https://github.com/user-attachments/assets/4325f808-3ffc-4144-94bb-5abf88c7fdee" />


---

## ⚙️ Workflow

1. **Data Ingestion (Bronze Layer)**

   * Data is fetched dynamically from GitHub using a ForEach loop
   * Multiple CSV files are ingested using a parameterized pipeline
   * Raw data is stored in Lakehouse (Bronze layer)

2. **Data Transformation (Silver Layer)**

   * Data is read using PySpark notebooks
   * Schema inference and data cleaning performed
   * Feature engineering (e.g., splitting name into firstname and lastname)

3. **Data Modeling (Gold Layer)**

   * Fact and dimension tables created using CTAS queries
   * Star schema design implemented

4. **Business Insights**

   * Aggregated revenue calculated based on payment methods/banks
   * SQL view created for analysis

---

## 📊 Key Features

* Dynamic data ingestion using ForEach loop
* Medallion architecture implementation
* PySpark-based data transformation
* Star schema (fact & dimension tables)
* Business-level aggregation using SQL

---

## 📁 Project Structure

```
fabric-medallion-data-pipeline/
│
├── source-data/        # Sample CSV files
├── pipelines/         # Bronze ingestion pipeline JSON
├── notebooks/         # PySpark transformation notebook
├── sql/               # Gold layer SQL queries
├── images/            # Project screenshots
└── README.md
```

---

## 🎯 Use Case

This project simulates a real-world retail analytics pipeline to analyze transaction data and generate insights such as revenue by payment method.

---

## 👨‍💻 Author

Akash Srivastava
