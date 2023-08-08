-- 1.Вывести ко-во поставщиков не из UK и не из China
SELECT 
COUNT (*) AS total_suppliers_not_from_UK_China
FROM Suppliers
WHERE
NOT Country IN ('UK','China')

-- 2.Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5
SELECT 
AVG (Price) AS avg_price
FROM Products
WHERE CategoryID IN (3,5)

-- 3.Вывести общую сумму проданных товаров
SELECT SUM(Price) AS total_price  
FROM [Products]


-- 4.Вывести ко-во стран, которые поставляют напитки
SELECT
COUNT (*) AS total_supplier_beverages
FROM [Products]
WHERE CategoryID =1


-- 5.Вывести сумму, на которую было отправлено товаров клиентам в USA

SELECT 
COUNT (*) AS total_send_usa_costumers
FROM Orders
JOIN Customers ON Orders.CustomerID=Customers.CustomerID
WHERE
Customers.Country = 'USA'