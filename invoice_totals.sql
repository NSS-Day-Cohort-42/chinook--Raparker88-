-- invoice_totals.sql: Provide a query that shows the Invoice Total,
--  Customer name, Country and Sale Agent name for all invoices and customers.


SELECT 
i.total,
e.firstName || ' ' || e.lastName agentFullName,
c.firstName || ' ' || c.lastName customerFullName,
c.country
FROM Invoice i
JOIN customer c ON i.customerId = c.customerId
JOIN employee e ON e.EmployeeId = c.SupportRepId
ORDER BY customerFullName ASC;