-- Which sales agent made the most in sales over all?

SELECT
MAX(e.totalSales),
e.agentFullName
from(
    SELECT 
    ROUND(SUM(i.total), 1) totalSales,
    e.firstName || ' ' || e.lastName agentFullName
    FROM Invoice i
    JOIN customer c ON i.customerId = c.customerId
    JOIN employee e ON e.EmployeeId = c.SupportRepId
    GROUP BY agentFullName

) e;