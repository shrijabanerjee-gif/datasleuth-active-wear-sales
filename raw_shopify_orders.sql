-- Mock raw layer for active-wear-sales
CREATE OR REPLACE TABLE raw_shopify_orders (
    order_id STRING,
    customer_id STRING,
    order_total_usd DECIMAL(12,2),
    order_created_at TIMESTAMP
);

-- Mock records
INSERT INTO raw_shopify_orders VALUES
('ORD-1001', 'CUST-101', 129.99, '2026-08-29 09:15:00'),
('ORD-1002', 'CUST-102', 89.50, '2026-08-29 09:30:00'),
('ORD-1003', 'CUST-103', 210.00, '2026-08-29 10:05:00');
