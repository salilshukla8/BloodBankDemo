USE [master]
GO
/****** Object:  Database [BloodDonationManagement]    Script Date: 13-02-2022 18:01:38 ******/
CREATE DATABASE [BloodDonationManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BloodDonationManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BloodDonationManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BloodDonationManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BloodDonationManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BloodDonationManagement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BloodDonationManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BloodDonationManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BloodDonationManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BloodDonationManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BloodDonationManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BloodDonationManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [BloodDonationManagement] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BloodDonationManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BloodDonationManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BloodDonationManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BloodDonationManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BloodDonationManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BloodDonationManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BloodDonationManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BloodDonationManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BloodDonationManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BloodDonationManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BloodDonationManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BloodDonationManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BloodDonationManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BloodDonationManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BloodDonationManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BloodDonationManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BloodDonationManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BloodDonationManagement] SET  MULTI_USER 
GO
ALTER DATABASE [BloodDonationManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BloodDonationManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BloodDonationManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BloodDonationManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BloodDonationManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BloodDonationManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BloodDonationManagement] SET QUERY_STORE = OFF
GO
USE [BloodDonationManagement]
GO
/****** Object:  Table [dbo].[BloodBank]    Script Date: 13-02-2022 18:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BloodBank](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Location] [nvarchar](100) NULL,
	[Address] [nvarchar](1000) NULL,
	[Phone] [nvarchar](1000) NULL,
	[InsertedON] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Campaign]    Script Date: 13-02-2022 18:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campaign](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Location] [nvarchar](100) NULL,
	[CampaignDate] [datetime] NULL,
	[InsertedON] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 13-02-2022 18:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RequestContent] [nvarchar](max) NULL,
	[RequestType] [nvarchar](100) NULL,
	[RequestFrom] [nvarchar](1000) NULL,
	[RequestStatus] [nvarchar](100) NULL,
	[InsertedON] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 13-02-2022 18:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BloodGroup] [nvarchar](max) NULL,
	[Unit] [nvarchar](100) NULL,
	[InsertedON] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 13-02-2022 18:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMaster](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](1000) NULL,
	[Password] [nvarchar](1000) NULL,
	[UserAddress] [nvarchar](1000) NULL,
	[UserEmail] [nvarchar](1000) NULL,
	[UserPhone] [nvarchar](1000) NULL,
	[Type] [nvarchar](1000) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BloodBank] ON 

INSERT [dbo].[BloodBank] ([ID], [Name], [Location], [Address], [Phone], [InsertedON]) VALUES (1, N'Blood Bank 1', N'Delhi', N'101 South Delhi', N'11221122', CAST(N'2022-02-13T13:15:56.727' AS DateTime))
INSERT [dbo].[BloodBank] ([ID], [Name], [Location], [Address], [Phone], [InsertedON]) VALUES (2, N'Blood Bank 2', N'Noida', N'102 Noida', N'2323232323', CAST(N'2022-02-13T13:15:56.733' AS DateTime))
INSERT [dbo].[BloodBank] ([ID], [Name], [Location], [Address], [Phone], [InsertedON]) VALUES (3, N'Blood Bank 3', N'Haryana', N'103 Haryana', N'3434343434', CAST(N'2022-02-13T13:15:56.733' AS DateTime))
INSERT [dbo].[BloodBank] ([ID], [Name], [Location], [Address], [Phone], [InsertedON]) VALUES (4, N'Blood Bank 4', N'Punjab', N'104 Punjab', N'4545454545', CAST(N'2022-02-13T13:15:56.733' AS DateTime))
INSERT [dbo].[BloodBank] ([ID], [Name], [Location], [Address], [Phone], [InsertedON]) VALUES (5, N'Blood Bank 5', N'UP', N'105 UP', N'5656565656', CAST(N'2022-02-13T13:15:56.733' AS DateTime))
INSERT [dbo].[BloodBank] ([ID], [Name], [Location], [Address], [Phone], [InsertedON]) VALUES (6, N'Blood Bank 1', N'Delhi', N'101 South Delhi', N'11221122', CAST(N'2022-02-13T13:16:00.017' AS DateTime))
INSERT [dbo].[BloodBank] ([ID], [Name], [Location], [Address], [Phone], [InsertedON]) VALUES (7, N'Blood Bank 2', N'Noida', N'102 Noida', N'2323232323', CAST(N'2022-02-13T13:16:00.030' AS DateTime))
INSERT [dbo].[BloodBank] ([ID], [Name], [Location], [Address], [Phone], [InsertedON]) VALUES (8, N'Blood Bank 3', N'Haryana', N'103 Haryana', N'3434343434', CAST(N'2022-02-13T13:16:00.030' AS DateTime))
INSERT [dbo].[BloodBank] ([ID], [Name], [Location], [Address], [Phone], [InsertedON]) VALUES (9, N'Blood Bank 4', N'Punjab', N'104 Punjab', N'4545454545', CAST(N'2022-02-13T13:16:00.037' AS DateTime))
INSERT [dbo].[BloodBank] ([ID], [Name], [Location], [Address], [Phone], [InsertedON]) VALUES (10, N'Blood Bank 5', N'UP', N'105 UP', N'5656565656', CAST(N'2022-02-13T13:16:00.040' AS DateTime))
SET IDENTITY_INSERT [dbo].[BloodBank] OFF
GO
SET IDENTITY_INSERT [dbo].[Campaign] ON 

INSERT [dbo].[Campaign] ([ID], [Name], [Location], [CampaignDate], [InsertedON]) VALUES (1, N'Social', N'East', CAST(N'2022-02-21T00:00:00.000' AS DateTime), CAST(N'2022-02-13T16:28:04.013' AS DateTime))
INSERT [dbo].[Campaign] ([ID], [Name], [Location], [CampaignDate], [InsertedON]) VALUES (2, N'FB campaign', N'North', CAST(N'2022-03-01T00:00:00.000' AS DateTime), CAST(N'2022-02-13T16:49:41.240' AS DateTime))
SET IDENTITY_INSERT [dbo].[Campaign] OFF
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([ID], [RequestContent], [RequestType], [RequestFrom], [RequestStatus], [InsertedON]) VALUES (1, N'test', N'DONOR', N'donor@gmail.com', N'OPEN', CAST(N'2022-02-13T01:44:39.983' AS DateTime))
INSERT [dbo].[Request] ([ID], [RequestContent], [RequestType], [RequestFrom], [RequestStatus], [InsertedON]) VALUES (2, N'new req', N'DONOR', N'donor@gmail.com', N'OPEN', CAST(N'2022-02-13T02:17:49.870' AS DateTime))
INSERT [dbo].[Request] ([ID], [RequestContent], [RequestType], [RequestFrom], [RequestStatus], [InsertedON]) VALUES (3, N'new 234', N'DONOR', N'donor@gmail.com', N'OPEN', CAST(N'2022-02-13T09:00:01.250' AS DateTime))
INSERT [dbo].[Request] ([ID], [RequestContent], [RequestType], [RequestFrom], [RequestStatus], [InsertedON]) VALUES (4, N'Test seeker req', N'SEEKER', N'seeker@gmail.com', N'OPEN', CAST(N'2022-02-13T09:40:37.033' AS DateTime))
INSERT [dbo].[Request] ([ID], [RequestContent], [RequestType], [RequestFrom], [RequestStatus], [InsertedON]) VALUES (5, N'new seek req 12', N'SEEKER', N'seeker@gmail.com', N'OPEN', CAST(N'2022-02-13T09:41:50.597' AS DateTime))
INSERT [dbo].[Request] ([ID], [RequestContent], [RequestType], [RequestFrom], [RequestStatus], [InsertedON]) VALUES (6, N'Test Seeker req 3', N'SEEKER', N'seeker@gmail.com', N'OPEN', CAST(N'2022-02-13T15:16:25.083' AS DateTime))
INSERT [dbo].[Request] ([ID], [RequestContent], [RequestType], [RequestFrom], [RequestStatus], [InsertedON]) VALUES (7, N'A+ blood required. 10 units', N'HOSPITAL', N'hospital@gmail.com', N'OPEN', CAST(N'2022-02-13T15:22:36.737' AS DateTime))
INSERT [dbo].[Request] ([ID], [RequestContent], [RequestType], [RequestFrom], [RequestStatus], [InsertedON]) VALUES (8, N'B+ blood required urgently.', N'BLOODBANK', N'BloodBank@gmail.com', N'OPEN', CAST(N'2022-02-13T15:43:02.067' AS DateTime))
INSERT [dbo].[Request] ([ID], [RequestContent], [RequestType], [RequestFrom], [RequestStatus], [InsertedON]) VALUES (9, N'Blood bank request', N'BLOODBANK', N'BloodBank@gmail.com', N'OPEN', CAST(N'2022-02-13T16:18:06.650' AS DateTime))
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
SET IDENTITY_INSERT [dbo].[Stock] ON 

INSERT [dbo].[Stock] ([ID], [BloodGroup], [Unit], [InsertedON]) VALUES (1, N'B pos', N'100', CAST(N'2022-02-13T16:28:44.947' AS DateTime))
INSERT [dbo].[Stock] ([ID], [BloodGroup], [Unit], [InsertedON]) VALUES (2, N'A pos', N'200', CAST(N'2022-02-13T16:43:42.650' AS DateTime))
INSERT [dbo].[Stock] ([ID], [BloodGroup], [Unit], [InsertedON]) VALUES (3, NULL, NULL, CAST(N'2022-02-13T17:23:36.833' AS DateTime))
SET IDENTITY_INSERT [dbo].[Stock] OFF
GO
SET IDENTITY_INSERT [dbo].[UserMaster] ON 

INSERT [dbo].[UserMaster] ([UserId], [UserName], [Password], [UserAddress], [UserEmail], [UserPhone], [Type], [CreatedDate]) VALUES (1, N'Donor', N'1234', N'India', N'donor@gmail.com', N'1111111111', N'DONOR', CAST(N'2022-02-11T14:12:08.527' AS DateTime))
INSERT [dbo].[UserMaster] ([UserId], [UserName], [Password], [UserAddress], [UserEmail], [UserPhone], [Type], [CreatedDate]) VALUES (2, N'seeker', N'1234', N'India', N'seeker@gmail.com', N'2222222222', N'SEEKER', CAST(N'2022-02-11T14:12:08.530' AS DateTime))
INSERT [dbo].[UserMaster] ([UserId], [UserName], [Password], [UserAddress], [UserEmail], [UserPhone], [Type], [CreatedDate]) VALUES (3, N'hospital', N'1234', N'India', N'hospital@gmail.com', N'3333333333', N'HOSPITAL', CAST(N'2022-02-11T14:12:08.530' AS DateTime))
INSERT [dbo].[UserMaster] ([UserId], [UserName], [Password], [UserAddress], [UserEmail], [UserPhone], [Type], [CreatedDate]) VALUES (4, N'BloodBank', N'1234', N'India', N'BloodBank@gmail.com', N'4444444444', N'BLOODBANK', CAST(N'2022-02-11T14:12:08.530' AS DateTime))
INSERT [dbo].[UserMaster] ([UserId], [UserName], [Password], [UserAddress], [UserEmail], [UserPhone], [Type], [CreatedDate]) VALUES (37, N'Vijay Sharma', N'1234', N'India', N'vijay@gmail.com', N'1123111', N'DONOR', CAST(N'2022-02-13T13:27:56.850' AS DateTime))
INSERT [dbo].[UserMaster] ([UserId], [UserName], [Password], [UserAddress], [UserEmail], [UserPhone], [Type], [CreatedDate]) VALUES (38, N'Rohit Sharma', N'1234', N'India', N'rohit@gmail.com', N'1123111', N'DONOR', CAST(N'2022-02-13T13:27:56.857' AS DateTime))
INSERT [dbo].[UserMaster] ([UserId], [UserName], [Password], [UserAddress], [UserEmail], [UserPhone], [Type], [CreatedDate]) VALUES (39, N'Virat Kohli', N'1234', N'India', N'virat@gmail.com', N'1123111', N'DONOR', CAST(N'2022-02-13T13:27:56.857' AS DateTime))
INSERT [dbo].[UserMaster] ([UserId], [UserName], [Password], [UserAddress], [UserEmail], [UserPhone], [Type], [CreatedDate]) VALUES (40, N'Deepak Chahar', N'1234', N'India', N'deepak@gmail.com', N'1123111', N'DONOR', CAST(N'2022-02-13T13:27:56.857' AS DateTime))
INSERT [dbo].[UserMaster] ([UserId], [UserName], [Password], [UserAddress], [UserEmail], [UserPhone], [Type], [CreatedDate]) VALUES (41, N'Shardul Thakur', N'1234', N'India', N'shardul@gmail.com', N'1123111', N'DONOR', CAST(N'2022-02-13T13:27:56.857' AS DateTime))
SET IDENTITY_INSERT [dbo].[UserMaster] OFF
GO
USE [master]
GO
ALTER DATABASE [BloodDonationManagement] SET  READ_WRITE 
GO
