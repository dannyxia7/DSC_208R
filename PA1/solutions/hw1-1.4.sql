SELECT
    BillingCountry,
    COUNT(*) as count
FROM invoices
GROUP BY BillingCountry
ORDER BY BillingCountry
;