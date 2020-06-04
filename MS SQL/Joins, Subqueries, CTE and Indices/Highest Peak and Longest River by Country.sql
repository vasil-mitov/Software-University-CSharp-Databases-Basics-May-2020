  SELECT TOP(5) c.CountryName,
         MAX(p.Elevation) AS HighestPeakElevation,
	     MAX(r.[Length]) AS LongestRiverLength
    FROM Countries c
    JOIN MountainsCountries mc
      ON mc.CountryCode = c.CountryCode
    JOIN Mountains m
      ON m.Id = mc.MountainId
    JOIN Peaks p
      ON p.MountainId = m.Id
    JOIN CountriesRivers cr
      ON cr.CountryCode = c.CountryCode
    JOIN Rivers r
      ON r.Id = cr.RiverId
GROUP BY c.CountryName
ORDER BY HighestPeakElevation DESC, LongestRiverLength DESC, c.CountryName