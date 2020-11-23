-- Which sales agent made the most in sales in 2009?

-- Hint: Use the MAX function on a subquery.


SELECT
MAX(e.totalSales),
e.agentFullName
from(
    SELECT 
    SUM(i.total) totalSales,
    e.firstName || ' ' || e.lastName agentFullName
    FROM Invoice i
    JOIN customer c ON i.customerId = c.customerId
    JOIN employee e ON e.EmployeeId = c.SupportRepId
    WHERE strftime('%Y', i.invoiceDate) = '2009'
    GROUP BY agentFullName

) e;

