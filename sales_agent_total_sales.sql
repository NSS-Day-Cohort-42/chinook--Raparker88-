--  Provide a query that shows total sales made by each sales agent

SELECT 
ROUND(SUM(i.total), 2) totalSales,
e.firstName || ' ' || e.lastName agentFullName
FROM Invoice i
JOIN customer c ON i.customerId = c.customerId
JOIN employee e ON e.EmployeeId = c.SupportRepId
GROUP BY agentFUllName;

