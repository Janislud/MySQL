-- 1.Вывести телефоны всех поставщиков, кроме тех, что из Germany и France.

SELECT * FROM [Suppliers]
WHERE Country IN ('Germany','France')

-- 2.Добавить два произвольных товара.

INSERT INTO Products(ProductID, ProductName, SupplierID, CategoryID, Unit, Price)
VALUES
	('80', 'Milk', '777', '77', '1b0x-24bottel', '2.50'),
    ('81', 'Tomate', '666', '66', '1kg', '6.00');

-- 3.Удалить поставщиков из USA и Germany.

DELETE FROM Suppliers
WHERE Country IN ('Germany','USA')

-- 4.Вывести все товары до 20 EUR из категорий 3 и 6 по убыванию цены.
SELECT * FROM [Products]
WHERE Price <=20
AND
CategoryID IN (3,6)
Order by Price DESC

-- 5.Вывести номера трех последних заказов.
SELECT * FROM [Orders]
Order by OrderDate DESC
LIMIT 3