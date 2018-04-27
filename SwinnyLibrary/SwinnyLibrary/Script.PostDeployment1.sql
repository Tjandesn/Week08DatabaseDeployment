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

If '$(LoadTestData)' = 'true'

Begin

Delete from Book;
Delete from Student;
Delete from Author;

Insert into Student (StudentId, FirstName, LastName, Email, Mobile) Values
('S12345678', 'Fred', 'Flintstone', '12345678@student.swin.edu.au', 0400555111),
('S23456789', 'Barney', 'Rubble', '23456789@student.swin.edu.au', 0400555222),
('S34567890', 'Bam-Bam', 'Rubble', '34567890@student.swin.edu.au', 0400555333);

Insert into Author (AuthorId, FirstName, LastName, TaxFileNumber) Values
(32567, 'Edgar', 'Codd', 150111222),
(76543, 'Vinton', 'Cerf', 150222333),
(12345, 'Alan', 'Turing', 150333444);

Insert into Book (ISBN, Title, YearPublished, AuthorId, StudentId) Values
('978-3-16-148410-0', 'Relationships with Databases, the ins and outs', 1970, 32567, null),
('978-3-16-148410-1', 'Normalisation, how to make a databse geek fit in', 1973, 32567, null),
('978-3-16-148410-2', 'TCP/IP, the protocol for the masses', 1983, 76543, null),
('978-3-16-148410-3', 'The Man, The Bombe, and the Enigma', 1940, 12345, null);

End;