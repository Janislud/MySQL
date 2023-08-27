-- 1.Удалить всех клиентов из China и Brazil
DELETE FROM Customers
WHERE Country IN ('Brazil', 'China');

-- 2.Вывести название категории, где самая высокая средняя стоимость товаров
SELECT
    Categories.CategoryName,
    AVG(Products.Price) AS avg_price
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
GROUP BY Categories.CategoryName
ORDER BY avg_price DESC
LIMIT 1;
-- 3.Вывести названия трех товаров, которые продаются хуже всего

SELECT
    Products.ProductName,
    SUM(OrderDetails.Quantity) AS total_quantity
FROM Products
LEFT JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
GROUP BY Products.ProductName
ORDER BY total_quantity ASC
LIMIT 3;

-- 4.Вывести название одного перевозчика, у которого меньше всего заказов

SELECT
    Shippers.ShipperName,
    COUNT(Orders.OrderID) AS order_count
FROM Shippers
LEFT JOIN Orders ON Shippers.ShipperID = Orders.ShipperID
GROUP BY Shippers.ShipperName
ORDER BY order_count ASC
LIMIT 1;


-- 5.Вывести товары, добавив поле "цена со скидкой" (на англ.) в 15.5%

SELECT
    ProductName,
    Price,
    Price * 0.845 AS DiscountedPrice
FROM Products;