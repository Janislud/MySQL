1.Вывести название и стоимость в USD одного самого дорогого проданного товара
SELECT * FROM [Products]
WHERE Price >= 250
Order by Price ASC

2.Вывести два самых дорогих товара из категории Beverages из USA

SELECT 
	Products.CategoryID,
	Categories.CategoryID,
    	Suppliers.Country,
    	Suppliers.SupplierID,
    	Products.Price
FROM Products

JOIN Categories ON Products.CategoryID=Categories.CategoryID
JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID

WHERE Suppliers.Country ='USA'
AND
Categories.CategoryID IN (1)
LIMIT 2

3.Вывести заказы, добавив поле доставлено (или нет), учитывая, что доставлены только 10248 и 10249

SELECT *,
CASE
WHEN OrderID IN (10248,10249) THEN true
ELSE false
END AS Order_delivered
FROM [Orders]

4.Вывести список стран, которые поставляют морепродукты

SELECT 
	Suppliers.Country,
	Products.CategoryID
FROM Products

JOIN Categories ON Products.CategoryID=Categories.CategoryID
JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID

WHERE Categories.CategoryID ='8'


5.Очистить поле ContactName у всех клиентов не из China

UPDATE Customers SET ContactName = NULL WHERE Country <> 'China'
