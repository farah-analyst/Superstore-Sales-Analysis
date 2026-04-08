# 📊 US Superstore Sales Analysis (SQL & Business Insights)

## 💡 Impact Statement
> **Turning raw sales data into actionable business decisions using SQL.**

---

## 📝 Project Overview
This project analyzes US Superstore sales data using **SQL Server** to uncover key business insights. The objective is to transform raw data into meaningful patterns related to customer behavior, product performance, and sales trends.

---

## 🛠️ Skills & Tools Used
* **SQL Server (T-SQL):** Data cleaning, joins, aggregations, and subqueries.
* **Data Transformation:** Converting raw data into structured formats (Date, Numeric).
* **Business Analysis:** Customer segmentation and seasonal trend analysis.

---

## 💡 Key Business Insights (With Numbers)

### 1. Product Performance (Revenue Drivers)
* **Top Performer:** `Phones` generated over **$322,130** in total sales, making it the leading revenue driver.
* **High-Demand Product:** `Chairs` contributed approximately **$245,456**, indicating strong demand in the furniture segment.
* **Underperformers:** `Fasteners` ($2,050) and `Labels` ($7,339) show minimal revenue impact.

### 2. Seasonal & Segment Trends
* **Peak Periods:** February and August show the highest sales, especially in the **Technology** category.
* **Customer Segments:**
    * **Corporate clients** dominate sales in February.
    * **Consumer segment** peaks in August and December.

### 3. Regional & Operational Highlights
* **Top Regions:**
    * **West:** $725k+ 
    * **East:** $678k+
* **Shipping Insights:**
    * **Standard Class:** 5,859 orders (most used).
    * **First Class:** Higher average order value ($254).

---

## 🚀 Strategic Recommendations (Business Actions)

* **Inventory Optimization:** Reduce stock for low-performing products (e.g., Fasteners, Labels) or bundle them with high-demand items.
* **Targeted Marketing:** Focus campaigns on high-performing products like `Phones` during peak months (February & August).
* **Regional Strategy:** Increase furniture promotions and inventory in the **West region** due to strong demand.
* **Customer Retention:** Introduce a VIP loyalty program targeting high-value customers (e.g., those spending over **$19,000+**) to increase long-term revenue.

---

## 💻 How to Run the Analysis
1. Import `train.csv` into Microsoft SQL Server.
2. Run the `Superstore_Analysis.sql` script.
3. Query the `superstore_clean` table for structured insights.
