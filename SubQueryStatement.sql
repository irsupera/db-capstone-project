SELECT 
    ItemName
FROM
    MenuItems
        INNER JOIN
    Menus ON MenuItems.MenuItemID = Menus.MenuItemID
WHERE
    MenuID = ANY (SELECT 
            MenuID
        FROM
            OrderDetails
        WHERE
            Quantity > 1);
