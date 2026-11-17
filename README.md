# RetailPro – SQL Database & Business Analysis

## 1. Project Overview

RetailPro is a data analysis project focused on the implementation of a relational database and the analysis of sales data for a fictional technology retail company called Ventas Tech.

The main objective is to transform business data into useful information for decision-making by applying SQL queries, relational data modelling, data preparation and visualization techniques.

The project covers the complete analytical workflow, from database creation and data validation to business analysis and Power BI reporting.

## 2. Database Description

The project uses a relational database called `Ventas_Tech_DB`, implemented in Microsoft SQL Server.

It consists of four main tables:

| Table | Description |
|---|---|
| `clientes` | Stores customer information, including names, contact details and registration dates. |
| `productos` | Contains product information, prices, stock and category references. |
| `categorias` | Stores product categories and their descriptions. |
| `ventas` | Records sales transactions, including dates, customers, products, quantities and unit prices. |

### Database relationships

The database follows a relational structure based on primary and foreign keys:

- One customer can have multiple sales records (1:N).
- One product can appear in multiple sales records (1:N).
- One category can contain multiple products (1:N).

These relationships allow information from different tables to be combined and analysed consistently.

## 3. Project Development

### M3 – Database Creation and Implementation

Creation and population of the `Ventas_Tech_DB` database.

Main activities:
- Relational database design.
- Table creation and data insertion.
- Definition of primary and foreign keys.
- Referential integrity and data validation.

### M4 – Business SQL Queries

Development of SQL queries to answer relevant business questions.

The analysis includes:

1. **Monthly Executive Summary:** calculation of total revenue, number of orders and average order value by month.
2. **Product Ranking:** identification of the top five products by total revenue and units sold.
3. **Returning Customers:** identification of customers with more than one purchase and calculation of their total spending.
4. **Product Revenue Comparison:** comparison of product revenue against the average using CTEs and conditional logic.

### M5 – SQL Joins and Data Consolidation

Integration of information from different relational tables to obtain datasets suitable for business analysis.

The analysis includes:

- **Business Overview (INNER JOIN):** integration of sales, customers, products and categories.
- **Customers Without Sales (LEFT JOIN):** identification of customers without recorded purchases.
- **Products Without Sales (LEFT JOIN):** identification of products without sales.
- **Sales Consolidation (UNION ALL):** comparison of revenue across two periods.

### Power BI – Data Preparation and Modelling

The project also incorporates Power BI to prepare and model the sales data for visualization.

Main activities include:
- Data preparation and transformation using Power Query.
- Creation of dimension tables and a sales fact table.
- Definition of relationships between tables.
- Creation of a calendar table.
- Development of DAX measures for sales analysis, including total sales, online sales, year-to-date sales, previous-year sales and annual growth.

## 4. Technologies Used

- **Microsoft SQL Server:** relational database management.
- **SQL Server Management Studio (SSMS):** database creation and query execution.
- **SQL:** data manipulation, joins, aggregations and business analysis.
- **Microsoft Power BI:** data transformation, modelling and visualization.
- **DAX:** calculation of business metrics and analytical measures.
- **Power Query:** data preparation and transformation.

## 5. Repository Structure

The repository contains the following main files:

```text
RetailPro/
│
├── README.md
├── ventas_tech_dbM3.sql
├── m4_consultas_negocio.sql
├── m5_consultas_joins.sql
├── Pipeline_ETL_Apellido_Nombre.pbix
└── Baigorri_Celia_Checkpoint2.pbix
```

The SQL scripts correspond to the database implementation and business analysis stages. The Power BI files contain the data preparation and modelling work developed during the project.

## 6. How to Run the Project

### Requirements

- Microsoft SQL Server.
- SQL Server Management Studio (SSMS).
- Microsoft Power BI Desktop (to open the `.pbix` files).

### Execution steps

1. Open SQL Server Management Studio and connect to a SQL Server instance.
2. Open `ventas_tech_dbM3.sql` and execute the script to create and populate the database.
3. Open `m4_consultas_negocio.sql` and execute the business analysis queries.
4. Open `m5_consultas_joins.sql` and execute the queries involving JOIN operations and data consolidation.
5. Review the query results to identify sales performance, product ranking and customer behaviour.
6. Open the Power BI files using Power BI Desktop to inspect the data preparation and modelling work.

The SQL scripts should be executed in the appropriate database context. Review the database and table names before running the queries.

## 7. Project Objectives

The main objectives of RetailPro are:

- Design and implement a relational database.
- Apply SQL to answer business questions.
- Analyse sales performance and product revenue.
- Identify customer purchasing behaviour.
- Integrate data from multiple tables using relational joins.
- Prepare and transform data for analysis.
- Build a structured data model in Power BI.
- Develop analytical measures to support business decision-making.

## 8. Final Considerations

RetailPro demonstrates the application of database management, SQL querying, data preparation, relational modelling and business intelligence techniques in a practical retail scenario.

The project follows an end-to-end analytical approach, connecting data management with the extraction and communication of business insights.
