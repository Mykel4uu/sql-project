/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ID]
      ,[Name] as 'competitor name'
      ,case when [Sex] = 'M' then 'Male' else 'Female' end as Sex 
      ,[Age]
	  , case when [Age] < 18 then 'Less than 18'
			when [Age] between 18 and 25 then '18-25'
			when [Age] between 25 and 30 then '25-30'
			when [Age] > 30 then 'Above 30'
		end as [Age Grouping]
      ,[Height]
      ,[Weight]
      ,[NOC] as 'Nation Code'
      ,left(Games, CHARINDEX(' ', Games)-1) as 'Year'
	  --,right(Games, CHARINDEX(' ', reverse(games))-1) as 'Season'
	  --,[Games]
      --,[City]
      ,[Sport]
      ,[Event]
      ,case when Medal = 'NA' then 'Not Registered' else medal end as Medal
  FROM [olympic_games].[dbo].[athletes_event_results]
  where RIGHT(Games, CHARINDEX(' ', REVERSE(Games))-1) = 'Summer'