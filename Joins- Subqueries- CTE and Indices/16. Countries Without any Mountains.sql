SELECT
COUNT(c.CountryCode) AS CountryCode
FROM MountainsCountries AS mc
RIGHT OUTER JOIN Countries c ON mc.CountryCode=c.CountryCode
WHERE mc.MountainId IS NULL
