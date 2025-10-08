SELECT 
    o.CustomerID,
    c.CustomerName,
    o.OrderID,
    d.TotalAmount,
    m.Cuisine,
    i.ItemName,
    i.ItemPrice
FROM
    Orders AS o
        INNER JOIN
    OrderDetails AS d ON o.OrderID = d.OrderID
        INNER JOIN
    Customers AS c ON o.CustomerID = c.CustomerID
        INNER JOIN
    Menus AS m ON d.MenuID = m.MenuID
        INNER JOIN
    MenuItems i ON m.MenuItemID = i.MenuItemID;
