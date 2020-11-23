-- Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT 
i.*,
COUNT(il.invoiceLineId) numberOfLineItems
FROM Invoice i
JOIN InvoiceLine il ON il.invoiceId = i.invoiceId
GROUP BY i.invoiceId;