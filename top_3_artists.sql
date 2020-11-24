--  Provide a query that shows the top 3 best selling artists




SELECT
a.name,
ROUND(SUM(i.total),1) totalSales
FROM Artist a
JOIN Album al ON al.artistId = a.artistId
JOIN Track t ON t.albumId = al.albumId
JOIN InvoiceLine il ON il.trackId=t.trackId
JOIN Invoice i ON i.invoiceId = il.invoiceId
GROUP BY a.name
ORDER BY totalSales DESC
LIMIT 3;
