Select Count(InvoiceLineId) As InvoiceLinesPerInvoice
From InvoiceLine
Group By InvoiceId
;
