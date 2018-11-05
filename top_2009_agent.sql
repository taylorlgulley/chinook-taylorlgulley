Select Sum(i.[Total]) As TotalSales,
		  e.EmployeeId,
		  e.FirstName,
		  e.LastName
From Employee e
Join Customer c On e.EmployeeId == c.SupportRepId
Join Invoice i On c.CustomerId == i.CustomerId
Where e.Title == "Sales Support Agent"
And i.InvoiceDate LIKE '%2009%'
Group By e.EmployeeId
Order By TotalSales DESC
LIMIT 1
;

/*
//This is the Max + Subquery method
select max(AllProfits.PROFIT) from
(select 
    e.FirstName || " " || e.LastName FullName,
    sum(i.Total) PROFIT
from Employee e
join Customer c on e.EmployeeId = c.SupportRepId
join Invoice i on i.CustomerId = c.CustomerId
where i.InvoiceDate like '%2009%'
group by FullName
order by PROFIT DESC) AllProfits
;
*/