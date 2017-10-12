SELECT TOP 5 
c.CountryName  ,
r.RiverName
FROM CountriesRivers AS cr
FULL JOIN Countries c ON cr.CountryCode = c.CountryCode
FULL JOIN Rivers r ON cr.RiverId = r.Id
FULL JOIN Continents cont ON c.ContinentCode = cont.ContinentCode
WHERE cont.ContinentName = 'Africa'
ORDER BY c.CountryName
