SELECT
    customerID,
    SUM(Total) as total
FROM invoices
GROUP BY customerID
;