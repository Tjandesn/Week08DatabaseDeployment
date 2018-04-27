CREATE TABLE [dbo].[Author]
(
	[AuthorId] Int Not Null,
	[FirstName] Varchar(50) Not Null,
	[LastName] Varchar(50) Not Null,
	[TaxFileNumber] Int Not Null,
	Constraint PK_Author Primary Key (AuthorId)
)
