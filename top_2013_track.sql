-- Provide a query that shows the most purchased track of 2013

SELECT
MAX(t.total) maxTotal,
t.name
FROM (
    SELECT
    sum(i.total) total,
    t.Name
    FROM Track t
    JOIN InvoiceLine il ON il.trackId = t.trackId
    JOIN Invoice i ON i.invoiceId = il.invoiceId
    WHERE strftime('%Y', i.invoiceDate) = '2013'
    GROUP BY t.name
) t;
