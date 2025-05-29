# Potential Challenges in Scaling

## 1. High Transaction Volume
- Millions of orders and payments per day can lead to large fact tables.
- Solution: Use table partitioning (e.g., by month) and incremental ETL loading.

## 2. Inventory Management
- Need for near real-time stock updates.
- Solution: Implement change data capture (CDC) or stream-based sync (e.g., Kafka).

## 3. Slowly Changing Dimensions (SCD)
- Customer profiles and product details may change over time.
- Solution: Implement SCD Type 2 in dimension tables to track history.

## 4. Complex Joins in Snowflake
- If dimensions were normalized (snowflake schema), query performance may suffer.
- Mitigation: Stick to star schema for analytics and flatten data where necessary.

## 5. Evolving Business Needs
- New channels (e.g., mobile, in-store) may require schema extensions.
- Solution: Design schema with modularity and flexible pipelines.
