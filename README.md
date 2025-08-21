# sales_trend_analysis-sql
Sales Trend Analysis using SQL — includes dataset, queries, and results for analyzing monthly revenue and order volume with aggregations in MySQL.

# 📊 Sales Trend Analysis using SQL

## 📌 Objective

Perform sales trend analysis using SQL aggregation functions. The task focuses on analyzing **monthly revenue and order volume** from an online sales dataset by applying grouping, sorting, filtering, and aggregate functions.

---

## 📂 Dataset

The dataset (`orders_dataset.csv`) contains **100 rows** of synthetic sales data with the following fields:

* **order\_id** → Unique identifier for each order
* **order\_date** → Date of order (YYYY-MM-DD)
* **amount** → Revenue amount for the order
* **product\_id** → Identifier of the product ordered

---

## 🛠 Tools Used

* **MySQL** (for executing queries)
* **CSV dataset** (imported into a table named `orders`)

---

## 📊 Key Learnings

* Extracting **year and month** using `YEAR()` and `MONTH()` functions.
* Using **aggregate functions**: `SUM()`, `COUNT()`, `AVG()`, `MIN()`, `MAX()`.
* Difference between `COUNT(*)` and `COUNT(DISTINCT col)`.
* Sorting results with `ORDER BY`.
* Filtering data by time period using `WHERE`.
* Restricting result rows with `LIMIT`.
* Handling missing values with `COALESCE`.
