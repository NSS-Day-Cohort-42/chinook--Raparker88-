-- Provide a query that shows the count of customers assigned to each sales agent


SELECT 
COUNT(c.CustomerId),
e.firstName || " " || e.lastName employeeFullName
FROM Customer c
JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId;