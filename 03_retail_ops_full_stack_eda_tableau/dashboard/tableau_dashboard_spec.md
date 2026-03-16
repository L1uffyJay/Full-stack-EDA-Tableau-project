# Tableau dashboard specification

## Dashboard audience
COO, VP Operations, Commercial Analytics Lead

## Dashboard title
**Retail Operations Intelligence**

## Global filters
- Order month
- Sales region
- Sales channel
- Customer segment
- Shipping mode
- Returned flag

## KPI tiles
1. Net Sales
2. Gross Margin $
3. Gross Margin %
4. Return Rate
5. Late Delivery Rate
6. Average Satisfaction
7. Active Customers

## Recommended sheets
### 1. Executive KPI row
Single-value tiles with prior-period comparison

### 2. Sales & margin trend
Line chart by month:
- Net Sales
- Gross Margin $

### 3. Profitability by channel and segment
Heatmap or highlight table:
- Rows: sales channel
- Columns: customer segment
- Color: Gross Margin %
- Label: Net Sales

### 4. Return risk by category
Bar chart:
- Category
- Return Rate
- Tooltip: Net Sales, Gross Margin %, Satisfaction

### 5. Delivery performance
Scatter plot:
- X: Late Delivery Rate
- Y: Average Satisfaction
- Detail: warehouse or shipping mode
- Size: Orders

### 6. Regional operational scorecard
Text table:
- Sales Region
- Orders
- Net Sales
- Gross Margin %
- Late Delivery Rate
- Return Rate
- Average Satisfaction

## Story the dashboard should tell
- Which parts of the business are growing profitably
- Where operational friction is hurting customer experience
- Which categories/channels need action first
- Whether discounting is driving volume at the expense of margin

## Suggested design tips
- Keep one dark title bar and neutral backgrounds
- Use red/orange only for poor operational outcomes
- Put definitions in tooltip text so executives interpret KPIs consistently
