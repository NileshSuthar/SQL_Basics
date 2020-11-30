select *from Customers

SELECT A.custname as custname1, B.custname as custname2, A.country
From Customers A, Customers B
where A.customerid <> B.customerid
AND A.country = B.Country
ORDER BY A.country