Select COUNT(InvoiceId)
From Invoice
Where InvoiceDate LIKE '%2009%'
OR InvoiceDate LIKE '%2011%'
;

/*
//This is Steve's way
select count(i.InvoiceId) NumberOfInvoices,
       strftime('%Y',i.InvoiceDate) as InvoiceYear
from Invoice i
where InvoiceYear = '2011'
or InvoiceYear = '2009'
group by InvoiceYear
;
*/