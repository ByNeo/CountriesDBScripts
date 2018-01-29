USE [Countries]
GO

INSERT INTO [Town]
           ([CityID]
           ,[TownName])
		SELECT CityCT.CityID, LTRIM(RTRIM(DT.[il�e]))
		FROM City AS CityCT

		INNER JOIN ['�l-�l�e$'] AS DT
		ON DT.[il] = CityCT.CityName
		ORDER BY CityCT.CityName, DT.[il�e]
GO