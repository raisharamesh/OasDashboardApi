CREATE TABLE [dbo].[Provider]
(
	 Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
     [Name] VARCHAR(50) NOT NULL,
     PartnerCode VARCHAR(10) NOT NULL,
     IsActive BIT NULL,
     CreatedBy VARCHAR(50) NOT NULL,
     CreatedOn DATETIME NULL
)
