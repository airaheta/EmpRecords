USE [testing]
GO
/****** Object:  User [testUsr]    Script Date: 24/02/2023 13:27:14 ******/
CREATE USER [testUsr] FOR LOGIN [testUsr] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [testUsr]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 24/02/2023 13:27:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[EmployeeID] [int] NOT NULL,
	[EmployeeLastName] [varchar](20) NULL,
	[EmployeeFirstName] [varchar](30) NULL,
	[EmployeePhone] [varchar](12) NULL,
	[EmployeeZip] [varchar](10) NULL,
	[HireDate] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
