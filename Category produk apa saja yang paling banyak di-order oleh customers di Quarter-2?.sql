SELECT categoryid,total_order,total_penjualan FROM (SELECT categoryid, COUNT(DISTINCT orderNumber) as total_order, SUM(quantity) as total_penjualan FROM (SELECT LEFT(productCode,3) as categoryid, productCode,orderNumber,quantity,status FROM orders_2
WHERE status = 'Shipped') as tabel_c 
GROUP BY categoryid) as tabel_c
ORDER BY total_order DESC;
