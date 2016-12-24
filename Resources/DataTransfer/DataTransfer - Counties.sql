USE [Countries]
GO

INSERT INTO [Counties]
           ([CityID]
           ,[CountyName])
		SELECT CitiesCT.CityID, LTRIM(RTRIM(DT.[il�e]))
		FROM Cities AS CitiesCT

		INNER JOIN ['�l-�l�e$'] AS DT
		ON DT.[il] = CitiesCT.CityName
		ORDER BY CitiesCT.CityName, DT.[il�e]
GO