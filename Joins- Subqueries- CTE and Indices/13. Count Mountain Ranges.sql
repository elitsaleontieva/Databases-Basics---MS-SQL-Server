SELECT
c.CountryCode  ,
COUNT(m.MountainRange) AS MountainRanges
FROM MountainsCountries AS mc
JOIN Countries c ON mc.CountryCode = c.CountryCode
JOIN Mountains m ON mc.MountainId = m.Id
WHERE c.CountryCode IN('BG','RU','US')
GROUP BY c.CountryCode
