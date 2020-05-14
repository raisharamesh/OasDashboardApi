/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

DELETE [Provider]
DBCC CHECKIDENT ('Provider', RESEED, 0)
DELETE RefreshStrategy
DBCC CHECKIDENT ('RefreshStrategy', RESEED, 0)


/*Insert script for Provider table*/
INSERT INTO Provider VALUES('Kuriakose','APPOLO','1','Raisha',GETDATE());
INSERT INTO Provider VALUES('Ramachandran','MANIPAL','1','Raisha',GETDATE());
INSERT INTO Provider VALUES('Manoj','FORTIS','1','Raisha',GETDATE());
INSERT INTO Provider VALUES('Joy P jacob','APPOLO','1','Raisha',GETDATE());
INSERT INTO Provider VALUES('Benny','MANIPAL','1','Raisha',GETDATE());
INSERT INTO Provider VALUES('Sathi','FORTIS','1','Raisha',GETDATE());
INSERT INTO Provider VALUES('Ramadas','APPOLO','1','Raisha',GETDATE());
INSERT INTO Provider VALUES('Lakshmi','MANIPAL','1','Raisha',GETDATE());
INSERT INTO Provider VALUES('Balraj','FORTIS','1','RAISHA',GETDATE());
INSERT INTO Provider VALUES('Anagha','MANIPAL','1','RAISHA',GETDATE());

/*Insert script for RefreshStrategy table*/
/*Insert script for Provider Kuriakose*/
INSERT INTO RefreshStrategy VALUES(1,'Every1Hour','0','14','2020-02-13 01:29:41.510');
INSERT INTO RefreshStrategy VALUES(1,'Every6Hour','15','29','2020-02-12 23:45:40.597');
INSERT INTO RefreshStrategy VALUES(1,'Every12Hour','30','89','2020-02-13 04:15:41.593');
INSERT INTO RefreshStrategy VALUES(1,'Every24Hour','90','179','2020-02-13 02:35:41.223');
/*Insert script for Provider Ramachandran*/
INSERT INTO RefreshStrategy VALUES(2,'Every1Hour','0','14','2020-02-13 01:29:41.510');
INSERT INTO RefreshStrategy VALUES(2,'Every6Hour','15','29','2020-02-12 23:45:40.597');
INSERT INTO RefreshStrategy VALUES(2,'Every12Hour','30','89','2020-02-13 04:15:41.593');
INSERT INTO RefreshStrategy VALUES(2,'Every24Hour','90','179','2020-02-13 02:35:41.223');
/*Insert script for Provider Manoj*/
INSERT INTO RefreshStrategy VALUES(3,'Every1Hour','0','14','2020-02-13 01:29:41.510');
INSERT INTO RefreshStrategy VALUES(3,'Every6Hour','15','29','2020-02-12 23:45:40.597');
INSERT INTO RefreshStrategy VALUES(3,'Every12Hour','30','89','2020-02-13 04:15:41.593');
INSERT INTO RefreshStrategy VALUES(3,'Every24Hour','90','179','2020-02-13 02:35:41.223');
/*Insert script for Provider Joy P jacob*/
INSERT INTO RefreshStrategy VALUES(4,'Every1Hour','0','14','2020-02-13 01:29:41.510');
INSERT INTO RefreshStrategy VALUES(4,'Every6Hour','15','29','2020-02-12 23:45:40.597');
INSERT INTO RefreshStrategy VALUES(4,'Every12Hour','30','89','2020-02-13 04:15:41.593');
INSERT INTO RefreshStrategy VALUES(4,'Every24Hour','90','179','2020-02-13 02:35:41.223');
/*Insert script for Provider Benny*/
INSERT INTO RefreshStrategy VALUES(5,'Every1Hour','0','14','2020-02-13 01:29:41.510');
INSERT INTO RefreshStrategy VALUES(5,'Every6Hour','15','29','2020-02-12 23:45:40.597');
INSERT INTO RefreshStrategy VALUES(5,'Every12Hour','30','89','2020-02-13 04:15:41.593');
INSERT INTO RefreshStrategy VALUES(5,'Every24Hour','90','179','2020-02-13 02:35:41.223');
/*Insert script for Provider Sathi*/
INSERT INTO RefreshStrategy VALUES(6,'Every1Hour','0','14','2020-02-13 01:29:41.510');
INSERT INTO RefreshStrategy VALUES(6,'Every6Hour','15','29','2020-02-12 23:45:40.597');
INSERT INTO RefreshStrategy VALUES(6,'Every12Hour','30','89','2020-02-13 04:15:41.593');
INSERT INTO RefreshStrategy VALUES(6,'Every24Hour','90','179','2020-02-13 02:35:41.223');
/*Insert script for Provider Ramadas*/
INSERT INTO RefreshStrategy VALUES(7,'Every1Hour','0','14','2020-02-13 01:29:41.510');
INSERT INTO RefreshStrategy VALUES(7,'Every6Hour','15','29','2020-02-12 23:45:40.597');
INSERT INTO RefreshStrategy VALUES(7,'Every12Hour','30','89','2020-02-13 04:15:41.593');
INSERT INTO RefreshStrategy VALUES(7,'Every24Hour','90','179','2020-02-13 02:35:41.223');
/*Insert script for Provider Lakshmi*/
INSERT INTO RefreshStrategy VALUES(8,'Every1Hour','0','14','2020-02-13 01:29:41.510');
INSERT INTO RefreshStrategy VALUES(8,'Every6Hour','15','29','2020-02-12 23:45:40.597');
INSERT INTO RefreshStrategy VALUES(8,'Every12Hour','30','89','2020-02-13 04:15:41.593');
INSERT INTO RefreshStrategy VALUES(8,'Every24Hour','90','179','2020-02-13 02:35:41.223');
/*Insert script for Provider Balraj*/
INSERT INTO RefreshStrategy VALUES(9,'Every1Hour','0','14','2020-02-13 01:29:41.510');
INSERT INTO RefreshStrategy VALUES(9,'Every6Hour','15','29','2020-02-12 23:45:40.597');
INSERT INTO RefreshStrategy VALUES(9,'Every12Hour','30','89','2020-02-13 04:15:41.593');
INSERT INTO RefreshStrategy VALUES(9,'Every24Hour','90','179','2020-02-13 02:35:41.223');
/*Insert script for Provider Anagha*/
INSERT INTO RefreshStrategy VALUES(10,'Every1Hour','0','14','2020-02-13 01:29:41.510');
INSERT INTO RefreshStrategy VALUES(10,'Every6Hour','15','29','2020-02-12 23:45:40.597');
INSERT INTO RefreshStrategy VALUES(10,'Every12Hour','30','89','2020-02-13 04:15:41.593');
INSERT INTO RefreshStrategy VALUES(10,'Every24Hour','90','179','2020-02-13 02:35:41.223');
