-- How many Invoices were there in 2009 and 2011?


SELECT strftime('%Y', i.invoiceDate) invoiceYear, 
COUNT(*)

FROM Invoice i
WHERE invoiceYear='2009'
OR invoiceYear='2011' 
GROUP BY invoiceYear;