SELECT 
--p.ProductID, v.BusinessEntityID
  
  *
  FROM Production.Product AS p 
  JOIN Purchasing.ProductVendor AS v
  ON (p.ProductID = v.ProductID);


  -----INNER JOIN DIN DOCUMENTATIE
  SELECT p.Name, sod.SalesOrderID
  FROM Production.Product AS p
  INNER JOIN Sales.SalesOrderDetail AS sod
  ON p.ProductID = sod.ProductID
  ORDER BY p.Name ;

  -----LEFT JOIN DIN DOCUMENTATIE
  SELECT p.Name, pr.ProductReviewID
FROM Production.Product p
LEFT OUTER JOIN Production.ProductReview pr
ON p.ProductID = pr.ProductID
where  pr.ProductID > 0 



------RIGHT JOIN DIN DOCUMENTATIE

SELECT st.Name AS Territory, sp.BusinessEntityID
FROM Sales.SalesTerritory st 
RIGHT OUTER JOIN Sales.SalesPerson sp
ON st.TerritoryID = sp.TerritoryID 
WHERE st.name > '0' 
-----CROSS JOIN 

SELECT p.BusinessEntityID, t.Name AS Territory
FROM Sales.SalesPerson p
CROSS JOIN Sales.SalesTerritory t
ORDER BY p.BusinessEntityID;




