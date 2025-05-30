# Schema Design Choice: Star Schema

I have chosen the star schema design for ShopSwift's analytics system for the following reasons:

- **•	Simplicity and Understandability**: Star schemas are easy to understand and navigate for business users, as all attributes related to a dimension are grouped in a single table. This makes ad-hoc querying and reporting more intuitive.
  
- **Query Performance**: The denormalized nature of dimension tables in a star schema reduces the number of joins required for typical analytical queries. This significantly improves query performance, especially when dealing with large datasets.
  
- **Ease of Integration**: Best suited for tools like Power BI or Tableau.
  
- **Ease of ETL (Extract, Transform, Load) Extensibility**: Loading data into a star schema is generally simpler than into a highly normalized schema. New data can be appended to fact tables, and new dimension attributes can be added without extensive schema changes.
  
- **Normalization**: Dimension tables are denormalized for simplicity; only categories are normalized further to avoid duplication.
  
- **Optimized for Aggregation**: Analytical queries often involve aggregating data (e.g., total sales by month, top-selling products). Star schemas are highly optimized for these types of operations due to the direct relationship between fact and dimension tables.
