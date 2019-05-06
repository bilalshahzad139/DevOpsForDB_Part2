


SET IDENTITY_INSERT dbo.users ON


MERGE INTO dbo.users AS Target 
USING (	
	SELECT 1025, N'Admin', '123', N'Admin', N'Admin', N'abc@yahoo.com', 1, N'c59e908a-bffc-43c0-a865-6bd59e8c21f7.png', N'ABC', N'BSSE (AFTERNOON)', 0, 1 UNION ALL
	SELECT 55, N'teacher', '123', N'teacher1', N'Teacher', N'abc@yahoo.com', 1, N'c59e908a-bffc-43c0-a865-6bd59e8c21f7.png', N'ABC', N'', 1, 1
) 
AS Source (UserId, Login, Password, Name, Title, Email, isActive, SignatureName, StdFatherName, Section, IsContributor, IsOldCampus) 
ON Target.UserId = Source.UserId
WHEN MATCHED THEN 
UPDATE SET 
	Login = Source.Login,
	Password = Source.Password,
	Name = Source.Name,
	Title = Source.Title,
	Email = Source.Email,
	SignatureName = Source.SignatureName,
	StdFatherName = Source.StdFatherName,
	Section = Source.Section,
	IsContributor = Source.IsContributor,
	IsOldCampus = Source.IsOldCampus,
	IsActive = Source.IsActive,
	IsDisabledForLogin = 1,
	ResetToken = null
WHEN NOT MATCHED BY TARGET THEN 
INSERT (UserId, Login, Password, Name, Title, Email, isActive, SignatureName, StdFatherName, Section, IsContributor, IsOldCampus) 
VALUES (UserId, Login, Password, Name, Title, Email, isActive, SignatureName, StdFatherName, Section, IsContributor, IsOldCampus);
--WHEN NOT MATCHED BY SOURCE THEN 
--DELETE;

SET IDENTITY_INSERT dbo.users OFF;

