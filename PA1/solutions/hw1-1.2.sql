SELECT
    invoiceID,
    Total
FROM invoices
WHERE BillingCountry = "USA" OR BillingCountry = 'Canada'
ORDER BY invoiceID DESC
;