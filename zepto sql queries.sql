select * from  zepto ;

SELECT
    name,
    category,
    quantity,
    discountedsellingprice,
    quantity *  discountedsellingprice AS revenue
FROM zepto;

SELECT
    name,
    category,
    quantity * discountedsellingprice AS revenue_at_risk
FROM zepto
WHERE outOfStock = TRUE;

SELECT
    SUM(quantity * discountedsellingprice) AS total_revenue_at_risk
FROM zepto
WHERE outOfStock = TRUE;

SELECT
    category,
    SUM(quantity * discountedsellingprice) AS revenue_at_risk
FROM zepto
WHERE outOfStock = TRUE
GROUP BY category
ORDER BY revenue_at_risk DESC;

---
SELECT
    category,
    COUNT(CASE WHEN outOfStock = TRUE THEN 1 END) * 100.0 / COUNT(*) 
        AS percent_out_of_stock
FROM zepto
GROUP BY category
ORDER BY percent_out_of_stock DESC;
SELECT
    name,
    category,
    discountedsellingprice,
    quantity * discountedsellingprice AS revenue_at_risk
FROM zepto
WHERE outOfStock = TRUE
ORDER BY revenue_at_risk DESC
LIMIT 10;

WITH risk AS (
    SELECT
        name,
        category,
        quantity * discountedsellingprice AS revenue_at_risk
    FROM zepto
    WHERE outOfStock = TRUE
),
total AS (
    SELECT SUM(revenue_at_risk) AS total_risk FROM risk
)
SELECT
    r.name,
    r.category,
    r.revenue_at_risk,
    ROUND(r.revenue_at_risk * 100.0 / t.total_risk, 2) AS revenue_risk_percent
FROM risk r
CROSS JOIN total t
ORDER BY r.revenue_at_risk DESC
LIMIT 10;

SELECT
    discountedsellingprice,
    quantity * discountedsellingprice AS revenue,
    outOfStock
FROM zepto;




