-- Provide a query that shows the invoices associated 
-- with each sales agent. The resultant table should include the Sales Agent's full name.


SELECT 
i.*,
e.firstName || ' ' || e.lastName agentFullName
FROM Invoice i
JOIN customer c ON i.customerId = c.customerId
JOIN employee e ON e.EmployeeId = c.SupportRepId
ORDER BY agentFullName ASC;
