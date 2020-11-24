-- Provide a query that shows the total sales per country

SELECT
ROUND(SUM(i.total), 1) totalSales,
i.billingCountry
FROM Invoice i
GROUP BY i.billingCountry;