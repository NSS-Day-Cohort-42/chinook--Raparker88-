--  Provide a query that includes the purchased track name with each invoice line item.


SELECT 
li.*,
t.name
FROM InvoiceLine li
JOIN Track t ON t.trackId = li.trackId;