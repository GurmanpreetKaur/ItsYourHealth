create database Itsyourhealth
GO

USE [Itsyourhealth]
GO

/****** Object:  Table [dbo].[PatientInformation]    Script Date: 3/22/2018 6:48:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[PatientInformation](
	[Patientid] [int] IDENTITY(1,1) NOT NULL,
	[PatientName] [varchar](50) NULL,
	[Age] [int] NULL,
	[AppointmentDate] [date] NULL,
	[AppointmentTime] [time](7) NULL,
	[Description] [varchar](max) NULL,
	[Username] [varchar](50) NULL,
 CONSTRAINT [PK_PatientInformation] PRIMARY KEY CLUSTERED 
(
	[Patientid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



/****** Object:  Table [dbo].[TblRegistration]    Script Date: 3/28/2018 1:33:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TblRegistration](
	[Regid] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[Age] [int] NULL,
	[Password] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[PatientHistory] [varchar](max) NULL,
 CONSTRAINT [PK_TblRegistration] PRIMARY KEY CLUSTERED 
(
	[Regid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

