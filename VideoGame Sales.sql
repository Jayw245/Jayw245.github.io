/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
  FROM [PortfolioProject].[dbo].[vgsales$]

  --Top 10 best selling games globably

  SELECT Top 10 Name, Global_Sales
  FROM [PortfolioProject].[dbo].[vgsales$]
  Order By Global_Sales Desc; 

  --Total Sales for each platform

  SELECT Platform, SUM(Global_Sales) As TotalSales
  FROM [PortfolioProject].[dbo].[vgsales$]
  Group By Platform

  --Identify top 5 publishers with highest sales in North American

  Select Publisher, SUM(NA_Sales) as TotalNA_Sales
   FROM [PortfolioProject].[dbo].[vgsales$]
   GROUP BY Publisher
   Order By TotalNA_Sales Desc

   --Retrieve games with specific platform and genre

   Select Name, genre, Platform
    FROM [PortfolioProject].[dbo].[vgsales$]
	 WHERE Platform = 'ps4' AND Genre = 'Action';
	
	--Avg sales for each platform and genre combo

	Select Platform, Genre, AVG(global_sales) As AvgSales
	 FROM [PortfolioProject].[dbo].[vgsales$]
	 Group By Platform, Genre
	 Order By AvgSales Desc
	 
	 --Top Selling game for each year

	 Select Year, MAX(Global_Sales) As MaxSales_By_Year
	  FROM [PortfolioProject].[dbo].[vgsales$]
	  Group By Year
	  Order By MaxSales_By_Year Desc

	
	  
