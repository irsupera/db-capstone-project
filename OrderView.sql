CREATE VIEW `ordersview` AS
    SELECT 
        `o`.`OrderID` AS `OrderID`,
        SUM(`d`.`Quantity`) AS `SUM(d.Quantity)`,
        SUM(`d`.`TotalAmount`) AS `SUM(d.TotalAmount)`
    FROM
        (`orders` `o`
        JOIN `orderdetails` `d` ON ((`o`.`OrderID` = `d`.`OrderID`)))
    GROUP BY `o`.`OrderID`