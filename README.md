``# RetailPro – SQL Database & Business Analysis

## Project Overview

RetailPro is a practical SQL project focused on relational database implementation and business data analysis using **Microsoft SQL Server**.

The project simulates a technology retail business and aims to extract meaningful business insights from sales data through SQL queries. It is structured around two main stages: database creation and data analysis.

## Modules

### M3 – Database Creation and Implementation

Creation and population of the `Ventas_Tech_DB` relational database.

The database consists of four related tables:

| Table | Description |
|---|---|
| `categorias` | Stores product categories and descriptions. |
| `clientes` | Stores customer information and registration dates. |
| `productos` | Stores product details, prices, stock, and category references. |
| `ventas` | Records sales transactions, including customers, products, quantities, and dates. |

**Key concepts:**
- Relational database design.
- Primary and foreign keys.
- Data integrity and constraints.
- SQL Server database and table creation.
- Data insertion and validation.

### M4 – Business SQL Queries

Development of SQL queries to extract key business metrics from the `ventas` table.

The analysis includes:

1. **Monthly Executive Summary:** Total revenue, number of orders, and average order value, grouped by month.
2. **Product Ranking:** Top 5 products by total revenue, including units sold.
3. **Returning Customers:** Identification of customers with more than one order and calculation of their total spending.
4. **Product Revenue Comparison:** Classification of products as above or below average revenue using CTEs, subqueries, and CASE WHEN statements.

The module also includes three business insights derived from the query results.

## Database Relationships

- One category can contain multiple products (1:N).
- One customer can make multiple purchases (1:N).
- One product can appear in multiple sales records (1:N).

## Technologies Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- SQL

## Repository Structure

```text
RetailPro/
│
├── README.md
├── ventas_tech_db.sql
└── m4_consultas_negocio.sql
```

## How to Run the Project

1. Open Microsoft SQL Server Management Studio (SSMS).
2. Execute `ventas_tech_db.sql` to create and populate the database.
3. Open `m4_consultas_negocio.sql`.
4. Execute the queries against the `Ventas_Tech_DB` database.
5. Review the results to identify key business metrics and insights.

## Project Objectives

- Build and manage a relational database.
- Apply SQL queries to real-world business questions.
- Extract and interpret sales performance metrics.
- Identify top-performing products and returning customers.
- Prepare structured data for further visualization and analysis in Power BI.

### - M5 – SQL Joins and Data Consolidation

Integration of relational tables to create enriched datasets for business analysis and future Power BI visualizations.

## The analysis includes:

Business Overview (INNER JOIN): Integration of sales, customers, products, and categories into a single dataset, including customer location and sales totals.

Customers Without Sales (LEFT JOIN): Identification of registered customers who have not made any purchases, supporting CRM analysis.

Products Without Sales (LEFT JOIN): Detection of catalog products with no recorded sales, supporting product performance analysis.

Sales Consolidation (UNION ALL): Combination of sales from two different periods, using manually assigned origin labels and comparing total revenue.

## Key concepts:

INNER JOIN and LEFT JOIN.

Referential relationships between tables.

NULL identification and filtering.

UNION ALL and result consolidation.

Subqueries and aggregate functions.

## Database Relationships

One category can contain multiple products (1).

One customer can make multiple purchases (1).

One product can appear in multiple sales records (1).

## Technologies Used

Microsoft SQL Server

SQL Server Management Studio (SSMS)

SQL

### Repository Structure

RetailPro/
│
├── README.md
├── ventas_tech_db.sql
├── m4_consultas_negocio.sql
└── m5_consultas_joins.sql
---

**Project:** RetailPro  
**Database:** `Ventas_Tech_DB`  
**Focus:** SQL Database Management & Business Intelligence
