# 📦 Inventory Revenue Risk Analysis (SQL, Power BI)

**Date:** September 12, 2025  
**Prepared By:** Ravula Preethi  
**Tools:** SQL (CTEs, Aggregations), Power BI  

---

## 🚀 15-Second Executive Snapshot (HR-Ready)
**Problem:** Sales dashboards show completed revenue but hide revenue lost due to out-of-stock (OOS) products.

**Impact at a glance:**
- **Revenue at Risk:** ₹891M  
- **Out-of-Stock Rate:** 12%  
- **Key Drivers:** High-priced SKUs and a small set of categories  
- **Business Outcome:** Revenue-prioritized restocking prevents hidden revenue leakage without increasing demand spend

**Key Insight:** Availability failure—not demand failure—is the primary cause of revenue loss.

---

## 🎯 Business Problem & Objectives
Out-of-stock products reduce revenue and damage customer experience, but **not all stockouts have equal financial impact**.

### Objectives
- Quantify total revenue at risk due to OOS products  
- Identify high-impact categories and SKUs  
- Separate revenue risk from operational execution gaps  
- Enable revenue-based inventory prioritization decisions  

---

## 📊 Data & Methodology

### Data Preparation & Validation
- Verified data completeness and consistency  
- Used discounted selling price for revenue calculation  
- Validated out-of-stock flags  
- Calculated base revenue before applying risk logic  

### Analytical Approach
- **SQL:** Revenue aggregation, category & SKU-level analysis  
- **Power BI:** Interactive dashboards for executive decision-making  
- **Validation:** Cross-checked metrics across SQL and dashboards  

### Key Questions Answered
1. What revenue is generated per product?  
2. How much potential revenue is at risk due to OOS items?  
3. Which categories contribute most to revenue risk?  
4. Which SKUs drive disproportionate revenue loss?  

---

## 📈 Dashboards & Insights

### 1️⃣ Revenue at Risk Overview
- Total revenue vs revenue at risk  
- Category-level contribution to OOS loss  

### 2️⃣ SKU-Level Risk & Execution Gaps
- High-price SKUs with highest revenue loss  
- % OOS metrics to identify execution inefficiencies  

---

## 🔑 Key Insights
- **Hidden Revenue Leakage:** Despite ₹12B in total sales, ₹891M is at risk due to stockouts  
- **Revenue Risk Is Concentrated:** A small set of categories drives most revenue loss (Pareto effect)  
- **High-Price SKUs Amplify Loss:** Fewer stockouts cause disproportionate revenue damage  
- **Execution Gaps Are Category-Specific:** High % OOS in some categories indicates replenishment failures  
- **Availability > Demand:** Revenue loss is caused by unavailability, not lack of demand  

---

## 💼 Business Recommendations
- **Adopt Revenue-at-Risk as a Core KPI** alongside sales  
- **Prioritize Restocking by Revenue Impact**, not SKU count or volume  
- **Apply Revenue-Weighted Inventory Allocation** across categories  
- **Use % OOS to Fix Execution Gaps** in forecasting and replenishment  
- **Protect High-Price SKUs** with stricter availability thresholds  

---

##  Conclusion
This analysis transforms inventory data into **decision-oriented intelligence**. By introducing **Revenue at Risk** as a KPI, the project uncovered ₹891M in potential revenue loss driven by 12% product unavailability.

The findings show that revenue loss is **highly concentrated**, enabling targeted restocking and operational fixes that minimize financial exposure while improving customer experience.



