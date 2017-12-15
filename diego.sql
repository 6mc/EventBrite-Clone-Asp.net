?USE [master]
GO
/****** Object:  Database [Event War]    Script Date: 11/11/2017 17:54:34 ******/
CREATE DATABASE [Event War] ON  PRIMARY 
( NAME = N'Event War', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Event War.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Event War_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Event War_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Event War] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Event War].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Event War] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Event War] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Event War] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Event War] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Event War] SET ARITHABORT OFF
GO
ALTER DATABASE [Event War] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Event War] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Event War] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Event War] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Event War] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Event War] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Event War] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Event War] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Event War] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Event War] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Event War] SET  DISABLE_BROKER
GO
ALTER DATABASE [Event War] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Event War] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Event War] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Event War] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Event War] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Event War] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Event War] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Event War] SET  READ_WRITE
GO
ALTER DATABASE [Event War] SET RECOVERY FULL
GO
ALTER DATABASE [Event War] SET  MULTI_USER
GO
ALTER DATABASE [Event War] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Event War] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Event War', N'ON'
GO
USE [Event War]
GO
/****** Object:  Table [dbo].[userProfiles]    Script Date: 11/11/2017 17:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userProfiles](
	[userID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Picture] [nvarchar](max) NOT NULL,
	[birthdate] [date] NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[bio] [nvarchar](max) NULL,
 CONSTRAINT [PK_userProfiles] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[companyProfiles]    Script Date: 11/11/2017 17:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[companyProfiles](
	[userID] [int] NOT NULL,
	[cName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[cPhone] [nvarchar](50) NOT NULL,
	[cLogo] [nvarchar](max) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[cIntro] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_companyProfiles] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Places]    Script Date: 11/11/2017 17:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Places](
	[pID] [int] IDENTITY(0,1) NOT NULL,
	[pName] [nvarchar](50) NOT NULL,
	[pAdress] [nvarchar](max) NOT NULL,
	[pCapacity] [int] NOT NULL,
	[pOwner] [nvarchar](50) NOT NULL,
	[pOwnerNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Places] PRIMARY KEY CLUSTERED 
(
	[pID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 11/11/2017 17:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[eventID] [int] IDENTITY(0,1) NOT NULL,
	[pID] [int] NOT NULL,
	[userID] [int] NOT NULL,
	[eName] [nvarchar](max) NOT NULL,
	[eDate] [datetime] NOT NULL,
	[eLocation] [nvarchar](50) NOT NULL,
	[ePicture] [nvarchar](max) NOT NULL,
	[eCategory] [nvarchar](50) NOT NULL,
	[eDesc] [nvarchar](max) NOT NULL,
	[booking] [time](7) NULL,
 CONSTRAINT [PK_Events_1] PRIMARY KEY CLUSTERED 
(
	[eventID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 11/11/2017 17:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[bID] [int] IDENTITY(0,1) NOT NULL,
	[userID] [int] NOT NULL,
	[eventID] [int] NOT NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[bID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/11/2017 17:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userID] [int] IDENTITY(0,1) NOT NULL,
	[uName] [nchar](10) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[uType] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 11/11/2017 17:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[ticketID] [int] IDENTITY(0,1) NOT NULL,
	[eventID] [int] NOT NULL,
	[userID] [int] NOT NULL,
	[ticketName] [nvarchar](50) NOT NULL,
	[ticketPrice] [int] NOT NULL,
	[ticketQuantity] [int] NOT NULL,
	[ticketDesc] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED 
(
	[ticketID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 11/11/2017 17:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[rID] [int] IDENTITY(0,1) NOT NULL,
	[userID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[rDesc] [nvarchar](max) NOT NULL,
	[rDate] [datetime] NOT NULL,
	[isReplied] [int] NOT NULL,
	[rAnswer] [nvarchar](max) NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[rID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banned]    Script Date: 11/11/2017 17:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banned](
	[banID] [int] IDENTITY(0,1) NOT NULL,
	[userID] [int] NOT NULL,
	[banDesc] [nvarchar](max) NOT NULL,
	[banTime] [datetime] NOT NULL,
	[banDuration] [time](7) NOT NULL,
 CONSTRAINT [PK_Banned] PRIMARY KEY CLUSTERED 
(
	[banID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 11/11/2017 17:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[invoiceID] [int] IDENTITY(0,1) NOT NULL,
	[ticketID] [int] NOT NULL,
	[userID] [int] NOT NULL,
	[iDate] [datetime] NOT NULL,
	[totalPrice] [int] NOT NULL,
	[tQuantity] [int] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[invoiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Events_companyProfiles]    Script Date: 11/11/2017 17:54:35 ******/
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_companyProfiles] FOREIGN KEY([userID])
REFERENCES [dbo].[companyProfiles] ([userID])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_companyProfiles]
GO
/****** Object:  ForeignKey [FK_Events_Places]    Script Date: 11/11/2017 17:54:35 ******/
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Places] FOREIGN KEY([pID])
REFERENCES [dbo].[Places] ([pID])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Places]
GO
/****** Object:  ForeignKey [FK_Booking_userProfiles]    Script Date: 11/11/2017 17:54:35 ******/
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_userProfiles] FOREIGN KEY([userID])
REFERENCES [dbo].[userProfiles] ([userID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_userProfiles]
GO
/****** Object:  ForeignKey [FK_Users_companyProfiles]    Script Date: 11/11/2017 17:54:35 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_companyProfiles] FOREIGN KEY([userID])
REFERENCES [dbo].[companyProfiles] ([userID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_companyProfiles]
GO
/****** Object:  ForeignKey [FK_Users_userProfiles]    Script Date: 11/11/2017 17:54:35 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_userProfiles] FOREIGN KEY([userID])
REFERENCES [dbo].[userProfiles] ([userID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_userProfiles]
GO
/****** Object:  ForeignKey [FK_Tickets_Events]    Script Date: 11/11/2017 17:54:35 ******/
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Events] FOREIGN KEY([eventID])
REFERENCES [dbo].[Events] ([eventID])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Events]
GO
/****** Object:  ForeignKey [FK_Request_Users]    Script Date: 11/11/2017 17:54:35 ******/
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Users] FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Users]
GO
/****** Object:  ForeignKey [FK_Banned_Users]    Script Date: 11/11/2017 17:54:35 ******/
ALTER TABLE [dbo].[Banned]  WITH CHECK ADD  CONSTRAINT [FK_Banned_Users] FOREIGN KEY([banID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[Banned] CHECK CONSTRAINT [FK_Banned_Users]
GO
/****** Object:  ForeignKey [FK_Invoice_Tickets]    Script Date: 11/11/2017 17:54:35 ******/
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Tickets] FOREIGN KEY([ticketID])
REFERENCES [dbo].[Tickets] ([ticketID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Tickets]
GO
/****** Object:  ForeignKey [FK_Invoice_userProfiles]    Script Date: 11/11/2017 17:54:35 ******/
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_userProfiles] FOREIGN KEY([userID])
REFERENCES [dbo].[userProfiles] ([userID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_userProfiles]
GO
