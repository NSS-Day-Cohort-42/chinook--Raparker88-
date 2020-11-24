-- Which country's customers spent the most?

SELECT
MAX(c.totalSales) maxSales,
c.BillingCountry
From (
    SELECT
    ROUND(SUM(i.total), 1) totalSales,
    i.billingCountry
    FROM Invoice i
    GROUP BY i.billingCountry
) c;