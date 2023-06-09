Select *
From dbo.['Top 100 most streamed$']

--Group songs by genre and count number of songs in each genre

Select [Top Genre], Count(*) AS SongCount 
From dbo.['Top 100 most streamed$']
Group By [Top Genre]
Order By SongCount Asc

--Calculate total duration of all songs

Select SUM(Length) As TotalDurationSongs
From dbo.['Top 100 most streamed$']

--Top 10 songs with longest duration

SELECT Top 10 title, length
FROM dbo.['Top 100 most streamed$']
Order By length Desc

--Identify the songs that have a duration longer than the average duration

Select Title, Length
FROM dbo.['Top 100 most streamed$']
WHERE length > (Select AVG(Length) FROM dbo.['Top 100 most streamed$'])

--Most common genre combo within dataset

Select [Top Genre], COUNT(*) as GenreCount
FROM dbo.['Top 100 most streamed$']
Group By [top genre]
HAVING COUNT(*) > 1
Order By GenreCount Desc;


		
	

