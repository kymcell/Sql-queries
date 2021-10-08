SELECT Customer. FirstName AS FirstName, Customer.LastName AS LastName, Invoice.Total AS TotalSpent
FROM Customer JOIN Invoice
ON Customer.CustomerId = Invoice.CustomerId
ORDER BY Invoice.Total DESC, Customer.LastName ASC
