SELECT SUM(quantity) as 'total_penjualan', SUM(quantity*priceEach) as revenue FROM orders_1
WHERE status = 'Shipped'
GROUP BY status;

SELECT SUM(quantity)as 'total_penjualan', SUM(quantity*priceEach)as revenue FROM orders_2
WHERE status = 'Shipped'
GROUP BY status;
