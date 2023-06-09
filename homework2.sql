1.Вывести телефоны всех поставщиков, кроме тех, что из Germany и France.

SELECT * FROM [Customers]
WHERE NOT Country='France'
AND
NOT Country='Germany'

2.Для товаров до 10 EUR установить категорию 8 и применить наценку в 20%.

UPDATE Products
SET
    CategoryID=8,
    Price=Price * 1.20
WHERE
    Price BETWEEN 0 AND 10

3.Удалить поставщиков из USA и Germany.

DELETE FROM Customers
WHERE
	Country='USA'
    OR
    	Country='Germany'

4.Добавить два поставщика из Spain с произвольными номерами телефонов.
INSERT INTO Suppliers (SupplierID,Country,Phone)
VALUES
(30,'Spain','371111111'),
(31,'Spain','371111111')

UPDATE Suppliers
	SET SupplierName=NULL,
    	ContactName=NULL,
    	Address=NULL,
    	City=NULL,
    	PostalCode=NULL,
    	Country='Spain'
	Phone='371111111'
        
WHERE
	SupplierID IN (30,31)


5.Вывести все товары до 20 EUR из категорий 3 и 6 по убыванию цены.
SELECT * FROM [Products]
WHERE 
	Price <20
AND
	CategoryID IN (3,6)
Order by Price DESC

6.Вывести три самых дорогих товара до 200 EUR.

SELECT * FROM [Products]
WHERE 
	Price <200
Order by Price DESC
LIMIT 3
