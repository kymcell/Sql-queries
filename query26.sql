SELECT FirstName, LastName, Title, d.FirstName AS SuperFirst, d.LastName AS SuperLast, d.Title AS SuperTitle
FROM Employee AS e LEFT JOIN Employee AS d
ON d.EmployeeId = e.reportsTo
