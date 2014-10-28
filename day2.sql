USE [master]
GO

/****** creeare baza de date ******/
CREATE DATABASE [Orar]


/****** Object:  Table [dbo].[Student]******/


CREATE TABLE [dbo].[Student](
	[IDStudent] [int] IDENTITY(1,1) NOT NULL,
	[Nume] [nvarchar](25) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[IDStudent] ASC
)) 

GO


/****** Object:  Table [dbo].[Profesor]******/
CREATE TABLE [dbo].[Profesor](
	[IDProfesor] [int] IDENTITY(1,1) NOT NULL,
	[Nume] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NumeProfesor] PRIMARY KEY CLUSTERED 
(
	[IDProfesor] ASC
)) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Curs]    Script Date: 10/28/2014 9:08:13 PM ******/
CREATE TABLE [dbo].[Curs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDProfesor] [int] NOT NULL,
	[IDStudent] [int] NOT NULL,
	[NumeCurs] [nvarchar](50) NULL,
	CONSTRAINT [PK_Curs] PRIMARY KEY CLUSTERED  --------PRIMARY KEY
	(
		[ID] ASC
	)
)
GO


---FOREIGN KEY
ALTER TABLE [dbo].[Curs]  WITH CHECK ADD  CONSTRAINT [FK_Curs_Student] FOREIGN KEY([IDStudent])
REFERENCES [dbo].[Student] ([IDStudent])
GO

ALTER TABLE [dbo].[Curs] CHECK CONSTRAINT [FK_Curs_Student]
GO



------
INSERT INTO [dbo].[Profesor] ([Nume]) VALUES ('Profesor1')
GO


------
INSERT INTO [dbo].[Student]([Nume])VALUES('Nume prenume')
GO

------
INSERT INTO [dbo].[Curs]([IDProfesor],[IDStudent],[NumeCurs])
VALUES (1,1,'Curs de test')


/******************Create View********************************/
CREATE VIEW v_Test_Orar AS
	SELECT dbo.Curs.NumeCurs, dbo.Profesor.IDProfesor, 
	dbo.Student.IDStudent, 
	dbo.Student.Nume AS Nume_Student, 
	dbo.Profesor.Nume AS Nume_Profesor
FROM     dbo.Curs 
INNER JOIN dbo.Profesor ON dbo.Curs.IDProfesor = dbo.Profesor.IDProfesor INNER JOIN
           dbo.Student ON dbo.Curs.IDStudent = dbo.Student.IDStudent
GO


SELECT [NumeCurs],[IDProfesor],[IDStudent],[Nume_Student], [Nume_Profesor] FROM v_Test_Orar








