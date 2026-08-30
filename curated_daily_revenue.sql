-- Mock curated layer
-- CURRENT VERSION: intentionally broken for the demo.
-- Shopify changed total_price -> order_total_usd upstream.

SELECT
    DATE(order_created_at) AS revenue_date,
    SUM(total_price) AS daily_revenue_usd,
    COUNT(DISTINCT order_id) AS order_count
FROM raw_shopify_orders
GROUP BY DATE(order_created_at);
