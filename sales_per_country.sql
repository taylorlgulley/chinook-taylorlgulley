Select Sum(i.[Total]) As TotalSales,
		  c.Country
From Invoice i
Join Customer c On i.CustomerId == c.CustomerId
Group By c.Country
;