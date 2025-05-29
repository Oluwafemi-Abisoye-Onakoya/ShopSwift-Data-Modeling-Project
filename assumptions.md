# Assumptions

- Customers can place multiple orders over time.
- Each order can have multiple products (via OrderItems).
- Each product belongs to one category.
- Payments are made per order, and a single order may have multiple payment transactions (e.g., split payment).
- Inventory is tracked centrally (not per warehouse).
- Payment methods are static and pre-defined (e.g., credit card, PayPal).
- Date-related analysis (daily, weekly, monthly) will be handled through a `DimDate` dimension table.
