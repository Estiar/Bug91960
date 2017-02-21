{
  "Script": "DECLARE @ShouldRunMigrationScript BIT\r\nSET @ShouldRunMigrationScript = 1\r\nIF NOT EXISTS (SELECT 1 FROM [INFORMATION_SCHEMA].[TABLES] WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Table_3')\r\nBEGIN\r\n        SET @ShouldRunMigrationScript = 0;\r\n        PRINT 'Object ''[dbo].[Table_3]'' could not be found - skipping migration.';\r\nEND\r\nIF @ShouldRunMigrationScript = 1\r\nBEGIN\r\nEXEC sp_rename '[dbo].[Table_3]', 'Table_2'\r\nEND",
  "Name": "rename1",
  "Commited": true,
  "UniqueId": "ff028a39-ef45-492c-b09f-3666d2146691",
  "Time": "2017-02-21T17:54:55",
  "OrderOfExecution": 0,
  "DeploymentOrder": 0,
  "Description": "Enter description",
  "FullyQualifiedName": "dbo.Table_2",
  "OldFullyQualifiedName": "dbo.Table_3",
  "SqlObjType": 8
}
