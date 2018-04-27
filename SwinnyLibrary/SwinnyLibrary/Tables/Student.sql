CREATE TABLE [dbo].[Student]
(
	[StudentId] Varchar(10) Not Null,
	[FirstName] Varchar(50) Not Null,
	[LastName] Varchar(50) Not Null,
	[Email] Varchar(50) Null,
	[Mobile] Int Null,
	Constraint PK_Student Primary Key (StudentId)
)
