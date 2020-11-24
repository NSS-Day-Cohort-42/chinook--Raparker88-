-- Provide a query that shows the top 5 most purchased tracks over allx


SELECT
    ROUND(sum(i.total),1) total,
    t.Name
    FROM Track t
    JOIN InvoiceLine il ON il.trackId = t.trackId
    JOIN Invoice i ON i.invoiceId = il.invoiceId
    GROUP BY t.name
    ORDER BY total DESC
    LIMIT 5;