SELECT
c.CountryCode  ,
m.MountainRange,
p.PeakName	 ,
p.Elevation	 
FROM MountainsCountries AS mc
JOIN Countries c ON mc.CountryCode = c.CountryCode
JOIN Peaks p ON mc.MountainId = p.MountainId
JOIN Mountains m ON mc.MountainId = m.Id
WHERE c.CountryCode = 'BG' AND p.Elevation > 2835
ORDER BY p.Elevation DESC
