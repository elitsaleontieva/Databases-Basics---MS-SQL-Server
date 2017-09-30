SELECT TOP 50 [Name], FORMAT([Start], 'yyyy-MM-dd') AS [StartDate] FROM Games
WHERE YEAR(Start) BETWEEN 2011 AND 2012
ORDER BY [StartDate], [Name]
