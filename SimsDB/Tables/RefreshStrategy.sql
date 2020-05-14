CREATE TABLE [dbo].[RefreshStrategy]
(
	Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    ProviderId INT FOREIGN KEY REFERENCES [Provider](Id) NOT NULL,
    Strategy NVARCHAR(50) NOT NULL, 
    StartOffset INT NULL,
    EndOffset INT NULL,
    LastUpdated DATETIME NOT NULL      
)
