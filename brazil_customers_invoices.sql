SELECT 
    c.firstName,
    c.lastName,
    i.invoiceId,
    i.invoiceDate,
    i.billingCountry
 FROM customer c
 JOIN Invoice i ON i.customerId = c.customerId
 WHERE c.Country = "Brazil";

