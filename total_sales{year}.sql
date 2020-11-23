-- What are the respective total sales for each of those years?

SELECT strftime('%Y', i.invoiceDate) invoiceYear, 
SUM(i.total)

FROM Invoice i
WHERE invoiceYear='2009'
OR invoiceYear='2011' 
GROUP BY invoiceYear;