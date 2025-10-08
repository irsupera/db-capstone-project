 PREPARE GetOrderDetail FROM 
'SELECT 
    o.OrderId, d.Quantity, d.TotalAmount
FROM
    OrderDetails AS d
        INNER JOIN
    Orders AS o ON d.OrderID = o.OrderID
WHERE
    o.CustomerID = ?'
