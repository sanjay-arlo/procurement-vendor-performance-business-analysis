-- Procurement & Vendor Performance Business Analysis

-- Vendor scorecard
SELECT vendor_id, vendor_name,
       SUM(spend) AS total_spend,
       ROUND(100.0*AVG(on_time_flag),2) AS on_time_pct,
       ROUND(100.0*AVG(defect_flag),2) AS defect_rate_pct,
       ROUND(AVG(lead_time_days),2) AS avg_lead_time
FROM procurement_orders
GROUP BY vendor_id, vendor_name
ORDER BY total_spend DESC;

-- Vendors with service or quality concerns
SELECT vendor_id, vendor_name,
       SUM(spend) AS total_spend,
       ROUND(100.0*AVG(on_time_flag),2) AS on_time_pct,
       ROUND(100.0*AVG(defect_flag),2) AS defect_rate_pct
FROM procurement_orders
GROUP BY vendor_id, vendor_name
HAVING AVG(on_time_flag) < 0.85 OR AVG(defect_flag) > 0.05
ORDER BY total_spend DESC;

-- Spend concentration
SELECT vendor_name, SUM(spend) AS total_spend,
       ROUND(100.0*SUM(spend)/(SELECT SUM(spend) FROM procurement_orders),2) AS spend_share_pct
FROM procurement_orders
GROUP BY vendor_name
ORDER BY total_spend DESC;
