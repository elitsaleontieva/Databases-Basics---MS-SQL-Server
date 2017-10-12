SELECT TOP 5
c.CountryName,
MAX(p.Elevation) AS HighestPeakElevation,
MAX(r.Length) AS  LongestRiverLength
FROM MountainsCountries AS mc
FULL JOIN Mountains m ON mc.MountainId=m.Id
FULL JOIN Peaks p ON m.Id=p.MountainId
FULL JOIN Countries c ON mc.CountryCode=c.CountryCode
FULL JOIN CountriesRivers cr ON mc.CountryCode=cr.CountryCode
FULL JOIN Rivers R ON cr.RiverId=r.Id
GROUP BY c.CountryName
ORDER BY HighestPeakElevation DESC, LongestRiverLength DESC, c.CountryName
