# Ventas Tech Database

## Project Overview

This project consists of the design and implementation of a relational database for a technology retail business using **Microsoft SQL Server**.

The database, named `Ventas_Tech_DB`, manages information about product categories, customers, products, and sales. It demonstrates the use of relational database concepts, primary keys, foreign keys, constraints, and SQL data manipulation and validation statements.

## Database Structure

The database contains four related tables:

| Table | Description |
|---|---|
| `categorias` | Stores product categories and their descriptions. |
| `clientes` | Stores customer information and registration dates. |
| `productos` | Stores product details, prices, stock, and category references. |
| `ventas` | Records sales transactions, including customers, products, quantities, and dates. |

### Entity Relationships

- One category can contain multiple products (1:N).
- One customer can make multiple purchases (1:N).
- One product can appear in multiple sales records (1:N).

## Technologies Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- SQL

## Implementation

The SQL script (`ventas_tech_db.sql`) is organized into four main sections:

1. **DROP TABLE:** Removes existing tables in the correct dependency order to allow the script to be executed repeatedly.
2. **CREATE TABLE:** Creates the four tables and defines their columns, primary keys, foreign keys, and constraints.
3. **INSERT DATA:** Populates the database with sample records.
4. **VALIDATION:** Executes SELECT queries to verify that the data has been inserted correctly.

## Data Overview

The database includes the following sample records:

- 4 product categories
- 5 customers
- 6 products
- 10 sales transactions

## How to Run the Project

1. Open Microsoft SQL Server Management Studio (SSMS).
2. Open the file `ventas_tech_db.sql`.
3. Execute the entire script.
4. Check the validation queries to verify the contents of each table.

The script is designed to be executed multiple times without errors, recreating the tables and inserting the sample data each time.

## Learning Objectives

This project demonstrates practical knowledge of:

- Relational database design.
- SQL Server database and table creation.
- Primary and foreign key constraints.
- Data integrity and referential integrity.
- SQL data insertion and retrieval.
- Database validation and script reusability.

---

**Project:** SQL Database Implementation – Ventas Tech  
**Database:** `Ventas_Tech_DB`
