-- Provide a query that shows the most purchased Media Type

SELECT
MAX(mt.totalSales) maxTotalSales,
mt.name
FROM(
    SELECT
    mt.name,
    ROUND(SUM(i.total), 1) totalSales
    FROM MediaType mt
    JOIN Track t ON t.mediaTypeId = mt.mediaTypeId
    JOIN InvoiceLine il ON il.trackId = t.trackId
    JOIN Invoice i ON i.invoiceId = il.invoiceId
    GROUP BY mt.name
) mt;