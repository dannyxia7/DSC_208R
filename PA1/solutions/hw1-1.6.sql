SELECT 
    DISTINCT c.customerID
FROM Customers c JOIN invoices i
ON c.customerID = i.customerID
JOIN invoice_items ii
ON i.invoiceID = ii.invoiceID
JOIN tracks t
ON ii.trackID = t.trackID
JOIN genres g
ON t.genreID = g.genreID
WHERE g.name = "Blues"
;