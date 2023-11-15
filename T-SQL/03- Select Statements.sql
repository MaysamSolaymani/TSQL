SELECT * FROM cities
GO

SELECT * FROM airports
GO

SELECT        city, state, population_estimate_2018
FROM            cities
GO

SELECT       id, city, state, population_estimate_2018, population_census_2010, land_area_sq_mi_2016, pop_density_per_sq_mi_2016
FROM            cities
WHERE        (state = 'California')
GO

SELECT        id, city, state, population_estimate_2018, population_census_2010, land_area_sq_mi_2016, pop_density_per_sq_mi_2016
FROM            cities
WHERE        (state = 'California') OR (state = 'Texas')
GO

SELECT    *
FROM            airports
WHERE        (NOT (name LIKE '%International%'))
GO


