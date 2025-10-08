CREATE PROCEDURE `GetMaxQuantity`()
SELECT 
    MAX(QUANTITY) AS 'Max QTY in Orders'
FROM
    OrderDetails