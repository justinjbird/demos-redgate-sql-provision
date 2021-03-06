-- Original database
SELECT TOP (100) * FROM [AdventureWorksDW2017].[dbo].[DimCustomer]

-- Dev1
SELECT TOP (100) * FROM [AdventureWorksDW2017].[dbo].[DimCustomer]
SELECT TOP (100) * FROM [AdventureWorksDW2017_clone_Dev1].[dbo].[DimCustomer]

-- Make some changes on Dev2
UPDATE [AdventureWorksDW2017_clone_Dev2].[dbo].[DimCustomer]
SET YearlyIncome = YearlyIncome * 0.9

-- Compare
SELECT TOP (100) * FROM [AdventureWorksDW2017].[dbo].[DimCustomer]
SELECT TOP (100) * FROM [AdventureWorksDW2017_clone_Dev1].[dbo].[DimCustomer]
SELECT TOP (100) * FROM [AdventureWorksDW2017_clone_Dev2].[dbo].[DimCustomer]

------> RESET Dev2 <------

-- Dev2 is restored 
SELECT TOP (100) * FROM [AdventureWorksDW2017_clone_Dev1].[dbo].[DimCustomer]
SELECT TOP (100) * FROM [AdventureWorksDW2017_clone_Dev2].[dbo].[DimCustomer]