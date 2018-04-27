CREATE TABLE [dbo].[Book]
(
	[ISBN] Varchar(20) Not Null,
	[Title] Varchar(200) Not Null,
	[YearPublished] Int Not Null,
	[AuthorId] Int Not Null,
	[StudentId] Varchar(10) Null,
	Constraint PK_Book Primary Key (ISBN),
	Constraint FK_AuthorId Foreign Key (AuthorId) References Author(AuthorId),
	Constraint FK_StudentId Foreign Key (StudentId) References Student(StudentId)
)
