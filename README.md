# Procurement & Vendor Performance Business Analysis

> Business Analyst portfolio project analysing supplier spend, delivery reliability, quality performance and procurement cost drivers to support sourcing decisions.

## 🚀 Live Dashboard

**[Open the interactive dashboard](https://sanjay-arlo.github.io/procurement-vendor-performance-business-analysis/)**

## Business question

**Which suppliers create procurement risk or hidden cost, and where should management intervene?**

**Flow:** Vendor spend → KPI scorecard → SLA and quality analysis → Supplier risk → Management action

## What the dashboard shows

- **Purchase spend** — total spend represented by the selected suppliers
- **On-time delivery** — spend-weighted supplier delivery performance
- **Defect rate** — spend-weighted quality issue rate
- **Expedite cost** — avoidable cost associated with urgent procurement responses
- **Vendor spend** — supplier concentration by spend
- **Supplier reliability** — on-time performance versus defect rate
- **Management view** — suppliers requiring SLA, quality or commercial review

## Dataset

`data/vendor_scorecard.csv`

The repository contains **synthetic / illustrative supplier records** for portfolio demonstration. Supplier and financial figures are not company data.

## Analysis

The project answers:

1. Which suppliers receive the largest share of spend?
2. Which vendors miss delivery expectations most often?
3. Where are quality defects concentrated?
4. Which suppliers create the greatest operational risk relative to spend?
5. Which vendors should be retained, renegotiated, developed or replaced?

## Project files

- `index.html` — live dashboard interface
- `app.js` — dashboard calculations, filtering and charts
- `style.css` — dashboard presentation layer
- `data/vendor_scorecard.csv` — supplier KPI scorecard
- `data/vendors.csv` — vendor reference data
- `data/purchase_orders.csv` — detailed purchase-order dataset
- `sql/analysis.sql` — SQL procurement analysis
- `analysis/analysis.py` — Python / Pandas analysis
- `dashboard/dashboard_spec.md` — dashboard and KPI specification

## Technical stack

- **Excel** — procurement analysis and supplier scorecards
- **SQL / MySQL** — spend, SLA and quality analysis
- **Python / Pandas** — data preparation and analytical checks
- **HTML / CSS / JavaScript** — interactive live dashboard
- **Chart.js** — browser-based visualisation
- **GitHub Pages** — live dashboard hosting
- **Power BI** — compatible dashboard design direction

## KPI logic

**On-time delivery**

`On-time supplier value / Total supplier value × 100`

**Defect rate**

`Defect units / Ordered units × 100`

**Supplier risk**

Evaluate delivery reliability, defect rate and spend exposure together rather than relying on a single KPI.

## Limitation

This is a **portfolio case study**, not production procurement research. A production implementation would require real purchase orders, contract terms, approved supplier lists, category benchmarks, quality inspection records and negotiated pricing.

## Author

**Sanjay Arlo**

Business Analyst / Data Analyst Portfolio  
[GitHub](https://github.com/sanjay-arlo)
