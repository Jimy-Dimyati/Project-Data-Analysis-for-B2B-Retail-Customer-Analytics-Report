SELECT '1' as 'quarter', SUM(quantity) as total_penjualan, SUM(quantity*priceEach) as revenue FROM orders_1
UNION ALL
SELECT '2'as 'quarter', SUM(quantity)as total_penjualan,SUM(quantity*priceEach) FROM orders_2
WHERE status = 'Shipped';
