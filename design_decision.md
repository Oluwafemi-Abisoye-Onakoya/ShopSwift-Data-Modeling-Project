# Schema Design Choice: Star Schema

We chose a Star Schema for this data model for the following reasons:

- **Simplicity**: It provides a clear and easy-to-understand structure ideal for reporting.
- **Performance**: Optimized for fast read operations and aggregations (e.g., sales summaries).
- **BI Integration**: Best suited for tools like Power BI or Tableau.
- **Extensibility**: Easy to add new fact or dimension tables (e.g., returns, promotions).
- **Normalization**: Dimension tables are denormalized for simplicity; only categories are normalized further to avoid duplication.
