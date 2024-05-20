SELECT quarter,COUNT(customerID) as total_customers 

FROM 

(SELECT customerID, QUARTER(createDate)as quarter FROM customer
WHERE createDate >= '1 Januari 2004' and createDate < '30Juni 2004')

as tabel_b
GROUP BY quarter;
