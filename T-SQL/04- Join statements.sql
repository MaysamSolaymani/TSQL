SELECT * FROM 
airports INNER JOIN
                         cities ON airports.city_id = cities.id
WHERE        (NOT (airports.name LIKE '%International%'))
GO


SELECT        airports.name, cities.state, cities.city
FROM            airports INNER JOIN
                         cities ON  airports.city_id = cities.id
WHERE        (NOT (airports.name LIKE '%International%'))
GO

SELECT        airports.name, cities.state, cities.city
FROM            airports INNER JOIN
                         cities ON airports.city_id = cities.id
WHERE        (NOT (airports.name LIKE '%International%'))
ORDER BY state --by default is desc

--ORDER BY state ASC
GO



