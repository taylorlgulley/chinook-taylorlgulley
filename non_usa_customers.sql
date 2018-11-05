Select CustomerId, FirstName || " " || LastName As FullName, Country
From Customer c
Where c.Country != "USA"
;