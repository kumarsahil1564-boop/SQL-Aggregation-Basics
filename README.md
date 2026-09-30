# SQL Aggregation Basics

## Task 23 - SQL Aggregation Basics using MySQL

This project demonstrates the use of SQL aggregate functions in MySQL.
The analysis uses `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()` along with `GROUP BY`.

## Objective

The objective of this task is to understand and practice SQL aggregate functions for summarizing and analyzing data.

## Tools Used

- MySQL
- SQL
- GitHub

## Dataset

A sample sales dataset containing:

- Product name
- Category
- Quantity
- Price

## Aggregation Functions Used

1. COUNT()
2. SUM()
3. AVG()
4. MIN()
5. MAX()

## Queries Included

The project contains 10 SQL aggregation queries covering:

- Total number of sales records
- Total quantity sold
- Total sales value
- Average product price
- Minimum product price
- Maximum product price
- Product count by category
- Total quantity by category
- Average price by category
- Maximum price by category

## GROUP BY

`GROUP BY` is used to group records based on categories and apply aggregate functions to each group.

## NULL Behavior

Aggregate functions such as `SUM()`, `AVG()`, `MIN()`, and `MAX()` generally ignore NULL values when calculating results.

## Project Structure

```text
SQL-Aggregation-Basics/
│
├── README.md
└── sql_aggregation_basics.sql
