SELECT CompanyName, ContactName, ContactTitle FROM Customer;

SELECT DISTINCT ContactTitle FROM Customer;

SELECT CompanyName, 
       ContactName,
       ContactTitle,
       CASE
           WHEN ContactTitle == 'Owner' THEN 'Owner'
           ELSE 'Other'
       END AS IsOwner
FROM Customer;

SELECT ProductName, 
       UnitPrice,
       CASE 
           WHEN UnitPrice < 28.0 THEN 'low'
           ELSE 'high'
       END AS PriceLevel
FROM Product;

SELECT ProductName, 
       UnitPrice,
       CASE 
           WHEN UnitPrice < 10.0 THEN 'low'
           WHEN UnitPrice >= 10.0 AND UnitPrice <= 30.0 THEN 'medium'
           ELSE 'high'
       END AS PriceLevel
FROM Product;

SELECT ProductName, 
       UnitPrice,
       CASE 
           WHEN UnitPrice < 10.0 THEN 'low'
           WHEN UnitPrice BETWEEN 10.0 AND 30.0 THEN 'medium'
           ELSE 'high'
       END AS PriceLevel
FROM Product;

SELECT * FROM "Order";

SELECT DISTINCT ShipRegion FROM "Order";

SELECT ShipRegion,
       CASE 
           WHEN ShipRegion LIKE '%Europe' THEN 'Europe'
           WHEN ShipRegion LIKE '%America' THEN 'America'
           WHEN ShipRegion LIKE 'Scandinavia' THEN 'Europe'
           WHEN ShipRegion LIKE 'British Isles' THEN 'Europe'
       END AS Continent
FROM "Order";
