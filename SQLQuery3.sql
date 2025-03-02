USE [master]
GO
/****** Object:  Database [JobPortalDb]    Script Date: 7/14/2023 9:34:18 PM ******/
CREATE DATABASE [JobPortalDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JobPortalDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\JobPortalDb.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JobPortalDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\JobPortalDb_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [JobPortalDb] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JobPortalDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JobPortalDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JobPortalDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JobPortalDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JobPortalDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JobPortalDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [JobPortalDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JobPortalDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JobPortalDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JobPortalDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JobPortalDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JobPortalDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JobPortalDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JobPortalDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JobPortalDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JobPortalDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JobPortalDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JobPortalDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JobPortalDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JobPortalDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JobPortalDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JobPortalDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [JobPortalDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JobPortalDb] SET RECOVERY FULL 
GO
ALTER DATABASE [JobPortalDb] SET  MULTI_USER 
GO
ALTER DATABASE [JobPortalDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JobPortalDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JobPortalDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JobPortalDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JobPortalDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JobPortalDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'JobPortalDb', N'ON'
GO
ALTER DATABASE [JobPortalDb] SET QUERY_STORE = ON
GO
ALTER DATABASE [JobPortalDb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [JobPortalDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/14/2023 9:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRoleClaims]    Script Date: 7/14/2023 9:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRoles]    Script Date: 7/14/2023 9:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserClaims]    Script Date: 7/14/2023 9:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserLogins]    Script Date: 7/14/2023 9:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserLogins](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[ProviderKey] [nvarchar](max) NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserRoles]    Script Date: 7/14/2023 9:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AppUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUsers]    Script Date: 7/14/2023 9:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[FullName] [nvarchar](100) NULL,
	[Phone] [nvarchar](20) NULL,
	[Address] [nvarchar](max) NULL,
	[Age] [int] NULL,
	[CreateDate] [datetime2](7) NULL,
	[UrlAvatar] [nvarchar](max) NULL,
	[Contact] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[WebsiteURL] [nvarchar](50) NULL,
	[Location] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[Slug] [nvarchar](max) NOT NULL,
	[ProvinceId] [int] NULL,
	[Disable] [bit] NULL,
	[CategoryId] [int] NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[CompanySize] [nvarchar](max) NULL,
	[WorkingDays] [nvarchar](max) NULL,
	[CountryId] [int] NULL,
	[Content] [nvarchar](max) NULL,
	[Popular] [int] NOT NULL,
 CONSTRAINT [PK_AppUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserTokens]    Script Date: 7/14/2023 9:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 7/14/2023 9:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Slug] [nvarchar](max) NOT NULL,
	[Author] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[AppUserId] [uniqueidentifier] NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Popular] [int] NOT NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/14/2023 9:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[Slug] [nvarchar](max) NOT NULL,
	[Disable] [bit] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 7/14/2023 9:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Flag] [nvarchar](max) NOT NULL,
	[Disable] [bit] NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CVs]    Script Date: 7/14/2023 9:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CVs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Certificate] [nvarchar](100) NOT NULL,
	[Major] [nvarchar](100) NOT NULL,
	[ApplyDate] [datetime2](7) NOT NULL,
	[GraduatedAt] [nvarchar](100) NOT NULL,
	[GPA] [real] NOT NULL,
	[JobId] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Introduce] [nvarchar](max) NOT NULL,
	[AppUserId] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[UrlImage] [nvarchar](max) NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[EmployerAddress] [nvarchar](max) NULL,
	[EmployerPhone] [nvarchar](20) NULL,
	[Comment] [nvarchar](max) NULL,
	[EmployerRating] [tinyint] NULL,
	[CommentOn] [datetime2](7) NULL,
	[City] [nvarchar](30) NULL,
	[EmployerEmail] [nvarchar](50) NULL,
 CONSTRAINT [PK_CVs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 7/14/2023 9:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Slug] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NULL,
	[TitleId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Introduce] [nvarchar](max) NULL,
	[ObjectTarget] [nvarchar](max) NULL,
	[Experience] [nvarchar](max) NULL,
	[CreateDate] [datetime2](7) NULL,
	[Popular] [int] NOT NULL,
	[ProvinceId] [int] NOT NULL,
	[TimeId] [int] NOT NULL,
	[MinSalary] [int] NULL,
	[MaxSalary] [int] NULL,
	[AppUserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobSkill]    Script Date: 7/14/2023 9:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobSkill](
	[JobsId] [int] NOT NULL,
	[SkillsId] [int] NOT NULL,
 CONSTRAINT [PK_JobSkill] PRIMARY KEY CLUSTERED 
(
	[JobsId] ASC,
	[SkillsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provinces]    Script Date: 7/14/2023 9:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provinces](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Slug] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Disable] [bit] NULL,
	[Popular] [int] NOT NULL,
 CONSTRAINT [PK_Provinces] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 7/14/2023 9:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Slug] [nvarchar](max) NOT NULL,
	[Logo] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Disable] [bit] NULL,
	[Popular] [int] NOT NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Times]    Script Date: 7/14/2023 9:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Times](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Slug] [nvarchar](max) NOT NULL,
	[Disable] [bit] NULL,
 CONSTRAINT [PK_Times] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Titles]    Script Date: 7/14/2023 9:34:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Titles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Disable] [bit] NULL,
	[Slug] [nvarchar](max) NOT NULL,
	[Popular] [int] NOT NULL,
 CONSTRAINT [PK_Titles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230628091858_initialDatabase', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230628181202_addCountryTable', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230628181438_addCountryforJob', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230628183216_updateCountryField', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230629082641_updateEmployerField', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230630081303_addCountryAus', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230630104718_addPopularValue', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230630130142_addGermanyCountry', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230630134354_addSwedenCountry', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230630140506_updateUSAValue', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230704111043_addSkillsForJob', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230705125939_removeAgeJob', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230707091924_updateUserConfig', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230707195517_updateCVField', N'6.0.3')
GO
INSERT [dbo].[AppRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'4e233be7-c199-4567-9c07-9271a9de4c64', N'Employer role', N'Employer', N'EMPLOYER', N'dad3c18c-1340-4da2-88b0-f15c9bf65d22')
INSERT [dbo].[AppRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'376c1d1e-0b04-47da-9657-a2a87faf0a59', N'User role', N'User', N'USER', N'bb760d45-ef93-4c5e-aa36-524ea4960072')
INSERT [dbo].[AppRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'9f685d0f-bd6f-44dd-ab60-c606952eb2a8', N'Administrator role', N'Admin', N'ADMIN', N'8d681dff-b911-4aea-bb97-3be17ba95e48')
GO
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'6f192bbb-e0c3-4f52-85d3-08db77fb01d9', N'4e233be7-c199-4567-9c07-9271a9de4c64')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'26d104bf-c718-4288-b831-08db787dab64', N'4e233be7-c199-4567-9c07-9271a9de4c64')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'81e8a451-4305-4706-131b-08db7884c3ac', N'4e233be7-c199-4567-9c07-9271a9de4c64')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'a8545ec6-809f-4723-924c-08db79360ded', N'4e233be7-c199-4567-9c07-9271a9de4c64')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'88ddb9d4-48b1-488d-924d-08db79360ded', N'4e233be7-c199-4567-9c07-9271a9de4c64')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'098dc935-43d3-4401-924e-08db79360ded', N'4e233be7-c199-4567-9c07-9271a9de4c64')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'819a4259-5ac2-4c8c-7213-08db79423d40', N'4e233be7-c199-4567-9c07-9271a9de4c64')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'17d8098e-c16c-448f-5850-08db794d4e58', N'4e233be7-c199-4567-9c07-9271a9de4c64')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'f463e352-9ce4-489c-5851-08db794d4e58', N'4e233be7-c199-4567-9c07-9271a9de4c64')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'944212e8-4830-4a30-4578-08db7969c64d', N'4e233be7-c199-4567-9c07-9271a9de4c64')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'2c15a2e0-73db-435f-f4ca-08db796dfada', N'4e233be7-c199-4567-9c07-9271a9de4c64')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'0163aa78-b118-49a5-6b9e-08db796fb4d9', N'4e233be7-c199-4567-9c07-9271a9de4c64')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'0276ee84-282a-4d63-56cb-08db7971d697', N'4e233be7-c199-4567-9c07-9271a9de4c64')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'cd6a3852-872c-42e6-56cc-08db7971d697', N'4e233be7-c199-4567-9c07-9271a9de4c64')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'fe21bb95-332b-4887-5bf9-08db7974ad47', N'4e233be7-c199-4567-9c07-9271a9de4c64')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'ae093749-cfdf-4406-6852-08db7d8e1b41', N'4e233be7-c199-4567-9c07-9271a9de4c64')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'4eda6fcb-3269-4772-2a28-08db7eb53cad', N'4e233be7-c199-4567-9c07-9271a9de4c64')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'51d552b0-1372-42d1-355b-08db8474bade', N'4e233be7-c199-4567-9c07-9271a9de4c64')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'267e5ead-c431-47b6-a1ad-08db77b96d25', N'376c1d1e-0b04-47da-9657-a2a87faf0a59')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'a424ee41-14d6-4cfd-a1ae-08db77b96d25', N'376c1d1e-0b04-47da-9657-a2a87faf0a59')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'162874d4-2fe1-460e-a1af-08db77b96d25', N'376c1d1e-0b04-47da-9657-a2a87faf0a59')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'a9ccff58-cc82-4ccb-a1b0-08db77b96d25', N'376c1d1e-0b04-47da-9657-a2a87faf0a59')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'12e86ead-91cc-4d9b-a1b1-08db77b96d25', N'376c1d1e-0b04-47da-9657-a2a87faf0a59')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'2779bd49-383b-43b1-a1b2-08db77b96d25', N'376c1d1e-0b04-47da-9657-a2a87faf0a59')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'505572f9-906f-4e8d-a1b3-08db77b96d25', N'376c1d1e-0b04-47da-9657-a2a87faf0a59')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'3d3eb2b1-eaef-4f3f-a1b4-08db77b96d25', N'376c1d1e-0b04-47da-9657-a2a87faf0a59')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'ad13de6d-628f-433d-a1b5-08db77b96d25', N'376c1d1e-0b04-47da-9657-a2a87faf0a59')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'769f41bd-ccd4-45ba-abbd-550ccd0b62e3', N'9f685d0f-bd6f-44dd-ab60-c606952eb2a8')
GO
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'267e5ead-c431-47b6-a1ad-08db77b96d25', N'Viet Hoang', N'0923512351', N'Hoa Binh', 22, CAST(N'2023-06-28T16:24:08.4451525' AS DateTime2), N'default_user.png', NULL, NULL, NULL, NULL, NULL, N'viet-hoang', NULL, 0, NULL, N'user1@gmail.com', N'USER1@GMAIL.COM', N'user1@gmail.com', N'USER1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBuYBVMZCd5kg1W4/BmegrHMDlpGNTUlz8COEi809c7weoUuj+qWJ2X/Rv2ZozwJVg==', N'MIZ6AHSC3MR6BAZXHNYUSGCNDJ4EZ62O', N'22eac880-1d6b-41a5-bcfc-e995ff4e4bfe', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'a424ee41-14d6-4cfd-a1ae-08db77b96d25', N'Quoc Nguyen', N'0923512351', N'Vung Tau', 22, CAST(N'2023-06-28T16:24:25.9807208' AS DateTime2), N'default_user.png', NULL, NULL, NULL, NULL, NULL, N'quoc-nguyen', NULL, 0, NULL, N'user2@gmail.com', N'USER2@GMAIL.COM', N'user2@gmail.com', N'USER2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDCM7uYsw7o1FKzBGNJtATNNdOYcrUEB5x5W0bHcZB1LKUGDWnLZNrpEbh/F3zdpkA==', N'LRNPRVKU7HZEYQNBWCRBB3A37YNDA5NO', N'bac357e3-7a02-4093-b304-f3fadc98a4e6', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'162874d4-2fe1-460e-a1af-08db77b96d25', N'Tung Son', N'0923512351', N'Ha Noi', 22, CAST(N'2023-06-28T16:24:56.6288718' AS DateTime2), N'default_user.png', NULL, NULL, NULL, NULL, NULL, N'tung-son', NULL, 0, NULL, N'user3@gmail.com', N'USER3@GMAIL.COM', N'user3@gmail.com', N'USER3@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEH1U0KG7EpH/veEWq4Mpej+qIwqjwmO+J2FVSanSHB+qXARxgFVmcQgm1iG4AOnoZQ==', N'QE43JDA65GTTQBBOFJB6URLMZE2SCCXY', N'9486a688-6230-4507-a3e5-8161de96b88a', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'a9ccff58-cc82-4ccb-a1b0-08db77b96d25', N'Du Huy', N'0923512351', N'TP HCM', 22, CAST(N'2023-06-28T16:25:13.7569431' AS DateTime2), N'default_user.png', NULL, NULL, NULL, NULL, NULL, N'du-huy', NULL, 0, NULL, N'user4@gmail.com', N'USER4@GMAIL.COM', N'user4@gmail.com', N'USER4@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHbfDazAiuo4M4Gt/kwUzM6a7EiI3iczVyTB6/Z03ATYa3iztfrFg0ieE6zckvqVVw==', N'CGQ2QZCMJSTB7JRB75M2X5P5A3J6NAEK', N'2f4df451-ec1f-43bb-9bbb-81ba035ed6e4', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'12e86ead-91cc-4d9b-a1b1-08db77b96d25', N'Tuan Khang', N'0923512351', N'Ben Tre', 22, CAST(N'2023-06-28T16:25:37.0101416' AS DateTime2), N'default_user.png', NULL, NULL, NULL, NULL, NULL, N'tuan-khang', NULL, 0, NULL, N'user5@gmail.com', N'USER5@GMAIL.COM', N'user5@gmail.com', N'USER5@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEABMBeMmUOjuzsBaFfq1+RRTtDKgkvDSuu+b8k8URbYGOSmP8PZhyaTKSopnTVuZGQ==', N'POJVFEXSKVSMDGIGKF7JA2ECHUZHV22T', N'ee71988a-8c4a-4a3a-8a13-eb3499b11534', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'2779bd49-383b-43b1-a1b2-08db77b96d25', N'Gia Man', N'0923512351', N'TP HCM', 22, CAST(N'2023-06-28T16:25:53.5722861' AS DateTime2), N'default_user.png', NULL, NULL, NULL, NULL, NULL, N'gia-man', NULL, 0, NULL, N'user6@gmail.com', N'USER6@GMAIL.COM', N'user6@gmail.com', N'USER6@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBRpX02Kkcqa94DvKuPE/D9sleM5whDgClAP+KD/HSzAo7JI3U9v9Ztc7fDBtcMrQA==', N'W7PX47VIHGGYBLZPKM7NPSUST23TMAZ5', N'381b85f6-5685-46d9-93b9-163589f069a9', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'505572f9-906f-4e8d-a1b3-08db77b96d25', N'Anh Doan', N'0923512351', N'TP HCM', 22, CAST(N'2023-06-28T16:26:18.5784718' AS DateTime2), N'default_user.png', NULL, NULL, NULL, NULL, NULL, N'anh-doan', NULL, 0, NULL, N'user7@gmail.com', N'USER7@GMAIL.COM', N'user7@gmail.com', N'USER7@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECKxcvS+KvYxa/53Sus+jcqz3ITMNXqpnCLw8wswv1ANeTY1l3TFy68GPJumjfLUuA==', N'N725KX2T5CRJ3KBIBJUXR7TTLVIQTPAP', N'd4cc0b3d-0901-447f-988e-ede894c86c75', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'3d3eb2b1-eaef-4f3f-a1b4-08db77b96d25', N'Minh Tri', N'0923512351', N'Tay Ninh', 22, CAST(N'2023-06-28T16:26:43.9185122' AS DateTime2), N'default_user.png', NULL, NULL, NULL, NULL, NULL, N'minh-tri', NULL, 0, NULL, N'user8@gmail.com', N'USER8@GMAIL.COM', N'user8@gmail.com', N'USER8@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEC/SLiCssq5duEletKe39dyynTwV6lr4BKLfdnd9WK+ANx0Kzz9XavBRnNYFCHYTiw==', N'YUR33XSIVJS6N3LRZDZQL7DYV3QCAGGZ', N'cdb114ac-9503-4a57-867c-7e4b9c3c6342', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'ad13de6d-628f-433d-a1b5-08db77b96d25', N'Dang Khoa', N'0923512351', N'TP HCM', 22, CAST(N'2023-06-28T16:27:01.5245572' AS DateTime2), N'default_user.png', NULL, NULL, NULL, NULL, NULL, N'dang-khoa', NULL, 0, NULL, N'user9@gmail.com', N'USER9@GMAIL.COM', N'user9@gmail.com', N'USER9@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFRA3A4jn2cEdyVexU1np7SyzNruxHnnpaDW1at6f3VY6rIUrCNuRLxvLjusAC662g==', N'B45BJAOJ5FU5P5GM7RZY2SKCTSVMMSYZ', N'051f9fca-41f8-4da7-9974-4c5954a768f6', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'071844fc-99c8-4895-a1b6-08db77b96d25', N'Thanh Duy', N'0923512351', N'TP HCM', 22, CAST(N'2023-06-28T16:27:14.0024131' AS DateTime2), N'default_user.png', NULL, NULL, NULL, NULL, NULL, N'thanh-duy', NULL, 0, NULL, N'user10@gmail.com', N'USER10@GMAIL.COM', N'user10@gmail.com', N'USER10@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGHZua6XZQBEBWk2VZOq3XFhUmBUmum6sHzv/l2dYT2u9uHBhKJJPfO1JxzRkGjNVg==', N'V27SXSY3QPAQ3TNJU4QY4VTGJXB566Y2', N'88451254-12a6-460a-8a48-18aad4eed750', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'6f192bbb-e0c3-4f52-85d3-08db77fb01d9', N'Techcombank', N'1800 588 822', N'TP HCM', 0, CAST(N'2023-06-29T01:46:34.5306403' AS DateTime2), N'e3685585-a9b2-4305-94fc-17df57601912.png', N'<p><strong>☎ KH C&aacute; nh&acirc;n: 1800 588 822 (trong nước) - 84 24 3944 6699 (nước ngo&agrave;i)<br />
☎ KH Doanh nghiệp: 1800 6556 (trong nước) - 84 24 7303 6556 (nước ngo&agrave;i)</strong></p>
', N'<h3><span style="font-size:16px"><strong>Techcombank- The leading commercial bank in Vietnam</strong></span></h3>

<p>Established in 1993, Techcombank is one of the largest joint stock banks in Vietnam and a leading bank in Asia. We have more than 12,000 employees working among 315 branches nationwide and provide a wide range of financial products and services to more than 8.4 million retail and corporate customers. &quot;Be greater&rdquo;, as it says in the brand positioning, Techcombank is dedicated and committed to bringing the best value and offering great experience to our employees.&nbsp;</p>
', N'techcombank.com', N'Số 23 Lê Duẩn, phường Bến Nghé, District 1, Ho Chi Minh', 2, N'techcombank', 1, 0, NULL, N'techcombank@gmail.com', N'TECHCOMBANK@GMAIL.COM', N'techcombank@gmail.com', N'TECHCOMBANK@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEK0qzasImNADYbzrkjYr0V2fOyzuK5z55bLQP4DIitWrpl2su4PlqT/aAEj7uEmUiA==', N'44RMECNCYSOCTSVPCCGZJIHFTWSPKBQO', N'68de1ccb-dd8a-44d8-ba8f-8b35325d05c4', NULL, 0, 0, NULL, 1, 0, N'1000+ employees', N'Monday - Friday', 1, N'<h4><span style="font-size:20px"><strong>Why you&#39;ll love working here</strong></span></h4>

<p>&bull; Top-tier banking environment in Vietnam</p>

<p>&bull; Challenging opportunities for the &ldquo;Greater&rdquo; You</p>

<p>&bull; Attractive career path and benefits</p>

<p>&nbsp;<img src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBeFB1RkE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--49cbeaa2fdc43c91fd975f5a32188d1eea1a0180/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/1%20(1).jpg" />&nbsp;<img src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBeFh1RkE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--674e3d83b0cb7da27ac8fe34b29723de08715a79/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/3%20(3).jpg" /></p>

<h3><strong><span style="font-size:20px">WHY BECOME&nbsp;IT/DATA EXPERTS AT TECHCOMBANK?</span></strong></h3>

<p>&bull; Investing&nbsp;<strong>over 300 million USD</strong>&nbsp;to develop large-scale IT projects, Techcombank is one of the leading bank in Technology trends in Vietnam</p>

<p>&bull; You will grow with Techcombank by having the opportunity to learn from&nbsp;<strong>top experts</strong>&nbsp;from across the world</p>

<p>&bull; Techcombank provides a&nbsp;<strong>rewarding remuneration structure</strong>&nbsp;that commensurate with your achievement and contribution</p>

<p>&bull; Techcombank is the&nbsp;<strong>Top 2 Best place to work&nbsp;</strong>in the banking industry where you can experience various exciting activities throughout the year: Company anniversary, Team building, Active Saturday , Year End Party, etc.</p>
', 22)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'26d104bf-c718-4288-b831-08db787dab64', N'VNG Corporation', N'039623888', N'TP HCM', 0, CAST(N'2023-06-29T16:06:06.5991111' AS DateTime2), N'59314d92-2723-492b-aa9e-fcd89316a5eb.jpg', N'<h4><strong>Trụ sở ch&iacute;nh - VNG Campus</strong></h4>

<p>L&ocirc; Z06, Đường số 13, Khu Chế Xuất T&acirc;n Thuận, Phường T&acirc;n Thuận Đ&ocirc;ng, Quận 7, Tp. Hồ Ch&iacute; Minh</p>

<h4><strong>Trung t&acirc;m dữ liệu</strong></h4>

<p>L&ocirc; S.38b-39-40, Đường số 19, khu chế xuất T&acirc;n Thuận, Phường T&acirc;n Thuận Đ&ocirc;ng, Quận 7, Tp. Hồ Ch&iacute; Minh</p>

<p>T&ograve;a nh&agrave; Helios, L&ocirc; 6, Đường 3, C&ocirc;ng vi&ecirc;n phần mềm Quang Trung, Phường T&acirc;n Ch&aacute;nh Hiệp, Quận 12, Tp. Hồ Ch&iacute; Minh</p>

<h4><strong>Văn ph&ograve;ng H&agrave; Nội</strong></h4>

<p>T&ograve;a nh&agrave; TNR, 54A Nguyễn Ch&iacute; Thanh, Phường L&aacute;ng Thượng, Quận Đống Đa, H&agrave; Nội</p>

<p>T&ograve;a nh&agrave; D29 Phạm Văn Bạch, Quận Cầu Giấy, H&agrave; Nội</p>

<h4><strong>Văn ph&ograve;ng Đ&agrave; Nẵng</strong></h4>

<p>T&ograve;a nh&agrave; Bạch Đằng Complex, 50 Bạch Đằng, Phường Hải Ch&acirc;u 1, Quận Hải Ch&acirc;u, Đ&agrave; Nẵng</p>
', N'<p>Make the Internet change Vietnamese lives</p>

<p>VNG believes in the power of the Internet and sees it as its mission to bring Internet users meaningful experiences. Each day, millions of young Vietnamese entertain, network and make friends, shop online or engage in social activities through VNG products, which are the ways VNG creates value for the society.</p>

<p><strong>MISSION &amp; CORE VALUES</strong></p>

<ul>
	<li>Passion</li>
	<li>Learning</li>
	<li>Teamwork</li>
	<li>Integrity</li>
	<li>Dynamic</li>
	<li>Customer</li>
</ul>
', N'vng.com.vn', N' VNG Campus, Tân Thuận Đông, District 7, Ho Chi Minh', 2, N'vng-corporation', 1, 0, NULL, N'vngcorporation@gmail.com', N'VNGCORPORATION@GMAIL.COM', N'vngcorporation@gmail.com', N'VNGCORPORATION@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGQRljhienUfBpeXjQ6ofCw6vU/KqH6M0zn4DpRPHg1QY19toVFybwA8FGz6DQ4c/w==', N'SS2S4GAGRSJTFAEWMMXURWH3QK76KFH4', N'67cef3d8-90da-4c6e-9765-051b696f5a38', NULL, 0, 0, NULL, 1, 0, N'1000+ employees', N'Monday - Friday', 1, N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>Attractive salary &amp; benefits you&#39;ll love</p>

<p>Building large-scale products</p>

<p>Working in one of the best places to work in VN</p>

<p>&nbsp;<img src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBM2lCSEE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--1086cbc61b377a657a59dfba76a60fd1ecdb858c/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/ok.jpg" />&nbsp;<img src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBL2dCRXc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--7ee35add8a5529e2a09122ec29f663643f85a8e9/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/76730136_2492762160777816_1920448459802935296_o.jpg" /></p>

<p>We hope VNG is a place where you build your career. Whether you want to pursue to be a manager or focus on professional development, we acknowledge and appreciate your talents. Therefore, we open up to you more promotion opportunities in VNG, and designed program to help you succeed in every single career path.&nbsp;<br />
<br />
<strong>NO SUIT, NO TIE:&nbsp;</strong>At VNG, we do not have many rules because we respect you and want to make comfortable atmosphere to help employees perform their jobs well.</p>

<p><strong>Company &ldquo;pay&rdquo; for you:&nbsp;</strong>Lunch, parking, swimming, learning English or gym for free and you know you are really in care.</p>

<p><strong>NO BARRIERS:&nbsp;</strong>Office of VNG is an open space because we always try to remove all barriers to help members easily shares with each other.</p>

<p><strong>Being a big family:&nbsp;</strong>Like a gift for family day. A party for the kids. We know how much your family matters.</p>

<p><strong>NO RANK At VNG,</strong>&nbsp;members are encouraged to contribute ideas and debate with the others.</p>

<p><strong>Be explored:&nbsp;</strong>Ph.D., un-academic guy, bookish girl, fashion designers ... VNGers are different and this diversity makes life more colorful.</p>

<p><strong>NO &quot;OFFICE&quot;:&nbsp;</strong>Office is like your home. You can hang paintings, plant trees, even feed aquarium on the desk.</p>

<p><strong>Be showed your best:&nbsp;</strong>VNGers like to &quot;mortification&quot; with the group games such as: Fansipan climbing, waterfall rafting, go over heat mats; there activities not only are tightening friendship, but also practice their bravery.</p>

<p><strong>GAMING:&nbsp;</strong>Even if you do not make the game, stealing beans in the boss&rsquo;s garden or versusing with your colleagues in a sword competition play online is also an interesting way to relax.<br />
<br />
<strong>Changing the world:&nbsp;</strong>Creating an entertainment channel, building a social network and developing a game. On the Internet world, every single thing you did can change the lives of many people.</p>

<p><br />
<em><strong>Let&rsquo;s join VNG to share our mission: &#39;MAKE THE INTERNET CHANGE VIETNAMESE LIVES&#39;</strong></em></p>
', 33)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'81e8a451-4305-4706-131b-08db7884c3ac', N'FPT Software', N'0366346868', N'Ho Chi Minh', 0, CAST(N'2023-06-29T16:43:26.3733787' AS DateTime2), N'8dbb2d39-4ed3-445f-a27e-bb995fb19762.png', N'<p><img src="https://career.fpt-software.com/wp-content/themes/jobcareer/fpt_landing_page/f-japan-job/assets/images/icon_phone.png" />&nbsp;<a href="tel:(+81)3-6634-6868">(+81)3-6634-6868</a></p>

<p><img src="https://career.fpt-software.com/wp-content/themes/jobcareer/fpt_landing_page/f-japan-job/assets/images/icon_phone.png" />&nbsp;<a href="tel:(+81)3-6634-6868">(+81)3-6634-6869</a></p>

<p><img src="https://career.fpt-software.com/wp-content/themes/jobcareer/fpt_landing_page/f-japan-job/assets/images/icon_mail.png" />&nbsp;<a href="mailto:FJP.Careers@fpt.com">FJP.Careers@fpt.com</a></p>
', N'<h3><span style="font-size:14px"><strong>The leading provider of software outsourcing services in Vietnam</strong></span></h3>

<p><em>FPT Software is part of FPT Corporation (FPT &ndash; HoSE) &ndash; the global leading technology, outsourcing and IT services group headquartered in Vietnam with nearly US$2 billion in revenue and more than 27000 employees. Qualified with CMMI Level 5 &amp; ISO 27001:2013, ASPICE LEVEL 3, FPT Software delivers world-class services in Smart factory, Digital platform, RPA, AI, IoT, Enterprise Mobilization, Cloud, AR/VR, Embedded System, Managed service, Testing, Platform modernization, Business Applications, Application Service, BPO and more services globally from delivery centers across the United States, Japan, Europe, Korea, China, Australia, Vietnam and the Asia Pacific.</em><br />
<br />
<em>In 2017, FPT Software has been placed in top 10 of the ranking for three consecutive years. Among top 10, FPT Software is the only IT Company.&nbsp;</em></p>
', N'career.fpt-software.com', N'FPT Software Đường D1 Phường Tân Phú , District 9, Ho Chi Minh', 2, N'fpt-software', 1, 0, NULL, N'fptsoftware@gmail.com', N'FPTSOFTWARE@GMAIL.COM', N'fptsoftware@gmail.com', N'FPTSOFTWARE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEM0adclENj03ZY3qt3B4lb/XzIqPgTHsKITbJkf6nvgrzER/QlhXyCFSinDTp9b+CQ==', N'WYN67ARLYE3UOI2MQLTF5BO7DZVANM4Z', N'62bbb7c1-a4cd-4f28-884b-1f700c99f70d', NULL, 0, 0, NULL, 1, 0, N'1000+ employees', N'Monday - Friday', 1, N'<h3><strong>Why you&#39;ll love working here</strong></h3>

<ul>
	<li>Global Exposure</li>
	<li>Fast Track Career</li>
	<li>Diversified Jobs &amp; Technologies</li>
</ul>

<p><img alt="" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBMGZIREE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--e9ed579dd8b66e819eba520e8c7bfdf6352ca1e0/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/meeting_edited.jpg" />&nbsp;<img alt="" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBMGpIREE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--60ebd952953ddfb17afe93dbfeb84f476f4bb8bc/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/meeting_2eduted.jpg" /></p>

<p>Join FPT Software &ndash; You can make it too!<br />
<br />
You can catch up with unlimited opportunities to work and live in different countries over the world, join world class software projects with trendiest technologies, innovative products &amp; services that bring great values to millions of people around the world, such as the world&rsquo;s largest airplane brand, biggest broadcast satellite services in the US, the leading manufacturer of postage meter and mailroom equipment in EU, etc.<br />
<br />
You can choose your career path to become a technology expert or a professional manager which best fits your desire, qualifications and characteristics in an equal opportunity and open-minded culture workplace.<br />
<br />
You can balance your working and spiritual life in the environment of youth, multinational culture and creativity, improve impressively vital soft skills including English, Japanese, French&hellip; and communication skills through daily direct communication with global customers and employees.<br />
<br />
FPT Software is proud to accompany with thousands of individuals to continuously develop and explore their career path.<br />
<br />
You can make it too!</p>
', 13)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'a8545ec6-809f-4723-924c-08db79360ded', N'Tyme', N'212-796-1950', N'Ha Noi', 0, CAST(N'2023-06-30T14:00:05.9385151' AS DateTime2), N'f8afd014-2e83-45da-a6f8-0612f4512d0b.png', N'<p><strong>Tyme Global</strong><br />
60 West 66th Street<br />
New York, NY, 10023<br />
<a href="tel:+12127961590">212-796-1950</a><br />
<a href="mailto:info@tymeglobal.com">info@tymeglobal.com</a></p>
', N'<p><strong>Tyme Vietnam is a part of Tyme Group - one of the world&rsquo;s fastest-growing digital banking groups.</strong></p>

<ul>
	<li>
	<p><strong>Tyme Group</strong>&nbsp;is one of the world&rsquo;s fastest-growing digital banking groups, building high-tech and high-touch banks in fast-growing, emerging markets. Headquartered in Singapore with Technology &amp; Product Development Hub in Vietnam, Tyme designs, builds, and commercializes digital banks for emerging markets, with particular expertise in serving under-served and under-banked populations.</p>
	</li>
	<li>Established in 2016,&nbsp;<strong>Tyme Vietnam</strong>&nbsp;has been TymeGroup&#39;s Product &amp; Technology Development Hub, bringing together engineering and product people who share a global mission to&nbsp;<strong>become serial bank builders</strong>, shaping the future of banking through technology. We build products with the principle of finding the right balance between the digital and physical worlds.</li>
	<li>We have proudly provided the banking platform as a service for:
	<ul>
		<li><strong>TymeBank,&nbsp;</strong>based in South Africa, is one of the world&rsquo;s fastest-growing digital banks, with more than 6 million customers since launching in February 2019.</li>
		<li><strong>GoTyme Bank</strong>, based in the Philippines, is a joint venture between the Gokongwei Group and Tyme Group with the official launch in October 2022 and onboarded more than 100,000 customers in less than two months.</li>
	</ul>
	</li>
</ul>
', N'vietnam.tyme.com', N' Times Tower, 35 Le Van Luong, Nhan Chinh ward, Thanh Xuan, Ha Noi', 2, N'tyme', 2, 0, NULL, N'tyme@gmail.com', N'TYME@GMAIL.COM', N'tyme@gmail.com', N'TYME@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPhW7Sts7AHytgwmZJDq5VtIpGfULqraw3I+O7qNOx8cew/rlU2Nnf9uLm3h7JYPXQ==', N'NP7A6I7GDPHDVTUPENXNSNUAPB7R3KSD', N'241d61e0-46ae-4ceb-a3c0-01f219d67a35', NULL, 0, 0, NULL, 1, 0, N'301-500 employees', N'Monday - Friday', 5, N'<h3><strong>Why you&#39;ll love working here</strong></h3>

<ul>
	<li>Excellent environment and team to help you grow.</li>
	<li>Competitive salary and learning culture.</li>
	<li>Premium health care for you and your family.</li>
</ul>

<p><img alt="" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBL3Y5S3c9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--977cb528609d1ce9d66b58c5d3c95511248ea6cb/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/1.jpg" />&nbsp;<img alt="" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBL3o5S3c9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--3064c5bab4cdeff3426bb48208210df7658dc935/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/2.jpg" /></p>

<p><strong>You&rsquo;ll love working with us if you are:</strong></p>

<ul>
	<li>Passionate about technology.</li>
	<li>Independent but also a good team player.</li>
	<li>Comfortable with a high degree of ambiguity.</li>
	<li>Focused on usability and speed.</li>
	<li>Keen on presenting your ideas to your peers and management.</li>
</ul>

<p>At&nbsp;<strong>TYME,</strong>&nbsp;opportunities are here for the taking. If you want to be part of our purpose and live and lead through our values, we can offer exciting development opportunities through expanded lateral roles, stretch assignments, or people leadership.</p>

<p><strong>Some of our benefits:</strong></p>

<ul>
	<li><strong>Meal and parking allowances</strong>&nbsp;are covered by the company.</li>
	<li><strong>Full benefits and salary rank during probation</strong>.</li>
	<li><strong>Insurances</strong>&nbsp;such as Vietnamese labor law and&nbsp;<strong>premium health care</strong>&nbsp;for you and your family.</li>
	<li><strong>SMART goals and clear career opportunities</strong>&nbsp;(technical seminar, conference, and career talk) - we focus on your development.</li>
	<li><strong>Values-driven, international working environment, and agile culture.</strong></li>
	<li><strong>Overseas travel opportunities</strong>&nbsp;for training and work-related.</li>
	<li><strong>Internal Hackathons and company events</strong>&nbsp;(team building, coffee run, etc.).</li>
	<li><strong>Pro-Rate&nbsp;</strong>and&nbsp;<strong>performance bonus</strong>.</li>
	<li><strong>15-day annual + 3-day sick leave</strong>&nbsp;per year from the company.</li>
	<li>Work-life balance&nbsp;<strong>40-hr per week</strong>&nbsp;from&nbsp;<strong>Mon to Fri</strong>.</li>
</ul>
', 23)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'88ddb9d4-48b1-488d-924d-08db79360ded', N'BAEMIN Vietnam (Woowa Bros.)', N'1900 3458', N'Ha Noi', 0, CAST(N'2023-06-30T14:17:38.1016860' AS DateTime2), N'2ec7170f-91cd-4f30-bf91-ed084263eccf.jpg', N'<h4 style="text-align:center"><strong>Woowa Brothers Vietnam Company Ltd.</strong></h4>

<p style="text-align:right">Business License Number:&nbsp;0310449476</p>

<p style="text-align:right">Main Office:&nbsp;4th Floor, 31 Le Duan, Ben Nghe, District 1, Ho Chi Minh City, Vietnam</p>

<p style="text-align:right">Operation Center:&nbsp;142 Nguyen Dinh Chieu Street, Ward 6, District 3, Ho Chi Minh City, Vietnam</p>

<p style="text-align:right">Phone:&nbsp;1900 3458</p>
', N'<p><strong>Everyone enjoy the great food at the location of their choice.</strong></p>

<p><strong>BAEMIN</strong>&nbsp;is an online application operated by&nbsp;<strong>Woowa Brothers Vietnam</strong>, a member of a joint venture between Woowa Brothers &ndash; the number 1 food delivery company in Korea and Delivery Hero &ndash; the world&#39;s leading local delivery platform, providing services in more than 50 different countries. Woowa Brothers Vietnam introduced the BAEMIN application to local users in May 2019 with the ambition to become the leading food technology company, creating and nurturing the food ecosystem in Vietnam.&nbsp;</p>

<p>With current services available in 21 cities, BAEMIN has delivered multiple orders per second to satisfy the customers across Vietnam and become the number 1 food application in terms of geographical coverage and customer satisfaction.</p>
', N'jobs.baemin.vn', N'Capital Building - No 36 Giang Van Minh, Kim Ma, Ba Dinh, Hanoi', 2, N'baemin-vietnam-woowa-brosdot-', 2, 0, NULL, N'baemin@gmail.com', N'BAEMIN@GMAIL.COM', N'baemin@gmail.com', N'BAEMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENJGN+tJZAMCdNOGHlq9o0B78Ej7rX1M+IETgnE0JLYeKXoRfsu5SrGkU0IJtHZ8eg==', N'PEBRWO2P5RYOLLXUBHDPMB3I6TRJ2YZB', N'f37d3181-6d1b-49ec-bdad-9453406b27ad', NULL, 0, 0, NULL, 1, 0, N' 301-500 employees', N'Monday - Friday', 14, N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; Experience Self-Leading Growth</p>

<p>&bull; Working With World-Class &amp; Modern System</p>

<p>&bull; Enjoy Everyday Happiness At Work</p>

<p>&nbsp;<img src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBeWVQSGc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--95035ba99b0b8306a3ccdc6b6a8416da2fa521ce/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--cd9af155449c537e603fb57395376e0326635178/BAEMIN%20Career%20Page.png" />&nbsp;<img src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBekNNSEE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--1a30a4ee98e3ec963ee6a8829ebab644dc2aba05/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/153188438_456429388888200_8678376068974088494_n.jpg" /></p>

<ol>
	<li>Experience self-leading growth in an environment that emphasizes autonomy and respects individual initiatives;</li>
	<li>Acquire world-class knowledge accumulated from Woowa Brothers corporation with Korea&#39;s #1 food delivery app;</li>
	<li>Enjoy everyday happiness at work with our witty culture, high flexibility with hybrid working model, open, young and dynamic environment,...</li>
</ol>
', 21)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'098dc935-43d3-4401-924e-08db79360ded', N'Samsung Electronics', N'02862855599', N'TP HCM', 0, CAST(N'2023-06-30T14:35:57.1165071' AS DateTime2), N'cbe116cc-185f-49db-a637-bc52b0bbc3d8.png', N'<h4><strong>Main hotline</strong></h4>

<ul>
	<li>
	<p>0208.357.6666</p>
	</li>
	<li>tuyendung@samsung.com</li>
</ul>
', N'<h4><strong>Samsung Electronics HCMC CE Complex</strong></h4>

<p><em>Samsung Electronics HCMC CE Complex</em>&nbsp;(<strong>SEHC</strong>) project with a total investment of US $ 2 billion is located in Saigon high-tech park with a total area of up to 122ha, which began operation in early 2016. This is one of the key factories of Samsung Group&#39;s high-end&nbsp;consumer electronics manufacturing. Beside that, in early 2017 the largest Executive Briefing Center (EBC) in Southeast Asia and R&amp;D Center (SHRC) established at the SEHC complex.&nbsp;</p>

<p>With a scale of up to 6500 - 7000 people, this is one of the dynamic and attractive working environments for young people. In addition to attractive benefits, the spiritual life of employees is always concerned by the company. Recreational activities are always organized throughout the year such as: SEHC Olympics, SEHC Festival, GWP party each quarter&hellip;.</p>

<p>To learn more about our activities, please visit our Facebook:&nbsp;<strong>SEHC Tuyen Dung</strong>&nbsp;or&nbsp;<strong>SEHC Events.</strong></p>
', N' samsungcareers.com.vn', N'Lot I-11 , D2 street, Hi-tech Park, Tang Nhon Phu B Ward, Thu Duc, Ho Chi Minh', 2, N'samsung-electronics', 1, 0, NULL, N'samsung@gmail.com', N'SAMSUNG@GMAIL.COM', N'samsung@gmail.com', N'SAMSUNG@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKMLH0RAPvq3Fj9uhbzgqW+tX8DU2PJXNsrBikC8ybDN1WwKEXEeS4tdWviQWLf1Ng==', N'7SCYVG3ZK2TU6RXNAPVHGQOGOYPUAQNV', N'104195aa-8490-45e2-8f3e-1db436e14acd', NULL, 0, 0, NULL, 1, 0, N'1000+ nhân viên', N'Thứ 2 - Thứ 6', 14, N'<h4><strong>Tại sao bạn sẽ y&ecirc;u th&iacute;ch l&agrave;m việc tại đ&acirc;y?</strong></h4>

<ul>
	<li>Attractive Salary &amp; Benefit</li>
	<li>Yearly Performance Bonus</li>
	<li>Premium Health Insurance</li>
</ul>

<p><img src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBMHFCSEE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--5971de9e3d588417717265ab1895539e318490b4/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/new%203.jpg" />&nbsp;<img alt="SEHC Olympic" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBeC9JRWc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--9d172ebc87b17cd24b738f141ea312888fc26132/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/olympic%201.jpg" /></p>
', 35)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'819a4259-5ac2-4c8c-7213-08db79423d40', N'DEK Technologies', N'02839152424', N'TP HCM', 0, CAST(N'2023-06-30T15:20:37.6764102' AS DateTime2), N'b7101a7d-36fd-4fd5-85e6-07797aaab2d5.jpg', N'<p><strong>DEK TECHNOLOGIES VIETNAM&nbsp;</strong>| HANOI</p>

<p>UDIC Complex N04 Hoang Dao Thuy Street, Trung Hoa Ward, Cau Giay District, Hanoi, Vietnam</p>

<p><strong>+84 28 39152424</strong></p>
', N'<p>An Australian outsourcing design company with experience in all aspects of project life cycle</p>

<p>DEK Technologies is a professional organization that places high value on people and the individual competence that they contribute. People enjoy working at DEK. They enjoy the team camaraderie, flexibility, opportunities for travel, and feeling part of the company&#39;s success.<br />
Come and be proud to be an integral part of helping our international customers develop the latest products that are sold globally and used by millions of people around the world.<br />
With offices situated in Melbourne Australia, Stockholm Sweden, Rome Italy, and Ho Chi Minh City Vietnam, you too can be a key part of our success.</p>
', N'dektech.com.au', N'9-11 Dong Da, Tan Binh, Ho Chi Minh', 2, N'dek-technologies', 2, 0, NULL, N'dektechnologies@gmail.com', N'DEKTECHNOLOGIES@GMAIL.COM', N'dektechnologies@gmail.com', N'DEKTECHNOLOGIES@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEChAsBwzmGWNsK7a/4rGUVAelGZfrfoHIylxW//Kkssq6PqL5nZMjNLcQ5KpZo7tMA==', N'TGPUPOLHX5OBRW4J4JK7VLY6FCRDSNYS', N'ce4bc39a-17dc-44ce-84de-5ce3668c126a', NULL, 0, 0, NULL, 1, 0, N'501-1000 employees', N'Monday - Friday', 15, N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<ul>
	<li>
	<p>100% salary during probation, 13th salary</p>
	</li>
	<li>
	<p>Premium insurance (includes probation time)</p>
	</li>
	<li>Technical, Soft skill, English Training courses</li>
</ul>

<p><img src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBeHdRTFE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--2aa183f55a1154af270d543a92b751368fa4d347/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/Cover.jpg" />&nbsp;<img alt="" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBeE1RTFE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--a8908d6dd4d22714fdeb2b24f02f2b7e20779a49/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/1.jpg" /></p>

<p><strong>At DEK Technologies you will find yourself in an exciting career with:</strong></p>

<ul>
	<li>Attractive, competitive salary and incentives</li>
	<li>Opportunities for short and long-term training/work overseas</li>
	<li>An excellent working environment in developing tomorrow&rsquo;s features</li>
	<li>Open and honest culture where people are valued, treated fairly, trusted and empowered</li>
	<li>Training and career development opportunities</li>
	<li>40 flexible working hours per week from Monday to Friday</li>
	<li>English classes 3 hours a week with qualified foreign teachers</li>
	<li>Extra 24/7 Health and Accident Insurance</li>
	<li>Annual health check-up</li>
	<li>Annual company trip &amp; annual family day</li>
	<li>Activities such as; sport &amp; music clubs, yoga &amp; piano classes</li>
</ul>
', 31)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'17d8098e-c16c-448f-5850-08db794d4e58', N'Employment Hero', N'1300084847', N'TP HCM', 0, CAST(N'2023-06-30T16:42:52.0225253' AS DateTime2), N'2c92ad8a-eec9-46ad-9261-f2994a063a57.png', N'<h4>Contact us.</h4>

<ul>
	<li>Level 2, 441 Kent Street</li>
	<li>Sydney NSW 2000</li>
	<li><a href="https://g.page/EmploymentHero?share" target="_self">Get directions</a></li>
	<li><a href="tel:1300084847" target="_self">1300 084 847</a></li>
</ul>
', N'<p>Product Company: Cloud HR Platform, Payroll, Payments &amp; Benefits, Global Teams.</p>

<p>Employment Hero is an Australian tech unicorn - valued at over $1 billion. Our world-class software is the easiest way for small to medium-sized businesses to manage HR, payroll, employee engagement, and benefits. We&rsquo;ve grown 100% year on year since inception, and expanded globally in late 2020. We now service over 80,000 businesses and we will continue to grow rapidly in 2022 and beyond.</p>

<p>We believe in distributed employment and take a &lsquo;Remote First&#39; approach with our team. Employment Hero can hire across the globe, assuming that candidates have eligible working rights and are in a suitable timezone. If you&#39;ve got the skills for the role and the passion for our mission then we want to hear from you!</p>

<p>At Employment Hero, we&rsquo;re an ambitious group of people on a mission to make employment easier and more rewarding for everyone. We like to stay ahead of the curve and provide our team with tools to innovate. We pride ourselves on our inclusive, innovative culture that rewards and recognises our team for great work.</p>

<p>If you&rsquo;re looking for a meaningful career where you&#39;ll be challenged every day and supported on your journey, we could be just the place you&rsquo;ve been looking for! We&rsquo;re a passionate bunch who are tirelessly working to help SMEs. We&rsquo;re mission-driven and never lose sight of our goal.</p>
', N'employmenthero.com', N'285 Cach Mang Thang 8, Viettel Complex Building, District 10, Ho Chi Minh', 2, N'employment-hero', 1, 0, NULL, N'employmenthero@gmail.com', N'EMPLOYMENTHERO@GMAIL.COM', N'employmenthero@gmail.com', N'EMPLOYMENTHERO@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFxcwGCtRe127fAKaOr6kIAg/fzvqmAdMbUbuxJKaBGpN0msmnIshEXP+0B3h+zpqg==', N'GCGCMQ2PVZZ47LBZF6I2UIWFKB3ZC5WI', N'588ef2c7-7d49-4ab5-b7e4-e979ccd7fec3', NULL, 0, 0, NULL, 1, 0, N'501-1000 employees', N'Monday - Friday', 15, N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<ul>
	<li>
	<p>Remote First &amp; WFH Allowances</p>
	</li>
	<li>20 Annual leave Days &amp; 1 Leisure Rules Day</li>
	<li>Top Compensation &amp; Healthcare Package</li>
</ul>

<p>&nbsp;<img src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBM2NjSnc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--18822a08142ba1fb9f914c46374742f712e0cfc7/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--cd9af155449c537e603fb57395376e0326635178/EH0031_Desktop-Backgrounds_01.png" />&nbsp;<img src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBOWg2SGc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--9308243168131a5d02a454e766ee83e7fbdbd91d/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/Employment_Hero_Leadership.jpg" /></p>

<h4><strong>Why you love working here?</strong></h4>

<ul>
	<li>
	<p>Remotely working and flexible working time</p>
	</li>
	<li>20 annual leave days</li>
	<li>1 Leisure Rules day</li>
	<li>Top private healthcare package (Included your spouses and children)</li>
	<li>USD 500/ annual/ person for books/ tech conferences/courses</li>
	<li>USD 500/ annual/ person for English learning</li>
	<li>A generous budget to spend on setting up your home office (if you need a desk, chair, screen? You name it!)</li>
	<li>We set you up for success with the latest and greatest hardware, tools and tech</li>
	<li>Parking fee funded by company</li>
	<li>Lunch allowance for every working day</li>
	<li>Australian Trip for who are eligible</li>
	<li>Very attractive Referral Bonus</li>
	<li>Fully compliance with Vietnam Labor Code</li>
	<li>Social Security is based on full salary</li>
	<li>Employee Share Option Program: be an owner of Employment Hero!</li>
</ul>

<h4><strong>Why join Employment Hero?</strong></h4>

<p>Oh, and we don&rsquo;t want to toot our own horn (actually yes, we do), but others think we&rsquo;re pretty cool too &ndash; we&rsquo;ve received many awards for smashing some seriously ambitious goals including:</p>

<ul>
	<li>The Australian&#39;s Top 100 Innovators List 2021</li>
	<li>LinkedIn Top 10 Startups 2020</li>
	<li>Deloitte Technology Fast 50 2019, ranked #20 in Australia</li>
	<li>GetApp Category Leader Q1 2019</li>
	<li>Deloitte Technology Fast 50 2018, ranked #12 in Australia</li>
	<li>HRD Gold Medalist - Human Capital Management Systems 2018</li>
	<li>HRD Gold Medalist - Rewards and Recognition Service Provider 2018</li>
	<li>HRD Rewards and Recognition Employer of Choice 2018</li>
	<li>LinkedIn Top 25 Startups 2018</li>
	<li>EY Entrepreneur of the Year National Finalist 2018</li>
	<li>Dynamic Business Top 10 Entrepreneurs, our CEO Ben Thompson ranked #2</li>
	<li>BRW Most Innovative Companies 2015</li>
	<li>Anthill Smart 100 List 2015</li>
	<li>Startup Daily Top 50 Emerging Leaders 2015</li>
	<li>HRD Employer of Choice Award 2015</li>
	<li>Aon Hewitt Best Employers 2013</li>
</ul>
', 10)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'f463e352-9ce4-489c-5851-08db794d4e58', N'MB Bank', N'1900 545426', N'Ha Noi', 0, CAST(N'2023-06-30T16:56:42.8594901' AS DateTime2), N'b01f5ee5-e718-4450-9ee0-4fffda61919d.jpg', N'<h4><strong>Hotline</strong></h4>

<ul>
	<li>1900 545426 - (84-24) 3767 4050 (quốc tế gọi về)</li>
	<li><a href="https://mbbank.com.vn/resources/files/TT-247/smart-ivr/hdsd-a4.pdf" target="_blank">Hướng dẫn sử dụng Tổng đ&agrave;i (Tại đ&acirc;y)</a></li>
</ul>

<h4><strong>Email</strong></h4>

<ul>
	<li>Email cho ch&uacute;ng t&ocirc;i&nbsp;<a href="https://www.mbbank.com.vn/Contact">mb247@mbbank.com.vn</a></li>
</ul>
', N'<h4><strong>Ng&acirc;n H&agrave;ng TMCP Qu&acirc;n Đội</strong></h4>

<p>1. Tầm nh&igrave;n<br />
Trở th&agrave;nh một trong những ng&acirc;n h&agrave;ng tốt nhất Việt Nam, hướng tới vị tr&iacute; trong top 3, với định vị l&agrave; một ng&acirc;n h&agrave;ng cộng đồng, c&oacute; đội ngũ nh&acirc;n vi&ecirc;n th&acirc;n thiện v&agrave; điểm giao dịch thuận lợi.<br />
<br />
2. Phương ch&acirc;m chiến lược<br />
Tăng trưởng mạnh, tạo sự kh&aacute;c biệt v&agrave; bền vững bằng văn h&oacute;a kỷ luật, đội ngũ nh&acirc;n sự tinh th&ocirc;ng về nghiệp vụ, cam kết cao v&agrave; được tổ chức khoa học.</p>
', N'mbbank.com.vn', N'Tòa nhà MB, số 18 Lê Văn Lương, Cau Giay, Ha Noi', 2, N'mb-bank', 2, 0, NULL, N'mbbank@gmail.com', N'MBBANK@GMAIL.COM', N'mbbank@gmail.com', N'MBBANK@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAWPRq1OH/3YvKIiQ+ku767ZpXpuUIZFPwNrvdZtcVHIVKUWJDixVyh+K0kHf9th8g==', N'FERQQVB3V7SAFA27MNRSEJIDNMSHINMY', N'1191a3bb-9dfa-4593-b125-46a93289cd71', NULL, 0, 0, NULL, 1, 0, N'151-300 employees', N'Monday - Friday', 1, N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<ul>
	<li>
	<p>Mức lương cạnh tranh, hấp dẫn</p>
	</li>
	<li>M&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, th&acirc;n thiện</li>
	<li>Được l&agrave;m việc với c&aacute;c hệ thống hiện đại, ti&ecirc;n tiến</li>
</ul>

<p style="text-align:center"><img alt="" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBNXZvSXc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--3e5c74bbc5498e7e548b3f7ab77b6291da862a17/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/DO__8356.jpg" /></p>

<ul>
	<li>Mức lương cạnh tranh, hấp dẫn (Thưởng xếp loại thực hiện c&ocirc;ng việc 6 th&aacute;ng/lần, thưởng sinh nhật ng&acirc;n h&agrave;ng, thưởng c&aacute;c ng&agrave;y lễ tết trong năm&hellip;).</li>
	<li>Chế độ ph&uacute;c lợi cạnh tranh: Du lịch h&agrave;ng năm, Kh&aacute;m sức khỏe định k&igrave; h&agrave;ng năm; G&oacute;i bảo hiểm sức khỏe; C&aacute;c hoạt động tri &acirc;n, chăm lo đời sống tinh thần CBNV v&agrave; Th&acirc;n nh&acirc;n...</li>
	<li>M&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, th&acirc;n thiện, cởi mở.</li>
	<li>Được l&agrave;m việc với c&aacute;c hệ thống hiện đại, ti&ecirc;n tiến nhất thị trường, &aacute;p dụng c&aacute;c c&ocirc;ng nghệ h&agrave;ng đầu về an ninh bảo mật để đảm bảo an to&agrave;n cho người sử dụng.</li>
	<li>Cơ hội học hỏi nghiệp vụ ng&acirc;n h&agrave;ng.</li>
</ul>
', 49)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'944212e8-4830-4a30-4578-08db7969c64d', N'HRS Group', N'092212077600', N'TP HCM', 0, CAST(N'2023-06-30T20:14:07.0291202' AS DateTime2), N'e2e629b9-5c47-4e8e-8fd8-94de5af95765.jpg', N'<p>HRS GmbH<br />
Breslauer Platz 4<br />
50668 Cologne<br />
Germany<br />
<br />
<strong>Phone:</strong><br />
+49 221 2077 600<br />
<br />
<strong>Fax:</strong><br />
+49 221 2077 666<br />
<br />
<strong>E-Mail:</strong><br />
office@hrs.de<br />
<br />
<strong>Internet:</strong><br />
<a href="http://www.hrs.de/" rel="noreferrer noopener" target="_blank">www.hrs.de</a>&nbsp;/&nbsp;<a href="http://www.hrs.com/" rel="noreferrer noopener" target="_blank">www.hrs.com</a><br />
<br />
<strong>Administrative court:</strong><br />
Cologne, HRB 90154<br />
CEO:<br />
Tobias Ragge<br />
VAT ID no.:<br />
DE 252323088<br />
<br />
<strong>Content-support:</strong><br />
Sticky Content Ltd, London/East Yorkshire.<br />
<br />
&copy; HRS GmbH Alle Rechte vorbehalten</p>

<p>&nbsp;</p>
', N'<p>We love to make it happen with you!</p>

<p>HRS is reinventing the way businesses and governments work, stay and pay in today&rsquo;s dynamic global marketplace. HRS&rsquo; advanced platform technology is extending its reach beyond hospitality to meetings, office space management, payment efficiency and crisis recovery. Beyond cost savings in the global post-pandemic economy, HRS clients gain from an unrivaled focus on essential aspects including safety, security and satisfaction. HRS is also recognized for its&nbsp;<strong>award-winning Green Stay Initiative</strong>, technology that helps corporate hotel programs achieve their NetZero targets, and its groundbreaking<strong>&nbsp;Crew &amp; Passengers Solution</strong>, which leverages automation to elevate experiences for air and rail operations.&nbsp;</p>

<p>Founded in 1972, HRS works with 35 percent of the global Fortune 500, as well as the world&rsquo;s leading hotel chains, regional hospitality groups and payment providers. More information at&nbsp;<a href="https://www.hrs.com/enterprise/">https://www.hrs.com/enterprise/</a></p>
', N'hrs.com/enterprise', N'Anna building, Quang Trung sofware city, District 12, Ho Chi Minh', 2, N'hrs-group', 1, 0, NULL, N'hrsgroup@gmail.com', N'HRSGROUP@GMAIL.COM', N'hrsgroup@gmail.com', N'HRSGROUP@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKEPHzWlTQHFBQtk7TgyGZqLdesi++W3VsoV7SKPriqdVfdkGTukJJD0YPTNG+5rvQ==', N'FX5MSRPSCMTPR6SDANZPM3HD5L46EAAF', N'363b1b34-65dc-4e71-ba05-9fd9cf766a26', NULL, 0, 0, NULL, 1, 0, N'51-150 employees', N'Monday - Friday', 16, N'<h3><strong>Tại sao bạn sẽ y&ecirc;u th&iacute;ch l&agrave;m việc tại đ&acirc;y?</strong></h3>

<p>&bull; Attractive salary package and valuable benefits</p>

<p>&bull; Get the opportunity to access global L&amp;D programs</p>

<p>&bull; International and innovative working environment</p>

<p>&nbsp;&nbsp;<img alt="Company Trip 2022" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBOTluS2c9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--ccc965b8f6cd498ca19db0bc7f05e54a24a3db20/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/ART02786.jpg" />&nbsp;<img alt="Business Trip at Germany 2019" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBK0JuS2c9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--07588b9f294c5c70b29642fa7766070bf9941e29/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/ITELYA.jpg" /></p>

<p>&bull; Your voice is listened and your skill development is supported constantly.</p>

<p>&bull; Working with colleagues and experts at other offices such as Germany, Australia, Poland, Ukraine....</p>

<p>&bull; Salary is very attractive and competitive.</p>

<p>&bull; Rewarding outstanding contribution by the project bonus, quarterly bonus and yearly bonus.</p>

<p>&bull; Supportive working conditions: laptop, MS Surface Hub, nice office, pure pantry with coffee, soft drink, snacks.....</p>

<p>&bull; Fully compliance with Vietnam Labor Code, especially the insurance is based on full salary.</p>

<p>&bull; Additional standard benefits: additional health insurance, company trip and business travel, training, year-end party, team outing activities..</p>
', 90)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'2c15a2e0-73db-435f-f4ca-08db796dfada', N'Ngân Hàng Á Châu | ACB', N'08-839290999', N'TP HCM', 0, CAST(N'2023-06-30T20:34:01.8544663' AS DateTime2), N'e46dbb18-fbaa-415c-8e16-c86f7ef360c2.jpg', N'<h4 style="text-align:right">ACB Talent Ecosystem</h4>

<p style="text-align:right"><a href="tel:(08)839290999">(08)839290999</a></p>

<p style="text-align:right"><a href="mailto:acbhr@acb.com">acbhr@acb.com.vn</a></p>

<p style="text-align:right">442 Nguyễn Thị Minh Khai, P.5, Q.3</p>
', N'<p>Asia Commercial Bank (ACB)</p>

<p>We&rsquo;re building a startupat ACB to serve our millions of customers. We&rsquo;re looking for exceptional talent to drive growth. Shape the management team that will deliver world-class technology to acquire the next million customers.&nbsp;</p>

<p>We&rsquo;re thinkers and doers, and like people who can be both player and coach.&nbsp;</p>

<p>As one of the largest consumer banks in Asia, we&rsquo;re investing in the leading people, technologies and practices to improve each customer&rsquo;s financial lives. Join the 11,000 team members at ACB and build the fintech company of the future.</p>
', N'acbjobs.com.vn', N'442 Nguyễn Thị Minh Khai, District 3, Ho Chi Minh', 2, N'ngan-hang-a-chau-|-acb', 1, 0, NULL, N'acb@gmail.com', N'ACB@GMAIL.COM', N'acb@gmail.com', N'ACB@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEP+cN+gIrJ7ruP02pP6nMhVqWgjVXXnZDWuUaOuILqnLoViZQ/pKT1c+Cvu00y4W3w==', N'TQWY6WA74XGFJCD65QSUY223BXT6BPVC', N'f6e37a5d-5a3d-458a-854b-a6201885ced4', NULL, 0, 0, NULL, 1, 0, N'1000+ employees', N'Monday - Friday', 1, N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; 13 Monthly Base Salary</p>

<p>&bull; Training</p>

<p>&bull; Recorgnition</p>

<p>&nbsp;<img alt="CyberSecurity &amp; Agile team in ACB" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBNC95RWc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--361338b231c0481953fe756a9c866e9fbfec104d/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/20190928_094723(0).jpg" />&nbsp;<img alt="Hackathon | Win 2019" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBNUR5RWc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--aae7f7c5ab0266e596c5645e35aa6eb5133f6542/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJU2xCSEJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--e0d3d82e95120d6bdaa5c8a75f86a82cad37ffbf/IMG_3687.JPG" /></p>

<p>&bull; Average 15 Monthly Base salary per year</p>

<p>&bull; ACB Health Care.</p>

<p>&bull; Meal Allowance.</p>

<p>&bull; Preferential loan as regulated by ACB</p>

<p>&bull; Yearly Medical Checkup &amp; Team building activities.</p>

<p>&bull; Professional and Transparent Working Environment</p>
', 40)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'0163aa78-b118-49a5-6b9e-08db796fb4d9', N'Niteco Vietnam Co., Ltd', N'02435739623', N'Ho Chi Minh', 0, CAST(N'2023-06-30T20:51:05.6108952' AS DateTime2), N'9aaca63c-3c48-4041-845b-aa49a8e9dfa8.png', N'<p><img alt="Niteco" src="https://niteco.com/static/img/logo.footer.svg" title="Niteco" /></p>

<ul>
	<li>
	<p>Address: C&#39;Land Tower, 14th Floor, 156 Xa Dan II Street, Dong Da District, Hanoi, Vietnam</p>
	</li>
</ul>

<ul>
	<li>
	<p>Phone:&nbsp;<a href="tel:+84 24 3573 9623" rel="nofollow noreferrer" title="+84 24 3573 9623">+84 24 3573 9623</a></p>
	</li>
	<li>
	<p>Email:&nbsp;<a href="mailto:%69%6E%66%6F%40%6E%69%74%65%63%6F%2E%63%6F%6D" rel="nofollow noreferrer">moc.ocetin@ofni</a></p>
	</li>
</ul>
', N'<p><strong>Powering Your Ambition</strong><br />
Niteco is a rapidly growing end to end digital agency of over 300 staff with offices in Sydney, UK, Sweden, US, Hong Kong and Vietnam.</p>

<p>Our services range from strategy, Solution Architecture, UX / Design, Software Development expertise, analytics and continuous optimisation. We have expertise in CMS and e-Commerce and verticals covering retail, B2B, Health Care, Government, FMCH, Media, Finance, Insurance and Technology to name a few.</p>

<p>We support and build global leading technical solutions for over 70 global brands including Electrolux Group, Heineken, Wilson Parking, Meat and Livestock Australia, Adairs, Grant Thornton, Hort Innovation and Panasonic.</p>
', N'niteco.com', N'14th Floor, CLand Tower, 156 Xa Dan II, Dong Da, Ha Noi', 2, N'niteco-vietnam-codot-ltd', 1, 0, NULL, N'nitecovietnam@gmail.com', N'NITECOVIETNAM@GMAIL.COM', N'nitecovietnam@gmail.com', N'NITECOVIETNAM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGEUmXw/R6gvpSR/NqhRR+DZYdVYRVCGPgrxSnFchPxwuVs4JHzrh5AYaLOmeCOR2g==', N'B4VTUQ5XFWD35ZL43QFEAL7AVWHTXNN5', N'5a8fbb7e-bce6-4bd3-bd5b-e0bc59b105b9', NULL, 0, 0, NULL, 1, 0, N'301-500 nhân viên', N'Thứ 2 - Thứ 6', 17, N'<h3><strong>Tại sao bạn sẽ y&ecirc;u th&iacute;ch l&agrave;m việc tại đ&acirc;y?</strong></h3>

<ul>
	<li>
	<p>Attractive salary package</p>
	</li>
	<li>
	<p>Hybrid working mode</p>
	</li>
	<li>Signing bonus for IT related posts</li>
</ul>

<p>&nbsp;<img alt="" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBeHg3S1E9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--e753031bcc08591d9873a4d371818dbd608bbf07/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/8''.jpg" />&nbsp;<img alt="" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBeDE3S1E9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--6eac42c703ccf3f95e7b5bb3c08b0459a3fa808e/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/18''.jpg" /></p>

<ul>
	<li>Hybrid working mode.&nbsp;</li>
	<li>Highly competitive remuneration package: attractive monthly salary and allowances, 13th month salary, additional performance bonus, high public holiday bonuses, and birthday gift, employee service award up to $1,000 for employees with 3+ years.</li>
	<li>Attractive AON healthcare coverage including health and accident insurance in addition to the standard insurances regulated by the Labor Code. Luxury company summer vacation and team-building budget.</li>
	<li>Opportunities to work onsite for international projects in Sweden, Australia, UK, USA, etc.</li>
	<li>Organized training and full support in building your career.</li>
	<li>English-speaking, international and professional work environment: working with expatriates from a number of countries, state of the art working space with a wonderful view over the city skyline, modern facilities include computer dual 24&rdquo; screens running latest versions of Windows 11 Enterprise, MS Office 365, Team, latest version of Visual Studio, and SQL Server, Dell OptiPlex Workstation with 32 GB Ram, 512GB NVMe SSD.</li>
	<li>Western management style that is professional, dynamic, open minded, creative, supportive, friendly and encouraging feedback.</li>
	<li>Company Management that regularly communicates Company&rsquo;s strategy, development plan and new opportunities to employees.</li>
	<li>Employee and family are engaged and taken care by the Company via Trade Union activities.</li>
	<li>Diversified social and charity activities often organized by NICEF - Niteco Charity Engagement Foundation to create opportunities for our young employees to raise funds and help people with difficulties in Vietnam.</li>
	<li>Physical care environment where you are taken care, feeling relaxed and enjoying lots of leisure activities such as badminton, ping pong, football, table football, dancing, running, cycling, cinema, etc.</li>
</ul>
', 44)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'0276ee84-282a-4d63-56cb-08db7971d697', N'LG Electronics', N'02439345151', N'Hai Phong', 0, CAST(N'2023-06-30T20:58:26.5611740' AS DateTime2), N'6564d77b-cb5b-4581-9a1f-d4705ee9524d.png', N'<p>C&ocirc;ng ty TNHH LG Electronics Việt Nam Hải Ph&ograve;ng Địa chỉ trụ sở ch&iacute;nh: L&ocirc; CN2, KCN Tr&agrave;ng Duệ, x&atilde; L&ecirc; Lợi, huyện An Dương, th&agrave;nh phố Hải Ph&ograve;ng, Việt Nam.<br />
ĐT: 024 3934 5151<br />
Email:&nbsp;<a href="mailto:lgcarecenter@lge.com">lgcarecenter@lge.com</a><br />
Số giấy ĐKKD: 0201311397 được cấp bởi Sở Kế hoạch v&agrave; Đầu tư th&agrave;nh phố Hải Ph&ograve;ng.</p>
', N'<p>LG Electronics Development Vietnam (LGEDV)</p>

<p><strong>LGEDV</strong>&nbsp;was started in May 2016 as LG Vehicle Component Solutions Development Center Vietnam.&nbsp;<br />
From 1st Jan 2023, the company embarked on a new journey to be an independent entity under the name LGEDV&nbsp;<strong>(LG Electronics Development Vietnam Company Limited)</strong>&nbsp;- new R&amp;D Subsidiary.<br />
LGEDV conduct core R&amp;D activities, and various product reliability tests in support of our vehicle component business.</p>

<p>We offer an environment that enables colleagues to demonstrate their capabilities, focus on their work and create value.</p>

<p>At LG, you&#39;re encouraged to take a creative and individual approach to challenges with strong emphasis placed on performance and skill&mdash;and equal, merit-based opportunities across the board.</p>

<p>Follow us to stay up to date with the latest job vacancies!</p>
', N'lg.com', N'KCN Tràng Duệ, huyện An Dương, thuộc Khu kinh tế Đình Vũ – Cát Hải, TP. Hải Phòng', 2, N'lg-electronics', 4, 0, NULL, N'lgelectronics@gmail.com', N'LGELECTRONICS@GMAIL.COM', N'lgelectronics@gmail.com', N'LGELECTRONICS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGuAtJFDZ84Gd98L6063DcTBAW+EzkMg+PsIHyQIOf3zm33O2q7s/F4XMsAne50EfA==', N'2U5G6OVP3U436AJYSPNGZWEV7A57CTET', N'e248c102-8014-4428-a567-f619e5c689a6', NULL, 0, 0, NULL, 1, 0, N'501-1000 nhân viên', N'Thứ 2 - Thứ 6', 1, N'<h3><strong>Tại sao bạn sẽ y&ecirc;u th&iacute;ch l&agrave;m việc tại đ&acirc;y?</strong></h3>

<ul>
	<li>Competitive salary &amp; up-to 16-month income / year</li>
	<li>Attractive allowances &amp; benefits</li>
	<li>Flexible working time with many company holidays</li>
</ul>

<p>&nbsp;<img src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBOUQrSEE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--16c392940805fd7b0c2b1fc03b6190e031f565ea/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/LG%20VS%20DCV%20-%20Banner%20Stand-alone.jpg" />&nbsp;<img src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBOFNvSFE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--2efe4b5b1b45b69fc5b46d0e03de758cf9c81616/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/Pic%201.jpg" /></p>

<ul>
	<li>13th month salary + Incentive bonus (Total remuneration package / year:&nbsp;<strong>up to 16-month salary</strong>) + Annual salary review;</li>
	<li><strong>HYBRID WORKING</strong>, flexible working time (Mon - Fri)</li>
	<li>Support for&nbsp;<strong>lunch, transportation and other allowances&nbsp;</strong>(Coding Expert, Technical leader, phone...);</li>
	<li><strong>PVI Premium&nbsp;</strong>health care &amp; accident insurance;</li>
	<li><strong>Total 19 days off</strong>&nbsp;(12 days of annual leave &amp; additional 7 days of company holidays: Summer holiday, Mid-Autumn, Christmas, LG and VS DCV Foundation Days);</li>
	<li>Support fee to get TOEIC &amp; technical certifications (ISTQB, Agile Scrum...);</li>
	<li>On-site &amp; training opportunities abroad;</li>
	<li>Company trip, sport clubs (zumba, football, pingpong, badminton,...);</li>
	<li>Monthly budget for team activities, etc.</li>
</ul>
', 50)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'cd6a3852-872c-42e6-56cc-08db7971d697', N'KMS Technology', N'090 992 66 67', N'Da Nang', 0, CAST(N'2023-06-30T21:14:59.9589472' AS DateTime2), N'a20c7402-75a6-4d24-9b57-b982c8c1eec0.png', N'<p><strong>Da Nang</strong></p>

<ul>
	<li>
	<p>346, 2/9 Street</p>
	</li>
	<li>
	<p>Hai Chau District</p>
	</li>
	<li>Da Nang City, Vietnam</li>
</ul>
', N'<p>Agile, Innovative &amp; Excellent Global Technology Company with deep roots in Vietnam</p>

<p>Established in 2009, KMS Technology is a U.S.-based engineering and services company with development centers in Vietnam. KMS Technology is trusted by international clients for the superior quality of products and expertise of Vietnamese engineers.</p>

<p>KMS builds and successfully launches its own software companies through its internal startup incubator,&nbsp;KMS Labs. Most notable companies include&nbsp;QASymphony,&nbsp;Kobiton,&nbsp;Katalon, and&nbsp;Grove. Under the brand,&nbsp;KMS Solutions, the company serves the Asia Pacific region, offering technology solution consulting and bringing the most advanced and latest technologies to the Asian market.&nbsp;</p>

<p>KMS is committed to making a long-lasting social impact by partnering with non-profit organizations that give disadvantaged students fair and better employment opportunities. The company regularly cooperates with universities, participates in IT training activities and specialized events, and sponsors scholarship programs in Vietnam. The company has received many prestigious industry awards, and has been named one of the greatest places to work in Vietnam, Asia, and the U.S. for many years in a row.</p>
', N'kms-technology.com', N'2/9 Street, Hai Chau, Da Nang', 2, N'kms-technology', 3, 0, NULL, N'kmstechnology@gmail.com', N'KMSTECHNOLOGY@GMAIL.COM', N'kmstechnology@gmail.com', N'KMSTECHNOLOGY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENF81dZvXjw6AVagIdiuFG6mEXW7ukohuplc6aVfI9LTmzGqs2n0DM46whGSml1IiA==', N'N2BDN3DDTQEPUBP37FC7YUDUHJAOR4GL', N'2c1a869c-3542-4007-97a8-799f6bf952d2', NULL, 0, 0, NULL, 1, 0, N'1000+ nhân viên', N'Thứ 2 - Thứ 6', 2, N'<h4><strong>Tại sao bạn sẽ y&ecirc;u th&iacute;ch l&agrave;m việc tại đ&acirc;y?</strong></h4>

<ul>
	<li>
	<p>Inspired Leadership Team and Talented Colleagues</p>
	</li>
	<li>
	<p>Attractive Salary and Benefits</p>
	</li>
	<li>Remote work available and flexible working time</li>
</ul>

<p>&nbsp;<img alt="" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBMUZIRWc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--f2085e95c4500c119c6d675271283d0b5baf8fad/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/Techcon.jpg" />&nbsp;<img alt="" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBMVpIRWc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--9404f511e78a4b684c7d6810ea3251e8a0fea668/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/X%20Mas%201.jpg" /></p>

<h3><em><strong>Want to be the Best? Join KMS!</strong></em><br />
It&rsquo;s positive to claim we&rsquo;re one of the top IT companies in Vietnam:</h3>

<ul>
	<li>From Vietnam, we have crafted brilliant products for millions of global users</li>
	<li>We build awesome global products to conquer the world from Vietnam: QASymphony, Kobiton, Katalon, Grove HR, Visily and many more to come</li>
	<li>We&rsquo;re committed to investing in our people and building a workplace you&rsquo;ll love coming to every day.</li>
</ul>

<p><em><strong>Perks You&#39;ll Enjoy&nbsp;</strong></em></p>

<ul>
	<li>Working in one of the Best Places to Work in Vietnam</li>
	<li>Building large-scale &amp; global software products</li>
	<li>Working &amp; growing with Passionate &amp; Talented Team</li>
	<li>Diverse careers opportunities with Software Outsourcing, Software Product Development, IT Solutions &amp; Consulting</li>
	<li>Attractive Salary and Benefits</li>
	<li>Two performance appraisals every year and performance bonus</li>
	<li>Remote work available and flexible working time</li>
	<li>Onsite opportunities: short-term and long-term assignments in North American (U.S, Canada), Europe, Asia.</li>
	<li>Various training on hot-trend technologies, best practices and soft skills</li>
	<li>Premium healthcare insurance for you and your loved ones</li>
	<li>Company trip, big annual year-end party every year, team building, etc.</li>
	<li>Fitness &amp; sport activities: football, tennis, table-tennis, badminton, yoga, swimming&hellip;</li>
	<li>Joining community development activities: 1% Pledge, charity every quarter, blood donation, public seminars, career orientation talks,&hellip;</li>
	<li>Free in-house entertainment facilities (foosball, ping pong, gym&hellip;), coffee, and snack (instant noodles, cookies, candies&hellip;)</li>
</ul>

<p>And much more, join us and let yourself explore other fantastic things!</p>
', 35)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'fe21bb95-332b-4887-5bf9-08db7974ad47', N'Absolute Software (Vietnam) Ltd', N'1-877-600-2295', N'Ho Chi Minh', 0, CAST(N'2023-06-30T21:23:40.5250251' AS DateTime2), N'3412aef3-62f2-4ae8-9724-9c2047329ee5.jpg', N'<h3><strong>Ho Chi Minh City, Vietnam</strong></h3>

<p style="text-align:right">Absolute Software Corporation<br />
5th Floor, S.O.H.O Biz Office Building<br />
38 Huynh Lan Khanh street<br />
Ward 2, Tan Binh District<br />
Ho Chi Minh City, Vietnam</p>

<p style="text-align:right"><a href="mailto:sales@absolute.com">Contact Sales</a></p>
', N'<h4><strong>Giới thiệu c&ocirc;ng ty</strong></h4>

<p>Welcome to the world of enterprise resilience!</p>

<p>Absolute, founded in 1993 in Vancouver, Canada, is the first and only company to offer uncompromised visibility and near real-time remediation of security breaches at the source.&nbsp;<br />
<br />
<strong>Absolute at a glance</strong></p>

<ul>
	<li>
	<p>The world&rsquo;s only firmware-embedded endpoint visibility and control platform</p>
	</li>
	<li>
	<p>13,000+ global customers</p>
	</li>
	<li>
	<p>500 million endpoints</p>
	</li>
	<li>
	<p>140 patents</p>
	</li>
	<li>Factory-embedded by 28 top device manufacturers</li>
</ul>

<p>Our head office is in Vancouver, with regional offices in California&nbsp;<em>(San Jose)</em>, Texas&nbsp;<em>(Austin)</em>, UK&nbsp;<em>(Reading)</em>&nbsp;and Vietnam&nbsp;<em>(Ho Chi Minh City)</em>.&nbsp;<br />
<br />
To learn more about our Vietnam office, you can check out our Facebook page at https://www.facebook.com/absolutesoftwarevietnam/</p>
', N'absolute.com', N'38 Huynh Lan Khanh, Tan Binh, Ho Chi Minh', 2, N'absolute-software-vietnam-ltd', 1, 0, NULL, N'absolutesoftware@gmail.com', N'ABSOLUTESOFTWARE@GMAIL.COM', N'absolutesoftware@gmail.com', N'ABSOLUTESOFTWARE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAOup/uUsxv/2rEYjHhK9Z8mxw7PtCM21mYBv4qXf6KBeVF+ZfPaOIUr8YL2bbKUlw==', N'2N5XOGCW5TJVMKOSQRLMXXEEVIVSIUR3', N'570a7443-f882-432e-96a1-1ce5dbcbbd27', NULL, 0, 0, NULL, 1, 0, N'501-1000 nhân viên', N'Thứ 2 - Thứ 6', 6, N'<h4><strong>Tại sao bạn sẽ y&ecirc;u th&iacute;ch l&agrave;m việc tại đ&acirc;y?</strong></h4>

<ul>
	<li>
	<p>Product company with an unique end-point security</p>
	</li>
	<li>
	<p>Attractive salary + 13th month salary + Bonus</p>
	</li>
	<li>Unlimited Vacation + Hybrid Working Model</li>
</ul>

<p>&nbsp;<img src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBN3grSEE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--744c4af49f586b8a372fe7ec79bc990adc2edcdc/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/82291857_2973737245978745_5669259674264797184_o.jpg" />&nbsp;<img alt="" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBM1c2TXc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--6cd6b73f295461b3cfc38575052a51861396c079/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/Absolute%20Software%20(Vietnam)%20Ltd.jpg" /></p>

<ul>
	<li>Absolute is the world&rsquo;s only firmware-embedded endpoint visibility and control platform with 13,000+ global customers. 500 million endpoints. Factory-embedded by 28 top device manufacturers.</li>
	<li>Being in a collaborative, innovative and supportive place to make your mark on the world of security</li>
	<li>International and professional working environment</li>
	<li>Attractive and high &ndash; competitive salary</li>
	<li>13th month salary &amp; corporate bonus every 6 months</li>
	<li>Premium Insurance for you and your family</li>
	<li>Unlimited annual leave days</li>
	<li>Flexible working time and Hybrid working model after pandemic</li>
	<li>Internal Recruitment Program to Vancouver</li>
	<li>Travel opportunities&nbsp;<em>(business trip to Canada and company trip)</em></li>
	<li>Various Training Program and Interesting Team Building Activities</li>
</ul>

<p>To learn more about what it&rsquo;s like to work at Absolute, you can check our Facebook page at https://www.facebook.com/absolutesoftwarevietnam/ or visit our YouTube channel.</p>

<p>&nbsp;&nbsp;</p>
', 14)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'ae093749-cfdf-4406-6852-08db7d8e1b41', N'Giao Hàng Tiết Kiệm', N'1900 6092', N'Ha Noi', 0, CAST(N'2023-07-06T02:32:57.3000993' AS DateTime2), N'7adc535d-1aff-42bc-937d-3827bad04f45.jpg', N'<p style="text-align:right">C&Ocirc;NG TY CỔ PHẦN GIAO H&Agrave;NG TIẾT KIỆM</p>

<p style="text-align:right">Giấy CNĐKKD: 0106181807 - Ng&agrave;y cấp 21/05/2013, đăng k&yacute; thay đổi lần 09 ng&agrave;y 04/06/2020.<br />
Cơ quan cấp: Ph&ograve;ng Đăng k&yacute; kinh doanh - Sở kế hoạch v&agrave; đầu tư TP H&agrave; Nội<br />
<a href="https://goo.gl/maps/srZTEraEbkfE7pBX6" target="_blank">Địa chỉ trụ sở ch&iacute;nh: T&ograve;a nh&agrave; VTV, số 8 Phạm H&ugrave;ng, phường Mễ Tr&igrave;, quận Nam Từ Li&ecirc;m, th&agrave;nh phố H&agrave; Nội, Việt Nam</a><br />
Hotline: 1900 6092</p>
', N'<p><strong>GIAOHANGTIETKIEM</strong></p>

<p>C&ocirc;ng ty Cổ phần Giao H&agrave;ng Tiết Kiệm (GHTK) l&agrave; c&ocirc;ng ty c&ocirc;ng nghệ hoạt động kinh doanh trong lĩnh vực bưu ch&iacute;nh. Ưu thế của GHTK l&agrave; tốc độ nhanh, mạng lưới phủ s&oacute;ng rộng tr&ecirc;n to&agrave;n quốc v&agrave; đặc biệt l&agrave; thế mạnh trong việc nghi&ecirc;n cứu v&agrave; ứng dụng c&ocirc;ng nghệ mới phục vụ cho hoạt động bưu ch&iacute;nh.<br />
Ch&uacute;ng t&ocirc;i tin rằng dịch vụ n&agrave;y l&agrave; hữu &iacute;ch cho x&atilde; hội n&oacute;i chung. Người b&aacute;n h&agrave;ng b&aacute;n được nhiều hơn, kh&aacute;ch h&agrave;ng mua sắm thoải m&aacute;i hơn, v&agrave; người giao h&agrave;ng c&oacute; th&ecirc;m nhiều c&ocirc;ng việc v&agrave; thu nhập xứng đ&aacute;ng.</p>

<p>Trải qua h&agrave;nh tr&igrave;nh 9 năm ph&aacute;t triển, GHTK ch&iacute;nh thức c&aacute;n mốc giao nhận 1 tỷ đơn h&agrave;ng, phục vụ hơn một triệu nh&agrave; b&aacute;n lẻ online tr&ecirc;n to&agrave;n quốc với hệ thống hơn 1500 bưu cục, hơn 2500 xe tải c&ugrave;ng hơn 30.000 shipper, vận h&agrave;nh tr&ecirc;n diện t&iacute;ch hơn 600.000m2 kho b&atilde;i.</p>
', N'giaohangtietkiem.vn', N'GHTK Building, đường Phạm Hùng, phường Mễ Trì, quận Nam Từ Liêm, thành phố Hà Nội, Nam Tu Liem, Ha Noi', 2, N'giao-hang-tiet-kiem', 2, 0, NULL, N'giaohangtietkiem@gmail.com', N'GIAOHANGTIETKIEM@GMAIL.COM', N'giaohangtietkiem@gmail.com', N'GIAOHANGTIETKIEM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEE8GWChs165S5llFvEFytDJ4YJa0Xc/UEb6MIlk5cKRa/ECWknsH2UPtE9dvhHem1Q==', N'PQEEENXVBPOIFUP6IFAVYB772D26GL34', N'908e18e9-a6f3-4530-93a5-17092fd4ddba', NULL, 0, 0, NULL, 1, 0, N'1000+ employees', N'Monday - Saturday', 1, N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>- M&ocirc;i trường TRẺ, T&Agrave;I NĂNG, nhiều cơ hội ph&aacute;t triển</p>

<p>- C&ocirc;ng ty Product: hệ thống lớn, kh&ocirc;ng ngừng tối ưu</p>

<p>- Thu nhập cạnh tranh (500$ - 2000$), chế độ hấp dẫn</p>

<p>&nbsp;<img alt="" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBeGVRTEE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--72ac0c954d5599f12359ac02bbc2965811e14ab3/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/GHTK%205.jpg" />&nbsp;<img alt="" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBeG1RTEE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--4f0f9ffdf1c8ee80a2f7f1c2f4a556bb99ce436e/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/GHTK%202.jpg" /></p>

<p>&ndash; Mức lương Junior đến Senior: 500$ &ndash; 2000$ NET (đ&aacute;nh gi&aacute; tăng lương theo năng lực định kỳ);<br />
&ndash; Bảo hiểm sức khỏe cao cấp Generali;<br />
&ndash; M&ocirc;i trường l&agrave;m việc trẻ trung, năng động;<br />
&ndash; &nbsp;Sản phẩm chất lượng đến từ c&ocirc;ng ty top đầu Việt Nam trong lĩnh vực E &ndash; logistics, tiếp cận với h&agrave;ng trăm ngh&igrave;n users v&agrave; h&agrave;ng triệu lượt transactions/ng&agrave;y.<br />
&ndash; L&agrave;m việc c&ugrave;ng đội ngũ c&ocirc;ng nghệ giỏi chuy&ecirc;n m&ocirc;n, c&oacute; cơ hội để ph&aacute;t huy tối đa năng lực của bản th&acirc;n;<br />
&ndash; Li&ecirc;n tục được đ&agrave;o tạo về kiến thức, kỹ năng li&ecirc;n quan đến c&aacute;c lĩnh vực hoạt động của C&ocirc;ng ty;<br />
&ndash; Được cung cấp đầy đủ phương tiện l&agrave;m việc theo y&ecirc;u cầu của t&iacute;nh chất c&ocirc;ng việc;<br />
&ndash; C&aacute;c hoạt động tập thể, giải tr&iacute; đa dạng (CLB B&oacute;ng đ&aacute;, game, bi lắc, &hellip;); sự kiện team-building h&agrave;ng năm;<br />
&ndash; Được đảm bảo đầy đủ c&aacute;c chế độ Ph&uacute;c lợi theo Quy định của Ph&aacute;p luật hiện h&agrave;nh v&agrave; của C&ocirc;ng ty;<br />
&ndash; Thưởng Tết Nguy&ecirc;n Đ&aacute;n, Tết Dương lịch, ng&agrave;y Lễ kh&aacute;c v&agrave; thưởng th&agrave;nh t&iacute;ch nổi bật</p>
', 83)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'4eda6fcb-3269-4772-2a28-08db7eb53cad', N'Grab', N'1900 0000', N'TP HCM', 0, CAST(N'2023-07-07T13:52:17.0519034' AS DateTime2), N'f116a70f-0456-4ac7-881f-7005699a6a12.jpg', N'<p><a href="https://www.grab.com/vn">Grab Việt Nam</a></p>

<p>C&ocirc;ng ty TNHH Grab<br />
Địa chỉ: T&ograve;a nh&agrave; Mapletree Business Centre, 1060 Nguyễn Văn Linh, Phường T&acirc;n Phong, Quận 7, Th&agrave;nh phố Hồ Ch&iacute; Minh, Việt Nam.<br />
M&atilde; số doanh nghiệp: 0312650437 do Sở Kế Hoạch v&agrave; Đầu Tư TP. Hồ Ch&iacute; Minh cấp lần đầu ng&agrave;y 14 th&aacute;ng 02 năm 2014<br />
Đại diện ph&aacute;p luật: Alejandro Osorio<br />
Chức vụ: Gi&aacute;m Đốc Điều H&agrave;nh</p>

<p>Follow us and keep updated!</p>
', N'<p>Driving Southeast Asia Forward Together</p>

<p><strong>Get to know Grab:</strong></p>

<p>Grab is Southeast Asia&rsquo;s leading&nbsp;<strong>everyday everything app</strong>&nbsp;&ndash; providing transportation, logistics and financial services to millions of users across the region. Powered by heart and driven by technology, we aim to&nbsp;<strong>unlock the true potential of the region by solving the problems that hinder progress for our communities</strong>. If you share our vision of Driving Southeast Asia Forward, apply to join our team today.</p>

<p><strong>Grab Vietnam R&amp;D Lab:</strong></p>

<p>We focus on&nbsp;<strong>building and nurturing the best engineering talents</strong>&nbsp;from diverse academic backgrounds and industry experiences to strategize and execute&nbsp;<strong>high profile projects</strong>&nbsp;through data-driven methodologies.</p>

<p><strong>Hear from the Vietnam Engineering team</strong></p>

<p>Grab Vietnam&#39;s Engineering team is hosting an exclusive tech talk on 20 September 2021 (Mon), 4pm GMT+7!&nbsp;</p>

<p>In this virtual session, you&#39;ll hear from Grabbers in the Grab for Business and Sentry team and how they&#39;re helping Grab drive Southeast Asia forward. Our Grab Vietnam Talent team will also be available to answer your questions on current opportunities for you to join our team.&nbsp;</p>

<p>Register to hear more: https://pages.beamery.com/grab/page/vn-tech-hiring-drive-(sep-2021)-h9omh4-1p</p>
', N'grab.careers', N'Mapletree Business Centre, District 7, Ho Chi Minh', 2, N'grab', 1, 0, NULL, N'grab@gmail.com', N'GRAB@GMAIL.COM', N'grab@gmail.com', N'GRAB@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEI6+kawxp8qRoJ2/2HghyVEHAhABkLd7QDizDFNib53rtOm3YCnEd77gki7ePYYg3g==', N'R2G6Y7WCX3R3IWZAE7NI3ZIMOMQZOVFI', N'88eb3136-2f50-4a6e-bb83-31616d2e8505', NULL, 0, 0, NULL, 1, 0, N'501-1000 employees', N'Monday - Friday', 5, N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; At least 15 months pay &amp; attractive allowance</p>

<p>&bull; Huge system - billion of data</p>

<p>&bull; Working with world-class engineers</p>

<p>&nbsp;<img src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBNGVFSXc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--7416ace7e7a2d68b4a7c3641618cf6fde377aa94/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/our-kind-of-green.jpg" />&nbsp;<img alt="" src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBOE9KSVE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--e676b4b7550b05356464676b4d905ded7ceb1d9c/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/chup-hinh-cong-trinh-5.jpg" /></p>

<p>We care a great deal about code quality. We often go back and improve core parts of the codebase to make it better or more lean. We can do this because of great test coverage which will immediately sound the alarm when something goes wrong.</p>

<p>We ship on quality instead of on time. When a feature is ready we deploy it immediately to everyone or use an internal system to roll it out to a certain percentage of customers. Various teams deploy new code many times throughout the day.<br />
<br />
<strong>What will you have at Grab (Vietnam):</strong><br />
<br />
<strong>1. Positive &amp; Collaborative environment</strong></p>

<p>Grabbers thrive in a corporate culture that values every team member&#39;s contribution towards our goal of improving lives.</p>

<p><strong>2. Rocket fuel for careers</strong></p>

<p>Grabbers experience hyper professional growth and all the challenges that entails. Grow your skills while working to solve real issues across the region.</p>

<p><strong>3. Fun &amp; dedicated family</strong></p>

<p>Grabbers work hard and play hard. Our teams grow as one as they overcome challenges and have fun along the way.<br />
<br />
<strong>4. Some of benefits are:</strong></p>

<p>&bull; MacBook is provided.</p>

<p>&bull; Extra Medical Insurance.</p>

<p>&bull; 14 days annual leaves, working Monday - Friday.</p>

<p>&bull; Free drive with Grab (budget follow your level)</p>

<p>&bull; Rewards on Grab for Grab Transport, Grab Mart, Grab Food</p>

<p>&bull; Internal Mobility to regional: Singapore, Malaysia, Indonesia, China,...</p>

<p>Grab is Southeast Asia&rsquo;s leading everyday everything app &ndash; providing transportation, logistics and financial services to millions of users across the region. Powered by heart and driven by technology, we aim to unlock the true potential of the region by solving the problems that hinder progress for our communities. If you share our vision of Driving Southeast Asia Forward, apply to join our team today.</p>
', 48)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'51d552b0-1372-42d1-355b-08db8474bade', N'Orient Software Development Corp.', N'+84 28 3812 0101', NULL, NULL, CAST(N'2023-07-14T21:15:08.8148287' AS DateTime2), N'3656aa73-b48e-40ea-b986-95c81657407f.png', N'<p>Vietnam: +84 28 3812 0101<br />
Japan: +81 35 403 5934<br />
Singapore: +65 69 803 496<br />
<a href="mailto:sales@orientsoftware.com">sales@orientsoftware.com</a></p>

<p style="text-align:right"><strong>Head office - Ho Chi Minh City</strong><br />
Suite 5.8, 5<sup>th</sup>&nbsp;Floor, E.town 1 building,&nbsp;364 Cong Hoa Str,<br />
Ward 13, Tan Binh Dist,&nbsp;Ho Chi Minh City, Vietnam</p>
', N'<p>Orient Software is a leading international software outsourcing company in Vietnam</p>

<p>Founded in 2005, Orient Software is the hub for software development in Vietnam and we offer first-class software solutions to hundreds of global customers. Orient always ensures the adoption of state-of-the-art technologies and utmost professionalism in every project that we deliver.<br />
Orient is the employer of choice with strong values, a robust community, supportive culture, and a professional working environment.<br />
Orient Software is looking for high achievers to join us. We provide comprehensive benefits packages to facilitate employees&rsquo; well-being as well as develop a bespoke development roadmap to help each member of our community attain their goals.<br />
Orient&rsquo;s highlights:<br />
&bull; 350+ skilled and motivated employees. Targeting to 1,000 talent in 2025.<br />
&bull; 10 branches around the world.<br />
&bull; 200+ challenging projects for international clients.<br />
&bull; Western and Vietnamese management board.<br />
&bull; Top 2 Vietnam best IT Companies 2021 by ITViec<br />
&bull; Top 500 High Growth Companies Asia Pacific by Financial Time in 2022</p>
', N'orientsoftware.com', N'344 Street 2/9, Ward, Hoa Cuong Bac, Hai Chau, Da Nang, Hai Chau, Da Nang', 2, N'orient-software-development-corpdot', 3, 0, NULL, N'orientsoftware@gmail.com', N'ORIENTSOFTWARE@GMAIL.COM', N'orientsoftware@gmail.com', N'ORIENTSOFTWARE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGaQ24RNMapNO9P6lOaQD6AlLCI1LHPD592Mmdkji2Hnb+HJ6DRxti5ZBvCS8x+l5g==', N'QHIA3OF2DPL5TRULK4EY3JVDW3CYPLM7', N'80a7d05b-5a79-4830-b36f-21701c931262', NULL, 0, 0, NULL, 1, 0, N'301-500 employees', N'Monday - Friday', 5, N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; 13th-month salary. Dedication bonus goes up to 40%</p>

<p>&bull; Premium healthcare insurance</p>

<p>&bull; Teambuilding trips, training events</p>

<p>&nbsp;<img src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBOGQrSEE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--d3aac0af1acc6581028cf92f1dbc8bd457f5e542/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/6.jpg" />&nbsp;<img src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBK0pJRlE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--8d20d5bfbf34cd150cdb0926394f30ff4f115519/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2RwQWhRQmFRRzRPZ2xqY205d1d3bHBBR2tBYVFJVUFXa0J1QT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--31ad030a4f0bfbe0b7ef2a3f041666e437907425/ITV3.jpg" /></p>

<p>&bull; Annual 13th month salary</p>

<p>&bull; Dedication bonus goes up to 40% monthly salary</p>

<p>&bull; Project bonus will be paid twice time a year</p>

<p>&bull; Premium healthcare insurance, Annual health checks up.</p>

<p>&bull; Breakfast are available at office in early morning and snack in late afternoon.</p>

<p>&bull; Happy Lunch every two weeks.</p>

<p>&bull; Team building allowance</p>

<p>&bull; Annual Company team building trip.</p>

<p>&bull; Clubs (Football, Badminton, Swimming, Chess, Music band).</p>

<p>&bull; Exclusive training programs for all staff in technical, soft skills and process.</p>

<p>&bull; English class</p>

<p>&bull; Marriage allowance, having newborn baby allowance, bereavement allowance</p>
', 60)
INSERT [dbo].[AppUsers] ([Id], [FullName], [Phone], [Address], [Age], [CreateDate], [UrlAvatar], [Contact], [Description], [WebsiteURL], [Location], [Status], [Slug], [ProvinceId], [Disable], [CategoryId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CompanySize], [WorkingDays], [CountryId], [Content], [Popular]) VALUES (N'769f41bd-ccd4-45ba-abbd-550ccd0b62e3', N'Adminitrator', NULL, NULL, NULL, CAST(N'2023-07-08T02:55:16.0649520' AS DateTime2), N'default_admin.png', NULL, NULL, NULL, NULL, -1, N'adminitrator', NULL, 0, NULL, N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEAfXXQh97Y9dgVTzTXk4vJqMeZfUhIdwZ/EDrZOayS3pdscyowtYHMs4yu6Mg7ch3w==', N'', N'e6d2c4d0-3172-4dff-8c92-499dfe6597a0', NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [Slug], [Author], [Title], [Content], [Image], [AppUserId], [CreateDate], [Description], [Popular]) VALUES (9, N'top-15p-framework-back-end-front-end-va-mobile-pho-bien-nhat-2023', N'Ngoc Toan', N'Top 15+ framework back-end, front-end và mobile phổ biến nhất 2023', N'<h2><strong>Framework l&agrave; g&igrave;?</strong></h2>

<p>Framework l&agrave; g&igrave;? Framework, hay software framework, l&agrave; một nền tảng để ph&aacute;t triển c&aacute;c ứng dụng phần mềm.</p>

<p>Framework l&agrave; những c&ocirc;ng cụ v&agrave; thư viện m&agrave; c&aacute;c nh&agrave; ph&aacute;t triển kh&aacute;c đ&atilde; tạo để đạt được một mục ti&ecirc;u kỹ thuật cụ thể hoặc để l&agrave;m cho việc ph&aacute;t triển bằng một ng&ocirc;n ngữ cụ thể dễ d&agrave;ng hơn. N&oacute;i c&aacute;ch kh&aacute;c, framework gi&uacute;p c&aacute;c nh&agrave; ph&aacute;t triển phần mềm c&oacute; thể x&acirc;y dựng c&aacute;c chương tr&igrave;nh cho một nền tảng cụ thể.</p>

<p>V&iacute; dụ, một framework c&oacute; thể bao gồm c&aacute;c classes v&agrave; chức năng được x&aacute;c định từ trước để xử l&yacute; đầu v&agrave;o, quản l&yacute; thiết bị phần cứng v&agrave; tương t&aacute;c với phần mềm hệ thống. Điều n&agrave;y l&agrave;m tinh gọn lại qu&aacute; tr&igrave;nh ph&aacute;t triển v&igrave; c&aacute;c lập tr&igrave;nh vi&ecirc;n kh&ocirc;ng cần phải l&agrave;m lại từ đầu mỗi khi họ muốn ph&aacute;t triển một ứng dụng mới.</p>

<p>Ngo&agrave;i ra, cũng c&oacute; một số ứng dụng y&ecirc;u cầu một framework cụ thể để c&oacute; thể vận h&agrave;nh.</p>

<blockquote>V&iacute; dụ: Một chương tr&igrave;nh Windows c&oacute; thể cần Microsoft .NET Framework 4.0 để chạy trong khi framework n&agrave;y kh&ocirc;ng được c&agrave;i đặt tr&ecirc;n tất cả c&aacute;c m&aacute;y Windows (đặc biệt l&agrave; c&aacute;c PC chạy những phi&ecirc;n bản Windows cũ hơn). Trong trường hợp n&agrave;y, g&oacute;i tr&igrave;nh c&agrave;i đặt Microsoft .NET Framework 4 phải được c&agrave;i đặt để chương tr&igrave;nh chạy.</blockquote>

<h3><strong>Lưu &yacute; về c&aacute;c loại framework</strong></h3>

<p>Hiện nay chưa c&oacute; c&aacute;ch chia framework th&agrave;nh c&aacute;c &ldquo;loại&rdquo; cụ thể. Developer c&oacute; thể chia framework:</p>

<ul>
	<li>Theo ng&ocirc;n ngữ: JavaScript frameworks, HTML &amp; CSS frameworks,&hellip;</li>
	<li>Theo hệ điều h&agrave;nh hỗ trợ: Windows framework, Android framework, iOS framework,&hellip;</li>
	<li>Theo ứng dụng: Web Development, Front-end Development, Back-end Development, Data Science framework,&hellip;</li>
</ul>

<p>V&agrave; trong mỗi c&aacute;ch ph&acirc;n loại lại c&oacute; những framework cụ thể.&nbsp;Trong phạm vi b&agrave;i viết n&agrave;y, ITviec sẽ gợi &yacute; c&aacute;c framework được ph&acirc;n loại theo ứng dụng.</p>

<p>Lưu &yacute;: Th&ocirc;ng thường, thuật ngữ &ldquo;framework&rdquo; thường đề cập đến c&aacute;c nền tảng ph&aacute;t triển phần mềm n&oacute;i chung nhưng thuật ngữ n&agrave;y cũng c&oacute; thể được sử dụng để m&ocirc; tả một framework cụ thể, nằm b&ecirc;n trong một m&ocirc;i trường lập tr&igrave;nh lớn.</p>

<blockquote>V&iacute; dụ, nhiều Java frameworks, như Spring, ZK v&agrave; Java Collections Framework (JCF) c&oacute; thể được d&ugrave;ng để ph&aacute;t triển c&aacute;c phần mềm Java.</blockquote>

<p>Trong nhiều trường hợp, một framework được hỗ trợ chỉ bởi một hệ điều h&agrave;nh.</p>

<blockquote>
<p>V&iacute; dụ: Một phần mềm được viết cho framework ứng dụng Android sẽ chỉ chạy tr&ecirc;n thiết bị Android m&agrave; kh&ocirc;ng y&ecirc;u cầu c&agrave;i đặt c&aacute;c tệp bổ sung kh&aacute;c.</p>

<p>Hay như Apple cũng tạo ra nhiều frameworks cụ thể ph&ugrave; hợp với c&aacute;c chương tr&igrave;nh OS X. Những frameworks n&agrave;y được lưu trữ trong một file mở rộng .FRAMEWORK v&agrave; được c&agrave;i đặt trong danh mục&nbsp;/System/Library/Frameworks.</p>

<p>Một v&agrave;i OS X frameworks như: AddressBook.framework, CoreAudio.framework, CoreText.framework, and QuickTime.framework.</p>
</blockquote>

<h2><strong>Ph&acirc;n biệt Framework v&agrave; Library (Thư viện)</strong></h2>

<p>Tuy đ&atilde; hiểu được framework l&agrave; g&igrave;, nhiều developer vẫn nhầm lẫn giữa Framework v&agrave; Library.</p>

<p>Cả framework v&agrave; library đều l&agrave; những đoạn code do người kh&aacute;c viết, được sử dụng để gi&uacute;p giải quyết c&aacute;c vấn đề trong qu&aacute; tr&igrave;nh ph&aacute;t triển phần mềm. Nhiều developers cũng sử dụng hai thuật ngữ n&agrave;y thay thế lẫn nhau, nhưng cả hai đều c&oacute; những điểm kh&aacute;c biệt nhất định:</p>

<p>So s&aacute;nh gữa Framework v&agrave; Library. Nguồn: @BuggyProgrammer</p>

<table>
	<tbody>
		<tr>
			<td><strong>Ti&ecirc;u ch&iacute;</strong></td>
			<td><strong>Framework l&agrave; g&igrave;?</strong></td>
			<td><strong>Library l&agrave; g&igrave;?</strong></td>
		</tr>
		<tr>
			<td><strong>Định nghĩa</strong></td>
			<td>Framework l&agrave; một đoạn code thể hiện kiến tr&uacute;c của dự &aacute;n.</td>
			<td>Library l&agrave; một tập hợp c&aacute;c chức năng c&oacute; thể t&aacute;i sử dụng bởi phần mềm m&aacute;y t&iacute;nh.</td>
		</tr>
		<tr>
			<td><strong>Quyền kiểm so&aacute;t</strong></td>
			<td>Framework nắm quyền kiểm so&aacute;t với bạn, c&oacute; nghĩa rằng framework sẽ quy định chỗ n&agrave;o cần bạn th&ecirc;m code v&agrave;o.</td>
			<td>Bạn l&agrave; người nắm quyền kiểm so&aacute;t (person in-charge), bạn c&oacute; thể chọn sử dụng library ở đ&acirc;u v&agrave; khi n&agrave;o bạn muốn.</td>
		</tr>
		<tr>
			<td><strong>T&iacute;nh năng</strong></td>
			<td>Framework cung cấp ti&ecirc;u chuẩn để ph&aacute;t triển v&agrave; deploy ứng dụng.</td>
			<td>Quan trọng trong qu&aacute; tr&igrave;nh program linking v&agrave; binding.</td>
		</tr>
		<tr>
			<td><strong>T&iacute;nh linh hoạt</strong></td>
			<td>Framework c&oacute; ti&ecirc;u chuẩn v&agrave; kiến tr&uacute;c bắt buộc.</td>
			<td>Library linh hoạt với nhiều quyền kiểm so&aacute;t hơn.</td>
		</tr>
		<tr>
			<td><strong>V&iacute; dụ</strong></td>
			<td>Angular JS, Vue JS l&agrave; JavaScript framework.</td>
			<td>React.js, Jquery l&agrave; JavaScript library.</td>
		</tr>
	</tbody>
</table>

<p>Nh&igrave;n chung, nếu so với việc x&acirc;y nh&agrave;, th&igrave; framework l&agrave; đổ m&oacute;ng với gi&agrave;n gi&aacute;o d&ugrave;ng để chọn framework n&agrave;o sẽ định h&igrave;nh cho c&aacute;i ứng dụng/ web. C&ograve;n thư viện th&igrave; như l&agrave; sơn sửa nội thất, c&oacute; thể thay đổi đa dạng kh&aacute;c nhau.</p>
', N'711f8f76-4bb1-473f-9649-46879b2444c8.jpg', N'ae093749-cfdf-4406-6852-08db7d8e1b41', CAST(N'2023-06-25T01:41:38.0000000' AS DateTime2), N'<p><strong>L&agrave; một lập tr&igrave;nh vi&ecirc;n, bạn kh&ocirc;ng cần phải ph&aacute;t triển mọi ứng dụng lại từ đầu bởi v&igrave; đ&atilde; c&oacute; c&aacute;c c&ocirc;ng cụ được thiết kế để hỗ trợ bạn, framework l&agrave; một trong những c&ocirc;ng cụ hữu dụng đ&oacute;. Vậy th&igrave; framework l&agrave; g&igrave;? Đồng thời, ITviec giới thiệu đến bạn top 15+ framework back-end, front-end v&agrave; mobile phổ biến nhất 2023.</strong></p>
', 316)
INSERT [dbo].[Blogs] ([Id], [Slug], [Author], [Title], [Content], [Image], [AppUserId], [CreateDate], [Description], [Popular]) VALUES (10, N'“la-it-thi-minh-cu-viet-di”-–-cuoc-thi-viet-hap-dan-nhat-cho-dan-it-chinh-thuc-tro-lai', N'Linh Khanh', N'“Là IT Thì Mình Cứ Viết Đi” – Cuộc thi viết hấp dẫn nhất cho dân IT chính thức trở lại', N'<h2><strong>L&agrave; IT Th&igrave; M&igrave;nh Cứ Viết Đi &ndash; Cuộc đua xếp hạng hấp dẫn</strong></h2>

<p>Đ&uacute;ng như t&ecirc;n gọi, cuộc thi viết&nbsp;&nbsp;<strong>L&agrave; IT Th&igrave; M&igrave;nh Cứ Viết Đi</strong>&nbsp;l&agrave; c&aacute;ch ITviec cổ vũ anh chị em IT cứ mạnh dạn trải l&ograve;ng, chia sẻ. V&igrave; ITviec tin rằng: Mỗi vị tr&iacute; IT đều c&oacute; những cảm quan ri&ecirc;ng. Mỗi c&acirc;u chuyện đều c&oacute; người lắng nghe. V&agrave; mỗi chia sẻ của bạn đều c&oacute; gi&aacute; trị với ai đ&oacute;.&nbsp;</p>

<p>Để th&uacute;c đẩy tinh thần v&agrave; tăng cảm hứng cho anh chị em tham gia, năm nay ITviec mang đến những cơ chế mới hấp dẫn:</p>

<h3><strong>1. 10 chủ đề IT th&uacute; vị để bạn bắt đầu viết ngay:</strong></h3>

<p>ITviec đ&atilde; cung cấp sẵn 10 chủ đề th&uacute; vị, do đ&oacute; anh chị em c&oacute; thể&nbsp;<a href="https://itviec.com/cuoc-thi-viet/soan-thao?utm_source=blog&amp;utm_medium=anchor_text&amp;utm_campaign=contest_announce_26042023" rel="noopener" target="_blank">bắt đầu viết b&agrave;i</a>&nbsp;dễ d&agrave;ng m&agrave; kh&ocirc;ng cần mất thời gian nghĩ đề t&agrave;i. C&aacute;c chủ đề viết b&agrave;i đều xoay quanh c&aacute;c kh&iacute;a cạnh c&ocirc;ng việc, cuộc sống rất gần gũi với những người l&agrave;m IT như:</p>

<ul>
	<li>Ng&ocirc;n ngữ lập tr&igrave;nh</li>
	<li>Chuyện testing</li>
	<li>Chuyện học ngoại ngữ</li>
	<li>Chuyện Onsite</li>
	<li>Chuyện OT, phỏng vấn,&hellip;</li>
</ul>

<blockquote>
<p>Kh&aacute;m ph&aacute; đầy đủ&nbsp;<a href="https://itviec.com/cuoc-thi-viet#chu-de" rel="noopener" target="_blank">10 chủ đề</a>&nbsp;cuộc thi viết &ldquo;L&agrave; IT Th&igrave; M&igrave;nh Cứ Viết Đi&rdquo;</p>
</blockquote>

<table>
	<tbody>
		<tr>
			<td><strong>Tips:&nbsp;</strong>H&atilde;y đọc kỹ mục Hướng dẫn của từng chủ đề. Đ&oacute; vừa l&agrave; gợi &yacute; rất chi tiết để bạn c&oacute; thể viết b&agrave;i dễ d&agrave;ng, vừa l&agrave; điều kiện &ldquo;cần&rdquo; để b&agrave;i viết của bạn c&oacute; cơ hội thắng giải cao hơn đấy!</td>
		</tr>
	</tbody>
</table>

<h3><strong>2. T&iacute;nh năng b&igrave;nh chọn b&agrave;i viết &amp; Bảng xếp hạng hấp dẫn:</strong>&nbsp;</h3>

<p>Cuộc thi năm nay hứa hẹn sẽ hấp dẫn hơn với t&iacute;nh năng b&igrave;nh chọn b&agrave;i viết v&agrave; bảng xếp hạng gay cấn. Theo đ&oacute;, người tham gia c&oacute; thể:</p>

<p>Ngo&agrave;i viết b&agrave;i, bạn c&ograve;n c&oacute; thể tham gia b&igrave;nh chọn cho c&aacute;c b&agrave;i viết. Người tham gia b&igrave;nh chọn cũng c&oacute; cơ hội nhận qu&agrave; tặng từ ITviec.&nbsp;</p>

<blockquote>
<p>Tham gia&nbsp;<a href="https://itviec.com/cuoc-thi-viet?utm_source=blog&amp;utm_medium=anchor_text&amp;utm_campaign=contest_announce_26042023" rel="noopener" target="_blank">b&igrave;nh chọn ngay</a>&nbsp;để c&oacute; cơ hội nhận qu&agrave; tặng hấp dẫn</p>
</blockquote>

<p>C&aacute;c t&aacute;c giả c&oacute; thể k&ecirc;u gọi b&igrave;nh chọn cho b&agrave;i viết của m&igrave;nh để tăng cơ hội tr&uacute;ng giải, v&igrave; số lượt b&igrave;nh chọn sẽ ảnh hưởng đến điểm số chung cuộc cho từng b&agrave;i viết. Ngo&agrave;i ra, c&ograve;n c&oacute; giải thưởng ri&ecirc;ng d&agrave;nh cho b&agrave;i viết được b&igrave;nh chọn cao nhất.</p>

<p>Bạn c&oacute; thể theo d&otilde;i Bảng xếp hạng c&aacute;c b&agrave;i viết được b&igrave;nh chọn nhiều nhất được c&ocirc;ng khai tr&ecirc;n trang chủ cuộc thi.</p>

<table>
	<tbody>
		<tr>
			<td><strong>Tips:&nbsp;</strong>Nếu đ&atilde; b&igrave;nh chọn cho một b&agrave;i viết n&agrave;o đ&oacute;, bạn kh&ocirc;ng thể ho&agrave;n t&aacute;c. Tuy nhi&ecirc;n mỗi t&agrave;i khoản sẽ c&oacute; tối đa đến 50 lượt b&igrave;nh chọn. Do đ&oacute; h&atilde;y mạnh dạn b&igrave;nh chọn cho c&aacute;c b&agrave;i viết xứng đ&aacute;ng nhất nh&eacute;!&nbsp;</td>
		</tr>
	</tbody>
</table>

<h3><strong>3. B&agrave;i viết của bạn sẽ được đăng tải c&ocirc;ng khai:</strong>&nbsp;</h3>

<p>Tất cả b&agrave;i viết đều được đăng ngay sau 01 v&ograve;ng kiểm duyệt. Do đ&oacute;, bạn c&oacute; thể chia sẻ ngay b&agrave;i viết l&ecirc;n trang c&aacute; nh&acirc;n, mời bạn b&egrave;, đồng nghiệp c&ugrave;ng đọc v&agrave; b&igrave;nh chọn cho b&agrave;i viết của m&igrave;nh.</p>

<table>
	<tbody>
		<tr>
			<td><strong>Tips:&nbsp;</strong>Để tr&aacute;nh b&agrave;i viết kh&ocirc;ng được duyệt đăng, bạn h&atilde;y đọc kỹ&nbsp;<a href="https://itviec.com/blog/the-le-cuoc-thi-viet-chuyen-it/" rel="noopener" target="_blank">Quy định về b&agrave;i dự thi hợp lệ</a>&nbsp;trước khi viết b&agrave;i nh&eacute;. ITviec chỉ c&oacute; v&agrave;i y&ecirc;u cầu đơn giản để đảm bảo t&iacute;nh c&ocirc;ng bằng v&agrave; l&agrave;nh mạnh của cuộc thi, c&ograve;n mọi sự s&aacute;ng tạo về &yacute; tưởng v&agrave; c&acirc;u chữ của bạn lu&ocirc;n lu&ocirc;n được ch&agrave;o đ&oacute;n v&agrave; khuyến kh&iacute;ch!</td>
		</tr>
	</tbody>
</table>

<h3><strong>Những mốc thời gian quan trọng của cuộc thi:</strong></h3>

<ul>
	<li>26/4/2023 &ndash; Bắt đầu nhận b&agrave;i dự thi</li>
	<li>15h ng&agrave;y 08/06/2023 &ndash; Hạn cuối nhận b&agrave;i dự thi</li>
	<li>15h ng&agrave;y 09/06/2023 &ndash; Hạn cuối b&igrave;nh chọn</li>
	<li>26/6/2023 &ndash; C&ocirc;ng bố giải thưởng</li>
</ul>

<h2><strong>Cơ hội nhận giải thưởng &ldquo;khủng&rdquo; &ndash; Tổng gi&aacute; trị hơn 100 triệu đồng</strong></h2>

<p>Ngo&agrave;i thể lệ hấp dẫn, để kỷ niệm 10 năm th&agrave;nh lập, ITviec c&ograve;n &ldquo;chơi lớn&rdquo; trao thưởng với tổng gi&aacute; trị hơn 100 triệu đồng cho c&aacute;c hạng mục sau:</p>

<p>&nbsp;</p>

<p>&nbsp;<img alt="la-it-thi-minh-cu-viet-di-giai-thuong" src="https://itviec.com/blog/wp-content/uploads/2023/04/DESKTOP.png" style="height:440px; width:640px" /></p>

<p><strong>10 GIẢI &ldquo;B&Agrave;I VIẾT XUẤT SẮC NHẤT&rdquo;&nbsp;</strong></p>

<p>(d&agrave;nh cho 10 b&agrave;i viết c&oacute; tổng điểm cao nhất, dựa tr&ecirc;n điểm đ&aacute;nh gi&aacute; của ITviec v&agrave; điểm quy đổi từ số lượt b&igrave;nh chọn).</p>

<p>01 trong những qu&agrave; tặng sau:</p>

<ul>
	<li>Tiền mặt 10.000.000 VND</li>
	<li>Hoặc 1 Apple Watch Series 8 GPS</li>
	<li>Hoặc 1 Ghế c&ocirc;ng th&aacute;i học GTChair Marrit X 5D</li>
</ul>

<p><strong>1 GIẢI &ldquo;B&Agrave;I VIẾT ĐƯỢC Y&Ecirc;U TH&Iacute;CH NHẤT&rdquo;&nbsp;</strong></p>

<p>(d&agrave;nh cho b&agrave;i viết c&oacute; tổng số lượt b&igrave;nh chọn cao nhất).&nbsp;</p>

<p>01 trong những qu&agrave; tặng sau:</p>

<ul>
	<li>Tiền mặt 2.000.000 VND&nbsp;</li>
	<li>Hoặc 1 Tai nghe Sony kh&ocirc;ng d&acirc;y WH-CH500&nbsp;</li>
</ul>

<p><strong>3 GIẢI &ldquo;NGƯỜI B&Igrave;NH CHỌN MAY MẮN NHẤT&rdquo;&nbsp;</strong></p>

<p>(d&agrave;nh cho người d&ugrave;ng tham gia b&igrave;nh chọn c&aacute;c b&agrave;i viết v&agrave; được chọn th&ocirc;ng qua c&ocirc;ng cụ quay số ngẫu nhi&ecirc;n).</p>

<p>Mỗi giải trị gi&aacute; 500.000 đồng tiền mặt.</p>

<h2><strong>L&agrave; IT Th&igrave; M&igrave;nh Cứ Viết Đi &ndash; Hơn cả một cuộc thi</strong></h2>

<p>Ngo&agrave;i cơ hội để trải l&ograve;ng với những c&acirc;u chuyện trong nghề IT, cuộc thi c&ograve;n l&agrave; s&acirc;n chơi lớn cho c&aacute;c anh chị em IT c&oacute; thể:</p>

<ul>
	<li>B&agrave;n luận kiến thức, chia sẻ g&oacute;c nh&igrave;n về c&aacute;c chủ đề m&agrave; m&igrave;nh quan t&acirc;m.</li>
	<li>Điểm lại những dấu ấn tr&ecirc;n h&agrave;nh tr&igrave;nh ph&aacute;t triển sự nghiệp IT của m&igrave;nh v&agrave; c&oacute; th&ecirc;m cột mốc đ&aacute;ng nhớ.</li>
	<li>L&agrave;m gi&agrave;u profile &ldquo;chất&rdquo;, kh&ocirc;ng chỉ về chuy&ecirc;n m&ocirc;n m&agrave; c&ograve;n &ldquo;chất&rdquo; trong cả kĩ năng viết l&aacute;ch.&nbsp;&nbsp;</li>
</ul>

<p>Viết xuống c&acirc;u chuyện của bạn, lan toả đến cộng đồng v&agrave; rinh về những giải thưởng hấp dẫn c&ugrave;ng ITviec nh&eacute;!</p>
', N'34eab8c4-5bdf-4e53-a8bf-9c141994663c.png', N'2c15a2e0-73db-435f-f4ca-08db796dfada', CAST(N'2023-06-26T02:11:05.0000000' AS DateTime2), N'<p>Cuộc thi viết&nbsp;<strong>&ldquo;L&agrave; IT Th&igrave; M&igrave;nh Cứ Viết Đi&rdquo;</strong>&nbsp;do ITviec tổ chức từ ng&agrave;y 26/04/2023 đến 26/06/2023, nh&acirc;n dịp kỷ niệm 10 năm th&agrave;nh lập. Cuộc thi l&agrave; s&acirc;n chơi hấp dẫn cổ vũ tất cả anh em IT tr&ecirc;n khắp Việt Nam viết để chia sẻ về những hiểu biết, quan điểm, thấu cảm, t&acirc;m sự về nghề.&nbsp;</p>
', 281)
INSERT [dbo].[Blogs] ([Id], [Slug], [Author], [Title], [Content], [Image], [AppUserId], [CreateDate], [Description], [Popular]) VALUES (11, N'quy-trinh-nghi-viec-doi-voi-nhan-vien-it-–-nhung-dieu-can-luu-y', N'Thuong Ngo', N'Quy trình nghỉ việc đối với nhân viên IT – Những điều cần lưu ý', N'<h2><strong>V&igrave; sao nh&acirc;n vi&ecirc;n IT n&ecirc;n tu&acirc;n thủ quy tr&igrave;nh nghỉ việc chuẩn?</strong></h2>

<p>Việc tu&acirc;n thủ quy tr&igrave;nh nghỉ việc chuẩn sẽ gi&uacute;p bạn đưa ra quyết định đ&uacute;ng đắn về vấn đề nghỉ việc, đồng thời, giải quyết được c&ocirc;ng việc một c&aacute;ch su&ocirc;n sẻ, được nhận đầy đủ c&aacute;c quyền lợi khi nghỉ việc v&agrave; giữ được h&igrave;nh ảnh chuy&ecirc;n nghiệp của bản th&acirc;n.</p>

<p>Nếu nh&acirc;n vi&ecirc;n IT kh&ocirc;ng tu&acirc;n thủ quy tr&igrave;nh nghỉ việc chuẩn th&igrave; c&oacute; thể g&acirc;y tổn hại đến quyền lợi xứng đ&aacute;ng được hưởng, chưa kể, c&oacute; thể l&agrave;m ảnh hưởng đến uy t&iacute;n c&aacute; nh&acirc;n, mạng lưới quan hệ, v&agrave; cơ hội ph&aacute;t triển sự nghiệp sau n&agrave;y.&nbsp;</p>

<p>Dưới đ&acirc;y l&agrave; một số lợi &iacute;ch nh&acirc;n vi&ecirc;n IT c&oacute; được khi tu&acirc;n thủ quy tr&igrave;nh nghỉ việc chuẩn v&agrave; chuy&ecirc;n nghiệp (Theo:&nbsp;<a href="https://www.jeffersonfrank.com/insights/how-to-quit-a-tech-job" rel="noopener" target="_blank">Jefferson Frank</a>)</p>

<p>&nbsp;</p>

<p><img alt="quy-trinh-nghi-viec-01" src="https://itviec.com/blog/wp-content/uploads/2023/05/a%CC%89nh-minh-hoa%CC%A3-640x640.png" style="height:640px; width:640px" /></p>

<p><em>(Nh&acirc;n vi&ecirc;n IT cần tu&acirc;n thủ quy tr&igrave;nh nghỉ việc chuẩn. Nguồn ảnh: ITviec)</em></p>

<ul>
	<li><strong>Duy tr&igrave; được network nghề nghiệp</strong></li>
</ul>

<p>Việc c&oacute; được network rộng l&agrave; lợi thế lớn trong sự nghiệp. Cho d&ugrave; bạn th&iacute;ch hay kh&ocirc;ng th&iacute;ch giao tiếp x&atilde; hội th&igrave; sự thật vẫn l&agrave;: x&acirc;y dựng được một network chuy&ecirc;n nghiệp l&agrave; lợi thế lớn cho sự nghiệp của bạn.&nbsp;</p>

<p>Bằng c&aacute;ch duy tr&igrave; mối quan hệ t&iacute;ch cực với c&aacute;c đồng nghiệp v&agrave; c&ocirc;ng ty cũ, bạn c&oacute; thể khai th&aacute;c lợi &iacute;ch từ mạng lưới kết nối của m&igrave;nh.</p>

<ul>
	<li><strong>C&oacute; nguồn reference tốt</strong></li>
</ul>

<p>C&oacute; được một lời giới thiệu t&iacute;ch cực từ đồng nghiệp cũ hoặc sếp cũ l&agrave; v&ocirc; gi&aacute; đối với những ai đang t&igrave;m việc.&nbsp;</p>

<p>Theo&nbsp;<a href="https://www.wsj.com/articles/the-boss-doesnt-want-your-resume-1452025908" rel="noopener" target="_blank">một b&aacute;o c&aacute;o từ The Wall Street Journal</a>, reference l&agrave; một trong những nguồn tốt nhất để thu thập th&ocirc;ng tin li&ecirc;n quan đến người ứng tuyển. Tiến h&agrave;nh kiểm tra th&ocirc;ng tin từ người tham khảo (reference check) c&oacute; thể gi&uacute;p nh&agrave; tuyển dụng x&aacute;c định xem ứng vi&ecirc;n c&oacute; ph&ugrave; hợp hay kh&ocirc;ng ngay từ đầu để tiết kiệm thời gian v&agrave; c&ocirc;ng sức.&nbsp;</p>

<p>Những người nằm trong danh s&aacute;ch reference c&oacute; thể x&aacute;c thực c&aacute;c kỹ năng v&agrave; kinh nghiệm của bạn, gi&uacute;p bạn tạo ấn tượng tốt với nh&agrave; tuyển dụng, v&agrave; cung cấp th&ecirc;m th&ocirc;ng tin chi tiết nếu c&oacute; bất kỳ thắc mắc n&agrave;o. N&oacute;i c&aacute;ch kh&aacute;c, c&oacute; được reference uy t&iacute;n c&oacute; thể tạo n&ecirc;n lợi thế kh&aacute;c biệt, ảnh hưởng đến quyết định của nh&agrave; tuyển dụng v&agrave; gi&uacute;p bạn tăng cơ hội nhận được offer.</p>

<ul>
	<li><strong>Mở rộng cơ hội</strong></li>
</ul>

<p>Kh&ocirc;ng c&oacute; ng&agrave;nh n&agrave;o ph&aacute;t triển nhanh hơn ng&agrave;nh c&ocirc;ng nghệ với những cơ hội việc l&agrave;m mới xuất hiện mỗi ng&agrave;y. Bằng c&aacute;ch nghỉ việc một c&aacute;ch th&acirc;n thiện v&agrave; chuy&ecirc;n nghiệp, bạn đang kh&eacute;o l&eacute;o nắm giữ v&agrave; mở rộng c&aacute;c mối quan hệ &ndash; một trong những yếu tố mang đến nhiều cơ hội nghề nghiệp hấp dẫn hơn trong tương lai.</p>

<h2><strong>Quy tr&igrave;nh nghỉ việc chuẩn d&agrave;nh cho nh&acirc;n vi&ecirc;n IT</strong></h2>

<p>Quy tr&igrave;nh nghỉ việc l&agrave; một quy tr&igrave;nh gi&uacute;p nh&acirc;n vi&ecirc;n v&agrave; c&ocirc;ng ty giải quyết to&agrave;n bộ, đầy đủ, v&agrave; dứt điểm cho nh&acirc;n vi&ecirc;n khi họ rời khỏi c&ocirc;ng ty. Đối với nh&acirc;n vi&ecirc;n IT, việc t&igrave;m hiểu, thực hiện theo quy tr&igrave;nh nghỉ việc chuẩn (cho d&ugrave; c&ocirc;ng ty bạn c&oacute; &aacute;p dụng hay kh&ocirc;ng) l&agrave; một điều cần thiết để giữ g&igrave;n h&igrave;nh ảnh chuy&ecirc;n nghiệp, đảm bảo được nhận đầy đủ c&aacute;c ph&uacute;c lợi khi nghỉ việc, giữ được mối quan hệ tốt với đồng nghiệp cũ, v&agrave; l&agrave; tiền đề gi&uacute;p bạn sớm tiếp cận với cơ hội mới.</p>

<p>C&ocirc;ng ty hiện tại của bạn c&oacute; thể đ&atilde; c&oacute; một bộ quy tr&igrave;nh nghỉ việc cụ thể, trong đ&oacute; n&ecirc;u ra c&aacute;c quy định quan trọng về thời gian th&ocirc;ng b&aacute;o, quy tr&igrave;nh thanh l&yacute; v&agrave; nghĩa vụ hợp đồng. Bạn cần t&igrave;m hiểu quy tr&igrave;nh nghỉ việc của c&ocirc;ng ty trước khi bắt đầu thực hiện c&aacute;c thủ tục.&nbsp;</p>

<p>Thời gian kể từ l&uacute;c bạn th&ocirc;ng b&aacute;o nghỉ việc cho đến khi bạn ch&iacute;nh thức rời c&ocirc;ng ty thường đ&atilde; được đề cập trong hợp đồng l&agrave;m việc bạn đ&atilde; k&yacute;. Nếu bạn kh&ocirc;ng thể t&igrave;m thấy thời hạn th&ocirc;ng b&aacute;o trong hợp đồng ban đầu th&igrave; h&atilde;y hỏi ph&ograve;ng nh&acirc;n sự để t&igrave;m th&ocirc;ng tin n&agrave;y nh&eacute;!</p>
', N'1bf13508-9e3f-4a31-9ce2-b4992743ae3e.png', N'944212e8-4830-4a30-4578-08db7969c64d', CAST(N'2023-06-27T02:17:54.0000000' AS DateTime2), N'<p>Quy tr&igrave;nh nghỉ việc l&agrave; tập hợp c&aacute;c bước v&agrave; thủ tục bạn cần thực hiện để ngừng l&agrave;m việc tại một c&ocirc;ng ty. Tr&ecirc;n h&agrave;nh tr&igrave;nh theo đuổi sự nghiệp IT sẽ kh&ocirc;ng &iacute;t lần bạn phải tiến h&agrave;nh quy tr&igrave;nh nghỉ việc cho d&ugrave; bạn nghỉ việc tự nguyện hoặc do c&ocirc;ng ty sa thải.&nbsp;</p>

<p>Để quy tr&igrave;nh nghỉ việc (nếu bạn phải đối mặt) được diễn ra su&ocirc;n sẻ nhất c&oacute; thể, h&atilde;y c&ugrave;ng ITviec t&igrave;m hiểu những nội dung cần thiết sau:&nbsp;</p>

<p>&bull; V&igrave; sao nh&acirc;n vi&ecirc;n IT cần tu&acirc;n thủ quy tr&igrave;nh nghỉ việc chuẩn</p>

<p>&bull; C&aacute;c bước trong quy tr&igrave;nh nghỉ việc chuẩn d&agrave;nh cho nh&acirc;n vi&ecirc;n IT</p>

<p>&bull; Những lưu &yacute; quan trọng khi thực hiện quy tr&igrave;nh nghỉ việc đối với nh&acirc;n vi&ecirc;n IT</p>
', 298)
INSERT [dbo].[Blogs] ([Id], [Slug], [Author], [Title], [Content], [Image], [AppUserId], [CreateDate], [Description], [Popular]) VALUES (12, N'dien-toan-dam-may-la-gi-khai-niem-phan-loai-va-ung-dung', N'Thuy Trang', N'Điện toán đám mây là gì? Khái niệm, phân loại và ứng dụng', N'<h2><strong>Điện to&aacute;n đ&aacute;m m&acirc;y l&agrave; g&igrave;?&nbsp;</strong></h2>

<p>Điện to&aacute;n đ&aacute;m m&acirc;y l&agrave; g&igrave;? Điện to&aacute;n đ&aacute;m m&acirc;y l&agrave; c&ocirc;ng nghệ cho ph&eacute;p c&ocirc;ng ty v&agrave; người d&ugrave;ng ph&acirc;n phối t&agrave;i nguy&ecirc;n điện to&aacute;n qua mạng Internet, m&agrave; kh&ocirc;ng cần tự m&igrave;nh quản l&yacute; m&aacute;y chủ vật l&yacute;, hoặc phải c&agrave;i đặt c&aacute;c phần mềm quản l&yacute; tr&ecirc;n ch&iacute;nh thiết bị của họ.&nbsp;</p>

<p>T&agrave;i nguy&ecirc;n c&oacute; thể đưa &ldquo;l&ecirc;n m&acirc;y&rdquo; để quản l&yacute; từ bất cứ đ&acirc;u rất đa dạng, bao gồm: hệ điều h&agrave;nh, cơ sở hạ tầng, phần mềm, ứng dụng, bộ nhớ, dữ liệu, dịch vụ, lưu trữ, tin nhắn, sự kiện, thanh to&aacute;n&hellip;&nbsp;</p>

<h2>Điện to&aacute;n đ&aacute;m m&acirc;y hoạt động như thế n&agrave;o?</h2>

<p>Sau khi đ&atilde; hiểu điện to&aacute;n đ&aacute;m m&acirc;y l&agrave; g&igrave;, bạn sẽ cần hiểu c&aacute;ch m&agrave; điện to&aacute;n đ&aacute;m m&acirc;y hoạt động.</p>

<p>C&aacute;c t&agrave;i nguy&ecirc;n điện to&aacute;n sẽ nằm ở m&aacute;y chủ ảo (đ&aacute;m m&acirc;y), cho ph&eacute;p người d&ugrave;ng truy cập v&agrave; sử dụng từ c&aacute;c thiết bị kh&aacute;c nhau khi c&oacute; kết nối internet v&agrave; truy cập v&agrave;o m&aacute;y chủ ảo n&agrave;y. Doanh nghiệp kh&ocirc;ng tốn chi ph&iacute; v&agrave; c&ocirc;ng sức &ldquo;nu&ocirc;i&rdquo; số lượng lớn m&aacute;y chủ vật l&yacute;, m&agrave; c&oacute; thể mua c&aacute;c t&agrave;i nguy&ecirc;n điện to&aacute;n cần thiết từ c&aacute;c nh&agrave; cung cấp dịch vụ c&oacute; sẵn.</p>

<h3>&nbsp;</h3>

<p><img alt="điện toán đám mây là gì - itviec blog" src="https://itviec.com/blog/wp-content/uploads/2023/02/1-1.png" style="height:512px; width:640px" /></p>

<p>Nguồn nội dung @spiceworks.com</p>

<h2><strong>Ứng dụng của điện to&aacute;n đ&aacute;m m&acirc;y l&agrave; g&igrave;?</strong></h2>

<h3><strong>Lưu trữ đ&aacute;m m&acirc;y</strong></h3>

<p>Lưu trữ đ&aacute;m m&acirc;y l&agrave; ứng dụng phổ biến nhất của điện to&aacute;n đ&aacute;m m&acirc;y. Với dịch vụ n&agrave;y, người d&ugrave;ng c&oacute; thể xem, lưu trữ v&agrave; tải file như tập tin dữ liệu, h&igrave;nh ảnh video,.. từ m&aacute;y t&iacute;nh c&aacute; nh&acirc;n l&ecirc;n bộ nhớ tr&ecirc;n đ&aacute;m m&acirc;y v&agrave; ngược lại. Điện to&aacute;n đ&aacute;m m&acirc;y cũng cho ph&eacute;p chia sẻ dữ liệu v&agrave; cộng t&aacute;c trực tuyến.&nbsp;</p>

<p>V&iacute; dụ:&nbsp;<a href="https://www.dropbox.com/" rel="noopener" target="_blank">DropBox</a>,&nbsp;<a href="https://onedrive.com/" rel="noopener" target="_blank">OneDrive</a>,&nbsp;<a href="https://www.mediafire.com/" rel="noopener" target="_blank">Media Fire</a>,&nbsp;<a href="https://hotfile.io/" rel="noopener" target="_blank">Hot File</a>&nbsp;v&agrave;&nbsp;<a href="https://rapidshare.io/" rel="noopener" target="_blank">RapidShare</a>&hellip;</p>

<h3><strong>Tạo m&ocirc;i trường kiểm thử v&agrave; ph&aacute;t triển phần mềm</strong></h3>

<p>Điện to&aacute;n đ&aacute;m m&acirc;y cung cấp nhiều m&ocirc;i trường c&oacute; sẵn đa dạng v&agrave; linh hoạt, ph&ugrave; hợp với nhu cầu kiểm thử v&agrave; ph&aacute;t triển sản phẩm kh&aacute;c nhau của doanh nghiệp, gi&uacute;p cắt giảm thời gian v&agrave; chi ph&iacute; để thiết lập cơ sở hạ tầng CNTT cũng như nguồn nh&acirc;n lực.</p>

<h3><strong>Ph&acirc;n t&iacute;ch Big Data</strong></h3>

<p>Điện to&aacute;n đ&aacute;m m&acirc;y được doanh nghiệp ứng dụng v&agrave;o việc ph&acirc;n t&iacute;ch Big Data để thu được th&ocirc;ng tin chi tiết c&oacute; gi&aacute; trị về kinh doanh.</p>

<p>V&iacute; dụ: C&aacute;c nh&agrave; b&aacute;n lẻ sử dụng dữ liệu về xu hướng mua h&agrave;ng của kh&aacute;ch h&agrave;ng để c&oacute; kế hoạch tiếp thị cho một nh&oacute;m nh&acirc;n khẩu học nhất định.</p>

<h3><strong>Truyền ph&aacute;t sản phẩm giải tr&iacute;</strong></h3>

<p>Điện to&aacute;n đ&aacute;m m&acirc;y cho ph&eacute;p người d&ugrave;ng truy cập v&agrave;o c&aacute;c kho &acirc;m nhạc, phim ảnh, game online&hellip; tr&ecirc;n hầu hết mọi thiết bị, ở bất cứ đ&acirc;u bằng c&aacute;ch đăng nhập v&agrave;o t&agrave;i khoản của họ, đồng thời đơn vị ph&aacute;t triển cũng c&oacute; thể cập nhật nội dung, thay đổi giao diện,&hellip; ngay lập tức.</p>

<p>V&iacute; dụ:&nbsp;<a href="https://www.spotify.com/" rel="noopener" target="_blank">Spotify</a>,&nbsp;<a href="https://www.netflix.com/" rel="noopener" target="_blank">Netflix</a>,&hellip;</p>

<h3><strong>Quản l&yacute; thương mại điện tử</strong></h3>

<p>Doanh nghiệp thương mại điện tử c&oacute; thể tiết kiệm chi ph&iacute; v&agrave; quản l&yacute; hoạt động dễ d&agrave;ng tr&ecirc;n nền tảng đ&aacute;m m&acirc;y.</p>

<p>V&iacute; dụ:&nbsp;<a href="https://aws.amazon.com/" rel="noopener" target="_blank">Amazon</a>,&hellip;</p>

<h3><strong>Ứng dụng chỉnh sửa h&igrave;nh ảnh</strong></h3>

<p>Nhiều dịch vụ đ&aacute;m m&acirc;y cung cấp cho người d&ugrave;ng cuối c&aacute;c dịch vụ chỉnh sửa ảnh miễn ph&iacute; trong một giao diện đồ họa chung.&nbsp;</p>

<p>V&iacute; dụ:&nbsp;<a href="https://www.fotor.com/" rel="noopener" target="_blank">Fotor</a>,&nbsp;<a href="https://www.adobe.com/creativecloud.html" rel="noopener" target="_blank">Adobe Cloud</a>,&hellip;</p>

<h3><strong>Ứng dụng diệt virus</strong></h3>

<p>C&aacute;c ứng dụng diệt virus dựa v&agrave;o đ&aacute;m m&acirc;y gi&uacute;p dọn dẹp hệ thống định kỳ, bằng c&aacute;ch ph&aacute;t hiện virus, gửi b&aacute;o c&aacute;o đến trung t&acirc;m dữ liệu đ&aacute;m m&acirc;y v&agrave; khắc phục c&aacute;c mối đe dọa.</p>

<p>V&iacute; dụ:&nbsp;<a href="https://www.kaspersky.com/" rel="noopener" target="_blank">Kaspersky</a>, Sophos&hellip;</p>

<h3><strong>Ứng dụng họp trực tuyến</strong></h3>

<p>Điện to&aacute;n đ&aacute;m m&acirc;y cung cấp c&aacute;c m&aacute;y chủ ảo l&agrave; nền tảng của c&aacute;c ứng dụng họp trực tuyến, cho ph&eacute;p c&aacute;c c&aacute; nh&acirc;n kết nối, chia sẻ m&agrave;n h&igrave;nh v&agrave; chia sẻ bản tr&igrave;nh b&agrave;y tr&ecirc;n cơ sở thời gian thực</p>

<p>V&iacute; dụ:&nbsp;&nbsp;<a href="https://zoom.us/" rel="noopener" target="_blank">Zoom</a>,&nbsp;<a href="https://meet.google.com/" rel="noopener" target="_blank">Google Meet</a>,&nbsp;<a href="https://www.goto.com/" rel="noopener" target="_blank">GoTo</a>,&hellip;</p>

<h3><strong>Ứng dụng mạng x&atilde; hội</strong></h3>

<p>Một số ứng dụng social media dựa tr&ecirc;n điện to&aacute;n đ&aacute;m m&acirc;y cho ph&eacute;p h&agrave;ng triệu người d&ugrave;ng kết nối tr&ecirc;n cơ sở thời gian thực v&agrave; giao diện chung, từ bất cứ đ&acirc;u tr&ecirc;n thế giới.</p>

<p>V&iacute; dụ:&nbsp;<a href="https://www.facebook.com/login/" rel="noopener" target="_blank">Facebook</a>,&nbsp;<a href="https://www.microsoft.com/microsoft-365/yammer/yammer-overview" rel="noopener" target="_blank">Yammer</a>,&nbsp;<a href="https://twitter.com/" rel="noopener" target="_blank">Twitter</a>&nbsp;v&agrave;&nbsp;<a href="https://www.linkedin.com/" rel="noopener" target="_blank">LinkedIn</a>,&hellip;</p>

<h3><strong>GPS</strong></h3>

<p>Điện to&aacute;n đ&aacute;m m&acirc;y được ứng dụng trong dịch vụ hỗ trợ GPS cho người d&ugrave;ng cuối, với t&iacute;nh năng điều hướng tr&ecirc;n cơ sở thời gian thực.</p>

<p>V&iacute; dụ:&nbsp;<a href="https://maps.google.com/" rel="noopener" target="_blank">Google Maps</a>,&hellip;</p>

<blockquote>
<p>Tham khảo th&ecirc;m:&nbsp;<a href="https://itviec.com/blog/dinh-vi-vi-tri-geolocation-la-gi/" rel="noopener" target="_blank"><strong>Định vị vị tr&iacute; &ndash; Geolocation l&agrave; g&igrave;</strong></a><strong>? Lợi &iacute;ch v&agrave; Ứng dụng?</strong></p>
</blockquote>

<h3><strong>Giải ph&aacute;p back-up dữ liệu</strong></h3>

<p>Trong trường hợp sự cố diễn ra, dữ liệu c&oacute; thể bị mất vĩnh viễn nếu bị lưu trữ vật l&yacute;. Nhưng với điện to&aacute;n đ&aacute;m m&acirc;y, bạn c&oacute; thể chuẩn bị kế hoạch kh&ocirc;i phục dữ liệu một c&aacute;ch dễ d&agrave;ng bằng việc sao lưu trong một trung t&acirc;m dữ liệu dự ph&ograve;ng từ xa.</p>

<h2><strong>3 m&ocirc; h&igrave;nh triển khai điện to&aacute;n đ&aacute;m m&acirc;y</strong></h2>

<p><img alt="phân loại điện toán đám mây là gì - itviec blog" src="https://itviec.com/blog/wp-content/uploads/2023/02/2-1-e1675742667384.png" style="height:400px; width:640px" /></p>

<p>Nguồn nội dung @executech.com</p>
', N'7d9db93a-5ae9-494c-8215-aee65e0b578a.png', N'81e8a451-4305-4706-131b-08db7884c3ac', CAST(N'2023-06-28T02:21:56.0000000' AS DateTime2), N'<p><strong>Điện to&aacute;n đ&aacute;m m&acirc;y l&agrave; g&igrave;? Điện to&aacute;n đ&aacute;m m&acirc;y l&agrave; c&ocirc;ng nghệ đ&atilde; c&aacute;ch mạng h&oacute;a việc người d&ugrave;ng truy cập v&agrave; sử dụng t&agrave;i nguy&ecirc;n m&aacute;y t&iacute;nh. B&agrave;i viết dưới đ&acirc;y tổng hợp c&aacute;c kiến thức cần thiết gi&uacute;p bạn hiểu v&agrave; ph&acirc;n biệt được c&aacute;c giải ph&aacute;p điện to&aacute;n đ&aacute;m m&acirc;y, từ đ&oacute; c&oacute; chiến lược đ&uacute;ng đắn để ứng dụng hoặc ph&aacute;t triển sự nghiệp li&ecirc;n quan đến lĩnh vực n&agrave;y.</strong></p>
', 325)
INSERT [dbo].[Blogs] ([Id], [Slug], [Author], [Title], [Content], [Image], [AppUserId], [CreateDate], [Description], [Popular]) VALUES (13, N'jira-la-gi-huong-dan-su-dung-jira-software-chi-tiet-a-–-z-bang-hinh-anh', N'Tuong Uyen', N'Jira là gì? Hướng dẫn sử dụng Jira Software chi tiết A – Z bằng hình ảnh', N'<h2><strong>Jira l&agrave; g&igrave;?</strong></h2>

<p>Jira l&agrave; g&igrave;? Theo lời tự giới thiệu tr&ecirc;n&nbsp;<a href="https://www.atlassian.com/software/jira" rel="noopener" target="_blank">trang chủ&nbsp;</a>Jira Software:</p>

<blockquote>
<p>&ldquo;Jira Software l&agrave; c&ocirc;ng cụ quản l&yacute; dự &aacute;n Agile số 1 được c&aacute;c team phần mềm sử dụng để lập kế hoạch, theo d&otilde;i, ph&aacute;t h&agrave;nh v&agrave; hỗ trợ những phần mềm đẳng cấp thế giới.</p>

<p>Jira l&agrave; nguồn th&ocirc;ng tin ch&iacute;nh x&aacute;c duy nhất (SSOT &ndash; single source of truth) cho to&agrave;n bộ v&ograve;ng đời ph&aacute;t triển của bạn, trao quyền cho c&aacute;c team tự quản l&yacute; trong khi vẫn kết nối với mục ti&ecirc;u kinh doanh to&agrave;n cảnh.&rdquo;</p>
</blockquote>

<p>N&oacute;i ngắn gọn hơn, Jira l&agrave; một ứng dụng phần mềm được ph&aacute;t triển bởi c&ocirc;ng ty phần mềm&nbsp;<a href="https://www.atlassian.com/" rel="noopener" target="_blank">Atlassian</a>&nbsp;của &Uacute;c. Jira l&agrave; một c&ocirc;ng cụ quản l&yacute; c&ocirc;ng việc d&agrave;nh cho c&aacute;c team ph&aacute;t triển phần mềm, phục vụ cho mục đ&iacute;ch sắp xếp v&agrave; theo d&otilde;i c&ocirc;ng việc.</p>

<p>Jira cực kỳ linh hoạt v&agrave; c&oacute; thể dễ d&agrave;ng t&ugrave;y chỉnh để ph&ugrave; hợp với quy tr&igrave;nh l&agrave;m việc ri&ecirc;ng biệt của từng team, nghĩa l&agrave; mọi team, mọi vị tr&iacute; đều c&oacute; thể tham gia v&agrave; được ghi nhận sự đ&oacute;ng g&oacute;p trong qu&aacute; tr&igrave;nh ph&aacute;t triển sản phẩm với c&ocirc;ng cụ quản l&yacute; Jira.</p>

<blockquote>
<p>Theo Atlassian, 83% c&ocirc;ng ty trong danh s&aacute;ch Fortune 500 sử dụng Jira để quản l&yacute; dự &aacute;n của họ.</p>
</blockquote>

<p>Trước khi đến với hướng dẫn sử dụng Jira chi tiết, bạn cần hiểu r&otilde; một v&agrave;i thuật ngữ v&agrave; t&iacute;nh năng phổ biến của&nbsp;Jira l&agrave; g&igrave; nh&eacute;.</p>

<h2><strong>Những ứng dụng của Jira l&agrave; g&igrave;?</strong></h2>

<p>Jira Software hỗ trợ bất kỳ dự &aacute;n n&agrave;o sử dụng phương ph&aacute;p quản l&yacute;&nbsp;<a href="https://itviec.com/blog/agile-la-gi-scrum-la-gi/" rel="noopener" target="_blank">Agile</a>&nbsp;để ph&aacute;t triển phần mềm. Từ lập kế hoạch Agile đến t&ugrave;y chỉnh tự do c&aacute;c bảng Kanban v&agrave; Scrum, Jira cung cấp c&aacute;c c&ocirc;ng cụ cần thiết để ước t&iacute;nh, b&aacute;o c&aacute;o v&agrave; đo lường tốc độ c&ugrave;ng những quy tr&igrave;nh c&ocirc;ng việc được thiết kế ri&ecirc;ng nhằm ph&ugrave; hợp với&nbsp;<a href="https://itviec.com/blog/framework-la-gi-top-framework-pho-bien-nhat/" rel="noopener" target="_blank">framework</a>&nbsp;m&agrave; bạn chọn.</p>

<p>Cụ thể, Jira c&oacute; thể được d&ugrave;ng cho những mục đ&iacute;ch như:</p>

<ul>
	<li><a href="https://itviec.com/blog/project-manager-gioi/" rel="noopener" target="_blank">Quản l&yacute; dự &aacute;n</a>: Jira được trang bị để đảm nhận c&aacute;c y&ecirc;u cầu quản l&yacute; dự &aacute;n, bao gồm quản l&yacute; nhiệm vụ, ước t&iacute;nh quy tr&igrave;nh l&agrave;m việc, ghi nhật k&yacute; v&agrave; t&ugrave;y chỉnh, tạo b&aacute;o c&aacute;o dự &aacute;n, ph&acirc;n t&iacute;ch dự &aacute;n, trao quyền cho người d&ugrave;ng, th&ocirc;ng b&aacute;o qua email,&hellip;</li>
	<li>Ph&aacute;t triển phần mềm: Jira c&oacute; thể theo d&otilde;i issue v&agrave; backlog, lập kế hoạch ra mắt, t&iacute;ch hợp&nbsp;<a href="https://itviec.com/blog/ci-cd-la-gi/" rel="noopener" target="_blank">CI/CD</a>&nbsp;v&agrave; c&aacute;c c&ocirc;ng cụ d&agrave;nh cho developer,&hellip;</li>
	<li><a href="https://itviec.com/blog/kiem-thu-phan-mem-ai-lam-chang-duoc/" rel="noopener" target="_blank">Kiểm thử phần mềm</a>: Từ theo d&otilde;i bug đến đặt nhiệm vụ, Jira cho ph&eacute;p Tester xếp mức độ ưu ti&ecirc;n issue v&agrave; giải quyết c&aacute;c issue trong phần mềm.</li>
	<li>Quản l&yacute; sản phẩm: Kh&ocirc;ng chỉ quản l&yacute; dự &aacute;n, Jira cho ph&eacute;p&nbsp;<a href="https://itviec.com/blog/product-owner-la-gi/" rel="noopener" target="_blank">Product Owner</a>&nbsp;thiết lập, ho&agrave;n thiện bản đồ lộ tr&igrave;nh sản phẩm v&agrave; chia sẻ với c&aacute;c b&ecirc;n.</li>
</ul>

<p>Ở phần sau của b&agrave;i viết n&agrave;y, ITviec sẽ đi s&acirc;u v&agrave;o c&aacute;c t&iacute;nh năng v&agrave; thuật ngữ cụ thể của Jira m&agrave; bạn sẽ cần sử dụng thường xuy&ecirc;n nh&eacute;.</p>

<h2><strong>C&aacute;c thuật ngữ Jira thường d&ugrave;ng</strong></h2>

<h3><strong>Sprint trong Jira l&agrave; g&igrave;?</strong></h3>

<p>L&agrave; &ldquo;trung t&acirc;m&rdquo; của phương ph&aacute;p Scrum v&agrave; Agile, Sprint l&agrave; một khoảng thời gian ngắn v&agrave; c&oacute; hạn định để một team Scrum ho&agrave;n th&agrave;nh một khối lượng c&ocirc;ng việc đ&atilde; định. Sprint thường k&eacute;o d&agrave;i từ một đến bốn tuần.</p>

<p>Theo&nbsp;<a href="https://www.linkedin.com/in/cookmegan/" rel="noopener" target="_blank">Megan Cook</a>, Head of Product thuộc Jira Software tại Atlassian, &ldquo;Sprint gi&uacute;p c&aacute;c dự &aacute;n trở n&ecirc;n dễ quản l&yacute;, cho ph&eacute;p c&aacute;c team ho&agrave;n th&agrave;nh c&ocirc;ng việc chất lượng cao nhanh v&agrave; thường xuy&ecirc;n hơn, đồng thời gi&uacute;p họ linh hoạt hơn để th&iacute;ch ứng với thay đổi.&rdquo;</p>

<p>Sau mỗi Sprint, team của bạn sẽ đ&aacute;nh gi&aacute; lại những g&igrave; họ đ&atilde; ho&agrave;n th&agrave;nh trong Sprint vừa qua. Đ&acirc;y l&agrave; cơ hội để bạn c&oacute; thể giải th&iacute;ch, cập nhật tiến độ ph&aacute;t triển của bạn với c&aacute;c b&ecirc;n li&ecirc;n quan trước khi sản phẩm được đưa v&agrave;o production.</p>

<h3><strong>Backlog trong Jira l&agrave; g&igrave;?</strong></h3>

<p>Backlog l&agrave; nơi chứa c&aacute;c nhiệm vụ m&agrave; team của bạn cần hoặc sẽ thực hiện trong một dự &aacute;n. Bạn c&oacute; thể th&ecirc;m c&aacute;c nhiệm vụ n&agrave;y v&agrave;o một Sprint hoặc Board để mọi người trong c&ugrave;ng một team c&oacute; thể l&agrave;m việc với ch&uacute;ng theo mức độ ưu ti&ecirc;n.</p>

<p>Backlog đ&oacute;ng vai tr&ograve; kết nối giữa Product Owner v&agrave; team ph&aacute;t triển (Development Team). Product Owner c&oacute; thể tự sắp xếp mức độ ưu ti&ecirc;n của c&aacute;c nhiệm vụ trong backlog t&ugrave;y theo phản hồi của kh&aacute;ch h&agrave;ng, ước t&iacute;nh thời gian v&agrave; c&aacute;c y&ecirc;u cầu mới. Tuy nhi&ecirc;n, khi một nhiệm vụ đang được tiến h&agrave;nh, h&atilde;y hạn chế c&aacute;c thay đổi v&igrave; ch&uacute;ng c&oacute; thể l&agrave;m gi&aacute;n đoạn qu&aacute; tr&igrave;nh ph&aacute;t triển.</p>

<h3><a href="https://itviec.com/blog/scrum-master-la-gi/"><strong>Scrum</strong></a><strong>&nbsp;trong Jira l&agrave; g&igrave;?</strong></h3>

<p>Scrum l&agrave; một trong những quy tr&igrave;nh phổ biến nhất khi triển khai Agile, d&ugrave;ng để ph&aacute;t triển v&agrave; duy tr&igrave; những sản phẩm c&oacute; độ phức tạp cao. Scrum gi&uacute;p c&aacute;c team cấu tr&uacute;c v&agrave; quản l&yacute; c&ocirc;ng việc của họ th&ocirc;ng qua một tập hợp c&aacute;c gi&aacute; trị, nguy&ecirc;n tắc v&agrave; c&ocirc;ng thức đ&atilde; được chứng minh.</p>

<p>Scrum khuyến kh&iacute;ch mọi người học hỏi th&ocirc;ng qua kinh nghiệm, khả năng tự sắp xếp khi giải quyết vấn đề v&agrave; tự phản &aacute;nh về những điểm mạnh &ndash; điểm yếu của mỗi người để kh&ocirc;ng ngừng cải thiện.</p>

<p>Bạn c&oacute; thể t&igrave;m hiểu th&ecirc;m về Scrum tại&nbsp;<a href="https://scrumguides.org/" rel="noopener" target="_blank">Scrum Guides</a>&nbsp;do ch&iacute;nh Jeff Sutherland v&agrave; Ken Schwaber &ndash; những nh&agrave; s&aacute;ng lập ra kh&aacute;i niệm Scrum, tr&igrave;nh b&agrave;y.</p>

<h2><strong>Project trong Jira</strong></h2>

<p>Th&ocirc;ng thường, một project (dự &aacute;n) c&oacute; thể được định nghĩa l&agrave; một tập hợp c&aacute;c nhiệm vụ cần được ho&agrave;n th&agrave;nh để đạt được một kết quả nhất định. Trong Jira Software, một dự &aacute;n c&oacute; thể được coi l&agrave; một container d&ugrave;ng để sắp xếp v&agrave; theo d&otilde;i c&aacute;c nhiệm vụ hoặc issue đ&oacute; trong to&agrave;n bộ team.</p>

<p>Project trong Jira c&oacute; cấu h&igrave;nh cao v&agrave; c&oacute; thể dễ d&agrave;ng t&ugrave;y chỉnh để cấu tr&uacute;c tổ chức, quy tr&igrave;nh l&agrave;m việc hoặc mức độ trưởng th&agrave;nh của Agile, dễ d&agrave;ng ph&ugrave; hợp với c&aacute;ch l&agrave;m việc ri&ecirc;ng biệt của mỗi team. Bạn c&oacute; thể sử dụng project trong Jira để theo d&otilde;i v&agrave; giải quyết bug, khởi chạy t&iacute;nh năng mới, v&agrave; nhiều hơn nữa!</p>

<p>Bạn c&oacute; thể khởi tạo dự &aacute;n bằng thanh điều hướng ở đầu trang, trong danh s&aacute;ch đổ xuống&nbsp;<strong>Projects</strong>.</p>

<p>C&aacute;ch tạo project trong Jira. Nguồn ảnh: Jira Software</p>

<h2><strong>Board trong Jira</strong></h2>

<h3><strong>Board trong Jira l&agrave; g&igrave;?</strong></h3>

<p>Board l&agrave; một c&ocirc;ng cụ gi&uacute;p c&aacute;c team lập kế hoạch, trực quan h&oacute;a v&agrave; quản l&yacute; c&ocirc;ng việc. Trong Jira Software, board hiển thị một loạt c&aacute;c issue dưới dạng c&aacute;c cột, với mỗi cột đại diện cho một bước trong quy tr&igrave;nh l&agrave;m việc để ho&agrave;n th&agrave;nh c&ocirc;ng việc.</p>

<p>Theo mặc định, mỗi project trong Jira khi khởi tạo sẽ đi k&egrave;m với một board sẵn c&oacute;. Board cung cấp chế độ xem chung về tất cả c&ocirc;ng việc chưa bắt đầu (to-do), c&ocirc;ng việc đang tiến h&agrave;nh (in progress) v&agrave; c&ocirc;ng việc đ&atilde; ho&agrave;n th&agrave;nh (done).</p>

<p>Bạn c&oacute; thể tạo board&nbsp;<strong>+ Create board</strong>&nbsp;trong thanh menu b&ecirc;n tay tr&aacute;i, dưới mục&nbsp;<strong>Board</strong>.</p>

<p>C&aacute;ch tạo board trong Jira. Nguồn ảnh: Jira Software</p>

<h3><strong>C&oacute; thể tạo nhiều board trong một project kh&ocirc;ng?</strong></h3>

<p>Lưu &yacute;: Nếu bạn sử dụng&nbsp;<strong>project do team quản l&yacute;</strong>, bạn sẽ kh&ocirc;ng thể tạo nhiều board trong một project. Nếu bạn sử dụng&nbsp;<strong>project do c&ocirc;ng ty quản l&yacute;</strong>, bạn c&oacute; thể tạo nhiều board trong một project.</p>

<p>Trong Jira, bạn c&oacute; thể tạo nhiều board trong một project do c&ocirc;ng ty quản l&yacute;. Mỗi bảng sẽ chỉ hiển thị c&aacute;c issue ph&ugrave; hợp với c&aacute;c ti&ecirc;u ch&iacute; cụ thể m&agrave; bạn đ&atilde; đề ra. V&igrave; sao bạn n&ecirc;n d&ugrave;ng nhiều board trong c&ugrave;ng một project?</p>

<ul>
	<li>Một project thường sẽ gồm nhiều luồng c&ocirc;ng việc kh&aacute;c nhau do nhiều team c&ugrave;ng tham gia v&agrave;o trong một project. Mỗi team lại c&oacute; quy tr&igrave;nh c&ocirc;ng việc ri&ecirc;ng v&agrave; y&ecirc;u cầu cấu h&igrave;nh board kh&aacute;c nhau n&ecirc;n việc c&oacute; nhiều board cho mỗi luồng c&ocirc;ng việc kh&aacute;c sẽ gi&uacute;p c&aacute;c team theo d&otilde;i v&agrave; quản l&yacute; c&ocirc;ng việc của họ tự chủ hơn.</li>
	<li>C&aacute;c quy tr&igrave;nh l&agrave;m việc &ldquo;d&agrave;i hơi&rdquo; sẽ li&ecirc;n quan đến nhiều b&ecirc;n kh&aacute;c nhau. Bạn c&oacute; thể tạo từng board cho từng phần kh&aacute;c nhau của một quy tr&igrave;nh c&ocirc;ng việc d&agrave;i, gi&uacute;p quản l&yacute; c&aacute;c giai đoạn kh&aacute;c nhau của quy tr&igrave;nh dễ d&agrave;ng hơn.</li>
</ul>

<h3><strong>C&oacute; thể tạo board &ldquo;ch&eacute;o&rdquo; giữa c&aacute;c project kh&ocirc;ng?</strong></h3>

<p>Trong Jira, bạn c&oacute; thể tạo c&aacute;c board &ldquo;ch&eacute;o&rdquo; giữa c&aacute;c project để lấy issue từ nhiều project kh&aacute;c nhau. Thoạt nghe việc tạo board &ldquo;ch&eacute;o&rdquo; kh&ocirc;ng phổ biến lắm nhưng nhiều người d&ugrave;ng Jira đ&atilde; sử dụng t&iacute;nh năng n&agrave;y v&agrave;o một số trường hợp phổ biến như:</p>

<ul>
	<li>Chế độ xem t&oacute;m tắt d&agrave;nh cho cấp l&atilde;nh đạo: Tổ chức của bạn c&oacute; thể c&oacute; nhiều team v&agrave; project kh&aacute;c nhau. Việc tạo một board &ldquo;ch&eacute;o&rdquo; giữa c&aacute;c project c&oacute; thể gi&uacute;p cấp l&atilde;nh đạo c&oacute; c&aacute;i nh&igrave;n tổng quan v&agrave; theo d&otilde;i c&aacute;c nhiệm vụ tr&ecirc;n tất cả c&aacute;c team v&agrave; project.</li>
	<li>Một team l&agrave;m việc trong nhiều project: V&iacute; dụ, một team ph&aacute;t triển c&oacute; thể đang triển khai những t&iacute;nh năng, phần mềm cho nhiều project c&ugrave;ng một thời điểm. Một board ch&eacute;o giữa c&aacute;c project sẽ gi&uacute;p họ dễ d&agrave;ng theo d&otilde;i v&agrave; quản l&yacute; tất cả c&ocirc;ng việc cần l&agrave;m hơn.</li>
	<li>L&yacute; do bảo mật: V&iacute; dụ, bạn đang ph&aacute;t triển phần mềm cho nhiều kh&aacute;ch h&agrave;ng, v&agrave; bạn muốn cho kh&aacute;ch h&agrave;ng quyền truy cập v&agrave;o project tr&ecirc;n Jira để họ c&oacute; thể theo d&otilde;i tiến độ c&ocirc;ng việc chủ động hơn. Tuy nhi&ecirc;n, vẫn sẽ c&oacute; những board trong project bạn chỉ muốn team nội bộ biết th&ocirc;i. Vậy th&igrave;, thay v&igrave; tạo một dự &aacute;n mới v&agrave; cập nhật board thủ c&ocirc;ng, bạn c&oacute; thể tạo board &ldquo;ch&eacute;o&rdquo; v&agrave; chỉ chứa issue m&agrave; bạn muốn kh&aacute;ch h&agrave;ng xem.</li>
</ul>

<p>Bạn c&oacute; thể tạo board &ldquo;ch&eacute;o&rdquo; giữa c&aacute;c project như sau:</p>

<ol>
	<li>Tạo bộ lọc t&ugrave;y chỉnh bằng&nbsp;<a href="https://www.atlassian.com/software/jira/guides/jql/overview#what-is-jql" rel="noopener" target="_blank">Jira Query Language (JQL)</a>&nbsp;từ thanh điều hướng tr&ecirc;n c&ugrave;ng&nbsp;<strong>Filters &gt; Advanced issue search</strong>.</li>
	<li>Tạo board trong một project do c&ocirc;ng ty quản l&yacute;.
	<ol>
		<li>Điều hướng đến&nbsp;<strong>Board</strong>&nbsp;tr&ecirc;n thanh menu b&ecirc;n tr&aacute;i. Mở danh s&aacute;ch xổ xuống v&agrave; chọn&nbsp;<strong>+ Create Board</strong>.</li>
		<li>Chọn&nbsp;<strong>Scrum</strong>&nbsp;hoặc&nbsp;<strong>Kanban</strong>.</li>
	</ol>
	</li>
	<li>&Aacute;p dụng bộ lọc cho board.
	<ol>
		<li>Chọn&nbsp;<strong>Board from an existing Saved Filter</strong>.</li>
		<li>Đặt t&ecirc;n cho board mới.</li>
		<li>T&igrave;m bộ lọc bạn đ&atilde; thiết lập.</li>
		<li>Chọn&nbsp;<strong>Create Board</strong>.</li>
	</ol>
	</li>
	<li>Trong board mới tạo n&agrave;y, bạn c&oacute; thể li&ecirc;n kết hoặc hủy li&ecirc;n kết trạng th&aacute;i giữa c&aacute;c cột tr&ecirc;n board n&agrave;y m&agrave; kh&ocirc;ng ảnh hưởng đến c&aacute;c board kh&aacute;c.</li>
</ol>
', N'd8efe74c-6e86-4db1-a388-c94317b2cb78.png', N'a8545ec6-809f-4723-924c-08db79360ded', CAST(N'2023-06-29T02:23:15.0000000' AS DateTime2), N'<p><strong>Jira l&agrave; g&igrave;? Jira Software l&agrave; một c&ocirc;ng cụ quản l&yacute; dự &aacute;n hiệu quả v&agrave; được ưa chuộng bởi nhiều doanh nghiệp lớn. Nếu bạn l&agrave; người mới sử dụng, bạn c&oacute; thể sẽ thấy Jira giống như một &ldquo;ma trận&rdquo; v&agrave; hơi kh&oacute; khăn khi sử dụng. Khoan sợ h&atilde;i, h&atilde;y c&ugrave;ng ITviec t&igrave;m hiểu v&agrave; kh&aacute;m ph&aacute; c&aacute;ch sử dụng Jira một c&aacute;ch ch&iacute;nh x&aacute;c!</strong></p>
', 146)
INSERT [dbo].[Blogs] ([Id], [Slug], [Author], [Title], [Content], [Image], [AppUserId], [CreateDate], [Description], [Popular]) VALUES (14, N'mongodb-la-gi-dinh-nghia-va-hieu-ro-a-z-ve-mongodb', N'Ngoc Anh', N'MongoDB là gì? Định nghĩa và Hiểu rõ A-Z về MongoDB', N'<h2><strong>MongoDB l&agrave; g&igrave;?</strong></h2>

<p><strong>MongoDB</strong>&nbsp;l&agrave; một phần mềm m&atilde; nguồn mở d&ugrave;ng để quản trị cơ sở dữ liệu NoSQL.</p>

<blockquote>
<p>NoSQL (Not only SQL) được sử dụng thay thế cho cơ sở dữ liệu quan hệ (Relational Database &ndash; RDB) truyền thống. Cơ sở dữ liệu NoSQL kh&aacute; hữu &iacute;ch trong khi l&agrave;m việc với c&aacute;c tập dữ liệu ph&acirc;n t&aacute;n lớn. MongoDB l&agrave; một c&ocirc;ng cụ c&oacute; thể quản l&yacute; th&ocirc;ng tin hướng document cũng như lưu trữ hoặc truy xuất th&ocirc;ng tin.</p>

<p>Trong khi đ&oacute;, ng&ocirc;n ngữ truy vấn c&oacute; cấu tr&uacute;c (<a href="https://itviec.com/blog/sql-la-gi/" rel="noopener" target="_blank">SQL</a>) l&agrave; ng&ocirc;n ngữ lập tr&igrave;nh được ti&ecirc;u chuẩn h&oacute;a, d&ugrave;ng để quản l&yacute; cơ sở dữ liệu quan hệ. Dữ liệu được chuẩn h&oacute;a SQL dưới dạng schema v&agrave; table v&agrave; mọi table đều c&oacute; cấu tr&uacute;c cố định.</p>
</blockquote>

<p>Hiện nay, c&oacute; nhiều c&ocirc;ng ty to&agrave;n cầu sử dụng MongoDB để lưu trữ lượng dữ liệu &ldquo;khổng lồ&rdquo; của họ như Facebook, Nokia, eBay, Adobe, Google,&hellip;</p>

<blockquote>
<p><a href="https://itviec.com/it-jobs/mongodb" rel="noopener" target="_blank">Việc l&agrave;m MongoDB</a>&nbsp;&ldquo;chất&rdquo; to&agrave;n quốc tr&ecirc;n ITviec!</p>
</blockquote>

<h2><strong>C&ocirc;ng dụng của MongoDB</strong></h2>

<p>MongoDB gi&uacute;p c&aacute;c tổ chức lưu trữ lượng lớn dữ liệu trong khi vẫn hoạt động nhanh ch&oacute;ng. Ngo&agrave;i lưu trữ dữ liệu, MongoDB c&ograve;n được sử dụng trong c&aacute;c trường hợp sau:</p>

<ul>
	<li>T&iacute;ch hợp một lượng lớn dữ liệu đa dạng</li>
	<li>M&ocirc; tả c&aacute;c cấu tr&uacute;c dữ liệu phức tạp, biến ho&aacute;</li>
	<li>Cung cấp dữ liệu cho c&aacute;c ứng dụng hiệu suất cao</li>
	<li>Hỗ trợ c&aacute;c ứng dụng&nbsp;<a href="https://itviec.com/blog/dien-toan-dam-may/" rel="noopener" target="_blank">đ&aacute;m m&acirc;y lai</a>&nbsp;v&agrave; đa đ&aacute;m m&acirc;y</li>
	<li>Hỗ trợ phương ph&aacute;p ph&aacute;t triển&nbsp;<a href="https://itviec.com/blog/agile-la-gi-scrum-la-gi/" rel="noopener" target="_blank">Agile</a></li>
</ul>

<p>Thay v&igrave; sử dụng c&aacute;c table v&agrave; row như trong cơ sở dữ liệu quan hệ, v&igrave; l&agrave; cơ sở dữ liệu NoSQL, MongoDB được tạo th&agrave;nh từ collection v&agrave; document. Document được tạo th&agrave;nh từ c&aacute;c cặp kh&oacute;a-gi&aacute; trị (l&agrave; đơn vị dữ liệu cơ bản của MongoDB). C&ograve;n collection, tương đương với table trong SQL, l&agrave; nơi chứa c&aacute;c bộ document.</p>

<p>Để hiểu r&otilde; hơn về c&aacute;ch MongoDB lưu trữ dữ liệu, bạn đọc tiếp trong phần tiếp theo nh&eacute;.</p>

<h2><strong>C&aacute;c thuật ngữ MongoDB thường d&ugrave;ng</strong></h2>

<h3><strong>_id</strong></h3>

<p>_id l&agrave; một trường bắt buộc trong mọi document của MongoDB. _id được sử dụng để đại diện cho t&iacute;nh duy nhất của một document trong một collection. Trường _id hoạt động giống như kh&oacute;a ch&iacute;nh (primary key) của document.</p>

<p>_id l&agrave; một số thập lục ph&acirc;n 12 byte đảm bảo t&iacute;nh duy nhất của mọi document. Bạn c&oacute; thể cung cấp _id trong khi ch&egrave;n document. Trong 12 byte n&agrave;y:</p>

<ul>
	<li>4 byte đầu ti&ecirc;n đại diện cho thời điểm hiện tại (dựa tr&ecirc;n hệ gi&acirc;y của Unix Epoch);</li>
	<li>3 byte tiếp theo cho id m&aacute;y;</li>
	<li>2 byte tiếp theo cho process id của m&aacute;y chủ MongoDB;</li>
	<li>3 byte cuối c&ugrave;ng l&agrave; gi&aacute; trị gia tăng đơn giản.</li>
</ul>

<p>Nếu bạn kh&ocirc;ng cung cấp được số id th&igrave; MongoDB sẽ tự động cung cấp một id duy nhất cho document của bạn.</p>

<h3><strong>Document</strong></h3>

<p>Document l&agrave; đơn vị lưu trữ dữ liệu cơ bản trong cơ sở dữ liệu MongoDB. Document mang vai tr&ograve; tương tự như row trong c&aacute;c hệ thống cơ sở dữ liệu quan hệ truyền thống.</p>

<p>Document l&agrave; một c&aacute;ch để sắp xếp v&agrave; lưu trữ dữ liệu dưới dạng một tập hợp c&aacute;c cặp field-value. Document trong MongoDB kh&ocirc;ng cần phải c&oacute; c&ugrave;ng một bộ field hoặc cấu tr&uacute;c với c&aacute;c document kh&aacute;c trong c&ugrave;ng một collection.</p>

<p>Đồng thời, c&aacute;c field chung trong document của một collection c&oacute; thể chứa c&aacute;c loại dữ liệu kh&aacute;c nhau.</p>

<h3><strong>Collection</strong></h3>

<p>Collection l&agrave; một tập hợp c&aacute;c document MongoDB. Collection tương tự như table trong hệ thống cơ sở dữ liệu quan hệ. C&aacute;c collection c&oacute; t&iacute;nh chất schema less, do đ&oacute; c&aacute;c document trong c&ugrave;ng một collection c&oacute; thể c&oacute; c&aacute;c trường kh&aacute;c nhau.</p>

<p>Th&ocirc;ng thường, một collection chứa c&aacute;c document c&oacute; mục đ&iacute;ch tương tự hoặc li&ecirc;n quan với nhau.</p>

<h3><strong>Database</strong></h3>

<p>Trong MongoDB, database l&agrave; một container vật l&yacute; chứa tập hợp c&aacute;c collection. Một database c&oacute; thể chứa 0 collection hoặc nhiều collection.</p>

<p>Một phi&ecirc;n bản m&aacute;y chủ MongoDB c&oacute; thể lưu trữ nhiều database v&agrave; kh&ocirc;ng c&oacute; giới hạn về số lượng database c&oacute; thể được lưu trữ tr&ecirc;n một phi&ecirc;n bản, nhưng giới hạn ở kh&ocirc;ng gian bộ nhớ ảo c&oacute; thể được ph&acirc;n bổ bởi hệ điều h&agrave;nh.</p>

<h2><strong>Mối tương quan giữa thuật ngữ MongoDB v&agrave; RDBMS</strong></h2>

<table>
	<tbody>
		<tr>
			<td><strong>RDBMS</strong></td>
			<td><strong>MongoDB</strong></td>
		</tr>
		<tr>
			<td>Database</td>
			<td>Database</td>
		</tr>
		<tr>
			<td>Table</td>
			<td>Collection</td>
		</tr>
		<tr>
			<td>Tuple/Row</td>
			<td>Document</td>
		</tr>
		<tr>
			<td>Column</td>
			<td>Field</td>
		</tr>
		<tr>
			<td>Table Join</td>
			<td>Embedded Documents</td>
		</tr>
		<tr>
			<td>Primary Key</td>
			<td>Primary Key (Kh&oacute;a mặc định _id do ch&iacute;nh MongoDB cung cấp)</td>
		</tr>
	</tbody>
</table>

<blockquote>
<p><a href="https://itviec.com/it-jobs/mongodb/ho-chi-minh-hcm" rel="noopener" target="_blank">Việc l&agrave;m MongoDB ở TP. HCM</a>&nbsp;&ldquo;chất&rdquo; tr&ecirc;n ITviec!</p>

<p><a href="https://itviec.com/it-jobs/mongodb/ha-noi" rel="noopener" target="_blank">Việc l&agrave;m MongoDB ở H&agrave; Nội</a>&nbsp;&ldquo;chất&rdquo; tr&ecirc;n ITviec!</p>
</blockquote>

<h2><strong>MongoDB hoạt động như thế n&agrave;o?</strong></h2>

<h3><strong>MongoDB lưu trữ dữ liệu như thế n&agrave;o?</strong></h3>

<p>Như ch&uacute;ng ta biết rằng MongoDB l&agrave; một m&aacute;y chủ cơ sở dữ liệu v&agrave; dữ liệu được lưu trữ trong c&aacute;c cơ sở dữ liệu n&agrave;y. Hay n&oacute;i c&aacute;ch kh&aacute;c, m&ocirc;i trường MongoDB cung cấp cho bạn một m&aacute;y chủ m&agrave; bạn c&oacute; thể khởi động v&agrave; sau đ&oacute; tạo nhiều cơ sở dữ liệu tr&ecirc;n đ&oacute; bằng MongoDB.</p>

<p>Nhờ v&agrave;o cơ sở dữ liệu NoSQL,&nbsp;<strong>dữ liệu được lưu trữ dưới dạng collection v&agrave; document</strong>. Do đ&oacute;, cơ sở dữ liệu, collection v&agrave; document c&oacute; mối li&ecirc;n hệ với nhau như h&igrave;nh dưới đ&acirc;y:</p>

<p>Trong m&aacute;y chủ MongoDB, bạn c&oacute; thể tạo nhiều cơ sở dữ liệu v&agrave; nhiều collection.</p>

<p>C&aacute;ch cơ sở dữ liệu MongoDB chứa c&aacute;c collection cũng giống như c&aacute;ch cơ sở dữ liệu MySQL chứa c&aacute;c table.</p>

<p><strong>B&ecirc;n trong collection, ch&uacute;ng ta c&oacute; document.</strong>&nbsp;C&aacute;c document n&agrave;y chứa dữ liệu m&agrave; bạn muốn lưu trữ trong cơ sở dữ liệu MongoDB v&agrave; một collection c&oacute; thể chứa nhiều document. Đồng thời, với t&iacute;nh chất schema-less (kh&ocirc;ng cần một cấu tr&uacute;c lưu trữ dữ liệu), document n&agrave;y kh&ocirc;ng nhất thiết phải giống với document kh&aacute;c.</p>

<p>C&aacute;c document được tạo bằng c&aacute;ch sử dụng c&aacute;c field (trường). C&aacute;c field l&agrave; c&aacute;c cặp kh&oacute;a-gi&aacute; trị trong document, giống như c&aacute;c column trong cơ sở dữ liệu quan hệ. Gi&aacute; trị của c&aacute;c field c&oacute; thể l&agrave; bất kỳ loại dữ liệu BSON n&agrave;o như double, string, boolean, v.v.</p>

<p>MongoDB lưu trữ dữ liệu ở định dạng BSON document. Ở đ&acirc;y, BSON l&agrave; đại diện cho định dạng m&atilde; ho&aacute; nhị ph&acirc;n của c&aacute;c t&agrave;i liệu JSON (chữ B trong BSON l&agrave; viết tắt của Binary). Hay n&oacute;i c&aacute;ch kh&aacute;c, trong phần backend, m&aacute;y chủ MongoDB chuyển đổi dữ liệu JSON th&agrave;nh dạng nhị ph&acirc;n, được gọi l&agrave; BSON, v&agrave; BSON n&agrave;y c&oacute; thể được lưu trữ v&agrave; truy vấn hiệu quả hơn.</p>

<p>K&iacute;ch thước tối đa của BSON document l&agrave; 16 MB.</p>

<p>Trong MongoDB document, bạn được ph&eacute;p lưu trữ dữ liệu lồng nhau. Việc lồng dữ liệu n&agrave;y cho ph&eacute;p bạn tạo c&aacute;c mối quan hệ phức tạp giữa dữ liệu v&agrave; lưu trữ ch&uacute;ng trong c&ugrave;ng một document, gi&uacute;p cho qu&aacute; tr&igrave;nh l&agrave;m việc v&agrave; t&igrave;m nạp dữ liệu hiệu quả hơn so với SQL.</p>

<h3><strong>MongoDB hoạt động như thế n&agrave;o?</strong></h3>

<p>MongoDB hoạt động với hai layer:</p>

<ul>
	<li>Layer Ứng dụng</li>
	<li>Layer Dữ liệu</li>
</ul>

<p>Layer Ứng dụng c&ograve;n được gọi l&agrave; Layer Trừu tượng Cuối c&ugrave;ng (Final Abstraction Layer), gồm hai phần, đầu ti&ecirc;n l&agrave; Front-end (Giao diện người d&ugrave;ng) v&agrave; thứ hai l&agrave; Back-end (m&aacute;y chủ):</p>

<ul>
	<li><strong>Giao diện người d&ugrave;ng</strong>&nbsp;l&agrave; nơi người d&ugrave;ng sử dụng MongoDB với sự trợ gi&uacute;p của Web hoặc Di động. Web v&agrave; thiết bị di động n&agrave;y bao gồm c&aacute;c trang web, ứng dụng di động, ứng dụng mặc định của Android, ứng dụng iOS, v.v.</li>
	<li>Phần back-end chứa một&nbsp;<strong>m&aacute;y chủ</strong>&nbsp;được sử dụng để thực hiện logic ph&iacute;a m&aacute;y chủ v&agrave; cũng chứa tr&igrave;nh điều khiển hoặc MongoDB shell để tương t&aacute;c với m&aacute;y chủ MongoDB với sự trợ gi&uacute;p của truy vấn.</li>
</ul>

<blockquote>
<p>MongoDB shell l&agrave; một bảng điều khiển JavaScript tương t&aacute;c với MongoDB m&agrave; bạn c&oacute; thể sử dụng để kết nối với m&aacute;y chủ cơ sở dữ liệu v&agrave; thực thi c&aacute;c lệnh tr&ecirc;n đ&oacute;, cho ph&eacute;p bạn thực hiện c&aacute;c t&aacute;c vụ quản trị v&agrave; đọc, viết hoặc thao t&aacute;c dữ liệu trực tiếp.</p>
</blockquote>

<p>C&aacute;c truy vấn n&agrave;y được gửi đến m&aacute;y chủ MongoDB thuộc Layer Dữ liệu. B&acirc;y giờ, m&aacute;y chủ MongoDB nhận c&aacute;c truy vấn v&agrave; chuyển c&aacute;c truy vấn đ&atilde; nhận tới c&ocirc;ng cụ lưu trữ v&igrave; bản th&acirc;n m&aacute;y chủ MongoDB kh&ocirc;ng trực tiếp đọc hoặc ghi dữ liệu v&agrave;o tệp hoặc đĩa hoặc bộ nhớ.</p>

<p>Sau khi chuyển c&aacute;c truy vấn nhận được tới bộ m&aacute;y lưu trữ, bộ m&aacute;y lưu trữ chịu tr&aacute;ch nhiệm đọc hoặc ghi dữ liệu trong tệp hoặc bộ nhớ.</p>
', N'13cd5e0c-5d2f-4ffb-a25b-a62a334253e7.png', N'cd6a3852-872c-42e6-56cc-08db7971d697', CAST(N'2023-06-30T02:24:17.0000000' AS DateTime2), N'<p><strong>Được ph&aacute;t h&agrave;nh lần đầu v&agrave;o th&aacute;ng 2 năm 2009, MongoDB l&agrave; một cơ sở dữ liệu hướng document m&atilde; nguồn mở được thiết kế để lưu trữ một lượng lớn dữ liệu v&agrave; cho ph&eacute;p bạn l&agrave;m việc với nguồn dữ liệu đ&oacute; một c&aacute;ch hiệu quả. Nhưng điều g&igrave; thật sự khiến MongoDB nổi bật giữa c&aacute;c phần mềm quản l&yacute; cơ sở dữ liệu kh&aacute;c?</strong></p>
', 146)
INSERT [dbo].[Blogs] ([Id], [Slug], [Author], [Title], [Content], [Image], [AppUserId], [CreateDate], [Description], [Popular]) VALUES (15, N'cam-nang-gioi-thieu-ban-than-bang-tieng-anh-danh-cho-developer-“chat”', N'Anh Khoa', N'Cẩm nang giới thiệu bản thân bằng tiếng Anh dành cho Developer “chất”', N'<h2><strong>Vai tr&ograve; của phần &ldquo;Giới thiệu bản th&acirc;n&rdquo; trong buổi phỏng vấn</strong></h2>

<p>Giới thiệu bản th&acirc;n l&agrave; phần bắt buộc trong tất cả c&aacute;c buổi phỏng vấn v&agrave; l&agrave; phần gi&uacute;p ứng vi&ecirc;n g&acirc;y ấn tượng tốt đẹp với nh&agrave; tuyển dụng. Th&ocirc;ng qua c&aacute;ch ứng vi&ecirc;n giới thiệu về bản th&acirc;n m&igrave;nh, nh&agrave; tuyển dụng sẽ đ&aacute;nh gi&aacute; phong th&aacute;i, mức độ tự tin cũng như sự kết nối ban đầu.&nbsp;</p>

<p>Nếu c&oacute; thể l&agrave;m tốt ở giai đoạn n&agrave;y th&igrave; bạn sẽ c&agrave;ng c&oacute; nhiều cơ hội th&agrave;nh c&ocirc;ng v&agrave; dễ d&agrave;ng ghi điểm với nh&agrave; tuyển dụng v&igrave; vốn dĩ &ocirc;ng b&agrave; ta vẫn c&oacute; c&acirc;u &ldquo;Đầu xu&ocirc;i, đu&ocirc;i lọt&rdquo;.</p>

<h2><strong>Khi n&agrave;o th&igrave; n&ecirc;n giới thiệu bản th&acirc;n bằng tiếng Anh trước nh&agrave; tuyển dụng?</strong></h2>

<p>&nbsp;</p>

<p><img alt="giới thiệu bản thân bằng tiếng anh Developer khi phỏng vấn" src="https://itviec.com/blog/wp-content/uploads/2022/04/gioi-thieu-ban-than-bang-tieng-anh-01.jpg" style="height:361px; width:640px" /></p>

<p>Kh&ocirc;ng &iacute;t ứng vi&ecirc;n muốn tạo sự kh&aacute;c biệt v&agrave; thể hiện tr&igrave;nh độ tiếng Anh ưu t&uacute; của m&igrave;nh với nh&agrave; tuyển dụng n&ecirc;n vẫn lựa chọn giới thiệu bản th&acirc;n bằng tiếng Anh d&ugrave; ứng tuyển cho c&ocirc;ng ty Việt Nam v&agrave; nh&agrave; tuyển dụng kh&ocirc;ng y&ecirc;u cầu.</p>

<p>Tuy nhi&ecirc;n, để phần giới thiệu mang lại hiệu quả cao nhất, bạn vẫn n&ecirc;n l&agrave;m r&otilde; với nh&agrave; tuyển dụng ngay từ đầu nếu kh&ocirc;ng chắc chắn v&agrave; ch&uacute; &yacute; đến c&aacute;c yếu tố xung quanh (v&iacute; dụ: bản m&ocirc; tả c&ocirc;ng việc được đăng tuyển bằng tiếng Anh hay tiếng Việt, y&ecirc;u cầu c&ocirc;ng việc c&oacute; đề cập đến việc sử dụng tiếng Anh hay kh&ocirc;ng, c&oacute; sếp người nước ngo&agrave;i xuất hiện trong buổi phỏng vấn hay kh&ocirc;ng&hellip;)&nbsp;</p>

<p>Th&ocirc;ng thường, bạn chỉ n&ecirc;n giới thiệu bản th&acirc;n bằng tiếng Anh nếu nh&agrave; tuyển dụng chủ động mở lời hoặc họ trực tiếp đề nghị bạn bằng tiếng Anh ngay khi bước v&agrave;o buổi phỏng vấn.</p>

<blockquote>
<p>Bạn chuẩn bị c&oacute; một buổi phỏng vấn với HR Manager?</p>

<p><a href="https://itviec.com/blog/quy-trinh-phong-van-it/" rel="noopener" target="_blank"><strong>Trọn bộ &ldquo;b&iacute; k&iacute;p&rdquo; chinh phục HR Manager (P1): Cần chuẩn bị g&igrave; trước khi tham gia phỏng vấn IT?</strong></a></p>

<p><a href="https://itviec.com/blog/kinh-nghiem-phong-van-it/" rel="noopener" target="_blank"><strong>Trọn bộ &ldquo;b&iacute; quyết&rdquo; chinh phục HR Manager (P2): Kinh nghiệm phỏng vấn d&agrave;nh cho d&acirc;n IT</strong></a></p>
</blockquote>

<h2><strong>Những lưu &yacute; gi&uacute;p Developer giới thiệu bản th&acirc;n bằng tiếng Anh chuy&ecirc;n nghiệp hơn</strong></h2>

<h3><strong>Lu&ocirc;n lấy vị tr&iacute; bạn ứng tuyển l&agrave;m trung t&acirc;m cho phần giới thiệu</strong></h3>

<p>Rất nhiều ứng vi&ecirc;n (bao gồm Developer) lẫn lộn việc giữa việc giới thiệu bản th&acirc;n trước đ&aacute;m đ&ocirc;ng v&agrave; giới thiệu bản th&acirc;n trong v&ograve;ng phỏng vấn, trước nh&agrave; tuyển dụng.</p>

<p>Kh&ocirc;ng nhận thức được sự kh&aacute;c biệt dẫn đến việc bạn chỉ giới thiệu những th&ocirc;ng tin b&ecirc;n lề như họ t&ecirc;n, sở th&iacute;ch&hellip; m&agrave; qu&ecirc;n đề cập đến kinh nghiệm l&agrave;m việc hay những th&ocirc;ng tin mang t&iacute;nh chất bắc cầu, c&oacute; t&iacute;nh li&ecirc;n kết với vị tr&iacute; bạn đang phỏng vấn. Trong khi đ&acirc;y lại l&agrave; những th&ocirc;ng tin quan trọng m&agrave; nh&agrave; tuyển dụng quan t&acirc;m.&nbsp;B&iacute; quyết d&agrave;nh cho bạn l&agrave; h&atilde;y lu&ocirc;n lấy vị tr&iacute; ứng tuyển l&agrave;m tiền đề triển khai cho c&aacute;c c&acirc;u giới thiệu trong buổi phỏng vấn.&nbsp;</p>

<p>Chẳng hạn, sau khi giới thiệu t&ecirc;n tuổi, bạn c&oacute; thể tiếp tục với c&aacute;c nội dung như ng&agrave;nh nghề tốt nghiệp (nếu c&oacute; li&ecirc;n quan đến c&ocirc;ng việc), c&ocirc;ng việc hiện tại, c&ocirc;ng việc trong qu&aacute; khứ v&agrave; số năm kinh nghiệm, mục ti&ecirc;u cho tương lai l&agrave; g&igrave; v&agrave; mục ti&ecirc;u ngắn hạn khi bạn quyết định ứng tuyển c&ocirc;ng việc n&agrave;y l&agrave; g&igrave;&hellip;</p>

<p>Bạn cũng c&oacute; thể n&oacute;i th&ecirc;m về t&iacute;nh c&aacute;ch v&agrave; c&aacute;c sở th&iacute;ch c&aacute; nh&acirc;n, tuy nhi&ecirc;n, h&atilde;y thật kh&eacute;o l&eacute;o khi diễn đạt.&nbsp;</p>

<blockquote>
<p>V&iacute; dụ: C&ocirc;ng việc bạn đang phỏng vấn l&agrave;&nbsp;<a href="https://itviec.com/it-jobs/ui-ux-developer" rel="noopener" target="_blank">UI UX Developer</a>&nbsp;=&gt; Bạn c&oacute; thể chia sẻ bạn l&agrave; người th&iacute;ch kh&aacute;m ph&aacute; những điều mới mẻ, thường ch&uacute; &yacute; đến chi tiết v&agrave; c&oacute; khả năng giao tiếp, l&agrave;m việc nh&oacute;m tốt. Sở th&iacute;ch của bạn l&agrave; thiết kế, vẽ tranh, học code khi rảnh rỗi&hellip;&nbsp;</p>
</blockquote>

<p>T&oacute;m lại, phần giới thiệu của bạn c&agrave;ng c&oacute; nhiều điểm tương đồng với y&ecirc;u cầu của vị tr&iacute; c&ocirc;ng việc th&igrave; bạn c&agrave;ng dễ g&acirc;y thiện cảm với nh&agrave; tuyển dụng.</p>

<h3><strong>Giới thiệu những th&ocirc;ng tin cơ bản trước</strong></h3>

<p>Để phần giới thiệu bản th&acirc;n bằng tiếng Anh của bạn tăng t&iacute;nh thống nhất, bạn n&ecirc;n tr&igrave;nh b&agrave;y theo thứ tự th&ocirc;ng tin từ cơ bản đến phức tạp hơn. Dưới đ&acirc;y l&agrave; c&aacute;c phần th&ocirc;ng tin cơ bản m&agrave; bạn c&oacute; thể tham khảo:</p>

<ul>
	<li><strong>Họ v&agrave; t&ecirc;n:</strong>&nbsp;Mặc d&ugrave; trong CV đ&atilde; c&oacute; t&ecirc;n của bạn nhưng nh&agrave; tuyển dụng vẫn c&oacute; thể cảm thấy mơ hồ v&igrave; kh&ocirc;ng biết t&ecirc;n ch&iacute;nh x&aacute;c của bạn l&agrave; g&igrave; (do kh&ocirc;ng để dấu). Tốt hơn hết l&agrave; bạn n&ecirc;n giới thiệu lại t&ecirc;n của m&igrave;nh một c&aacute;ch r&otilde; r&agrave;ng, r&agrave;nh mạch.</li>
	<li><strong>Tuổi:</strong>&nbsp;Phần th&ocirc;ng tin n&agrave;y kh&ocirc;ng bắt buộc nhưng nếu cảm thấy thoải m&aacute;i, bạn c&oacute; thể chia sẻ với nh&agrave; tuyển dụng.</li>
	<li><strong>Học vấn:</strong>&nbsp;Th&ocirc;ng thường th&igrave; những người đ&atilde; c&oacute; nhiều năm kinh nghiệm l&agrave;m việc sẽ bỏ qua phần n&agrave;y, nhưng nếu bạn l&agrave; người mới ra trường hoặc chỉ mới c&oacute; 1,2 kinh nghiệm l&agrave;m việc th&igrave; c&oacute; thể giới thiệu th&ocirc;ng tin n&agrave;y (nếu c&oacute; li&ecirc;n quan đến vị tr&iacute; ứng tuyển).</li>
	<li><strong>T&iacute;nh c&aacute;ch, sở th&iacute;ch:</strong>&nbsp;N&ecirc;n ngắn gọn trong khoảng 2-3 từ đối với mỗi phần th&ocirc;ng tin, kh&ocirc;ng n&ecirc;n liệt k&ecirc; qu&aacute; nhiều.</li>
</ul>

<blockquote>
<p>Tham khảo:&nbsp;<a href="https://itviec.com/blog/huong-dan-viet-cv/" rel="noopener" target="_blank"><strong>Hướng dẫn viết CV xin việc đảm bảo đậu v&ograve;ng &ldquo;x&eacute;t duyệt CV&rdquo; 100% đến từ Google</strong></a></p>
</blockquote>

<h3><strong>&Aacute;p dụng &ldquo;c&ocirc;ng thức thần th&aacute;nh&rdquo;</strong></h3>

<p>Tiếp nối phần th&ocirc;ng tin cơ bản l&agrave; những th&ocirc;ng tin đ&ograve;i hỏi t&iacute;nh chọn lọc li&ecirc;n quan đến học vấn v&agrave; kinh nghiệm l&agrave;m việc.&nbsp;&nbsp;Nếu bạn vẫn đang chưa biết phải tr&igrave;nh b&agrave;y như thế n&agrave;o th&igrave; ITviec gợi &yacute; bạn 2 phương ph&aacute;p sau đ&acirc;y.</p>

<ul>
	<li><strong>C&ocirc;ng thức &ldquo;Hiện tại &ndash; Qu&aacute; khứ &ndash; Tương lai&rdquo;</strong></li>
</ul>

<p>Đ&uacute;ng như ti&ecirc;u đề, bạn sẽ t&oacute;m lược th&ocirc;ng tin, sự kiện li&ecirc;n quan đến học vấn v&agrave; c&ocirc;ng việc theo thứ tự xuất hiện ở hiện tại trước, rồi đến những g&igrave; đ&atilde; diễn ra trong qu&aacute; khứ, cuối c&ugrave;ng l&agrave; những mong đợi, dự định cho tương lai gần (hoặc d&agrave;i hạn).</p>

<p>Lưu &yacute;: H&atilde;y chỉ lựa chọn những kinh nghiệm li&ecirc;n quan nhất đến vị tr&iacute; ứng tuyển v&agrave; bỏ qua những th&ocirc;ng tin kh&ocirc;ng mang lại lợi &iacute;ch g&igrave; trong buổi phỏng vấn.&nbsp;</p>

<p>Chẳng hạn: Bạn đang ứng tuyển vị tr&iacute;&nbsp;<a href="https://itviec.com/it-jobs/tester" rel="noopener" target="_blank">Tester</a>&nbsp;nhưng những c&ocirc;ng việc bạn từng l&agrave;m trước kia lại l&agrave; Sales Assistant hoặc Marketing Executive&hellip; th&igrave; bạn n&ecirc;n giản lược v&agrave; đi thẳng đến những kinh nghiệm l&agrave;m việc li&ecirc;n quan gần nhất.</p>

<ul>
	<li><strong>C&ocirc;ng thức &ldquo;Học vấn &ndash; Kinh nghiệm &ndash; Tương lai&rdquo;</strong></li>
</ul>

<p>Nếu việc ghi nhớ sự kiện theo tr&igrave;nh tự thời gian khiến bạn cảm thấy kh&oacute; khăn th&igrave; m&ocirc; h&igrave;nh từ&nbsp;<a href="https://www.glassdoor.com/blog/lp/fishbowl/" rel="noopener" target="_blank">FishBowl by GlassDoor</a>&nbsp;c&oacute; thể l&agrave; sự lựa chọn gi&uacute;p &iacute;ch cho bạn l&uacute;c n&agrave;y:&nbsp;<strong>Học vấn &ndash; Kinh nghiệm &ndash; Tương lai</strong>.</p>

<p>Cụ thể th&igrave; bạn sẽ giới thiệu về học vấn của m&igrave;nh trước (trường học, ng&agrave;nh học, năm tốt nghiệp, điểm GPA&hellip;), tiếp đ&oacute; l&agrave; giới thiệu về c&aacute;c c&ocirc;ng việc trước đ&acirc;y bạn đ&atilde; từng l&agrave;m (k&egrave;m th&agrave;nh t&iacute;ch, giải thưởng, cống hiến của bạn ở từng c&ocirc;ng ty), cuối c&ugrave;ng l&agrave; những mục ti&ecirc;u bạn đặt ra trong thời gian sắp tới.</p>

<p>Những th&ocirc;ng tin n&agrave;y sẽ gi&uacute;p cho nh&agrave; tuyển dụng c&oacute; c&aacute;i nh&igrave;n tổng qu&aacute;t về mức độ ph&ugrave; hợp của bạn với vị tr&iacute; họ đang tuyển dụng, họ phần n&agrave;o cũng c&oacute; đ&aacute;nh gi&aacute; sơ bộ về năng lực cũng như tầm nh&igrave;n của bạn.</p>

<p>Chắc chắn sau đ&oacute;, họ sẽ c&oacute; th&ecirc;m nhiều c&acirc;u hỏi h&oacute;c b&uacute;a để kiểm tra mức độ ch&acirc;n thật về những th&ocirc;ng tin bạn vừa tr&igrave;nh b&agrave;y, vậy n&ecirc;n h&atilde;y đảm bảo những th&ocirc;ng tin bạn vừa tr&igrave;nh b&agrave;y đ&uacute;ng với sự thật nh&eacute;.</p>
', N'876db5d7-b882-479e-b073-038f736cfdb2.png', N'0276ee84-282a-4d63-56cb-08db7971d697', CAST(N'2023-07-01T02:25:23.0000000' AS DateTime2), N'<p><strong>Developer c&oacute; bao giờ cảm thấy lo lắng khi được nh&agrave; tuyển dụng y&ecirc;u cầu giới thiệu bản th&acirc;n bằng tiếng Anh? Bạn thuộc tu&yacute;p Developer d&ugrave;ng duy nhất 1 mẫu giới thiệu trong suốt nhiều năm hay bạn sẽ t&ugrave;y hứng nghĩ ra đoạn giới thiệu m&agrave; bạn nghĩ l&agrave; ph&ugrave; hợp nhất ở thời điểm phỏng vấn?</strong></p>

<p>D&ugrave; bạn thuộc tu&yacute;p Developer n&agrave;o th&igrave; cũng h&atilde;y đảm bảo phần giới thiệu bản th&acirc;n được diễn ra trong ho&agrave;n cảnh ph&ugrave; hợp v&agrave; hội tụ đủ những yếu tố &ldquo;đắt gi&aacute;&rdquo; &ndash; gi&uacute;p bạn tỏa s&aacute;ng ngay trong v&ograve;ng phỏng vấn.</p>
', 243)
INSERT [dbo].[Blogs] ([Id], [Slug], [Author], [Title], [Content], [Image], [AppUserId], [CreateDate], [Description], [Popular]) VALUES (16, N'4-yeu-to-giup-ban-tang-luong-theo-bao-cao-luong-it-2022-2023', N'Duc Huy', N'4 yếu tố giúp bạn tăng lương: theo báo cáo lương IT 2022-2023', N'<p>Trong giới hạn ng&agrave;nh IT, b&aacute;o c&aacute;o lương mới nhất từ ITviec (được xuất bản th&aacute;ng 11/2022) với t&ecirc;n gọi &ldquo;<a href="https://itviec.com/blog/bao-cao-luong-it/?utm_source=blog&amp;utm_medium=angle-3&amp;utm_campaign=salary-report-2022&amp;utm_content=dec2022">Mức lương &amp; Mong đợi nghề nghiệp của c&aacute;c chuy&ecirc;n gia IT 2022-2023</a>&rdquo; cho thấy đ&acirc;y l&agrave; 4 yếu tố c&oacute; ảnh hưởng lớn nhất đến mức lương thực nhận cũng như mức tăng lương h&agrave;ng năm của c&aacute;c chuy&ecirc;n gia IT như bạn.</p>

<h1><strong>1. Ng&ocirc;n ngữ lập tr&igrave;nh bạn lựa chọn sử dụng &ndash; yếu tố quan trọng nhất gi&uacute;p tăng lương nhanh ch&oacute;ng</strong></h1>

<p>Nếu bạn đ&atilde; c&oacute; một vị tr&iacute; ổn định trong ng&agrave;nh IT th&igrave; ng&ocirc;n ngữ lập tr&igrave;nh sẽ l&agrave; ch&igrave;a kho&aacute; quyết định đến mức lương bạn nhận được (nhất l&agrave; khi bạn muốn chuyển việc mới). Xem ngay th&ocirc;ng tin b&ecirc;n dưới để c&oacute; th&ecirc;m sự tham khảo v&agrave; s&aacute;ng suốt lựa chọn hướng ph&aacute;t triển trong thời gian sắp tới nh&eacute;.</p>

<h2><strong>1.1 Top 3 ng&ocirc;n ngữ lập tr&igrave;nh nhận lương cao nhất</strong></h2>

<p>Mức lương theo ng&ocirc;n ngữ lập tr&igrave;nh thay đổi tuỳ thuộc v&agrave;o khoảng năm kinh nghiệm của c&aacute;c chuy&ecirc;n gia. Tuy nhi&ecirc;n, theo b&aacute;o c&aacute;o lương IT 2022-2023 từ ITviec th&igrave; danh s&aacute;ch 3 ng&ocirc;n ngữ lập tr&igrave;nh nhận được mức lương cao nhất hiện nay bao gồm:</p>

<ul>
	<li><strong>#1: Swift</strong>. Một chuy&ecirc;n gia IT sử dụng Swift v&agrave; c&oacute; 7 năm kinh nghiệm sẽ nhận được mức lương trung vị (median) 50 triệu đồng mỗi th&aacute;ng.</li>
	<li><strong>#2: Go</strong>. L&agrave; ng&ocirc;n ngữ được giới thiệu năm 2009 v&agrave; được ph&aacute;t h&agrave;nh lần đầu năm 2012, Go dần trở th&agrave;nh ng&ocirc;n ngữ y&ecirc;u th&iacute;ch v&agrave; được nhiều chuy&ecirc;n gia IT lựa chọn sử dụng. Với 5 năm kinh nghiệm l&agrave;m việc, cộng với lợi thế sử dụng ng&ocirc;n ngữ lập tr&igrave;nh Go, chuy&ecirc;n gia IT c&oacute; thể nhận được mức lương hấp dẫn: 40 triệu đồng mỗi th&aacute;ng.</li>
	<li><strong>#3: Kotlin v&agrave; Objective-C</strong>. Những chuy&ecirc;n gia IT sử dụng một trong hai ng&ocirc;n ngữ n&agrave;y, với 5-6 kinh nghiệm l&agrave;m việc đều được trả lương 36 triệu đồng mỗi th&aacute;ng &ndash; cao hơn 25% so với ng&ocirc;n ngữ kh&aacute;c (chẳng hạn C#), c&ugrave;ng khoảng năm kinh nghiệm.</li>
</ul>

<p>Một số ng&ocirc;n ngữ thịnh h&agrave;nh hiện nay như Python hay TypeScript ghi nhận mức lương tương đối cao: 30 triệu đồng mỗi th&aacute;ng, d&agrave;nh cho c&aacute;c chuy&ecirc;n gia c&oacute; &iacute;t nhất 3 năm kinh nghiệm. Đ&acirc;y cũng l&agrave; những &ldquo;ứng cử vi&ecirc;n&rdquo; đ&aacute;ng để bạn c&acirc;n nhắc trau dồi nếu vừa muốn tăng lương, vừa c&oacute; hứng th&uacute; với c&aacute;c vị tr&iacute;/dự &aacute;n li&ecirc;n quan đến Data, AI, Machine Learning.</p>

<p>Để xem v&agrave; tải b&aacute;o c&aacute;o chi tiết mức lương theo ng&ocirc;n ngữ lập tr&igrave;nh v&agrave; khoảng năm kinh nghiệm tương ứng, bạn c&oacute; thể truy cập&nbsp;<a href="https://itviec.com/blog/bao-cao-luong-it/?utm_source=blog&amp;utm_medium=angle-3&amp;utm_campaign=salary-report-2022&amp;utm_content=dec2022">tại đ&acirc;y</a>.</p>

<h2><strong>1.2 Top 3 ng&ocirc;n ngữ lập tr&igrave;nh nhận lương k&eacute;m hấp dẫn nhất</strong></h2>

<p>Để t&igrave;m cơ hội tăng lương nhanh ch&oacute;ng, bạn c&oacute; thể c&acirc;n nhắc học th&ecirc;m c&aacute;c ng&ocirc;n ngữ mới b&ecirc;n cạnh việc tiếp tục sử dụng những ng&ocirc;n ngữ lập tr&igrave;nh nằm trong top nhận lương k&eacute;m hấp dẫn nhất sau đ&acirc;y:</p>

<ul>
	<li><strong>#1: HTML/CSS</strong>. Đ&acirc;y l&agrave; ng&ocirc;n ngữ lập tr&igrave;nh c&oacute; &ldquo;tuổi đời&rdquo; hơn 25 năm, mang t&iacute;nh phổ biến cao trong cộng đồng chuy&ecirc;n gia IT. Tuy nhi&ecirc;n, mức lương trung vị d&agrave;nh cho c&aacute;c chuy&ecirc;n gia sử dụng ng&ocirc;n ngữ n&agrave;y được đ&aacute;nh gi&aacute; l&agrave; k&eacute;m hấp dẫn nhất hiện nay: 16 triệu đồng mỗi th&aacute;ng.</li>
	<li><strong>#2: Dart</strong>. Với 4 năm kinh nghiệm trong ng&agrave;nh IT, mức lương d&agrave;nh cho một chuy&ecirc;n gia đang sử dụng Dart kh&aacute; khi&ecirc;m tốn: 22,5 triệu mỗi th&aacute;ng.</li>
	<li><strong>#3: JavaScript</strong>. L&agrave; ng&ocirc;n ngữ lập tr&igrave;nh xuất hiện trước v&agrave; c&oacute; nhiều điểm tương đồng với Dart, JavaScript mang lại mức lương 26 triệu đồng mỗi th&aacute;ng cho một chuy&ecirc;n gia IT c&oacute; từ 3 năm kinh nghiệm l&agrave;m việc.</li>
</ul>

<p>Để xem v&agrave; tải b&aacute;o c&aacute;o chi tiết mức lương theo ng&ocirc;n ngữ lập tr&igrave;nh v&agrave; khoảng năm kinh nghiệm tương ứng, bạn c&oacute; thể truy cập&nbsp;<a href="https://itviec.com/blog/bao-cao-luong-it/?utm_source=blog&amp;utm_medium=angle-3&amp;utm_campaign=salary-report-2022&amp;utm_content=dec2022">tại đ&acirc;y</a>.</p>

<p>&nbsp;</p>

<p><img alt="tang-luong-01" src="https://itviec.com/blog/wp-content/uploads/2022/12/tang-luong-01.png" style="height:574px; width:640px" /></p>

<h2><strong>1.3 Top 3 ng&ocirc;n ngữ lập tr&igrave;nh c&aacute;c chuy&ecirc;n gia IT muốn học nhất trong 1 năm tới</strong></h2>

<p>Muốn biết thị trường IT đang chuyển động ra sao, h&atilde;y xem &ldquo;đồng m&ocirc;n&rdquo; của bạn &ndash; c&aacute;c chuy&ecirc;n gia IT kh&aacute;c đang l&ecirc;n kế hoạch trau dồi những g&igrave; trong năm sắp tới nh&eacute;.</p>

<p>V&agrave; đ&acirc;y ch&iacute;nh l&agrave; 3 ng&ocirc;n ngữ lập tr&igrave;nh m&agrave; phần đ&ocirc;ng trong số 1257 chuy&ecirc;n gia IT tham gia khảo s&aacute;t của ITviec đều muốn học trong năm 2023, c&oacute; thể gi&uacute;p bạn bắt kịp xu hướng v&agrave; c&oacute; th&ecirc;m cơ hội tăng lương khi t&igrave;m kiếm cơ hội việc l&agrave;m mới.</p>

<ul>
	<li><strong>#1: Python</strong>. Đứng đầu danh s&aacute;ch c&aacute;c ng&ocirc;n ngữ lập tr&igrave;nh m&agrave; c&aacute;c chuy&ecirc;n gia muốn học nhất trong năm tới, Python hứa hẹn l&agrave; ng&ocirc;n ngữ c&oacute; tốc độ ph&aacute;t triển nhanh nhất tại Việt Nam trong năm 2023. Đ&acirc;y l&agrave; ng&ocirc;n ngữ được d&ugrave;ng nhiều trong lĩnh vực Data, AI, Machine Learning, hiện đang rất được ưa chuộng v&agrave; chưa c&oacute; dấu hiệu hạ nhiệt. Bạn c&oacute; thể c&acirc;n nhắc học Python để xem ng&ocirc;n ngữ n&agrave;y th&uacute; vị ra sao.</li>
	<li><strong>#2: Go</strong>. Vừa nằm trong top ng&ocirc;n ngữ được trả lương cao nhất, vừa l&agrave; c&aacute;i t&ecirc;n &ldquo;được l&ograve;ng&rdquo; nhiều chuy&ecirc;n gia IT. Hầu hết chuy&ecirc;n gia đều c&oacute; &yacute; định học Go trong 1 năm tới, bạn c&oacute; muốn l&agrave; người tiếp theo?</li>
	<li><strong>#3: TypeScript</strong>. Được coi l&agrave; &ldquo;phi&ecirc;n bản n&acirc;ng cao&rdquo; của JavaScript, việc lựa chọn học TypeScript mang lại nhiều tiện &iacute;ch trong qu&aacute; tr&igrave;nh code v&agrave; bảo tr&igrave;. Đ&oacute; l&agrave; l&yacute; do c&oacute; rất nhiều chuy&ecirc;n gia IT chia sẻ rằng họ muốn học TypeScript trong năm 2023. Kiến thức c&ugrave;ng kỹ năng sử dụng TypeScript sẽ l&agrave; điểm cộng gi&uacute;p bạn mở rộng cơ hội sự nghiệp, tăng lương v&agrave; tăng cơ hội thăng tiến.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="tang-luong-02" src="https://itviec.com/blog/wp-content/uploads/2022/12/tang-luong-02.png" style="height:337px; width:640px" /></p>

<p>C&oacute; thể bạn quan t&acirc;m:</p>

<ul>
	<li><a href="https://itviec.com/blog/tai-lieu-lap-trinh-python/?utm_source=blog&amp;utm_medium=angle-3&amp;utm_campaign=salary-report-2022&amp;utm_content=dec2022">T&agrave;i liệu lập tr&igrave;nh Python</a>&nbsp;từ cơ bản đến n&acirc;ng cao hay nhất</li>
</ul>

<ul>
	<li><a href="https://itviec.com/blog/typescript-la-gi/?utm_source=blog&amp;utm_medium=angle-3&amp;utm_campaign=salary-report-2022&amp;utm_content=dec2022">TypeScript l&agrave; g&igrave;</a>? Lợi &iacute;ch tuyệt vời khi sử dụng TypeScript</li>
</ul>

<p>&nbsp;</p>

<h1><strong>2. Loại h&igrave;nh c&ocirc;ng ty v&agrave; tỉnh th&agrave;nh bạn lựa chọn l&agrave;m việc</strong></h1>

<h2><strong>2.1 Loại h&igrave;nh c&ocirc;ng ty n&agrave;o đang trả lương cao nhất cho nh&acirc;n vi&ecirc;n?</strong></h2>

<p>Theo kết quả từ b&aacute;o c&aacute;o lương IT 2022-2023 của ITviec th&igrave; mức lương trung b&igrave;nh m&agrave; c&aacute;c c&ocirc;ng ty Product trả cho chuy&ecirc;n gia IT cao hơn &iacute;t nhất 10% so với c&aacute;c c&ocirc;ng ty Outsourcing/Consulting tr&ecirc;n hầu hết c&aacute;c tỉnh th&agrave;nh.</p>

<p>Cụ thể:</p>

<ul>
	<li>Tại H&agrave; Nội, mức lương trung b&igrave;nh cho một chuy&ecirc;n gia IT tại c&ocirc;ng ty Product l&agrave; 35,6 triệu đồng mỗi th&aacute;ng; c&ograve;n tại c&ocirc;ng ty Outsourcing/Consulting chỉ dao động 32,1 triệu đồng mỗi th&aacute;ng.</li>
	<li>Tại Hồ Ch&iacute; Minh, mức lương trung b&igrave;nh cho một chuy&ecirc;n gia IT tại c&ocirc;ng ty Product l&agrave; 41,7 triệu đồng mỗi th&aacute;ng; tại c&ocirc;ng ty Outsourcing/Consulting chỉ l&agrave; 34,1 triệu đồng mỗi th&aacute;ng.</li>
</ul>

<p>V&igrave; vậy, nếu bạn đang trong qu&aacute; tr&igrave;nh t&igrave;m kiếm c&ocirc;ng việc mới th&igrave; h&atilde;y c&acirc;n nhắc c&aacute;c offer từ c&ocirc;ng ty Product, phần trăm tăng lương của bạn sẽ được cải thiện đ&aacute;ng kể.</p>

<p>Ngo&agrave;i ra, lựa chọn c&ocirc;ng ty hoạt động trong c&aacute;c ng&agrave;nh nghề AI, Blockchain, T&agrave;i ch&iacute;nh hoặc Tư vấn c&ocirc;ng nghệ cũng l&agrave; yếu tố gi&uacute;p mức lương của bạn tăng theo hệ số nh&acirc;n.</p>

<p>&nbsp;</p>

<p><img alt="tang-luong-03" src="https://itviec.com/blog/wp-content/uploads/2022/12/tang-luong-03.png" style="height:477px; width:640px" /></p>

<h2><strong>2.2 Chuyển địa điểm l&agrave;m việc c&oacute; thể gi&uacute;p bạn tăng lương đ&aacute;ng kể</strong></h2>

<p>Mức lương trung b&igrave;nh tr&ecirc;n cả nước d&agrave;nh cho một chuy&ecirc;n gia IT đang ở mức 32,4 triệu đồng mỗi th&aacute;ng, cũng theo b&aacute;o c&aacute;o lương IT 2022-2023. Tuy nhi&ecirc;n, nếu bạn l&agrave;m việc tại H&agrave; Nội hoặc Hồ Ch&iacute; Minh th&igrave; con số n&agrave;y c&oacute; thể cao hơn nhiều.</p>

<p>Cụ thể, mức lương trung b&igrave;nh của một chuy&ecirc;n gia IT bất kể vị tr&iacute; tại H&agrave; Nội l&agrave; 34,3 triệu đồng &ndash; cao hơn 5.9% so với mức trung b&igrave;nh cả nước. Tại Hồ Ch&iacute; Minh, con số n&agrave;y thậm ch&iacute; c&ograve;n cao hơn, l&ecirc;n đến 38,8 triệu đồng &ndash; cao hơn 19,8%.&nbsp;</p>

<p>Mặc d&ugrave; Đ&agrave; Nẵng l&agrave; một trong những th&agrave;nh phố triển vọng, tuy nhi&ecirc;n, mức lương trung b&igrave;nh d&agrave;nh cho c&aacute;c chuy&ecirc;n gia IT tại đ&acirc;y vẫn kh&aacute; thấp so với mặt bằng chung. Nếu bạn đang muốn trải nghiệm địa điểm l&agrave;m việc mới nhưng lại băn khoăn về mức lương, h&atilde;y c&acirc;n nhắc đến quyết định l&agrave;m việc tại 2 tỉnh th&agrave;nh lớn nhất cả nước nh&eacute;.</p>

<p>&nbsp;</p>

<p><img alt="tang-luong-04" src="https://itviec.com/blog/wp-content/uploads/2022/12/tang-luong-04.png" style="height:345px; width:640px" /></p>

<h1><strong>3. Bạn c&oacute; tốt nghiệp chuy&ecirc;n ng&agrave;nh IT?&nbsp;</strong></h1>

<p>Ng&agrave;nh IT l&agrave; một trong số &iacute;t những ng&agrave;nh c&oacute; t&iacute;nh chuyển đổi cao, nghĩa l&agrave; bạn ho&agrave;n to&agrave;n c&oacute; thể gia nhập ng&agrave;nh v&agrave; l&agrave;m c&ocirc;ng việc IT m&agrave; kh&ocirc;ng cần phải c&oacute; bằng cấp chuy&ecirc;n m&ocirc;n ngay từ c&aacute;nh cổng cao đẳng, đại học.&nbsp;</p>

<p>Tuy nhi&ecirc;n, b&aacute;o c&aacute;o lương IT 2022-2023 của ITviec đ&atilde; chỉ ra rằng: so với một chuy&ecirc;n gia IT chỉ tham gia c&aacute;c kho&aacute; học ngắn hạn, online hoặc tự học qua bạn b&egrave;, đồng nghiệp với mức lương trung b&igrave;nh nhận được 31,7 triệu đồng mỗi th&aacute;ng th&igrave; những chuy&ecirc;n gia IT tốt nghiệp ch&iacute;nh quy ng&agrave;nh IT (hoặc c&aacute;c ng&agrave;nh c&oacute; li&ecirc;n quan đến IT) sẽ nhận được mức lương hấp dẫn hơn nhiều &ndash; 37,9 triệu đồng mỗi th&aacute;ng (cao hơn 20%).</p>

<h1><strong>4. Tăng lương nhờ nền tảng t&igrave;m kiếm việc l&agrave;m IT ph&ugrave; hợp</strong></h1>

<p>Đ&oacute;ng vai tr&ograve; như một yếu tố bổ trợ nhưng c&agrave;ng đa dạng c&aacute;c k&ecirc;nh t&igrave;m việc l&agrave;m, bạn c&agrave;ng t&igrave;m được nhiều cơ hội việc l&agrave;m lương cao với c&aacute;c chế độ đ&atilde;i ngộ tốt nhất tr&ecirc;n thị trường. Giới hạn bản th&acirc;n ở một k&ecirc;nh t&igrave;m việc c&oacute; thể l&agrave; th&oacute;i quen nhưng sẽ cản trở bạn tiếp cận những việc l&agrave;m thực sự ph&ugrave; hợp.</p>

<p>Số liệu trong b&aacute;o c&aacute;o lương IT 2022-2023 cho thấy c&aacute;c website t&igrave;m việc (bao gồm I<a href="https://itviec.com/?utm_source=blog&amp;utm_medium=angle-3&amp;utm_campaign=salary-report-2022&amp;utm_content=dec2022">Tviec.com</a>) l&agrave; nguồn t&igrave;m kiếm phổ biến nhất v&agrave; hiệu quả nhất d&agrave;nh cho c&aacute;c chuy&ecirc;n gia IT hiện nay. H&atilde;y trải nghiệm nhiều nguồn v&agrave; t&igrave;m ra phương thức t&igrave;m việc tối ưu cho ch&iacute;nh bản th&acirc;n m&igrave;nh nh&eacute;.</p>

<p>B&ecirc;n tr&ecirc;n l&agrave; tổng hợp những yếu tố trực tiếp v&agrave; gi&aacute;n tiếp gi&uacute;p bạn tăng lương để cảm thấy hạnh ph&uacute;c hơn, tự tin hơn với c&ocirc;ng việc cũng như lựa chọn của m&igrave;nh. Đừng qu&ecirc;n tải ngay&nbsp;<a href="https://itviec.com/blog/bao-cao-luong-it/?utm_source=blog&amp;utm_medium=angle-3&amp;utm_campaign=salary-report-2022&amp;utm_content=dec2022">b&aacute;o c&aacute;o lương IT 2022-2023</a>&nbsp;để nắm bắt th&ecirc;m những th&ocirc;ng tin li&ecirc;n quan đến thị trường IT v&agrave; tham khảo cho những hướng đi sắp tới ngay h&ocirc;m nay.</p>

<p><strong>Bạn thấy b&agrave;i viết hay v&agrave; cần thiết với nhiều người? Đừng ngại chia sẻ b&agrave;i viết nh&eacute;.</strong></p>

<p><strong>V&agrave; đừng qu&ecirc;n tham khảo&nbsp;<a href="http://itviec.com/" rel="noreferrer noopener" target="_blank">việc l&agrave;m IT</a>&nbsp;tr&ecirc;n ITviec</strong>!</p>
', N'3d5ecd74-c2f5-4bcb-a7ee-8237d33c49ba.png', N'f463e352-9ce4-489c-5851-08db794d4e58', CAST(N'2023-07-02T02:28:23.0000000' AS DateTime2), N'<p>Tăng lương l&agrave; mục ti&ecirc;u của kh&ocirc;ng chỉ c&aacute;c chuy&ecirc;n gia Sales, Marketing, Nh&acirc;n sự&hellip; m&agrave; c&ograve;n của c&aacute;c chuy&ecirc;n gia IT &ndash; những người vốn được &ldquo;đồn thổi&rdquo; l&agrave; nhận lương trăm triệu mỗi th&aacute;ng. B&agrave;i to&aacute;n đặt ra l&agrave; l&agrave;m thế n&agrave;o để tăng lương nhanh ch&oacute;ng v&agrave; hiệu quả?</p>
', 320)
INSERT [dbo].[Blogs] ([Id], [Slug], [Author], [Title], [Content], [Image], [AppUserId], [CreateDate], [Description], [Popular]) VALUES (17, N'2022-review-–-thay-gi-tu-18-bai-viet-noi-bat-nhat-tren-itviec-blog', N'Ha Trinh', N'2022 Review – Thấy gì từ 18 bài viết nổi bật nhất trên ITviec Blog?', N'<p>Cảm ơn c&aacute;c độc giả đ&atilde; đồng h&agrave;nh c&ugrave;ng ITviec Blog trong năm 2022! Một cột mốc mới lại ho&agrave;n th&agrave;nh tr&ecirc;n h&agrave;nh tr&igrave;nh ITviec Blog thực hiện sứ mệnh l&agrave; cầu nối kiến thức, kinh nghiệm chuy&ecirc;n m&ocirc;n v&agrave; &yacute; tưởng ph&aacute;t triển sự nghiệp IT đến với những chuy&ecirc;n gia IT Việt Nam.&nbsp;</p>

<p>B&agrave;i tổng hợp n&agrave;y sẽ gi&uacute;p bạn điểm nhanh c&aacute;c b&agrave;i viết được đọc nhiều nhất v&agrave; c&aacute;c b&agrave;i viết xu hướng trong năm 2022, được ph&acirc;n chia theo 3 chuy&ecirc;n mục ch&iacute;nh của ITviec Blog. Trong đ&oacute;:</p>

<ul>
	<li><strong>B&agrave;i viết được đọc nhiều nhất:</strong>&nbsp;Thể hiện những chủ đề c&oacute; lượng quan t&acirc;m lớn nhất trong năm 2022 đối với c&aacute;c chuy&ecirc;n gia IT tr&ecirc;n Blog ITviec.</li>
	<li><strong>B&agrave;i viết xu hướng:</strong>&nbsp;L&agrave; b&agrave;i viết c&oacute; chỉ số quan t&acirc;m của người đọc tăng mạnh nhất trong năm 2022 tr&ecirc;n ITviec Blog, thể hiện những chủ đề đang &ldquo;nổi l&ecirc;n&rdquo; v&agrave; c&oacute; tiềm năng nhận được sự quan t&acirc;m lớn từ c&aacute;c chuy&ecirc;n gia IT trong thời gian tới.</li>
</ul>

<p>Qua đ&oacute;, bạn c&oacute; thể phần n&agrave;o h&igrave;nh dung được những nội dung nổi bật, đ&aacute;ng quan t&acirc;m, c&oacute; thể bổ sung v&agrave;o vốn kiến thức của m&igrave;nh để kh&ocirc;ng nằm ngo&agrave;i c&aacute;c cuộc thảo luận, cũng như c&oacute; th&ecirc;m &yacute; tưởng để l&ecirc;n kế hoạch ph&aacute;t triển sự nghiệp hoặc mở rộng đội nh&oacute;m IT của m&igrave;nh trong năm mới.</p>

<h2><strong>Chủ đề: Con đường sự nghiệp IT</strong></h2>

<p><img alt="" src="https://itviec.com/blog/wp-content/uploads/2023/01/Most-read-1.png" style="height:190px; width:640px" /></p>

<p>1.&nbsp;<a href="https://itviec.com/blog/qa-la-gi-qc-khac-gi-qa?utm_source=blog_13012023&amp;utm_medium=anchor_text&amp;utm_campaign=daily" rel="noopener" target="_blank"><strong>QA l&agrave; g&igrave;? QA v&agrave; QC c&oacute; phải l&agrave; một vị tr&iacute; giống nhau?</strong></a></p>

<p><strong>Đọc b&agrave;i viết n&agrave;y để:</strong></p>

<ul>
	<li>Hiểu r&otilde; QA, QC l&agrave; l&agrave;m c&ocirc;ng việc g&igrave;, kh&aacute;c nhau thế n&agrave;o</li>
	<li>Ph&acirc;n biệt c&aacute;c định nghĩa kh&aacute;c nhau về QA/ QC trong c&aacute;c c&ocirc;ng ty IT.</li>
	<li>T&igrave;m hiểu những kiến thức quan trọng để trở th&agrave;nh QA/ QC, bao gồm: những kĩ năng cần c&oacute;, y&ecirc;u cầu tuyển dụng v&agrave; t&agrave;i liệu tham khảo.</li>
</ul>

<p>2.&nbsp;<a href="https://itviec.com/blog/uiux-developer?utm_source=blog_13012023&amp;utm_medium=anchor_text&amp;utm_campaign=daily" rel="noopener" target="_blank"><strong>UI UX l&agrave; g&igrave;? Tại sao mọi Developer cần học UI UX?</strong></a></p>

<p><strong>Đọc b&agrave;i viết n&agrave;y để:</strong></p>

<ul>
	<li>Hiểu r&otilde; UI l&agrave; g&igrave;, UX l&agrave; g&igrave; v&agrave; biết c&aacute;ch nhận diện như thế n&agrave;o l&agrave; UI/ UX &ldquo;đẹp&rdquo;?&nbsp;</li>
	<li>Quyết định được lập tr&igrave;nh vi&ecirc;n c&oacute; cần biết về UI/ UX hay kh&ocirc;ng v&agrave; v&igrave; sao?</li>
	<li>Học hỏi kinh nghiệm x&acirc;y dựng team v&agrave; tuyển dụng IT thực tế từ ​​Head of Application Team v&agrave; Country Manager</li>
</ul>

<p>3.&nbsp;<a href="https://itviec.com/blog/tester-thanh-cong?utm_source=blog_13012023&amp;utm_medium=anchor_text&amp;utm_campaign=daily" rel="noopener" target="_blank"><strong>Tester l&agrave; g&igrave;? Kỹ năng n&agrave;o cần để trở th&agrave;nh Tester giỏi?</strong></a></p>

<p><strong>Đọc b&agrave;i viết n&agrave;y để:</strong></p>

<ul>
	<li>Hiểu được định nghĩa về Tester v&agrave; c&aacute;c nh&aacute;nh vị tr&iacute; li&ecirc;n quan</li>
	<li>T&igrave;m hiểu định hướng nghề Tester: Hiểu về ưu thế, thử th&aacute;ch, tố chất quan trọng của Tester v&agrave; c&acirc;u chuyện chọn nghề Tester thực tế từ đ&agrave;n anh.</li>
	<li>Ph&aacute;t triển sự nghiệp với b&iacute; k&iacute;p để trở th&agrave;nh Tester giỏi v&agrave; lộ tr&igrave;nh thăng tiến của Tester</li>
	<li>Học hỏi từ sai lầm v&agrave; lời khuy&ecirc;n thực tế của Test Project Manager v&agrave; Senior QC</li>
</ul>

<blockquote>
<p>Xem th&ecirc;m việc l&agrave;m &ldquo;chất&rdquo; tr&ecirc;n ITviec:</p>

<p><a href="https://itviec.com/it-jobs/qa-qc?utm_source=blog_13012023&amp;utm_medium=anchor_text&amp;utm_campaign=daily" rel="noopener" target="_blank">Việc l&agrave;m QA/ QC&nbsp;</a></p>

<p><a href="https://itviec.com/it-jobs/ui-ux?utm_source=blog_13012023&amp;utm_medium=anchor_text&amp;utm_campaign=daily" rel="noopener" target="_blank">Việc l&agrave;m UI/ UX</a></p>

<p><a href="https://itviec.com/it-jobs/tester?utm_source=blog_13012023&amp;utm_medium=anchor_text&amp;utm_campaign=daily" rel="noopener" target="_blank">Việc l&agrave;m Tester</a></p>
</blockquote>

<p>&nbsp;</p>

<p><img alt="" src="https://itviec.com/blog/wp-content/uploads/2023/01/trending-1.png" style="height:190px; width:640px" /></p>

<p>1.&nbsp;<a href="https://itviec.com/blog/low-code-platform-la-gi?utm_source=blog_13012023&amp;utm_medium=anchor_text&amp;utm_campaign=daily" rel="noopener" target="_blank"><strong>Low code l&agrave; g&igrave;? Liệu Lập tr&igrave;nh vi&ecirc;n c&oacute; bị mất việc v&agrave;o &ldquo;tay&rdquo; Low-Code?</strong></a></p>

<p><strong>Đọc b&agrave;i viết n&agrave;y để:</strong></p>

<ul>
	<li>Hiểu ch&iacute;nh x&aacute;c c&aacute;c thuật ngữ &ldquo;low code&rdquo;, &ldquo;no code&rdquo; v&agrave; c&aacute;c v&iacute; dụ thực tế&nbsp;</li>
	<li>Hiểu r&otilde; ưu &ndash; nhược điểm khi l&agrave;m việc với low code v&agrave; v&igrave; sao doanh nghiệp cần n&oacute;</li>
	<li>Hiểu r&otilde; bản chất &ldquo;mối đe doạ&rdquo; của low code với lập tr&igrave;nh vi&ecirc;n v&agrave; c&aacute;ch biến n&oacute; th&agrave;nh cơ hội ph&aacute;t triển sự nghiệp</li>
	<li>Học hỏi từ lời khuy&ecirc;n thực tế của Director of Software Engineering tại TIKI</li>
</ul>

<p>2.&nbsp;<a href="https://itviec.com/blog/cong-viec-cua-project-manager?utm_source=blog_13012023&amp;utm_medium=anchor_text&amp;utm_campaign=daily" rel="noopener" target="_blank"><strong>Giao tiếp &ldquo;tồi&rdquo; sẽ ph&aacute; hủy sự nghiệp của một Project Manager (PM)?</strong></a></p>

<p><strong>Đọc b&agrave;i viết n&agrave;y để:</strong></p>

<ul>
	<li>Hiểu r&otilde; vai tr&ograve;, c&ocirc;ng việc của một Project Manager (PM)</li>
	<li>Nhận diện được thử th&aacute;ch v&agrave; những kĩ năng &ldquo;sống c&ograve;n&rdquo; m&agrave; PM cần c&oacute;</li>
	<li>Học hỏi kinh nghiệm từ sai lầm v&agrave; lời khuy&ecirc;n của một Project Manager xuất th&acirc;n từ developer</li>
</ul>

<p>3.&nbsp;<a href="https://itviec.com/blog/devops-la-gi?utm_source=blog_13012023&amp;utm_medium=anchor_text&amp;utm_campaign=daily" rel="noopener" target="_blank"><strong>DevOps l&agrave; g&igrave;? DevOps th&agrave;nh c&ocirc;ng nhất định phải sở hữu 6 kỹ năng v&agrave; tố chất n&agrave;y</strong></a></p>

<p><strong>Đọc b&agrave;i viết n&agrave;y để:</strong></p>

<ul>
	<li>Hiểu được vị tr&iacute; DevOps l&agrave; g&igrave;</li>
	<li>Hiểu được v&igrave; sao DevOps ra đời v&agrave; ng&agrave;y c&agrave;ng được doanh nghiệp &ldquo;săn đ&oacute;n&rdquo;</li>
	<li>Nắm r&otilde; được c&ocirc;ng việc v&agrave; c&aacute;ch để trở th&agrave;nh một DevOps Engineer</li>
	<li>Học hỏi từ sai lầm v&agrave; lời khuy&ecirc;n thực tế của DevOps Manager v&agrave; Lead Engineer</li>
</ul>

<blockquote>
<p>Tham khảo<a href="https://itviec.com/it-jobs/devops?utm_source=blog_13012023&amp;utm_medium=anchor_text&amp;utm_campaign=daily" rel="noopener" target="_blank">&nbsp;việc l&agrave;m DevOps&nbsp;</a></p>

<p>Tham khảo&nbsp;<a href="https://itviec.com/it-jobs/project-manager?utm_source=blog_13012023&amp;utm_medium=anchor_text&amp;utm_campaign=daily" rel="noopener" target="_blank">việc l&agrave;m Project Manager&nbsp;</a></p>
</blockquote>

<h2><strong>Chủ đề: Kinh nghiệm ứng tuyển &amp; thăng tiến</strong></h2>

<p><img alt="" src="https://itviec.com/blog/wp-content/uploads/2023/01/Most-read-2.png" style="height:190px; width:640px" /></p>

<p>1.&nbsp;<a href="https://itviec.com/blog/cau-hoi-phong-van-reactjs-la-gi?utm_source=blog_13012023&amp;utm_medium=anchor_text&amp;utm_campaign=daily" rel="noopener" target="_blank"><strong>Top 40 c&acirc;u hỏi phỏng vấn ReactJS từ cơ bản đến n&acirc;ng cao</strong></a></p>

<p><strong>Đọc b&agrave;i viết n&agrave;y để:</strong></p>

<ul>
	<li>Hiểu r&otilde; ReactJS l&agrave; g&igrave; v&agrave; c&aacute;c thuật ngữ cơ bản li&ecirc;n quan đến ReactJS</li>
	<li>&Ocirc;n tập kiến thức về ReactJS để chuẩn bị cho buổi phỏng vấn hoặc b&agrave;i test kĩ thuật sắp tới</li>
	<li>Biết c&aacute;ch sử dụng ReactJS cơ bản d&agrave;nh cho người mới bắt đầu</li>
	<li>Ph&acirc;n biệt v&agrave; nắm r&otilde; ưu &ndash; nhược điểm của ReactJS so với c&aacute;c framework kh&aacute;c</li>
</ul>

<p>2.&nbsp;<a href="https://itviec.com/blog/8-viec-lam-it-hot-nhat?utm_source=blog_13012023&amp;utm_medium=anchor_text&amp;utm_campaign=daily" rel="noopener" target="_blank"><strong>Mức lương ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Top 8 c&ocirc;ng việc lương cao nhất ng&agrave;nh IT năm 2022</strong></a></p>

<p><strong>Đọc b&agrave;i viết n&agrave;y để:</strong></p>

<ul>
	<li>Hiểu th&ecirc;m về thị trường, mức lương ng&agrave;nh IT v&agrave; c&aacute;c cơ hội việc l&agrave;m để c&oacute; lương cao trong ng&agrave;nh IT</li>
	<li>Nắm bắt những kỹ năng, kiến thức cần chuẩn bị để ứng tuyển th&agrave;nh c&ocirc;ng c&aacute;c vị tr&iacute; IT lương cao</li>
	<li>N&acirc;ng cao chuy&ecirc;n m&ocirc;n với danh s&aacute;ch những t&agrave;i liệu IT &ldquo;chất&rdquo; nhất cho từng vị tr&iacute;</li>
</ul>

<p>3.&nbsp;<a href="https://itviec.com/blog/cach-viet-cv-xin-viec?utm_source=blog_13012023&amp;utm_medium=anchor_text&amp;utm_campaign=daily" rel="noopener" target="_blank"><strong>CV l&agrave; g&igrave; v&agrave; 5 lỗi viết CV thường gặp cần phải bỏ ngay</strong></a></p>

<p><strong>Đọc b&agrave;i viết n&agrave;y để:</strong></p>

<ul>
	<li>Hiểu r&otilde; bản chất v&agrave; cấu tr&uacute;c &ldquo;chuẩn&rdquo; của một CV ứng tuyển ng&agrave;nh IT</li>
	<li>Biết c&aacute;ch viết CV với mẫu những nội dung cần c&oacute; v&agrave; những sai lầm cần tr&aacute;nh</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://itviec.com/blog/wp-content/uploads/2023/01/trending-2.png" style="height:190px; width:640px" /></p>
', N'286f4a96-a477-4d9b-b2b5-ab009357c8e1.png', N'0163aa78-b118-49a5-6b9e-08db796fb4d9', CAST(N'2023-07-03T02:30:03.0000000' AS DateTime2), N'<p><strong>Người d&ugrave;ng muốn t&igrave;m hiểu g&igrave; về sự nghiệp IT, kiến thức IT n&agrave;o được t&igrave;m đọc nhiều, hay kĩ năng ứng tuyển n&agrave;o khiến c&aacute;c chuy&ecirc;n gia IT quan t&acirc;m? Cập nhật c&aacute;c chủ đề IT nổi bật nhất 2022 tr&ecirc;n ITviec Blog để kh&ocirc;ng bỏ lỡ kiến thức quan trọng v&agrave; mở rộng &yacute; tưởng để x&acirc;y dựng kế hoạch cho năm mới.</strong></p>
', 241)
INSERT [dbo].[Blogs] ([Id], [Slug], [Author], [Title], [Content], [Image], [AppUserId], [CreateDate], [Description], [Popular]) VALUES (18, N'top-10-cau-hoi-nhan-vien-it-nen-hoi-trong-buoi-danh-gia-cuoi-nam', N'Minh Nguyen', N'Top 10 câu hỏi nhân viên IT nên hỏi trong buổi đánh giá cuối năm', N'<h2><strong>Đ&aacute;nh gi&aacute; cuối năm l&agrave; g&igrave;?</strong></h2>

<p>Đ&aacute;nh gi&aacute; cuối năm l&agrave; một cuộc tr&ograve; chuyện ngắn với người gi&aacute;m s&aacute;t trực tiếp về hiệu suất l&agrave;m việc của bạn trong suốt cả năm l&agrave;m việc, thường được diễn ra v&agrave;o thời điểm cuối th&aacute;ng 12 hoặc đầu th&aacute;ng 1 mỗi năm. Bạn sẽ được nghe ph&acirc;n t&iacute;ch về th&agrave;nh t&iacute;ch của m&igrave;nh, v&agrave; c&ugrave;ng thảo luận với cấp tr&ecirc;n trực tiếp xem bạn đ&atilde; đ&aacute;p ứng được c&aacute;c mục ti&ecirc;u v&agrave; kỳ vọng cần thiết hay chưa, sau đ&oacute; đặt ra c&aacute;c mục ti&ecirc;u v&agrave; kế hoạch mới cho năm tiếp theo.</p>

<p>Đ&aacute;nh gi&aacute; cuối năm cũng l&agrave; dịp m&agrave; bạn c&oacute; thể thảo luận v&agrave; t&igrave;m hiểu xem m&igrave;nh c&oacute; đang được c&acirc;n nhắc để thăng chức hay tăng lương hay kh&ocirc;ng.</p>

<p>Hiện nay, c&aacute;c c&ocirc;ng ty IT (bao gồm những c&ocirc;ng ty to&agrave;n cầu như&nbsp;<a href="https://www.facebook.com/">Facebook</a>,&nbsp;<a href="https://www.apple.com/">Apple</a>) kh&ocirc;ng giới hạn duy nhất 1 buổi đ&aacute;nh gi&aacute; cuối năm m&agrave; đ&atilde; mở rộng số lượng buổi đ&aacute;nh gi&aacute; l&ecirc;n 2 lần mỗi năm (phổ biến nhất l&agrave; qu&yacute; II giữa năm v&agrave; qu&yacute; IV cuối năm), với mức độ quan trọng ngang nhau. Thậm ch&iacute;, một số t&ecirc;n tuổi như&nbsp;<a href="https://www.cisco.com/">Cisco</a>,&nbsp;<a href="https://www.microsoft.com/en-us/">IBM, Microsoft</a>&nbsp;&hellip;. c&ograve;n thực hiện đ&aacute;nh gi&aacute; 3-4 lần mỗi năm.</p>

<p>Mục đ&iacute;ch l&agrave; để đ&aacute;nh gi&aacute; nhanh ch&oacute;ng, ch&iacute;nh x&aacute;c hơn những nỗ lực của nh&acirc;n vi&ecirc;n v&agrave; c&oacute; những ch&iacute;nh s&aacute;ch kịp thời đ&aacute;p ứng nhu cầu nhằm n&acirc;ng cao chỉ số hạnh ph&uacute;c của nh&acirc;n vi&ecirc;n.</p>

<blockquote>
<p>C&oacute; thể bạn quan t&acirc;m: Top&nbsp;<a href="https://itviec.com/blog/top-6-cong-ty-cong-nghe-tot-nhat-viet-nam-2023/?utm_source=blog&amp;utm_medium=anchor_text&amp;utm_campaign=daily&amp;utm_term=may2023">c&ocirc;ng ty c&ocirc;ng nghệ tốt nhất Việt Nam</a>&nbsp;mang lại chỉ số hạnh ph&uacute;c cao nhất cho nh&acirc;n vi&ecirc;n</p>
</blockquote>

<h2><strong>Vai tr&ograve; của đ&aacute;nh gi&aacute; cuối năm</strong></h2>

<p>Đ&aacute;nh gi&aacute; cuối năm l&agrave; một c&ocirc;ng cụ kh&ocirc;ng thể thiếu để quản l&yacute; v&agrave; ph&aacute;t triển nh&acirc;n sự. Kết quả của buổi đ&aacute;nh gi&aacute; cuối năm rất quan trọng trong việc đưa ra c&aacute;c quyết định về tăng lương, thăng chức hoặc chấm dứt hợp đồng theo kế hoạch.</p>

<blockquote>
<p>Đọc th&ecirc;m về 4 b&iacute; quyết gi&uacute;p bạn&nbsp;<a href="https://itviec.com/blog/tang-luong/?utm_source=blog&amp;utm_medium=anchor_text&amp;utm_campaign=daily&amp;utm_term=may2023">tăng lương</a></p>
</blockquote>

<p>Đối với c&aacute;c nh&acirc;n vi&ecirc;n IT, đ&aacute;nh gi&aacute; cuối năm l&agrave; cơ hội để hiểu th&ecirc;m về điểm mạnh, điểm yếu của m&igrave;nh nhằm t&igrave;m hướng cải thiện c&ocirc;ng việc. Việc đ&aacute;nh gi&aacute; thường xuy&ecirc;n c&oacute; thể gi&uacute;p giải quyết những sai lầm v&agrave; hiểu nhầm trong c&ocirc;ng việc dễ d&agrave;ng hơn, gi&uacute;p ngăn ngừa những sai lầm tương tự trong tương lai.</p>

<p>Một tổ chức thực hiện đ&aacute;nh gi&aacute; nh&acirc;n vi&ecirc;n đ&uacute;ng c&aacute;ch c&oacute; thể th&uacute;c đẩy nh&acirc;n vi&ecirc;n cải thiện c&ocirc;ng việc của họ v&agrave; trở th&agrave;nh một phần mạnh mẽ hơn của nh&oacute;m, từ đ&oacute; cống hiến nhiều gi&aacute; trị nổi bật.</p>

<p>&nbsp;</p>

<p><img alt="danh-gia-cuoi-nam-01" src="https://itviec.com/blog/wp-content/uploads/2023/05/danh-gia-cuoi-nam-01-640x640.png" style="height:640px; width:640px" /></p>

<p>Đ&aacute;nh gi&aacute; cuối năm l&agrave; một c&ocirc;ng cụ kh&ocirc;ng thể thiếu để quản l&yacute; nh&acirc;n sự. Nguồn ảnh:&nbsp;<a href="https://storyset.com/">Storyset</a></p>

<h2><strong>C&aacute;c h&igrave;nh thức đ&aacute;nh gi&aacute; cuối năm d&agrave;nh cho nh&acirc;n vi&ecirc;n IT</strong></h2>

<p>Dưới đ&acirc;y l&agrave; 4 h&igrave;nh thức đ&aacute;nh gi&aacute; cuối năm thường được &aacute;p dụng, kh&ocirc;ng chỉ d&agrave;nh cho nh&acirc;n vi&ecirc;n IT m&agrave; c&ograve;n cho nh&acirc;n vi&ecirc;n của c&aacute;c ph&ograve;ng ban kh&aacute;c, m&agrave; bạn c&oacute; thể tham khảo:</p>

<h3><strong>1. Đ&aacute;nh gi&aacute; cuối năm với người quản l&yacute;</strong></h3>

<p>H&igrave;nh thức đ&aacute;nh gi&aacute; n&agrave;y l&agrave; người quản l&yacute; trực tiếp đ&aacute;nh gi&aacute; nh&acirc;n vi&ecirc;n cấp dưới trong nh&oacute;m của m&igrave;nh. Đ&acirc;y l&agrave; h&igrave;nh thức đ&aacute;nh gi&aacute; cuối năm phổ biến nhất.</p>

<h3><strong>2. Tự đ&aacute;nh gi&aacute; cuối năm</strong></h3>

<p>Với h&igrave;nh thức tự đ&aacute;nh gi&aacute; th&igrave; nh&acirc;n vi&ecirc;n IT sẽ tự đ&aacute;nh gi&aacute; điểm mạnh v&agrave; điểm yếu của họ. Cụ thể, nh&acirc;n vi&ecirc;n IT sẽ trả lời c&aacute;c c&acirc;u hỏi trong bản đ&aacute;nh gi&aacute; do quản l&yacute; trực tiếp hoặc ph&ograve;ng nh&acirc;n sự của c&ocirc;ng ty thiết kế.</p>

<h3><strong>3. Đ&aacute;nh gi&aacute; cuối năm ngang h&agrave;ng</strong></h3>

<p>Đ&aacute;nh gi&aacute; ngang h&agrave;ng l&agrave; khi c&aacute;c nh&acirc;n vi&ecirc;n IT đ&aacute;nh gi&aacute; khả năng lẫn nhau. Những đ&aacute;nh gi&aacute; n&agrave;y thường ẩn danh để khuyến kh&iacute;ch sự cởi mở.</p>

<h3><strong>4. Đ&aacute;nh gi&aacute; cuối năm 360 độ</strong></h3>

<p>Những đ&aacute;nh gi&aacute; n&agrave;y l&agrave; sự kết hợp của nhiều h&igrave;nh thức đ&aacute;nh gi&aacute; hiệu suất kh&aacute;c nhau, chẳng hạn, kết hợp h&igrave;nh thức tự đ&aacute;nh gi&aacute; v&agrave; đ&aacute;nh gi&aacute; với người quản l&yacute;. C&aacute;ch đ&aacute;nh gi&aacute; n&agrave;y c&oacute; thể mang đến c&aacute;i nh&igrave;n to&agrave;n diện hơn về hiệu suất v&agrave; hiệu quả l&agrave;m việc của nh&acirc;n vi&ecirc;n.</p>

<h2><strong>C&aacute;c ti&ecirc;u ch&iacute; đ&aacute;nh gi&aacute; cuối năm d&agrave;nh cho nh&acirc;n vi&ecirc;n IT</strong></h2>

<p>Một kh&iacute;a cạnh quan trọng của bất kỳ buổi đ&aacute;nh gi&aacute; n&agrave;o l&agrave; biết được cụ thể c&aacute;c ti&ecirc;u ch&iacute; đ&aacute;nh gi&aacute;. Việc c&oacute; c&aacute;c ti&ecirc;u ch&iacute; r&otilde; r&agrave;ng gi&uacute;p người quản l&yacute; v&agrave; c&ocirc;ng ty loại bỏ sự thi&ecirc;n vị v&agrave; thực hiện c&aacute;c đ&aacute;nh gi&aacute; một c&aacute;ch c&ocirc;ng bằng.</p>

<p>Dưới đ&acirc;y l&agrave; v&iacute; dụ về c&aacute;c ti&ecirc;u ch&iacute; c&oacute; thể xem x&eacute;t sử dụng trong đ&aacute;nh gi&aacute; hiệu suất của nh&acirc;n vi&ecirc;n IT:</p>

<ul>
	<li>Số dự &aacute;n đ&atilde; ho&agrave;n th&agrave;nh</li>
	<li>Khả năng ho&agrave;n thiện code theo cấp độ kh&aacute;c nhau từ cơ bản đến n&acirc;ng cao (cấp độ đơn giản v&agrave; cần đọc t&agrave;i liệu, c&oacute; thể hiệu chỉnh (customize), tối ưu ho&aacute; (optimize), c&oacute; thể ph&acirc;n t&iacute;ch v&agrave; đ&agrave;o tạo lại cho c&aacute;c bạn kh&aacute;c, v.v)</li>
	<li>Tốc độ l&agrave;m việc</li>
	<li>Test coverage</li>
	<li>Số lượng bug đ&atilde; xử l&yacute;</li>
	<li>Kỹ năng giao tiếp</li>
	<li>Kỹ năng l&agrave;m việc theo nh&oacute;m</li>
	<li>T&iacute;nh tr&aacute;ch nhiệm</li>
	<li>Khả năng l&atilde;nh đạo (kh&ocirc;ng bắt buộc)</li>
</ul>
', N'091117fb-6abb-4155-aa13-785b3644cf8d.png', N'fe21bb95-332b-4887-5bf9-08db7974ad47', CAST(N'2023-07-04T02:34:44.0000000' AS DateTime2), N'<p><strong>Đ&aacute;nh gi&aacute; cuối năm l&agrave; cơ hội để nh&acirc;n vi&ecirc;n nhận được phản hồi c&oacute; gi&aacute; trị từ cấp tr&ecirc;n trực tiếp về c&aacute;c kỹ năng v&agrave; khả năng của m&igrave;nh, cũng như những g&oacute;p &yacute; để thăng tiến trong sự nghiệp.</strong></p>

<p>Tầm quan trọng của buổi đ&aacute;nh gi&aacute; cuối năm c&oacute; thể khiến c&aacute;c lập tr&igrave;nh vi&ecirc;n lo lắng đ&ocirc;i ch&uacute;t. Tuy nhi&ecirc;n, nếu c&oacute; thể tận dụng buổi đ&aacute;nh gi&aacute; n&agrave;y để đặt một số c&acirc;u hỏi ph&ugrave; hợp, bạn ho&agrave;n to&agrave;n c&oacute; thể l&agrave;m chủ t&igrave;nh h&igrave;nh.</p>
', 106)
INSERT [dbo].[Blogs] ([Id], [Slug], [Author], [Title], [Content], [Image], [AppUserId], [CreateDate], [Description], [Popular]) VALUES (19, N'vung-an-toan-cua-developer-va-5-cach-thoat-ra-de-thanh-cong-hon-trong-su-nghiep', N'Quoc Dat', N'Vùng an toàn của Developer và 5 cách thoát ra để thành công hơn trong sự nghiệp', N'<h3><strong>V&ugrave;ng an to&agrave;n l&agrave; g&igrave;?</strong></h3>

<p>V&ugrave;ng an to&agrave;n l&agrave; trạng th&aacute;i t&acirc;m l&yacute; m&agrave; con người cảm thấy an to&agrave;n, thoải m&aacute;i v&agrave; quen thuộc với m&ocirc;i trường sống xung quanh. Trong c&ocirc;ng việc, khi ở trong trạng th&aacute;i an to&agrave;n, nh&acirc;n vi&ecirc;n sẽ cảm thấy dễ d&agrave;ng ho&agrave;n th&agrave;nh nhiệm vụ, c&oacute; thể kiểm so&aacute;t mọi t&igrave;nh huống v&agrave; duy tr&igrave; được mức hiệu suất ổn định.</p>

<p>Một người khi ở trong v&ugrave;ng an to&agrave;n thường c&oacute; biểu hiện &ldquo;kh&eacute;p m&igrave;nh&rdquo;, &iacute;t thể hiện hứng th&uacute; với những thay đổi, thử th&aacute;ch mới hoặc trải nghiệm mới m&agrave; họ chưa chắc chắn về kết quả. Ngược lại, với những thứ nằm ngo&agrave;i v&ugrave;ng an to&agrave;n, họ thường c&oacute; xu hướng kh&ocirc;ng chắc chắn, dễ g&acirc;y ra t&igrave;nh trạng lo lắng, thậm ch&iacute; &aacute;p lực.&nbsp;</p>

<p>Tương tự, v&ugrave;ng an to&agrave;n của c&aacute;c Developer l&agrave; trạng th&aacute;i bạn cảm thấy thỏa m&atilde;n với hiểu biết, kinh nghiệm, khả năng của bản th&acirc;n v&agrave; cảm thấy &ldquo;ổn&rdquo; với những nhiệm vụ được lặp đi lặp lại h&agrave;ng ng&agrave;y, kh&ocirc;ng c&oacute; t&iacute;nh đột ph&aacute;. Bạn h&agrave;i l&ograve;ng với những c&ocirc;ng việc quen thuộc, thậm ch&iacute; tự h&agrave;o khi đạt được kết quả tốt trong c&ocirc;ng việc, d&ugrave; bản th&acirc;n c&oacute; thể chưa nỗ lực hết 100% năng lực thực sự.</p>

<p>Đ&ocirc;i khi, biểu hiện của một Developer đang l&agrave;m việc trong v&ugrave;ng an to&agrave;n v&agrave; một Developer lu&ocirc;n giữ được sự ổn định về mặt hiệu suất/hiệu quả l&agrave;m việc bất kể t&iacute;nh thử th&aacute;ch kh&ocirc;ng qu&aacute; r&otilde; r&agrave;ng để nhận diện. H&atilde;y c&ugrave;ng ITviec t&igrave;m hiểu kỹ hơn về những dấu hiệu &ldquo;đ&aacute;ng b&aacute;o động&rdquo; cho thấy bạn đang trong v&ugrave;ng nguy hiểm nh&eacute;.</p>

<p><em>(V&ugrave;ng an to&agrave;n l&agrave; trạng th&aacute;i thỏa m&atilde;n với hiểu biết, kinh nghiệm, khả năng của bản th&acirc;n m&agrave; kh&ocirc;ng muốn c&oacute; th&ecirc;m thử th&aacute;ch. Nguồn ảnh:&nbsp;</em><a href="https://storyset.com/" rel="noopener" target="_blank"><em>storyset.com</em></a><em>)</em></p>

<h2><strong>Dấu hiệu cho thấy Developer đang ở trong v&ugrave;ng an to&agrave;n</strong></h2>

<p>Dưới đ&acirc;y l&agrave; c&aacute;c dấu hiệu phổ biến nhất v&agrave; phản &aacute;nh tương đối ch&iacute;nh x&aacute;c về t&igrave;nh trạng &ldquo;ủ k&eacute;n&rdquo; qu&aacute; l&acirc;u của bạn tại m&ocirc;i trường l&agrave;m việc. Rất c&oacute; thể bạn sẽ giật m&igrave;nh khi l&agrave;m b&agrave;i kiểm tra n&agrave;y c&ugrave;ng ITviec đấy.</p>

<p>Thử xem c&oacute; bao nhi&ecirc;u dấu hiệu dưới đ&acirc;y tương đồng với t&igrave;nh trạng của bạn nh&eacute;:</p>

<p><strong>01. Bạn nhận ra c&ocirc;ng việc của m&igrave;nh đang lặp đi lặp lại</strong></p>

<p>Một trong c&aacute;c dấu hiệu nhanh ch&oacute;ng nhất để bạn bắt đầu đặt c&acirc;u hỏi&nbsp;<em>&ldquo;Phải chăng m&igrave;nh đang ở trong v&ugrave;ng an to&agrave;n?&rdquo;</em>&nbsp;l&agrave; khi bạn l&agrave;m việc như th&oacute;i quen, c&ocirc;ng việc quen thuộc đến mức bạn kh&ocirc;ng cần phải đặt bất cứ c&acirc;u hỏi n&agrave;o, nhiệm vụ được ho&agrave;n th&agrave;nh đ&uacute;ng hạn, quy tr&igrave;nh l&agrave;m việc kh&ocirc;ng gặp trở ngại hay kh&oacute; khăn.</p>

<p><em>V&iacute; dụ: Trong dự &aacute;n số 1, bạn đảm nhận nhiệm vụ triển khai UI cho website thương mại điện tử; dự &aacute;n số 2 bạn vẫn đảm nhiệm nhiệm vụ tương tự &ndash; triển khai UI cho website thương mại điện tử kh&aacute;c với c&aacute;c category &amp; t&iacute;nh năng kh&aacute; tương đồng với dự &aacute;n số 1.&nbsp;</em></p>

<p><em>C&aacute;c dự &aacute;n tiếp theo của bạn cũng kh&ocirc;ng mang t&iacute;nh đột ph&aacute;, hầu như đều sử dụng lại những kiến thức &amp; kinh nghiệm từ c&aacute;c dự &aacute;n trước chứ ko mất nhiều thời gian cho việc nghi&ecirc;n cứu th&ocirc;ng tin mới hoặc cập nhật th&ecirc;m kỹ năng chuy&ecirc;n m&ocirc;n. Nếu bản th&acirc;n bạn kh&ocirc;ng c&oacute; &yacute; định t&igrave;m kiếm/đề xuất phương &aacute;n triển khai mới hiệu quả hơn, chỉ lặp lại những việc đ&atilde; l&agrave;m v&agrave; d&ugrave;ng những c&ocirc;ng cụ quen thuộc th&igrave; đ&oacute; l&agrave; dấu hiệu cho thấy bạn đang ở trong v&ugrave;ng an to&agrave;n.</em></p>

<p><strong>02. Bạn kh&ocirc;ng muốn thực hiện nhiệm vụ mới</strong></p>

<p>Khi ở trong v&ugrave;ng an to&agrave;n của c&ocirc;ng việc, bạn thường cảm thấy như thể bạn đang kiểm so&aacute;t thế giới, l&agrave;m chủ t&igrave;nh thế v&agrave; tất nhi&ecirc;n bạn sẽ kh&ocirc;ng muốn &ldquo;ph&aacute; huỷ&rdquo; trạng th&aacute;i n&agrave;y ngay lập tức.&nbsp;</p>

<p>Cảm gi&aacute;c thoả m&atilde;n đ&oacute; c&oacute; thể l&agrave; r&agrave;o cản khiến bạn trở n&ecirc;n thụ động, kh&ocirc;ng hứng th&uacute; hoặc bất m&atilde;n khi được giao thực hiện nhiệm vụ mới hoặc khi sếp/đồng nghiệp chia sẻ những &yacute; tưởng cải tiến mới để gia tăng hiệu quả c&ocirc;ng việc. Bạn li&ecirc;n tục n&oacute;i &ldquo;Kh&ocirc;ng&rdquo; hoặc &ldquo;Kh&ocirc;ng thể&rdquo; đối với mọi vấn đề trước khi nghĩ về giải ph&aacute;p cho n&oacute; một c&aacute;ch thấu đ&aacute;o v&agrave; c&oacute; cơ sở.</p>

<p><em>V&iacute; dụ: Vị tr&iacute; hiện tại của bạn l&agrave; Front-end Developer. Sếp đề xuất trao cho bạn cơ hội phụ tr&aacute;ch Back-end trong dự &aacute;n mới với định hướng gi&uacute;p bạn ph&aacute;t triển kỹ năng to&agrave;n diện hơn, với sự hỗ trợ của đồng nghiệp c&oacute; chuy&ecirc;n m&ocirc;n Back-end kh&aacute;c. Thay v&igrave; vui vẻ đ&oacute;n nhận cơ hội, bạn lại tỏ ra kh&oacute; chịu v&agrave; nghĩ rằng m&igrave;nh đang bị giao th&ecirc;m việc kh&ocirc;ng cần thiết.</em></p>

<blockquote>
<p><em>Xem th&ecirc;m:</em></p>

<p><em><a href="https://itviec.com/it-jobs/front-end" rel="noopener" target="_blank">Việc l&agrave;m Front-end Developer</a></em></p>

<p><em><a href="https://itviec.com/it-jobs/back-end" rel="noopener" target="_blank">Việc l&agrave;m Back-end Developer</a></em></p>
</blockquote>

<blockquote>
<p><em><a href="https://itviec.com/it-jobs/full-stack" rel="noopener" target="_blank">Việc l&agrave;m Full-stack Developer</a></em></p>
</blockquote>

<p><strong>03. Bạn kh&ocirc;ng nghĩ rằng n&acirc;ng cấp bản th&acirc;n l&agrave; điều cần thiết</strong></p>

<p>Rất nhiều Developer (kể cả bạn) khi đạt đến một số năm kinh nghiệm nhất định thường sẽ thấy h&agrave;i l&ograve;ng v&agrave; tự tin với vốn kiến thức, kỹ năng của m&igrave;nh v&agrave; kh&ocirc;ng c&oacute; nhu cầu trau dồi, học hỏi th&ecirc;m. Khả năng cao l&agrave; bạn đang mắc kẹt trong v&ugrave;ng an to&agrave;n do ch&iacute;nh m&igrave;nh tạo ra.</p>

<p><em>V&iacute; dụ: Bạn đang l&agrave; Full-stack Developer, c&oacute; chuy&ecirc;n m&ocirc;n ch&iacute;nh về ng&ocirc;n ngữ lập tr&igrave;nh Java. Với xu hướng ph&aacute;t triển cũng như ảnh hưởng của c&ocirc;ng nghệ AI, c&ocirc;ng ty bạn cung cấp c&aacute;c kh&oacute;a đ&agrave;o tạo về AI n&oacute;i chung, ng&ocirc;n ngữ lập tr&igrave;nh Python n&oacute;i ri&ecirc;ng, để nh&acirc;n vi&ecirc;n c&oacute; cơ hội trau dồi kỹ năng. Tuy nhi&ecirc;n, kể cả l&agrave; được học miễn ph&iacute;, bạn cũng kh&ocirc;ng hề cảm thấy hứng th&uacute; v&agrave; cảm thấy như đang bị &eacute;p buộc. Bạn từ chối v&igrave; cảm thấy việc học n&agrave;y kh&ocirc;ng cần thiết, mất thời gian.</em></p>

<p><strong>04. Bạn thường tr&igrave; ho&atilde;n mọi thứ</strong></p>

<p>Th&ocirc;ng thường, khi ở trong v&ugrave;ng an to&agrave;n, bạn sẽ kh&oacute; c&oacute; những gi&acirc;y ph&uacute;t cảm thấy hứng khởi hoặc d&acirc;ng tr&agrave;o động lực l&agrave;m việc. Đ&oacute; cũng l&agrave; l&yacute; do bạn li&ecirc;n tục tr&igrave; ho&atilde;n c&ocirc;ng việc, c&aacute;c deadline thường xuy&ecirc;n được dời lại ph&iacute;a sau.</p>

<p>Đừng đổ lỗi cho c&aacute;c l&yacute; do kh&ocirc;ng mong muốn, nếu cứ tiếp tục như thế, bạn sẽ m&atilde;i dậm ch&acirc;n tại chỗ v&agrave; kh&oacute; c&oacute; thể thăng tiến th&ecirc;m.</p>

<p><em>V&iacute; dụ: Nhiệm vụ của bạn l&agrave; phải ho&agrave;n tất review 100 d&ograve;ng code trong v&ograve;ng 1 tuần. Nhưng v&igrave; cảm x&uacute;c ch&aacute;n nản, bạn chỉ review được 60 d&ograve;ng code. C&ograve;n 40 d&ograve;ng code, bạn đẩy sang lịch l&agrave;m việc của tuần kế tiếp. Tuy nhi&ecirc;n, t&igrave;nh trạng dời deadline như thế n&agrave;y kh&ocirc;ng được cải thiện; c&ocirc;ng việc của bạn vẫn ngổn ngang, chưa biết khi n&agrave;o c&oacute; thể ho&agrave;n th&agrave;nh 100%.</em></p>

<h2><strong>V&igrave; sao Developer cần bước ra khỏi v&ugrave;ng an to&agrave;n?</strong></h2>

<h3><strong>Những bất lợi cho sự nghiệp của Developer nếu ở l&acirc;u trong v&ugrave;ng an to&agrave;n</strong></h3>

<p>Trong lĩnh vực thay đổi nhanh ch&oacute;ng như ng&agrave;nh c&ocirc;ng nghệ, nếu bạn kh&ocirc;ng tiến về ph&iacute;a trước c&oacute; nghĩa l&agrave; bạn đang thụt l&ugrave;i. Ở l&acirc;u trong v&ugrave;ng an to&agrave;n sẽ kh&aacute; nguy hiểm với sự nghiệp khi bạn kh&ocirc;ng vận dụng được sự s&aacute;ng tạo v&agrave; đổi mới trong c&ocirc;ng việc.</p>

<p>Một số bất lợi lớn nếu bạn ở l&acirc;u trong v&ugrave;ng an to&agrave;n:&nbsp;</p>

<ul>
	<li>Năng lực bản th&acirc;n bị thụt l&ugrave;i</li>
	<li>Đ&aacute;nh mất cơ hội thăng tiến</li>
	<li>Thu nhập kh&ocirc;ng như mong đợi</li>
</ul>

<h3><strong>4 lợi &iacute;ch khi Developer sớm bước ra khỏi v&ugrave;ng an to&agrave;n</strong></h3>

<ul>
	<li>Học hỏi th&ecirc;m c&aacute;c kỹ năng v&agrave; kinh nghiệm c&oacute; &iacute;ch cho ph&aacute;t triển sự nghiệp về l&acirc;u d&agrave;i</li>
	<li>Nắm bắt được c&aacute;c cơ hội thăng tiến</li>
	<li>Tăng th&ecirc;m thu nhập</li>
	<li>X&acirc;y dựng được mạng lưới nghề nghiệp chất lượng</li>
</ul>

<p>Bước ra khỏi v&ugrave;ng an to&agrave;n sẽ gi&uacute;p bạn theo kịp với những ph&aacute;t triển v&agrave; tiến bộ mới nhất của ng&agrave;nh, điều n&agrave;y c&oacute; thể dẫn đến nhiều cơ hội việc l&agrave;m hơn v&agrave; thăng tiến nghề nghiệp tốt hơn.&nbsp;</p>

<p><em>(Bước ra khỏi v&ugrave;ng an to&agrave;n sẽ gi&uacute;p Developer theo kịp với những ph&aacute;t triển v&agrave; tiến bộ mới nhất của ng&agrave;nh. Nguồn ảnh:&nbsp;</em><a href="https://storyset.com/" rel="noopener" target="_blank"><em>storyset.com</em></a><em>)</em></p>

<p>Ngo&agrave;i ra, việc học c&aacute;c c&ocirc;ng nghệ mới c&oacute; thể gi&uacute;p bạn ph&aacute;t triển c&aacute;c kỹ năng mới v&agrave; cải thiện khả năng giải quyết vấn đề, n&acirc;ng cao hiệu suất v&agrave; hiệu quả l&agrave;m việc.</p>

<p>Tuy nhi&ecirc;n, cho d&ugrave; nhận thấy bản th&acirc;n đang ở trong v&ugrave;ng an to&agrave;n th&igrave; phải thừa nhận rằng, bạn rất kh&oacute; bước ra khỏi đ&oacute; bởi t&acirc;m l&yacute; ngại thay đổi th&oacute;i quen, ngại thay đổi c&aacute;ch l&agrave;m việc hay c&aacute;ch tư duy. Mặt kh&aacute;c, bạn lo lắng phải đối mặt với sự kh&ocirc;ng chắc chắn v&agrave; cảm thấy sợ khi bước ra v&ugrave;ng an to&agrave;n.&nbsp;</p>
', N'e0fe08ce-5ce4-49d4-a7aa-cc50534c8b8b.png', N'6f192bbb-e0c3-4f52-85d3-08db77fb01d9', CAST(N'2023-07-04T02:36:21.0000000' AS DateTime2), N'<p>V&ugrave;ng an to&agrave;n l&agrave; kh&aacute;i niệm kh&ocirc;ng qu&aacute; mới v&agrave; l&agrave; mối đe doạ của bất cứ ai, kh&ocirc;ng ri&ecirc;ng g&igrave; Developer. Nhưng đ&ocirc;i khi bạn c&oacute; thể v&ocirc; t&igrave;nh bỏ qua c&aacute;c dấu hiệu cảnh b&aacute;o v&agrave; an phận với v&ugrave;ng an to&agrave;n của ch&iacute;nh m&igrave;nh.</p>

<p>Developer ở trong v&ugrave;ng an to&agrave;n qu&aacute; l&acirc;u c&oacute; thể thiếu động lực để bứt ph&aacute; v&agrave; kh&oacute; c&oacute; thể đạt được những mục ti&ecirc;u lớn hơn trong sự nghiệp. N&oacute;i c&aacute;ch kh&aacute;c, muốn th&agrave;nh c&ocirc;ng trong sự nghiệp lập tr&igrave;nh, Developer cần biết c&aacute;ch bước ra khỏi v&ugrave;ng an to&agrave;n của m&igrave;nh.</p>
', 324)
INSERT [dbo].[Blogs] ([Id], [Slug], [Author], [Title], [Content], [Image], [AppUserId], [CreateDate], [Description], [Popular]) VALUES (20, N'developer-nen-xac-dinh-muc-tieu-nghe-nghiep-ra-sao-de-nhanh-thang-tien-va-thanh-cong', N'Ngoc Lam', N'Developer nên xác định mục tiêu nghề nghiệp ra sao để nhanh thăng tiến và thành công?', N'<h2><strong>Mục ti&ecirc;u nghề nghiệp l&agrave; g&igrave;?</strong></h2>

<h3><strong>Kh&aacute;i niệm</strong></h3>

<p>Mục ti&ecirc;u nghề nghiệp l&agrave; một vị tr&iacute; c&ocirc;ng việc cụ thể m&agrave; bạn mong muốn đạt được hoặc dự định theo đuổi trong tương lai.&nbsp;</p>

<p>V&iacute; dụ: mục ti&ecirc;u nghề nghiệp của bạn l&agrave; trở th&agrave;nh CTO trong v&ograve;ng 5 năm tới.</p>

<blockquote>
<p>Tham khảo:&nbsp;<a href="https://itviec.com/blog/cto-la-gi/" rel="noopener" target="_blank"><strong>L&agrave;m CTO c&oacute; cần giỏi code kh&ocirc;ng?</strong></a></p>
</blockquote>

<p>Mục ti&ecirc;u nghề nghiệp phản &aacute;nh tầm nh&igrave;n, tham vọng v&agrave; c&oacute; sức ảnh hưởng to lớn đến sự th&agrave;nh c&ocirc;ng cũng như c&aacute;c chiến lược ngắn &amp; d&agrave;i hạn của ch&iacute;nh bạn tr&ecirc;n con đường sự nghiệp.</p>

<h3><strong>Ph&acirc;n biệt &ldquo;mục ti&ecirc;u nghề nghiệp&rdquo; v&agrave; &ldquo;định hướng nghề nghiệp&rdquo;</strong></h3>

<p>Trong khi mục ti&ecirc;u nghề nghiệp l&agrave; một đ&iacute;ch đến cụ thể th&igrave; định hướng nghề nghiệp mang h&agrave;m &yacute; bao qu&aacute;t hơn v&agrave; c&oacute; thể bao gồm c&aacute;c lựa chọn về mục ti&ecirc;u nghề nghiệp.</p>

<p>Chẳng hạn:</p>

<ul>
	<li>Định hướng nghề nghiệp:&nbsp;&ldquo;T&ocirc;i muốn ph&aacute;t triển theo hướng kỹ thuật chuy&ecirc;n gia (technical)&rdquo;</li>
	<li>Mục ti&ecirc;u nghề nghiệp:&nbsp;&ldquo;T&ocirc;i muốn trở th&agrave;nh&nbsp;<a href="https://itviec.com/blog/how-to-become-ta/" rel="noopener" target="_blank">Technical Architect</a>&rdquo;</li>
</ul>

<p>Định hướng nghề nghiệp v&agrave; mục ti&ecirc;u nghề nghiệp kh&ocirc;ng m&acirc;u thuẫn nhau m&agrave; mang t&iacute;nh chất x&acirc;y dựng, bổ trợ lẫn nhau, gi&uacute;p bạn dễ d&agrave;ng đạt được th&agrave;nh c&ocirc;ng trong sự nghiệp dựa tr&ecirc;n t&iacute;nh c&aacute;ch sẵn c&oacute;, sở trường, sở th&iacute;ch&hellip;v&agrave; một số yếu tố kh&aacute;c.</p>

<p>Khi x&aacute;c định được định hướng nghề nghiệp th&igrave; mục ti&ecirc;u nghề nghiệp cũng trở n&ecirc;n r&otilde; r&agrave;ng hơn. V&iacute; dụ:&nbsp;Bạn muốn định hướng theo con đường quản l&yacute; th&igrave; mục ti&ecirc;u của bạn c&oacute; thể l&agrave; vị tr&iacute;&nbsp;<a href="https://itviec.com/blog/project-manager-gioi/" rel="noopener" target="_blank">Project Manager</a>&nbsp;hay&nbsp;Bạn muốn định hướng theo con đường dữ liệu (data) th&igrave; mục ti&ecirc;u của bạn sẽ l&agrave; vị tr&iacute;&nbsp;<a href="https://itviec.com/blog/data-scientist-la-gi/" rel="noopener" target="_blank">Data Scientist</a>&hellip;</p>

<p>C&oacute; thể v&iacute; von định hướng nghề nghiệp như ngọn hải đăng chỉ đường tr&ecirc;n biển cả, c&ograve;n mục ti&ecirc;u nghề nghiệp l&agrave; một bến cảng cụ thể m&agrave; con t&agrave;u (l&agrave; ch&iacute;nh bạn) sẽ nỗ lực vượt s&oacute;ng khơi để neo bờ.</p>

<h3><strong>Tầm quan trọng của mục ti&ecirc;u nghề nghiệp</strong></h3>

<p>Một mục ti&ecirc;u nghề nghiệp r&otilde; r&agrave;ng, khả thi sẽ gi&uacute;p bạn thiết lập c&aacute;c kế hoạch h&agrave;nh động, kế hoạch ph&aacute;t triển bản th&acirc;n cụ thể v&agrave; l&agrave;m việc hiệu quả hơn để hiện thực h&oacute;a mong muốn.&nbsp;</p>

<p>Ngo&agrave;i ra, việc x&aacute;c định mục ti&ecirc;u nghề nghiệp ngay từ đầu sẽ gi&uacute;p bạn tiết kiệm thời gian, hạn chế t&igrave;nh trạng &ldquo;đi đường v&ograve;ng&rdquo; &ndash; loay hoay m&atilde;i trong c&ocirc;ng việc nhưng kh&ocirc;ng biết m&igrave;nh muốn g&igrave; hay n&ecirc;n l&agrave;m g&igrave; tiếp theo.</p>

<h2><strong>C&aacute;ch x&aacute;c định mục ti&ecirc;u nghề nghiệp ch&iacute;nh x&aacute;c nhất cho Developer</strong></h2>

<h3><strong>Mục ti&ecirc;u phải r&otilde; r&agrave;ng, c&oacute; định hướng v&agrave; đo lường được</strong></h3>

<p>Những mục ti&ecirc;u mơ hồ, kh&ocirc;ng cụ thể chẳng những kh&oacute; tạo động lực để bạn cố gắng ph&aacute;t triển bản th&acirc;n m&agrave; đ&ocirc;i khi c&ograve;n khiến bạn ho&agrave;i nghi năng lực của ch&iacute;nh m&igrave;nh.</p>

<p>V&iacute; dụ: Bạn chỉ n&oacute;i rằng&nbsp;&ldquo;T&ocirc;i muốn th&agrave;nh c&ocirc;ng trong sự nghiệp&rdquo;&nbsp;nhưng định nghĩa &ldquo;th&agrave;nh c&ocirc;ng&rdquo; của bạn l&agrave; g&igrave;? Trong bao l&acirc;u? C&oacute; một c&ocirc;ng việc ổn định, nhận lương h&agrave;ng th&aacute;ng c&oacute; được bạn xem l&agrave; th&agrave;nh c&ocirc;ng?</p>

<p>Mục ti&ecirc;u c&agrave;ng cụ thể, chi tiết, c&oacute; thể đo lường được v&agrave; ph&ugrave; hợp với khả năng của ch&iacute;nh bạn th&igrave; tỷ lệ đạt được c&agrave;ng cao. &Aacute;p dụng nguy&ecirc;n tắc SMART khi x&acirc;y dựng mục ti&ecirc;u nghề nghiệp l&agrave; một c&aacute;ch gi&uacute;p bạn lu&ocirc;n theo s&aacute;t ch&uacute;ng v&agrave; giữ bạn kh&ocirc;ng &ldquo;trật đường ray&rdquo;.</p>

<ul>
	<li><strong>S</strong>pecific: Cụ thể, r&otilde; r&agrave;ng</li>
	<li><strong>M</strong>easurable: C&oacute; thể đo lường được</li>
	<li><strong>A</strong>chievable: C&oacute; thể đạt được (hoặc t&iacute;nh khả thi)</li>
	<li><strong>R</strong>ealistic: C&oacute; t&iacute;nh thực tế</li>
	<li><strong>T</strong>ime Bound: Giới hạn thời gian</li>
</ul>

<p><img alt="" src="https://itviec.com/blog/wp-content/uploads/2022/02/muc-tieu-nghe-nghiep-01-640x328.png" style="height:328px; width:640px" /></p>

<p>Nguy&ecirc;n tắc SMART gi&uacute;p bạn x&acirc;y dựng mục ti&ecirc;u nghề nghiệp ch&iacute;nh x&aacute;c hơn</p>

<p>Ch&uacute;ng ta c&oacute; thể đ&aacute;nh gi&aacute; một số mục ti&ecirc;u nghề nghiệp ngắn hạn sau đ&acirc;y để hiểu r&otilde; hơn về nguy&ecirc;n tắc n&agrave;y.</p>

<p>Mục ti&ecirc;u 1: Trở th&agrave;nh chuy&ecirc;n gia trong lĩnh vực&nbsp;<a href="https://itviec.com/blog/blockchain-la-gi/" rel="noopener" target="_blank">Blockchain</a></p>

<ul>
	<li>Specific&nbsp;<strong>X</strong>&nbsp;:&nbsp;Mục ti&ecirc;u n&agrave;y kh&ocirc;ng cụ thể. Định nghĩa &ldquo;chuy&ecirc;n gia Blockchain&rdquo; l&agrave; như thế n&agrave;o?&nbsp;Sẽ cụ thể hơn nếu bạn thay đổi mục ti&ecirc;u &ldquo;trở th&agrave;nh Senior Blockchain Developer&rdquo;</li>
	<li>Measurable&nbsp;<strong>X</strong>&nbsp;:&nbsp;Đ&acirc;u l&agrave; ti&ecirc;u ch&iacute; để đ&aacute;nh gi&aacute; một người được xem l&agrave; chuy&ecirc;n gia Blockchain? Ti&ecirc;u ch&iacute; n&agrave;y sẽ được &aacute;p dụng trong ứng dụng n&agrave;o của Blockchain? Du lịch? Y tế? Gaming hay t&agrave;i ch&iacute;nh?</li>
	<li>Achievable&nbsp;<strong>X</strong>&nbsp;:&nbsp;Khả năng hiện tại của bạn như thế n&agrave;o? Bạn đ&atilde; c&oacute; kiến thức, kinh nghiệm về Blockchain trước đ&oacute; hay chưa? Mục ti&ecirc;u n&agrave;y c&oacute; khả thi hay bạn đang đặt kỳ vọng qu&aacute; cao?</li>
	<li>Realistic&nbsp;<strong>X</strong>&nbsp;:&nbsp;Kh&oacute; x&aacute;c định được t&iacute;nh thực tế của mục ti&ecirc;u n&agrave;y</li>
	<li>Time Bound&nbsp;<strong>X</strong>&nbsp;:&nbsp;Kh&ocirc;ng c&oacute; hạn định để ho&agrave;n th&agrave;nh mục ti&ecirc;u</li>
</ul>

<p>Mục ti&ecirc;u 2: Đăng tải b&agrave;i chia sẻ về 20+ cuốn s&aacute;ch đ&aacute;ng đọc nhất d&agrave;nh cho Developers tr&ecirc;n HackerNoon trong th&aacute;ng 2 năm 2022</p>

<ul>
	<li>Specific&nbsp;<strong>V</strong>&nbsp;:&nbsp;Mục ti&ecirc;u rất cụ thể v&agrave; r&otilde; r&agrave;ng</li>
	<li>Measurable&nbsp;<strong>V</strong>:&nbsp;Đo lường bằng b&agrave;i viết được đăng tr&ecirc;n HackerNoon</li>
	<li>Achievable&nbsp;<strong>V&nbsp;</strong>:&nbsp;Ho&agrave;n to&agrave;n c&oacute; thể đạt được</li>
	<li>Realistic&nbsp;<strong>V</strong>:&nbsp;Kh&ocirc;ng xa vời với thực tế, đặc biệt l&agrave; với những người c&oacute; th&oacute;i quen viết l&aacute;ch hoặc đ&atilde; c&oacute; blog c&aacute; nh&acirc;n</li>
	<li>Time Bound&nbsp;<strong>V</strong>:&nbsp;C&oacute; mốc thời gian r&otilde; r&agrave;ng: th&aacute;ng 2 năm 2022</li>
</ul>

<h3><strong>Lựa chọn đội nh&oacute;m, dự &aacute;n ph&ugrave; hợp</strong></h3>

<p>Tất nhi&ecirc;n l&agrave; bạn kh&ocirc;ng thể phỏng vấn đội, nh&oacute;m m&agrave; bạn sẽ l&agrave;m việc c&ugrave;ng trong tương lai để biết m&igrave;nh c&oacute; ph&ugrave; hợp với họ hay kh&ocirc;ng nhưng bạn ho&agrave;n to&agrave;n c&oacute; thể chủ động đọc<a href="https://itviec.com/blog/review-cong-ty/" rel="noopener" target="_blank">&nbsp;review c&ocirc;ng ty</a>&nbsp;hoặc t&igrave;m hiểu th&ocirc;ng tin về c&aacute;c th&agrave;nh vi&ecirc;n của dự &aacute;n th&ocirc;ng qua website ch&iacute;nh thức, c&aacute;c trang mạng x&atilde; hội của c&ocirc;ng ty. Qua đ&oacute;, bức tranh to&agrave;n cảnh về t&iacute;nh c&aacute;ch của c&aacute;c th&agrave;nh vi&ecirc;n v&agrave; định hướng cho c&aacute;c dự &aacute;n sắp tới của c&ocirc;ng ty cũng trở n&ecirc;n r&otilde; r&agrave;ng hơn trước mắt bạn.</p>

<p>Hiểu biết về đội, nh&oacute;m tương lai v&agrave; cảm nhận được mức độ ph&ugrave; hợp nhất định sẽ đảm bảo cho bạn đạt được mục ti&ecirc;u nghề nghiệp v&igrave; họ l&agrave; những người sẽ c&ugrave;ng bạn l&agrave;m việc, giao tiếp, truyền cảm hứng, gi&uacute;p đỡ bạn ph&aacute;t triển bản th&acirc;n&hellip;&nbsp;</p>

<p>T&oacute;m lại, đội, nh&oacute;m c&agrave;ng gắn kết v&agrave; mức độ ph&ugrave; hợp c&agrave;ng cao th&igrave; sẽ c&agrave;ng ảnh hưởng t&iacute;ch cực đến chỉ số ho&agrave;n th&agrave;nh mục ti&ecirc;u nghề nghiệp. V&igrave; vậy, đừng xem nhẹ m&agrave; h&atilde;y t&igrave;m hiểu kỹ c&agrave;ng trước khi quyết định gia nhập m&ocirc;i trường l&agrave;m việc mới nh&eacute;.</p>

<h3><strong>X&aacute;c định những kỹ năng tối quan trọng để trau dồi</strong></h3>

<p>Khi đặt ra một mục ti&ecirc;u nghề nghiệp, bạn cần ngồi lại để x&aacute;c định xem những kỹ năng n&agrave;o c&oacute; sự li&ecirc;n quan mật thiết v&agrave; gi&uacute;p bạn đạt được mục ti&ecirc;u dễ d&agrave;ng, nhanh ch&oacute;ng hơn. Từ đ&oacute;, bạn c&oacute; thể điều chỉnh kế hoạch (đặc biệt l&agrave; kế hoạch ph&aacute;t triển bản th&acirc;n) để tự tin theo đuổi mục ti&ecirc;u.</p>

<p>Chẳng hạn:&nbsp;Mục ti&ecirc;u của bạn l&agrave; trở th&agrave;nh Project Manager trong 3 năm tới (trước th&aacute;ng 02 năm 2025)</p>

<p>Vậy th&igrave; bạn phải x&aacute;c định được rằng để c&oacute; cơ hội trở th&agrave;nh Project Manager v&agrave; đảm đương vị tr&iacute; n&agrave;y một c&aacute;ch hiệu quả th&igrave; đ&acirc;u l&agrave; những kỹ năng tối quan trọng? L&agrave; kỹ năng giao tiếp, ph&acirc;n chia c&ocirc;ng việc v&agrave; nh&acirc;n lực hợp l&yacute;, kỹ năng đ&agrave;m ph&aacute;n, kỹ năng quản l&yacute;&hellip;</p>

<p>Điều n&agrave;y th&uacute;c đẩy v&agrave; bắt buộc bạn phải t&igrave;m kiếm cơ hội nhiều hơn để thể hiện c&aacute;c kỹ năng n&oacute;i tr&ecirc;n từ ch&iacute;nh c&ocirc;ng việc h&agrave;ng ng&agrave;y; hoặc bạn phải tham gia c&aacute;c kh&oacute;a học giao tiếp, kh&oacute;a quản l&yacute; dự &aacute;n để trau dồi từ ng&agrave;y h&ocirc;m nay.</p>

<p>C&ograve;n nếu bạn đặt ra mục ti&ecirc;u trở th&agrave;nh Project Manager nhưng bạn lại kh&ocirc;ng giỏi giao tiếp, bạn chỉ chăm chăm ngồi code mỗi ng&agrave;y như một Developer v&agrave; bạn cũng chẳng buồn tham gia c&aacute;c kh&oacute;a học để cải thiện c&aacute;c kỹ năng mềm kể tr&ecirc;n th&igrave; bạn nghĩ m&igrave;nh sẽ c&oacute; bao nhi&ecirc;u phần trăm cơ hội? Mục ti&ecirc;u đ&oacute; c&oacute; khả thi để đạt được hay kh&ocirc;ng?</p>

<h3><strong>C&acirc;n nhắc sự c&acirc;n bằng v&agrave; hạnh ph&uacute;c trong c&ocirc;ng việc &ndash; cuộc sống khi thiết lập mục ti&ecirc;u mới</strong></h3>

<p>Th&ocirc;ng thường, mục ti&ecirc;u nghề nghiệp được thiết lập ra cũng nhằm đ&aacute;p ứng những nhu cầu, mong muốn li&ecirc;n quan đến cuộc sống.&nbsp;</p>

<p>Chẳng hạn:&nbsp;Bạn đặt mục ti&ecirc;u trở th&agrave;nh CTO trong v&ograve;ng 10 năm tới cũng l&agrave; để c&oacute; được cuộc sống sung t&uacute;c hơn, thỏa m&atilde;n nhu cầu được thể hiện bản th&acirc;n v&agrave; cống hiến, chia sẻ với x&atilde; hội (tầng cao nhất của th&aacute;p Maslow). Hoặc bạn đặt mục ti&ecirc;u trở th&agrave;nh Freelancer Developer v&agrave;o th&aacute;ng 03/2022 chỉ để đạt được mục đ&iacute;ch tự do về t&agrave;i ch&iacute;nh, thời gian&hellip;</p>

<blockquote>
<p>Tham khảo:&nbsp;<a href="https://itviec.com/blog/freelancer-it/" rel="noopener" target="_blank"><strong>L&agrave;m Freelancer IT gi&uacute;p t&ocirc;i tăng thu nhập 300%</strong></a></p>
</blockquote>

<p>Sự li&ecirc;n hệ mật thiết n&agrave;y vừa c&oacute; thể l&agrave; động lực gi&uacute;p bạn phấn đấu đạt được mục ti&ecirc;u nghề nghiệp nhưng đ&ocirc;i khi, đ&oacute; cũng l&agrave; &aacute;p lực khiến bạn dễ rơi v&agrave;o trạng th&aacute;i mất c&acirc;n bằng, lo sợ thất bại v&agrave; muốn từ bỏ sớm.</p>

<p>Để lu&ocirc;n cảm thấy hạnh ph&uacute;c tr&ecirc;n h&agrave;nh tr&igrave;nh chinh phục mục ti&ecirc;u, c&acirc;u n&oacute;i từ John Sonmez &ndash; chủ blog&nbsp;<a href="https://simpleprogrammer.com/" rel="noopener" target="_blank">https://simpleprogrammer.com/</a>&nbsp;c&oacute; thể gi&uacute;p bạn c&oacute; th&ecirc;m nguồn cảm hứng:&nbsp;</p>

<p>&ldquo;H&atilde;y chăm s&oacute;c bản th&acirc;n, lựa chọn c&aacute;c mối quan hệ x&atilde; hội một c&aacute;ch cẩn trọng, sống hết m&igrave;nh cho từng khoảnh khắc hiện tại v&agrave; bạn sẽ nhận ra cuộc sống của bạn chẳng bao giờ cần đến sự c&acirc;n bằng bởi v&igrave; bạn lu&ocirc;n t&igrave;m thấy niềm vui, sự trọn vẹn trong mỗi việc bạn l&agrave;m&rdquo;.</p>
', N'2c9bc66c-c00b-4339-abb0-66e99b1558bf.png', N'819a4259-5ac2-4c8c-7213-08db79423d40', CAST(N'2023-07-05T02:38:05.0000000' AS DateTime2), N'<p><strong>Mục ti&ecirc;u nghề nghiệp l&agrave; điều m&agrave; bất cứ ai (kh&ocirc;ng ri&ecirc;ng g&igrave; Developer) n&ecirc;n x&aacute;c định ngay từ đầu, để điều hướng sự nghiệp v&agrave; dẫn lối th&agrave;nh c&ocirc;ng. Tuy nhi&ecirc;n, bạn đ&atilde; thực sự hiểu v&agrave; biết được mục ti&ecirc;u nghề nghiệp của m&igrave;nh l&agrave; g&igrave;, c&aacute;ch bạn x&acirc;y dựng mục ti&ecirc;u đ&atilde; ch&iacute;nh x&aacute;c hay chưa v&agrave; l&agrave;m thế n&agrave;o để li&ecirc;n kết mục ti&ecirc;u nghề nghiệp với CV một c&aacute;ch c&oacute; chiến lược, g&acirc;y ấn tượng với nh&agrave; tuyển dụng?&hellip;</strong></p>
', 443)
INSERT [dbo].[Blogs] ([Id], [Slug], [Author], [Title], [Content], [Image], [AppUserId], [CreateDate], [Description], [Popular]) VALUES (21, N'cio-chia-se-kinh-nghiem-tham-gia-phong-van-chuyen-mon-it-danh-cho-ung-vien', N'Manh Tuan', N'CIO chia sẻ kinh nghiệm tham gia phỏng vấn chuyên môn IT dành cho ứng viên', N'<h4><strong>ITviec: Trước khi đến với buổi phỏng vấn chuy&ecirc;n m&ocirc;n, anh c&oacute; thể chia sẻ những yếu tố m&agrave; ứng vi&ecirc;n n&ecirc;n x&aacute;c định trước khi đi phỏng vấn? Mục ti&ecirc;u c&oacute; được c&ocirc;ng việc hay học hỏi kinh nghiệm từ buổi phỏng vấn quan trọng hơn?</strong></h4>

<p>N&oacute;i đến vấn đề x&aacute;c định, hầu hết, t&ocirc;i thấy c&aacute;c bạn IT hiện nay c&ograve;n m&ocirc;ng lung, chưa x&aacute;c định được mục ti&ecirc;u c&ocirc;ng việc v&agrave; con đường sự nghiệp.</p>

<p><strong>Nguy&ecirc;n nh&acirc;n chủ yếu c&oacute; thể l&agrave; do bắt nguồn từ c&ocirc;ng ty đầu ti&ecirc;n m&agrave; c&aacute;c bạn l&agrave;m.</strong>&nbsp;C&ocirc;ng ty đầu ti&ecirc;n thường ảnh hưởng đến c&aacute;c bạn rất nhiều.</p>

<p>Khi tham gia một c&ocirc;ng ty đủ l&acirc;u, văn ho&aacute; v&agrave; c&aacute;ch l&agrave;m của c&ocirc;ng ty đ&oacute; sẽ trở th&agrave;nh nền tảng, th&oacute;i quen của c&aacute;c bạn. Do vậy nếu tham gia v&agrave;o c&aacute;c c&ocirc;ng ty kh&ocirc;ng c&oacute; định hướng, c&aacute;c bạn sau n&agrave;y rất dễ lạc lối, hoặc phải mất nhiều năm sau mới nh&igrave;n ra được chỗ lạc lối đ&oacute;. Hậu quả l&agrave; khi l&agrave;m ở những m&ocirc;i trường như vậy, bạn sẽ bị phụ thuộc v&agrave;o họ v&igrave; khi bu&ocirc;ng họ ra, bạn kh&ocirc;ng biết n&ecirc;n đi đ&acirc;u, l&agrave;m g&igrave; tiếp theo.</p>

<p>Ch&iacute;nh v&igrave; thế, t&ocirc;i khuy&ecirc;n rằng c&aacute;c bạn kh&ocirc;ng n&ecirc;n phụ thuộc v&agrave;o c&ocirc;ng ty m&agrave; h&atilde;y phụ thuộc v&agrave;o mục ti&ecirc;u con đường sự nghiệp của bạn. H&atilde;y x&aacute;c định mỗi bước tr&ecirc;n con đường sự nghiệp của c&aacute;c bạn cần những bộ kỹ năng g&igrave;, học hỏi như thế n&agrave;o v&agrave; học ở đ&acirc;u. Từ đ&oacute;, ph&aacute;t triển l&ecirc;n dần, v&agrave; lựa chọn c&ocirc;ng ty ph&ugrave; hợp với mục ti&ecirc;u đ&oacute;.</p>

<p>C&oacute; 3 gi&aacute; trị m&agrave; một ứng vi&ecirc;n đang t&igrave;m việc n&ecirc;n quan t&acirc;m:</p>

<p><strong>1. M&ocirc;i trường</strong>&nbsp;&ndash; L&agrave; nơi bạn c&oacute; thể sống được để m&agrave; l&agrave;m việc v&agrave; ph&aacute;t triển, học hỏi. H&atilde;y tưởng tượng như ta l&agrave; c&aacute; vậy, nếu bỏ c&aacute; v&agrave;o nước nhiễm độc th&igrave; con c&aacute; đ&oacute; sẽ chết trước khi ph&aacute;t triển được.&nbsp;<strong>Nước độc th&igrave; con c&aacute; sẽ chết. Hoặc mấy con c&aacute; trong đ&oacute; kh&ocirc;ng thể dung nạp bạn th&igrave; cũng kh&ocirc;ng đ&agrave;nh.</strong></p>

<p><strong>2. Cơ hội&nbsp;</strong>&ndash; Nhưng khi d&ugrave; nước trong, đồ ăn đầy đủ, được chăm s&oacute;c mỗi ng&agrave;y con c&aacute; sẽ b&eacute;o tốt, nhưng l&acirc;u dần cũng th&agrave;nh c&aacute; kiểng kh&ocirc;ng lớn mạnh được. C&aacute; cần s&oacute;ng. Cơ hội ch&iacute;nh l&agrave; s&oacute;ng, c&oacute; s&oacute;ng mới c&oacute; c&aacute; mập, c&oacute; s&oacute;ng mới c&oacute; th&aacute;ch thức để trưởng th&agrave;nh. V&agrave; vượt s&oacute;ng mới th&agrave;nh c&ocirc;ng.</p>

<p><strong>Con c&aacute; d&ugrave; c&oacute; mập đến đ&acirc;u nhưng bể c&aacute; nhỏ th&igrave; con c&aacute; cũng kh&ocirc;ng ph&aacute;t triển được. N&ecirc;n với một ch&uacute;t, chọn &ldquo;k&egrave;o&rdquo; tr&ecirc;n, kh&ocirc;ng n&ecirc;n chỉ chọn &ldquo;k&egrave;o&rdquo; dưới an to&agrave;n, kh&ocirc;ng thử th&aacute;ch bản th&acirc;n v&agrave; nhổ gi&ograve; được.</strong></p>

<p><strong>3. Thu nhập&nbsp;</strong>&ndash; C&oacute; những bạn tập trung v&agrave;o lương từ c&ocirc;ng ty, &ldquo;tiền tươi&rdquo;, nhưng cũng c&oacute; bạn nh&igrave;n được thu nhập. Thu nhập ở đ&acirc;y kh&ocirc;ng phải chỉ l&agrave; tiền lương, m&agrave; l&agrave; gi&aacute; trị nền tảng sinh ra từ M&ocirc;i trường v&agrave; Cơ hội ở tr&ecirc;n, chuyển h&oacute;a th&agrave;nh gi&aacute; trị Thu nhập cho hiện tại v&agrave; tương lai &iacute;t nhất 3-5 năm sau.</p>

<p>Với t&ocirc;i m&ocirc;i trường tốt v&agrave; c&oacute; nhiều cơ hội sẽ dẫn đến thu nhập trong tương lai. H&atilde;y chọn l&agrave;m những c&ocirc;ng ty c&oacute; thể cho bạn cả 3 gi&aacute; trị tr&ecirc;n, chỉ ra được đường hướng sự nghiệp r&otilde; r&agrave;ng cho c&aacute;c bạn th&igrave; c&aacute;c bạn mới c&oacute; sự chuẩn bị kỹ lưỡng. Nhờ vậy, nh&acirc;n t&agrave;i mới được d&ugrave;ng đ&uacute;ng chỗ, đ&uacute;ng việc, kh&ocirc;ng bị l&atilde;ng ph&iacute;.</p>

<h3><strong>ITviec: Quy tr&igrave;nh phỏng vấn chuy&ecirc;n m&ocirc;n sẽ diễn ra như thế n&agrave;o?</strong></h3>

<p>Quy tr&igrave;nh phỏng vấn chuy&ecirc;n m&ocirc;n sẽ t&ugrave;y v&agrave;o từng level của ứng vi&ecirc;n:</p>

<ul>
	<li>Đối với Fresher/Junior: L&agrave;m kiểm tra loại tập trung trước, khoảng 30 đến 45 ph&uacute;t tối đa. Nếu đạt th&igrave; sẽ đến một v&ograve;ng phỏng vấn chuy&ecirc;n m&ocirc;n trực tiếp với Technical Manager.</li>
	<li>Đối với Experienced/Semi-Senior/Senior/Lead: Th&ocirc;ng thường chỉ cần một v&ograve;ng phỏng vấn trực tiếp với Technical Manager, cũng khoảng 45 ph&uacute;t tối đa,&nbsp;<strong>l&acirc;u qu&aacute; n&oacute;i d&ocirc;ng d&agrave;i</strong>. Ứng vi&ecirc;n sẽ được kiểm tra bằng ch&iacute;nh những y&ecirc;u cầu hiện tại c&ocirc;ng ty đang cần thực thi, v&agrave; c&aacute;c vấn đề kỹ thuật (giả định hoặc thực tế) trong những mảng họ chọn v&agrave; ph&ugrave; hợp với c&ocirc;ng ty.&nbsp;</li>
	<li>Đối với vị tr&iacute; Product Owner hoặc Business Analysis: Th&ocirc;ng thường sẽ tối đa 2 v&ograve;ng phỏng vấn chuy&ecirc;n m&ocirc;n. Ứng vi&ecirc;n thường sẽ được y&ecirc;u cầu tr&igrave;nh b&agrave;y về giải ph&aacute;p, c&aacute;ch l&agrave;m sau b&agrave;i phỏng vấn đầu ti&ecirc;n.</li>
</ul>

<p>Ngo&agrave;i ra, t&ocirc;i kh&ocirc;ng c&oacute; lời khuy&ecirc;n về quy tr&igrave;nh sau phỏng vấn. T&ocirc;i tin rằng một người chuy&ecirc;n nghiệp l&agrave; phải chuy&ecirc;n nghiệp trong qu&aacute; tr&igrave;nh l&agrave;m việc rồi n&ecirc;n h&atilde;y cứ thể hiện tốt nhất trong qu&aacute; tr&igrave;nh phỏng vấn.</p>

<p>C&ograve;n việc viết thư cảm ơn lại mang t&iacute;nh thủ tục, mang t&iacute;nh &ldquo;con người&rdquo; hơn th&igrave; sẽ ph&ugrave; hợp khi c&aacute;c bạn phỏng vấn với HR. Technical Manager thường chỉ quan t&acirc;m đến chuy&ecirc;n m&ocirc;n của ứng vi&ecirc;n.</p>

<p>Kết quả phỏng vấn sẽ c&oacute; sau buổi phỏng vấn kh&ocirc;ng qu&aacute; 1 tuần. Thậm ch&iacute; l&agrave; ngay trong buổi phỏng vấn th&igrave; nh&agrave; tuyển dụng đ&atilde; c&oacute; kết quả rồi.</p>

<h3><strong>ITviec: Ứng vi&ecirc;n n&ecirc;n chuẩn bị t&acirc;m l&yacute; như thế n&agrave;o khi chuẩn bị tham gia phỏng vấn chuy&ecirc;n m&ocirc;n với Technical Manager?</strong></h3>

<p>Trước hết, c&aacute;c bạn n&ecirc;n hiểu rằng c&aacute;c bạn kh&ocirc;ng phải đi xin việc m&agrave; l&agrave; đang đi trao đổi về c&ocirc;ng việc.</p>

<p>T&ocirc;i muốn l&agrave;m r&otilde; rằng c&acirc;u chuyện ở đ&acirc;y kh&ocirc;ng phải l&agrave; m&igrave;nh cố gắng xin cho được việc m&agrave; l&agrave; giữa hai b&ecirc;n phải c&oacute; sự trao đổi. Với những ứng vi&ecirc;n biết r&otilde; bản th&acirc;n họ cũng như biết r&otilde; về c&ocirc;ng việc, nếu trong trường hợp phỏng vấn thất bại th&igrave; họ cũng sẽ biết l&agrave; kh&ocirc;ng phải l&agrave; họ dở m&agrave; l&agrave; kh&ocirc;ng ph&ugrave; hợp với c&ocirc;ng ty th&ocirc;i.</p>

<p>T&ocirc;i đ&atilde; gặp rất nhiều trường hợp ứng vi&ecirc;n đi &ldquo;phỏng vấn thử&rdquo;. C&oacute; nghĩa rằng ứng vi&ecirc;n biết rằng họ kh&ocirc;ng tr&uacute;ng tuyển được v&agrave;o vị tr&iacute; ấy nhưng họ vẫn đi phỏng vấn để biết được l&agrave; c&ocirc;ng việc đ&oacute;, vị tr&iacute; đ&oacute; cần những y&ecirc;u cầu g&igrave; hay c&ocirc;ng ty đ&oacute; như thế n&agrave;o.</p>

<p>T&ocirc;i cũng đ&atilde; từng đi phỏng vấn 20 c&ocirc;ng ty kh&aacute;c nhau cho c&ugrave;ng 1 vị tr&iacute; để t&ocirc;i hiểu được một c&aacute;ch to&agrave;n diện hơn về vị tr&iacute; đ&oacute;. Từ đ&oacute;, với lần &ldquo;phỏng vấn thật&rdquo; tiếp theo, m&igrave;nh ho&agrave;n to&agrave;n c&oacute; thể dẫn dắt được buổi phỏng vấn, chứ kh&ocirc;ng c&ograve;n ở t&acirc;m thế &ldquo;đi xin&rdquo; như ở tr&ecirc;n nữa.</p>

<h3><strong>ITviec: V&igrave; sao ứng vi&ecirc;n nhất định phải t&igrave;m hiểu về c&ocirc;ng ty trước khi tham gia phỏng vấn?</strong></h3>

<p>T&ocirc;i đ&atilde; từng nghe một v&agrave;i ứng vi&ecirc;n chia sẻ l&agrave; &ldquo;Em nghe bạn em n&oacute;i c&ocirc;ng ty tốt, bạn em th&iacute;ch c&ocirc;ng ty n&ecirc;n em muốn ứng tuyển v&agrave;o đ&acirc;y&rdquo;. T&igrave;m hiểu th&ocirc;ng tin qua c&aacute;c mối quan hệ xung quanh l&agrave; việc dễ hiểu, v&agrave; cũng n&ecirc;n l&agrave;m. Tuy nhi&ecirc;n, đ&oacute; kh&ocirc;ng n&ecirc;n chỉ l&agrave; l&yacute; do duy nhất để ứng tuyển v&agrave;o một c&ocirc;ng ty. Bạn em th&iacute;ch nhưng nếu em kh&ocirc;ng th&iacute;ch th&igrave; sao, em kh&ocirc;ng ph&ugrave; hợp th&igrave; như thế n&agrave;o?</p>

<p>Ch&iacute;nh v&igrave; thế, bạn cần phải hiểu r&otilde; c&ocirc;ng việc muốn ứng tuyển l&agrave; c&ocirc;ng việc như thế n&agrave;o, đọc kỹ JD vị tr&iacute; đ&oacute; xem họ y&ecirc;u cầu những g&igrave;; c&ocirc;ng ty đ&oacute; l&agrave; c&ocirc;ng ty như thế n&agrave;o, l&agrave;m trong lĩnh vực g&igrave;, hoạt động ra sao,&hellip;</p>

<p>Nếu bạn chưa thể t&igrave;m hiểu ho&agrave;n to&agrave;n đầy đủ về những g&igrave; muốn biết, cũng đừng lo lắng, bạn c&oacute; thể hỏi lại c&ocirc;ng ty trong buổi phỏng vấn. Phải chuẩn bị trước những điều c&aacute;c bạn n&ecirc;n hỏi c&ocirc;ng ty. Những vấn đề c&aacute;c bạn ứng vi&ecirc;n n&ecirc;n hỏi:</p>

<ul>
	<li>M&ocirc;i trường l&agrave;m việc như thế n&agrave;o, đặc biệt sau khi &ldquo;chuyển đổi&rdquo; hậu COVID-19 như thế n&agrave;y.</li>
	<li>Lộ tr&igrave;nh c&ocirc;ng việc, cơ hội thăng tiến: L&agrave;m xong dự &aacute;n th&igrave; sao, L&agrave;m sao để thăng tiến.</li>
	<li>Tổng thu nhập l&agrave; g&igrave;, kh&ocirc;ng chỉ l&agrave; về lương. T&ocirc;i sẽ chia sẻ về vấn đề n&agrave;y kỹ hơn ở phần tiếp theo trong b&agrave;i viết.</li>
</ul>

<p>Với những ứng vi&ecirc;n đ&atilde; c&oacute; sự chuẩn bị kiến thức, kết hợp với sự chuẩn bị t&acirc;m l&yacute; đ&atilde; n&ecirc;u tr&ecirc;n, th&igrave; họ sẽ rất thoải m&aacute;i v&agrave; buổi phỏng vấn diễn ra rất nhanh. Họ n&ecirc;u r&otilde; được kiến thức của họ về c&ocirc;ng ty. Họ biết được c&ocirc;ng ty cần người như thế n&agrave;o v&agrave; đồng thời, họ c&oacute; những c&acirc;u hỏi d&agrave;nh cho c&ocirc;ng ty để l&agrave;m r&otilde; những thắc mắc cụ thể từ ph&iacute;a họ. Những ứng vi&ecirc;n như vậy ho&agrave;n to&agrave;n c&oacute; thể chuyển từ một buổi c&ocirc;ng ty phỏng vấn bạn th&agrave;nh bạn phỏng vấn c&ocirc;ng ty.</p>
', N'6e5467d9-3b03-4f4a-b8de-1027548fdbb2.png', N'098dc935-43d3-4401-924e-08db79360ded', CAST(N'2023-07-06T02:40:38.0000000' AS DateTime2), N'<p><strong>Kiến thức nền tảng, kỹ năng v&agrave; kinh nghiệm đ&uacute;ng l&agrave; quan trọng thật, nhưng đ&oacute; vẫn chưa phải l&agrave; tất cả. Vẫn c&ograve;n những kỹ năng quan trọng kh&aacute;c bạn cần thể hiện trong một buổi phỏng vấn chuy&ecirc;n m&ocirc;n với Technical Manager nếu bạn muốn đậu phỏng vấn. H&atilde;y để CIO chia sẻ với bạn những kinh nghiệm đi phỏng vấn IT quan trọng.</strong></p>
', 226)
INSERT [dbo].[Blogs] ([Id], [Slug], [Author], [Title], [Content], [Image], [AppUserId], [CreateDate], [Description], [Popular]) VALUES (22, N'giai-dap-hai-trong-cac-cau-hoi-phong-van-it-pho-bien-nhat', N'Gia Bao', N'Giải đáp hai trong các câu hỏi phỏng vấn IT phổ biến nhất', N'<h2><strong>C&ocirc;ng thức chinh phục tất cả c&aacute;c c&acirc;u hỏi phỏng vấn IT</strong></h2>

<p>T&igrave;m kiếm c&acirc;u trả lời cho c&aacute;c c&acirc;u hỏi phỏng vấn IT kh&ocirc;ng kh&oacute; đối với lập tr&igrave;nh vi&ecirc;n. Thử th&aacute;ch thật sự ch&iacute;nh l&agrave; hiểu được nh&agrave; tuyển dụng đang t&igrave;m kiếm một c&acirc;u trả lời như thế n&agrave;o. Theo t&ocirc;i, nh&agrave; tuyển dụng muốn nhận về những giải ph&aacute;p phải thỏa được &iacute;t nhất 3 ti&ecirc;u ch&iacute; cơ bản n&agrave;y:</p>

<ul>
	<li>Hiệu quả</li>
	<li>Tối ưu</li>
	<li>S&aacute;ng tạo</li>
</ul>

<p>Tất nhi&ecirc;n, họ cũng quan t&acirc;m đến nhiều yếu tố kh&aacute;c nữa nhưng đ&acirc;y l&agrave; những điều cơ bản.</p>

<p>&ldquo;Tối ưu&rdquo; ở đ&acirc;y mang nghĩa về hiệu suất, hay n&oacute;i c&aacute;ch kh&aacute;c l&agrave; về độ phức tạp của thời gian (time complexity) v&agrave; bộ nhớ (space complexity). Độ phức tạp của thời gian biểu thị hiệu suất của chương tr&igrave;nh v&agrave; thời gian m&aacute;y t&iacute;nh ho&agrave;n th&agrave;nh hoặc chạy c&aacute;c thuật to&aacute;n được viết. Độ phức tạp của bộ nhớ cũng hoạt động một c&aacute;ch tương tự; tuy nhi&ecirc;n, đ&oacute; l&agrave; một biểu thức t&oacute;m tắt lượng bộ nhớ cần thiết để chạy thuật to&aacute;n.</p>

<p>Về cơ bản, khi bạn phải một vấn đề m&agrave; đ&ograve;i hỏi bạn cần phải thực hiện nhiều &ldquo;nhiệm vụ phụ&rdquo; kh&aacute;c mới c&oacute; thể tạo ra một giải ph&aacute;p th&agrave;nh c&ocirc;ng cho nhiệm vụ ch&iacute;nh, việc đảm bảo cả độ phức tạp của thời gian v&agrave; bộ nhớ sẽ gặp nhiều thử th&aacute;ch v&igrave; sẽ c&oacute; nhiều quy tr&igrave;nh cần xem x&eacute;t.</p>

<p>Mức độ &ldquo;hiệu quả&rdquo; của giải ph&aacute;p được dựa tr&ecirc;n độ r&otilde; r&agrave;ng v&agrave; s&uacute;c t&iacute;ch của giải ph&aacute;p. Điều n&agrave;y c&oacute; nghĩa c&aacute;c giải ph&aacute;p kh&ocirc;ng n&ecirc;n thiết kế qu&aacute; &ldquo;cồng kềnh&rdquo;. V&iacute; dụ:&nbsp;<em>Ch&uacute;ng ta đang phải giải quyết một vấn đề to&aacute;n học. Viết chi ch&iacute;t c&aacute;c ch&uacute; th&iacute;ch v&agrave; đoạn diễn giải kh&ocirc;ng cần thiết về l&yacute; do tại sao ch&uacute;ng ta lại thực hiện từng bước (chẳng hạn như ph&eacute;p cộng) sẽ l&agrave;m cho c&acirc;u trả lời lộn xộn v&agrave; thừa mứa th&ocirc;ng tin, khiến n&oacute; kh&oacute; hiểu v&agrave; kh&oacute; đọc (giả định rằng đ&acirc;y l&agrave; một c&acirc;u trả lời d&agrave;i).</em>&nbsp;Điều tương tự cũng &aacute;p dụng cho việc viết code.</p>

<p>Tuy nhi&ecirc;n, giống như &ldquo;t&iacute;nh thực tế&rdquo; m&agrave; t&ocirc;i đ&atilde; c&oacute; đề cập ở tr&ecirc;n, khi cần t&igrave;m giải ph&aacute;p cho c&aacute;c c&acirc;u hỏi phỏng vấn IT lớn, bạn cần thực hiện nhiều thuật to&aacute;n phụ kh&aacute;c nhau để lập tr&igrave;nh, th&igrave; sẽ kh&oacute; c&oacute; thể viết code sạch v&agrave; s&uacute;c t&iacute;ch bởi v&igrave; theo lẽ thường, bạn cần phải giải th&iacute;ch với nh&agrave; tuyển dụng về những giải ph&aacute;p v&agrave; đa quy tr&igrave;nh m&agrave; bạn sử dụng cho giải ph&aacute;p (đ&acirc;y đồng thời cũng l&agrave; một yếu tố kh&aacute;c m&agrave; ứng vi&ecirc;n n&ecirc;n quan t&acirc;m, bạn c&oacute; thể giải th&iacute;ch code bạn viết r&agrave;nh mạch như thế n&agrave;o). Đ&oacute; ch&iacute;nh l&agrave; l&yacute; do v&igrave; sao c&aacute;c lập tr&igrave;nh vi&ecirc;n cần li&ecirc;n tục thực h&agrave;nh trong nhiều th&aacute;ng để chuẩn bị cho c&aacute;c buổi phỏng vấn.</p>

<blockquote>
<p><em>Xem th&ecirc;m:&nbsp;<strong><a href="https://itviec.com/viec-lam-it/developer?utm_medium=anchor_text&amp;utm_source=blog_07122021&amp;utm_campaign=daily" rel="noreferrer noopener" target="_blank">Việc l&agrave;m Developer &ldquo;chất&rdquo; to&agrave;n quốc</a></strong></em></p>
</blockquote>

<h2><strong>Giải đ&aacute;p hai trong c&aacute;c c&acirc;u hỏi phỏng vấn IT phổ biến về cấu tr&uacute;c dữ liệu c&acirc;y</strong></h2>

<p>Trong b&agrave;i viết n&agrave;y, t&ocirc;i sẽ thảo luận về hai trong những c&aacute;c c&acirc;u hỏi phỏng vấn IT y&ecirc;u th&iacute;ch của c&aacute; nh&acirc;n t&ocirc;i v&agrave; một trong những c&acirc;u hỏi m&atilde; h&oacute;a phổ biến nhất li&ecirc;n quan đến c&acirc;y. Đ&oacute; l&agrave; c&acirc;u hỏi về&nbsp;<strong>chiều rộng&nbsp;</strong>v&agrave;&nbsp;<strong>chiều s&acirc;u tối đa</strong>&nbsp;của c&acirc;y. Đ&acirc;y l&agrave; hai trong c&aacute;c c&acirc;u hỏi phỏng vấn IT thường được hỏi nhất tại c&aacute;c c&ocirc;ng ty c&ocirc;ng nghệ lớn, v&iacute; dụ như Google, Amazon, v.v.</p>

<p>Thoạt đầu, những vấn đề n&agrave;y nghe c&oacute; vẻ kh&aacute; dễ d&agrave;ng để giải quyết, vậy th&igrave; l&yacute; do tại sao c&acirc;u hỏi n&agrave;y hấp dẫn nhiều developer v&agrave; t&ocirc;i đến như vậy? Đ&oacute; l&agrave; nhờ v&agrave;o c&aacute;c giải ph&aacute;p trừu tượng m&agrave; vấn đề n&agrave;y mang lại. C&oacute; nhiều c&aacute;ch để tạo c&aacute;c thuật to&aacute;n thực tế v&agrave; hiệu quả m&agrave; vẫn thực sự kiểm tra được khả năng suy nghĩ v&agrave; c&aacute;ch giải quyết vấn đề của lập tr&igrave;nh vi&ecirc;n. Những vấn đề đơn giản n&agrave;y lại c&oacute; thể gi&uacute;p lập tr&igrave;nh vi&ecirc;n c&oacute; cơ hội &ldquo;tỏa s&aacute;ng&rdquo; v&agrave; l&agrave;m nổi bật khả năng giải quyết vấn đề của họ.</p>

<p><img alt="các câu hỏi phỏng vấn it - cấu trúc dữ liệu cây" src="https://itviec.com/blog/wp-content/uploads/2021/12/cac-cau-hoi-phong-van-it-cay-nhi-phan-1-640x640.png" style="height:640px; width:640px" /></p>

<p>Chiều s&acirc;u v&agrave; chiều rộng tối đa của c&acirc;y t&igrave;m kiếm nhị ph&acirc;n.</p>

<p>Tự bản th&acirc;n c&acirc;u hỏi phỏng vấn n&agrave;y kh&aacute; đơn giản v&agrave; dễ hiểu:&nbsp;<em><strong>Cho một c&acirc;y nhị ph&acirc;n, t&igrave;m chiều rộng v&agrave; chiều s&acirc;u tối đa</strong></em>.</p>

<p>X&eacute;t về mặt kh&aacute;i niệm th&igrave; mặc d&ugrave; kh&ocirc;ng c&oacute; g&igrave; kh&oacute; trong việc hiểu đề b&agrave;i, nhưng bạn sẽ phải mất một ch&uacute;t thời gian (kh&ocirc;ng chỉ v&agrave;i gi&acirc;y m&agrave; l&agrave; một v&agrave;i ph&uacute;t) để t&igrave;m ra c&aacute;ch code n&ecirc;n một giải ph&aacute;p th&iacute;ch hợp.</p>

<p>Giải ph&aacute;p m&agrave; t&ocirc;i sẽ tr&igrave;nh b&agrave;y dưới đ&acirc;y c&oacute; vẻ sẽ hơi kỳ quặc. V&agrave; tại sao t&ocirc;i lại diễn tả bằng từ &ldquo;kỳ quặc&rdquo;? Bởi v&igrave; theo định nghĩa, một thuật to&aacute;n t&igrave;m kiếm theo chiều rộng hoạt động tốt nhất khi duyệt c&aacute;c đỉnh kề theo chiều ngang, v&agrave; một thuật to&aacute;n t&igrave;m kiếm theo chiều s&acirc;u hoạt động tốt nhất khi duyệt theo chiều d&agrave;i của c&acirc;y. Do đ&oacute;, bạn c&oacute; thể hiểu được rằng thuật to&aacute;n n&agrave;o n&ecirc;n đi với vấn đề n&agrave;o.</p>

<p>Th&ocirc;ng thường,&nbsp;<strong>thuật to&aacute;n t&igrave;m kiếm theo chiều rộng</strong>&nbsp;(Breath-First Search &ndash; BFS) mang lại hiệu quả tốt nhất khi t&igrave;m chiều rộng tối đa của c&acirc;y v&agrave;&nbsp;<strong>thuật to&aacute;n t&igrave;m kiếm theo chiều s&acirc;u</strong>&nbsp;(Depth-First Search &ndash; DFS) sẽ hoạt động tốt nhất khi t&igrave;m độ s&acirc;u tối đa. Cả hai thuật to&aacute;n đều chạy theo thời gian tuyến t&iacute;nh khi x&eacute;t về hiệu suất thời gian, điều đ&oacute; c&oacute; nghĩa l&agrave; ch&uacute;ng ta kh&ocirc;ng phải xem x&eacute;t c&aacute;c thuật to&aacute;n phức tạp kh&aacute;c khi duyệt c&acirc;y nhị ph&acirc;n.</p>

<p>Tuy nhi&ecirc;n, đối với giải ph&aacute;p của t&ocirc;i, t&ocirc;i đ&atilde; l&agrave;m ngược lại. Để t&igrave;m chiều rộng tối đa của c&acirc;y, t&ocirc;i đ&atilde; sử dụng thuật to&aacute;n t&igrave;m kiếm theo chiều s&acirc;u v&agrave; để t&igrave;m độ s&acirc;u tối đa, t&ocirc;i &aacute;p dụng thuật to&aacute;n t&igrave;m kiếm theo chiều rộng. Mặc d&ugrave; giải ph&aacute;p của t&ocirc;i c&oacute; vẻ tr&aacute;i ngược so với giải ph&aacute;p được số đ&ocirc;ng chấp nhận, cả hai thuật to&aacute;n vẫn hoạt động tốt tại thời điểm tuyến t&iacute;nh.</p>

<p><img alt="các câu hỏi phỏng vấn it - cấu trúc dữ liệu cây - dfs - bfs" src="https://itviec.com/blog/wp-content/uploads/2021/12/cac-cau-hoi-phong-van-it-cay-nhi-phan-2.png" style="height:235px; width:491px" /></p>

<p>M&ocirc; h&igrave;nh diễn giải thuật to&aacute;n t&igrave;m kiếm theo chiều rộng (Breath-First Search &ndash; BFS) v&agrave; t&igrave;m kiếm theo chiều s&acirc;u (Depth-First Search &ndash; DFS).</p>

<p>T&ocirc;i sẽ diễn giải về chiều rộng tối đa trước. T&ocirc;i sẽ đi chi tiết hơn về giải ph&aacute;p của m&igrave;nh cho vấn đề đ&oacute; v&agrave; c&aacute;ch t&ocirc;i đ&atilde; tận dụng độ s&acirc;u tối đa như thế n&agrave;o.</p>

<h3><strong>T&igrave;m kiếm chiều rộng tối đa của c&acirc;y nhị ph&acirc;n</strong></h3>

<blockquote>
<p><strong><em><a href="https://gist.githubusercontent.com/GEEGABYTE1/b9c808a45a23b032a2b991c5fa375893/raw/8c2b70df1591c6645b7507d78e955b3eadf6a180/dfs.py" rel="noreferrer noopener" target="_blank">Tham khảo đầy đủ đoạn code d&agrave;nh cho giải ph&aacute;p chiều rộng tối đa của c&acirc;y tại đ&acirc;y</a></em></strong>.</p>
</blockquote>

<p>Với thuật to&aacute;n t&igrave;m kiếm theo chiều s&acirc;u, t&ocirc;i t&igrave;m tất cả c&aacute;c ho&aacute;n vị kh&aacute;c nhau c&oacute; thể tồn tại mỗi cạnh nối của mỗi đỉnh bằng c&aacute;ch t&igrave;m kiếm qua c&acirc;y theo độ s&acirc;u đệ quy. Sau đ&oacute;, t&ocirc;i đ&atilde; th&ecirc;m từng ho&aacute;n vị v&agrave;o một array ri&ecirc;ng biệt v&igrave; ch&uacute;ng ta sẽ giả sử rằng mỗi chỉ số của mảng thể hiện một bậc nhất định. V&iacute; dụ: Để [A, B, C] l&agrave; một array của một ho&aacute;n vị nhất định được trả về bởi thuật to&aacute;n t&igrave;m kiếm theo chiều s&acirc;u. Ch&uacute;ng ta c&oacute; thể xem từng chỉ số như một bậc nhất định của c&acirc;y:</p>

<p><img alt="cấu trúc dữ liệu cây" src="https://itviec.com/blog/wp-content/uploads/2021/12/cac-cau-hoi-phong-van-it-cay-nhi-phan-3-640x640.png" style="height:640px; width:640px" /></p>

<p>Đặt chỉ số cho từng bậc.</p>

<p>Về cơ bản, t&ocirc;i đi theo hướng n&agrave;y bởi v&igrave; thuật to&aacute;n t&igrave;m kiếm theo chiều s&acirc;u trả về độ s&acirc;u m&agrave; đường dẫn t&igrave;m kiếm. Do đ&oacute;, nếu thuật to&aacute;n đi qua mỗi cạnh đến khi gặp n&uacute;t kh&ocirc;ng c&oacute; con, mỗi đường dẫn phải đối xứng về mặt chỉ số đại diện cho mỗi bậc.</p>

<p><img alt="cấu trúc dữ liệu cây - array - dfs" src="https://itviec.com/blog/wp-content/uploads/2021/12/cac-cau-hoi-phong-van-it-cay-nhi-phan-4-640x640.png" style="height:640px; width:640px" /></p>

<p>Lưu &yacute; rằng c&aacute;c chỉ số của cả hai array được trả về giống nhau.</p>

<p>Ch&uacute;ng ta cũng c&oacute; thể chứng minh điều n&agrave;y bằng h&agrave;m thứ hai .width_counter () . Với tập hợp tất cả c&aacute;c ho&aacute;n vị được định dạng th&agrave;nh một array 2D, sau đ&oacute; t&ocirc;i t&aacute;ch từng phần tử trong mỗi danh s&aacute;ch dựa tr&ecirc;n c&aacute;c chỉ số tương tự nhau. V&iacute; dụ: Tất cả c&aacute;c phần tử ở chỉ số 0 sẽ được đặt trong danh s&aacute;ch ở chỉ số 0, sau đ&oacute; tất cả c&aacute;c phần tử ở chỉ số 1 sẽ được đặt trong danh s&aacute;ch ở chỉ số 1, v.v. Đ&acirc;y được gọi l&agrave; ph&acirc;n v&ugrave;ng &ndash; một kh&aacute;i niệm khoa học m&aacute;y t&iacute;nh ti&ecirc;n tiến, l&agrave; c&aacute;ch m&agrave; ch&uacute;ng ta chia một array hoặc một chuỗi gi&aacute; trị dựa tr&ecirc;n một điều kiện nhất định.</p>

<p>Sau qu&aacute; tr&igrave;nh ph&acirc;n v&ugrave;ng, ch&uacute;ng ta sẽ thấy một array được trả về với c&aacute;c array con c&oacute; c&aacute;c phần tử được sắp xếp dựa tr&ecirc;n c&aacute;c chỉ số. Ch&uacute;ng ta c&oacute; thể kiểm tra lại xem array được trả về c&oacute; đ&uacute;ng hay kh&ocirc;ng bằng c&aacute;ch so s&aacute;nh sơ đồ c&acirc;y với c&aacute;c phần tử trong danh s&aacute;ch. Nếu mỗi lớp của c&acirc;y c&oacute; c&aacute;c n&uacute;t giống với mỗi danh s&aacute;ch trong ch&iacute;nh chỉ số đ&oacute; (giả sử một lần nữa rằng c&aacute;c chỉ số l&agrave; c&aacute;c bậc), vậy th&igrave; ta biết rằng ta đ&atilde; l&agrave;m đ&uacute;ng v&igrave; array chỉ đơn giản l&agrave; một c&acirc;y được định dạng kh&aacute;c đi.</p>

<p><img alt="các câu hỏi phỏng vấn it - cấu trúc dữ liệu cây - array - dfs" src="https://itviec.com/blog/wp-content/uploads/2021/12/cac-cau-hoi-phong-van-it-cay-nhi-phan-5-640x640.png" style="height:640px; width:640px" /></p>

<p>Lưu &yacute; mỗi array con tương tự nhau ở mỗi cấp độ.</p>

<p>Bước cuối c&ugrave;ng trong thuật to&aacute;n n&agrave;y để t&igrave;m độ s&acirc;u tối đa l&agrave; so s&aacute;nh độ d&agrave;i của mỗi array trong array 2D v&agrave; array lớn nhất (array c&oacute; độ d&agrave;i lớn nhất) sẽ l&agrave; bậc rộng nhất. Trong trường hợp n&agrave;y, v&igrave; t&ocirc;i đang so s&aacute;nh từng chỉ số trong array 2D, n&ecirc;n t&ocirc;i chỉ trả về chỉ số một c&aacute;ch đơn giản. Điều n&agrave;y vẫn đưa ra c&acirc;u trả lời đ&uacute;ng v&igrave; định nghĩa t&ocirc;i đ&atilde; n&ecirc;u trước đ&oacute; về c&aacute;c bậc giống như c&aacute;c chỉ số của mỗi array ho&aacute;n vị. Về mặt hiệu suất tổng thể, t&ocirc;i đ&atilde; c&oacute; thể cho thuật to&aacute;n t&igrave;m kiếm theo chiều s&acirc;u chạy c&ugrave;ng qu&atilde;ng thời gian O(n) v&agrave; .width_counter () với qu&atilde;ng thời gian O(n^2) do c&aacute;c lần lặp lồng nhau để tạo array 2D.</p>

<blockquote>
<p><em>Xem th&ecirc;m:&nbsp;<strong><a href="https://itviec.com/viec-lam-it/developer/ho-chi-minh-hcm?utm_medium=anchor_text&amp;utm_source=blog_07122021&amp;utm_campaign=daily" rel="noreferrer noopener" target="_blank">Việc l&agrave;m Developer &ldquo;chất&rdquo; tại TP. HCM</a></strong></em></p>
</blockquote>

<h3><strong>T&igrave;m kiếm chiều s&acirc;u tối đa của c&acirc;y nhị ph&acirc;n</strong></h3>

<p>Tiếp theo l&agrave; c&acirc;u hỏi phỏng vấn IT y&ecirc;u th&iacute;ch của t&ocirc;i.</p>

<p>Đối với chiều s&acirc;u tối đa, phương ph&aacute;p t&igrave;m độ s&acirc;u tối đa rất giống với giải ph&aacute;p t&igrave;m chiều rộng tối đa đ&atilde; giới thiệu ở ph&iacute;a trước. Tuy nhi&ecirc;n, như đ&atilde; n&oacute;i trước đ&acirc;y, thay v&igrave; sử dụng t&igrave;m kiếm theo chiều s&acirc;u, t&ocirc;i sử dụng t&igrave;m kiếm theo chiều rộng để x&aacute;c định chiều s&acirc;u. L&yacute; do tại sao t&ocirc;i sử dụng t&igrave;m kiếm theo chiều rộng ngay từ đầu l&agrave; để đếm số lần n&oacute; đi xuống một bậc do bản chất h&agrave;nh vi t&igrave;m kiếm theo chiều ngang của thuật to&aacute;n.</p>

<p><img alt="các câu hỏi phỏng vấn it - cấu trúc dữ liệu cây - bfs" src="https://itviec.com/blog/wp-content/uploads/2021/12/cac-cau-hoi-phong-van-it-cay-nhi-phan-6-640x533.png" style="height:533px; width:640px" /></p>

<p>Điều th&uacute; vị về phương ph&aacute;p n&agrave;y l&agrave; kh&ocirc;ng giống như c&aacute;ch t&ocirc;i so s&aacute;nh từng bậc để t&igrave;m chiều rộng tối đa ở giải ph&aacute;p trước đ&oacute;, t&ocirc;i kh&ocirc;ng so s&aacute;nh bất kỳ array hoặc bất kỳ đường dẫn n&agrave;o. Thay v&agrave;o đ&oacute;, t&ocirc;i tiếp cận theo chiều ngang.</p>

<blockquote>
<p><strong><em><a href="https://gist.githubusercontent.com/GEEGABYTE1/ad9454719aea5f936112c5049916a487/raw/0a32bf875650a6982a58ac7ca83817252ebeef9d/bfs.py" rel="noreferrer noopener" target="_blank">Tham khảo đầy đủ đoạn code cho giải ph&aacute;p t&igrave;m chiều s&acirc;u tối đa của c&acirc;y tại đ&acirc;y</a></em></strong>.</p>
</blockquote>

<p>Khi bạn nh&igrave;n v&agrave;o giải ph&aacute;p của t&ocirc;i, bạn sẽ thấy chẳng c&oacute; điều g&igrave; đặc biệt cả &ndash; đ&oacute; chỉ l&agrave; một phi&ecirc;n bản sửa đổi của thuật to&aacute;n t&igrave;m kiếm theo chiều s&acirc;u cổ điển. Thay v&igrave; t&igrave;m kiếm tr&ecirc;n c&acirc;y cho đến khi n&oacute; đ&aacute;p ứng một gi&aacute; trị mục ti&ecirc;u cụ thể, giải ph&aacute;p của t&ocirc;i sẽ t&igrave;m kiếm tr&ecirc;n c&acirc;y cho đến khi gặp một n&uacute;t kh&ocirc;ng c&oacute; con. Hơn nữa, để giữ một ch&iacute;nh x&aacute;c số lượng độ s&acirc;u, ch&uacute;ng t&ocirc;i chỉ th&ecirc;m 1 v&agrave;o counter (đ&acirc;y l&agrave; biến để giữ số lượng cho độ s&acirc;u) khi ch&uacute;ng t&ocirc;i tiếp cận một chỉ số cha.</p>

<p>Để nhận biết khi n&agrave;o gặp chỉ số cha, t&ocirc;i sử dụng định nghĩa cơ bản của c&acirc;y nhị ph&acirc;n n&ecirc;u rằng: Mỗi cha phải c&oacute; tối đa hai n&uacute;t con. Do đ&oacute;, trong l&uacute;c chạy lặp, t&ocirc;i chỉ th&ecirc;m 1 v&agrave;o counter khi t&ocirc;i đang ở tr&ecirc;n n&uacute;t gốc trong lần lặp đầu ti&ecirc;n (để bao gồm lu&ocirc;n n&uacute;t gốc trong số lượng) hoặc nếu độ d&agrave;i của h&agrave;ng đợi sau khi xuất hiện gi&aacute; trị gần đ&acirc;y tương đương với 2.</p>

<p>Một c&aacute;ch kh&aacute;c dễ d&agrave;ng hơn để t&igrave;m thấy chỉ số cha l&agrave; nối th&ecirc;m từng n&uacute;t v&agrave;o một array. Sử dụng phương tr&igrave;nh heap để t&igrave;m chỉ số cha, chỉ số // 2, ch&uacute;ng ta c&oacute; thể theo d&otilde;i ch&iacute;nh x&aacute;c n&uacute;t n&agrave;o l&agrave; n&uacute;t cha. Do đ&oacute;, ch&uacute;ng ta c&oacute; thể lặp lại c&acirc;y một lần nữa v&agrave; th&ecirc;m 1 v&agrave;o counter mỗi khi ch&uacute;ng ta t&igrave;m gặp một n&uacute;t cha mẹ nhờ sử dụng phương tr&igrave;nh. Đ&acirc;y l&agrave; một giải ph&aacute;p tuyệt vời; tuy nhi&ecirc;n, so với giải ph&aacute;p đơn giản của ch&uacute;ng t&ocirc;i chỉ sửa đổi thuật to&aacute;n t&igrave;m kiếm theo chiều s&acirc;u vốn chạy theo thời gian tuyến t&iacute;nh, th&igrave; giải ph&aacute;p thay thế sẽ chạy theo thời gian bậc hai.</p>

<blockquote>
<p><em>Xem th&ecirc;m:&nbsp;<strong><a href="https://itviec.com/viec-lam-it/developer/ha-noi?utm_medium=anchor_text&amp;utm_source=blog_07122021&amp;utm_campaign=daily" rel="noreferrer noopener" target="_blank">Việc l&agrave;m Developer &ldquo;chất&rdquo; tại H&agrave; Nội</a></strong></em></p>
</blockquote>

<h2><strong>Lời kết</strong></h2>

<p>X&eacute;t về mức độ &ldquo;kh&oacute; nhằn&rdquo; cũng như căng thẳng, một buổi phỏng vấn code sẽ tương tự như b&agrave;i thi tuyển sinh v&agrave;o đại học vậy. Chỉ c&oacute; kh&aacute;c l&agrave; mức độ kh&oacute; dễ của đề thi t&ugrave;y thuộc v&agrave;o &ldquo;danh tiếng&rdquo; của trường đại học đ&oacute; &ndash; Nếu bạn nộp đơn v&agrave;o trường đại học danh tiếng hơn th&igrave; b&agrave;i thi &ndash; c&aacute;c c&acirc;u hỏi phỏng vấn IT, sẽ c&agrave;ng phức tạp v&agrave; c&agrave;ng kh&oacute; đậu hơn. Do đ&oacute;, h&atilde;y chuẩn bị thật nhiều trước khi tham gia phỏng vấn nh&eacute;.</p>

<p>V&agrave; bạn cũng đừng lo lắng qu&aacute;, vẫn c&oacute; h&agrave;ng ngh&igrave;n developer l&agrave;m việc tại những c&ocirc;ng ty c&ocirc;ng nghệ lớn v&agrave; cả start-up nữa. Điều đ&oacute; c&oacute; nghĩa l&agrave; việc c&oacute; thể chinh phục c&aacute;c buổi phỏng vấn code tại bất kỳ c&ocirc;ng ty n&agrave;o kh&ocirc;ng phải l&agrave; điều hoang đường.</p>

<p><img alt="robby-2" src="https://itviec.com/blog/wp-content/uploads/2015/07/Robby2.png" style="height:300px; width:300px" /></p>

<p><strong>Bạn thấy b&agrave;i viết hay v&agrave; cần thiết với nhiều người? Đừng ngại nhấn n&uacute;t Share b&ecirc;n dưới nh&eacute;.</strong></p>

<p><strong>V&agrave; đừng qu&ecirc;n tham khảo&nbsp;<a href="http://itviec.com/" rel="noreferrer noopener" target="_blank">việc l&agrave;m IT</a>&nbsp;tr&ecirc;n ITviec</strong>!</p>
', N'b1e08699-c51f-4cbe-bf30-7eac404f9cef.png', N'88ddb9d4-48b1-488d-924d-08db79360ded', CAST(N'2023-07-07T02:41:52.6298863' AS DateTime2), N'<p><strong>Phần lớn c&aacute;c c&acirc;u hỏi phỏng vấn IT c&oacute; độ kh&oacute; từ trung b&igrave;nh đến cực kỳ kh&oacute;. V&agrave; thậm ch&iacute; sẽ c&ograve;n kh&oacute; hơn khi bạn ứng tuyển v&agrave;o c&aacute;c c&ocirc;ng ty nổi tiếng như Amazon v&agrave; Google. Tuy nhi&ecirc;n, vẫn c&oacute; c&aacute;ch để chinh phục c&aacute;c c&acirc;u hỏi phỏng vấn IT đ&oacute;.</strong></p>
', 109)
INSERT [dbo].[Blogs] ([Id], [Slug], [Author], [Title], [Content], [Image], [AppUserId], [CreateDate], [Description], [Popular]) VALUES (23, N'top-40-cau-hoi-phong-van-reactjs-tu-co-ban-den-nang-cao', N'Ngoc Hung', N'Top 40 câu hỏi phỏng vấn ReactJS từ cơ bản đến nâng cao', N'<h2><strong>ReactJS l&agrave; g&igrave;?</strong></h2>

<p>Trước khi đến với những c&acirc;u hỏi phỏng vấn ReactJS, h&atilde;y c&ugrave;ng &ldquo;&ocirc;n&rdquo; lại ReactJS l&agrave; g&igrave; nh&eacute;.</p>

<p>ReactJS l&agrave; thư viện JavaScript front-end phổ biến nhất trong lĩnh vực ph&aacute;t triển web, hay c&ograve;n được gọi l&agrave; React. React được tạo ra để x&acirc;y dựng giao diện người d&ugrave;ng nhanh v&agrave; tương t&aacute;c cho c&aacute;c ứng dụng web v&agrave; di động.</p>

<blockquote>
<p><em>Tham khảo:&nbsp;<a href="https://itviec.com/blog/framework-la-gi-top-framework-pho-bien-nhat/" rel="noopener" target="_blank"><strong>Top 5 framework phổ biến nhất d&agrave;nh cho Web Developer</strong></a></em></p>
</blockquote>

<p>React đ&atilde; trở n&ecirc;n phổ biến nhờ v&agrave;o một số t&iacute;nh năng nổi bật &ndash; c&oacute; thể được sử dụng để ph&aacute;t triển cả ứng dụng web v&agrave; ứng dụng di động, luồng dữ liệu một chiều, c&aacute;c components c&oacute; thể t&aacute;i sử dụng, tạo c&aacute;c ứng dụng động, v.v.</p>

<h2><strong>C&acirc;u hỏi phỏng vấn ReactJS cơ bản</strong></h2>

<p>Dưới đ&acirc;y l&agrave; một số c&acirc;u hỏi phỏng vấn ReactJS về c&aacute;c kh&aacute;i niệm cơ bản:</p>

<h3>1. Những đặc điểm của React?</h3>

<table>
	<tbody>
		<tr>
			<td><strong>JSX</strong></td>
			<td>JSX l&agrave; một phần mở rộng c&uacute; ph&aacute;p cho JavaScript. JSX được sử dụng với React để m&ocirc; tả giao diện người d&ugrave;ng tr&ocirc;ng như thế n&agrave;o. Bằng c&aacute;ch sử dụng JSX, ch&uacute;ng ta c&oacute; thể viết c&aacute;c cấu tr&uacute;c HTML trong c&ugrave;ng một tệp chứa code JavaScript.</td>
		</tr>
		<tr>
			<td><strong>Th&agrave;nh phần (Components)</strong></td>
			<td>Components l&agrave; nền tảng của bất kỳ ứng dụng React n&agrave;o v&agrave; một ứng dụng đơn lẻ thường bao gồm nhiều components. N&oacute; chia giao diện người d&ugrave;ng th&agrave;nh c&aacute;c phần độc lập, c&oacute; thể t&aacute;i sử dụng v&agrave; c&oacute; thể được xử l&yacute; ri&ecirc;ng.</td>
		</tr>
		<tr>
			<td><strong>DOM ảo (Virtual DOM)</strong></td>
			<td>React giữ một bản &ldquo;đại diện&rdquo; nhưng nhẹ hơn của DOM &ldquo;thực&rdquo; trong bộ nhớ, gọi l&agrave; DOM ảo (Virtual DOM). Khi trạng th&aacute;i của một đối tượng (object) thay đổi, DOM ảo chỉ thay đổi đối tượng đ&oacute; trong DOM thực, thay v&igrave; cập nhật tất cả c&aacute;c đối tượng.</td>
		</tr>
		<tr>
			<td><strong>Truyền dữ liệu một chiều (One-way data-binding)</strong></td>
			<td>Truyền dữ liệu một chiều (one-way data binding) của React giữ cho mọi thứ đều theo modular v&agrave; nhanh ch&oacute;ng. Luồng dữ liệu một chiều c&oacute; nghĩa l&agrave; khi thiết kế một ứng dụng React, bạn thường lồng c&aacute;c components con b&ecirc;n trong c&aacute;c components mẹ.</td>
		</tr>
		<tr>
			<td><strong>Hiệu suất cao</strong></td>
			<td>React chỉ cập nhật những components đ&atilde; thay đổi, thay v&igrave; cập nhật tất cả c&aacute;c components c&ugrave;ng một l&uacute;c. Điều n&agrave;y gi&uacute;p tạo ra c&aacute;c ứng dụng web nhanh hơn đ&aacute;ng kể.</td>
		</tr>
	</tbody>
</table>

<h3>2. JSX l&agrave; g&igrave;?</h3>

<p>JSX l&agrave; một phần mở rộng c&uacute; ph&aacute;p cho JavaScript. JSX được sử dụng với React để m&ocirc; tả giao diện người d&ugrave;ng tr&ocirc;ng như thế n&agrave;o. Bằng c&aacute;ch sử dụng JSX, ch&uacute;ng ta c&oacute; thể viết c&aacute;c cấu tr&uacute;c HTML trong c&ugrave;ng một tệp chứa code JavaScript.</p>

<p><img alt="reactjs - jsx là gì" src="https://itviec.com/blog/wp-content/uploads/2021/12/reactjs-la-gi-cau-hoi-phong-van-29.jpg" style="height:220px; width:375px" /></p>

<h3>3. C&aacute;c tr&igrave;nh duyệt web c&oacute; đọc JSX một c&aacute;ch trực tiếp được kh&ocirc;ng?</h3>

<ul>
	<li>Tr&igrave;nh duyệt web kh&ocirc;ng thể đọc JSX một c&aacute;ch trực tiếp. Điều n&agrave;y l&agrave; do ch&uacute;ng được x&acirc;y dựng để chỉ đọc c&aacute;c đối tượng JS th&ocirc;ng thường v&agrave; JSX kh&ocirc;ng phải l&agrave; một đối tượng JavaScript th&ocirc;ng thường.</li>
	<li>Để tr&igrave;nh duyệt web c&oacute; thể đọc được tệp JSX, tệp cần được chuyển đổi th&agrave;nh một đối tượng JavaScript th&ocirc;ng thường. Để l&agrave;m điều n&agrave;y, ch&uacute;ng t&ocirc;i sử dụng Babel.</li>
</ul>

<h3>4. DOM ảo (Virtual DOM) l&agrave; g&igrave;?</h3>

<p>DOM l&agrave; viết tắt của Document Object Model. DOM đại diện cho một t&agrave;i liệu HTML c&oacute; cấu tr&uacute;c c&acirc;y logic. Mỗi nh&aacute;nh của c&acirc;y kết th&uacute;c bằng một n&uacute;t v&agrave; mỗi n&uacute;t chứa c&aacute;c đối tượng.</p>

<p><img alt="DOM ảo - Virtual DOM là gì" src="https://itviec.com/blog/wp-content/uploads/2021/12/reactjs-la-gi-cau-hoi-phong-van-30.jpg" style="height:211px; width:376px" /></p>

<p>React giữ một bản &ldquo;đại diện&rdquo; nhưng nhẹ hơn của DOM &ldquo;thực&rdquo; trong bộ nhớ, gọi l&agrave; DOM ảo (Virtual DOM). Khi trạng th&aacute;i của một đối tượng (object) thay đổi, DOM ảo chỉ thay đổi đối tượng đ&oacute; trong DOM thực, thay v&igrave; cập nhật tất cả c&aacute;c đối tượng.</p>

<p><img alt="DOM ảo - Virtual DOM" src="https://itviec.com/blog/wp-content/uploads/2021/12/reactjs-la-gi-cau-hoi-phong-van-31.jpg" style="height:183px; width:445px" /></p>

<h3>5. Tại sao n&ecirc;n sử dụng React thay v&igrave; c&aacute;c framework kh&aacute;c, v&iacute; dụ như Angular?</h3>

<table>
	<tbody>
		<tr>
			<td><strong>Dễ d&agrave;ng tạo c&aacute;c ứng dụng động</strong></td>
			<td>React gi&uacute;p tạo c&aacute;c ứng dụng web động dễ d&agrave;ng hơn v&igrave; &iacute;t code hơn m&agrave; lại cung cấp nhiều chức năng hơn, trong khi với c&aacute;c ứng dụng JavaScript, c&aacute;ch code thường c&oacute; xu hướng trở n&ecirc;n phức tạp.</td>
		</tr>
		<tr>
			<td><strong>Hiệu suất cải thiện</strong></td>
			<td>React sử dụng DOM ảo, gi&uacute;p c&aacute;c ứng dụng web hoạt động nhanh hơn. Virtual DOM so s&aacute;nh trạng th&aacute;i trước đ&oacute; của n&oacute; v&agrave; chỉ cập nhật c&aacute;c th&agrave;nh phần c&oacute; trạng th&aacute;i thay đổi trong DOM thực thay v&igrave; cập nhật tất cả c&aacute;c th&agrave;nh phần, như c&aacute;c ứng dụng web th&ocirc;ng thường.</td>
		</tr>
		<tr>
			<td><strong>C&aacute;c th&agrave;nh phần c&oacute; thể t&aacute;i sử dụng</strong></td>
			<td>C&aacute;c components l&agrave; nền tảng của bất kỳ ứng dụng React n&agrave;o v&agrave; một ứng dụng đơn lẻ thường bao gồm nhiều components. C&aacute;c components n&agrave;y c&oacute; logic v&agrave; c&aacute;c điều khiển ri&ecirc;ng v&agrave; ch&uacute;ng c&oacute; thể được t&aacute;i sử dụng th&ocirc;ng qua ứng dụng, do đ&oacute; l&agrave;m giảm đ&aacute;ng kể thời gian ph&aacute;t triển một ứng dụng.</td>
		</tr>
		<tr>
			<td><strong>Luồng dữ liệu một chiều</strong></td>
			<td>React tu&acirc;n theo luồng dữ liệu một chiều. Điều n&agrave;y c&oacute; nghĩa l&agrave; khi thiết kế một ứng dụng React, ch&uacute;ng ta thường lồng c&aacute;c th&agrave;nh phần con v&agrave;o b&ecirc;n trong c&aacute;c th&agrave;nh phần mẹ. V&agrave; v&igrave; dữ liệu chảy theo một hướng, n&ecirc;n việc debug v&agrave; biết vấn đề xảy ra ở đ&acirc;u trong ứng dụng sẽ trở n&ecirc;n dễ d&agrave;ng hơn.</td>
		</tr>
		<tr>
			<td><strong>C&aacute;c c&ocirc;ng cụ chuy&ecirc;n dụng để debug dễ d&agrave;ng</strong></td>
			<td>Facebook đ&atilde; ph&aacute;t h&agrave;nh một tiện &iacute;ch mở rộng Chrome m&agrave; ch&uacute;ng ta c&oacute; thể sử dụng để debug c&aacute;c ứng dụng React. Điều n&agrave;y l&agrave;m cho qu&aacute; tr&igrave;nh gỡ lỗi React cho c&aacute;c ứng dụng web nhanh hơn v&agrave; dễ d&agrave;ng hơn.</td>
		</tr>
	</tbody>
</table>

<h3>6. Điểm kh&aacute;c biệt giữa ti&ecirc;u chuẩn ES6 v&agrave; ES5?</h3>

<p>Đ&acirc;y l&agrave; một v&agrave;i trường hợp m&agrave; c&uacute; ph&aacute;p ES6 kh&aacute;c so với c&uacute; ph&aacute;p ES5:</p>

<ul>
	<li>Components v&agrave; Function</li>
</ul>

<p><img alt="es5 - es6 - components và function" src="https://itviec.com/blog/wp-content/uploads/2021/12/reactjs-la-gi-cau-hoi-phong-van-1.jpg" style="height:331px; width:405px" /></p>

<ul>
	<li>exports vs export</li>
</ul>

<p><img alt="es5 - es6 - exports export" src="https://itviec.com/blog/wp-content/uploads/2021/12/reactjs-la-gi-cau-hoi-phong-van-2.jpg" style="height:121px; width:515px" /></p>

<ul>
	<li>require vs import</li>
</ul>

<p><img alt="es5 - es6 - require import" src="https://itviec.com/blog/wp-content/uploads/2021/12/reactjs-la-gi-cau-hoi-phong-van-3.jpg" style="height:126px; width:264px" /></p>

<h3>7. L&agrave;m thế n&agrave;o để tạo một ứng dụng React?</h3>

<p>Đ&acirc;y l&agrave; c&aacute;c bước để tạo một ứng dụng React:</p>

<ul>
	<li><strong><a href="https://nodejs.org/en/download/" rel="noreferrer noopener" target="_blank">C&agrave;i đặt NodeJS</a></strong>&nbsp;tr&ecirc;n m&aacute;y t&iacute;nh v&igrave; ch&uacute;ng ta cần npm để c&agrave;i đặt thư viện React. Npm l&agrave; tr&igrave;nh quản l&yacute; g&oacute;i n&uacute;t chứa nhiều thư viện JavaScript, bao gồm cả React.</li>
</ul>

<p><img alt="reactjs - npm - nodejs" src="https://itviec.com/blog/wp-content/uploads/2021/12/reactjs-la-gi-nodejs-640x493.png" style="height:493px; width:640px" /></p>

<ul>
	<li>C&agrave;i đặt g&oacute;i&nbsp;<strong>create-react-app</strong>&nbsp;bằng command prompt hoặc terminal.</li>
</ul>

<p><img alt="create-react-app - npm - reactjs" src="https://itviec.com/blog/wp-content/uploads/2021/12/reactjs-la-gi-cau-hoi-phong-van-28.jpg" style="height:167px; width:433px" /></p>

<ul>
	<li>C&agrave;i đặt một tr&igrave;nh soạn thảo văn bản m&agrave; bạn chọn, như VS Code hoặc Sublime Text.</li>
</ul>

<blockquote>
<p><em>Xem th&ecirc;m:&nbsp;<strong><a href="https://itviec.com/blog/hoc-nodejs/?utm_medium=anchor_text&amp;utm_source=blog_07122021&amp;utm_campaign=daily" rel="noreferrer noopener" target="_blank">15+ T&agrave;i liệu học NodeJS &ldquo;chất&rdquo; d&agrave;nh cho Developer</a></strong></em></p>
</blockquote>

<h3>8. Sự kiện (Event) trong React l&agrave; g&igrave;?</h3>

<p>Sự kiện l&agrave; một h&agrave;nh động m&agrave; người d&ugrave;ng hoặc hệ thống c&oacute; thể k&iacute;ch hoạt bằng c&aacute;ch chẳng hạn như nhấn ph&iacute;m, nhấp chuột, v.v.</p>

<ul>
	<li>C&aacute;c sự kiện React được đặt t&ecirc;n bằng camelCase, thay v&igrave; chữ viết thường, kh&ocirc;ng in hoa trong HTML.</li>
	<li>Với JSX, bạn chuyển một h&agrave;m l&agrave;m tr&igrave;nh xử l&yacute; sự kiện, thay v&igrave; một chuỗi trong HTML.</li>
</ul>

<table>
	<tbody>
		<tr>
			<td>&lt;Button onPress={lightItUp} /&gt;</td>
		</tr>
	</tbody>
</table>

<h3>9. L&agrave;m thế n&agrave;o để tạo một sự kiện (event) trong React?</h3>

<p>Một sự kiện React c&oacute; thể được tạo bằng c&aacute;ch như sau:</p>

<p><img alt="sự kiện react - react event" src="https://itviec.com/blog/wp-content/uploads/2021/12/reactjs-la-gi-cau-hoi-phong-van-5.jpg" style="height:209px; width:495px" /></p>

<h3>10. Sự kiện tổng hợp (Synthetic event) trong React l&agrave; g&igrave;?</h3>

<ul>
	<li>Sự kiện tổng hợp (Synthetic event) kết hợp phản hồi của c&aacute;c sự kiện gốc của tr&igrave;nh duyệt kh&aacute;c nhau th&agrave;nh một API, đảm bảo rằng c&aacute;c sự kiện nhất qu&aacute;n tr&ecirc;n c&aacute;c tr&igrave;nh duyệt kh&aacute;c nhau.</li>
	<li>Ứng dụng phải nhất qu&aacute;n bất kể đang chạy tr&ecirc;n tr&igrave;nh duyệt n&agrave;o. Ở đ&acirc;y, PreventDefault l&agrave; một sự kiện tổng hợp.</li>
</ul>

<p><img alt="sự kiện tổng hợp react - synthetic event react" src="https://itviec.com/blog/wp-content/uploads/2021/12/reactjs-la-gi-cau-hoi-phong-van-6.jpg" style="height:225px; width:345px" /></p>
', N'ba39967b-ae9c-4f00-949f-d920092a9067.png', N'26d104bf-c718-4288-b831-08db787dab64', CAST(N'2023-07-07T02:43:07.0000000' AS DateTime2), N'<p><strong>ReactJS l&agrave; một trong những chủ đề &ldquo;n&oacute;ng hổi&rdquo; trong ng&agrave;nh IT hiện nay. T&iacute;nh đến thời điểm hiện tại, React l&agrave; c&ocirc;ng nghệ front-end phổ biến nhất m&agrave; ng&agrave;y c&agrave;ng nhiều c&ocirc;ng ty sử dụng. Nếu bạn đang chuẩn bị cho buổi phỏng vấn sắp tới, sau đ&acirc;y l&agrave; 40 c&acirc;u hỏi phỏng vấn ReactJS phổ biến nhất, k&egrave;m theo c&acirc;u trả lời, d&agrave;nh cho bạn.</strong></p>
', 295)
INSERT [dbo].[Blogs] ([Id], [Slug], [Author], [Title], [Content], [Image], [AppUserId], [CreateDate], [Description], [Popular]) VALUES (24, N'android-developer-la-lam-gi-luong-hap-dan-den-the-nao', N'Phu Loc', N'Android Developer là làm gì? Lương hấp dẫn đến thế nào?', N'<h2><strong>C&ocirc;ng việc của Android Developer l&agrave; g&igrave;?</strong></h2>

<p>Android Developer l&agrave; người chịu tr&aacute;ch nhiệm cho việc tạo ra, ph&aacute;t triển, duy tr&igrave; cũng như cập nhật c&aacute;c ứng dụng c&oacute; thể chạy tr&ecirc;n nền tảng Android.</p>

<p>Hiện tại, ngo&agrave;i c&aacute;c ứng dụng chạy tr&ecirc;n hệ điều h&agrave;nh Android th&igrave; Android Developer c&ograve;n c&oacute; xu hướng ph&aacute;t triển th&ecirc;m c&aacute;c ứng dụng c&oacute; thể kết nối với c&aacute;c thiết bị ngoại vi. V&iacute; dụ: đồng hồ đeo tay th&ocirc;ng minh đo bước đi, kiểm tra sức khỏe.</p>

<blockquote>
<p>Android Developer l&agrave; một nghề rất th&uacute; vị. Anh thấy việc tạo ra sản phẩm cho người kh&aacute;c sử dụng rất th&uacute; vị. Khi họ d&ugrave;ng ch&iacute;nh sản phẩm m&igrave;nh l&agrave;m ra để phục vụ cho c&ocirc;ng việc hoặc c&aacute;c mục đ&iacute;ch thư gi&atilde;n, giải tr&iacute;&hellip; v&agrave; thấy n&oacute; hữu &iacute;ch, anh c&oacute; cảm gi&aacute;c m&igrave;nh đang gi&uacute;p đỡ được cho nhiều người.</p>
</blockquote>

<p>Vậy th&igrave;, một ng&agrave;y của Android Developer sẽ c&oacute; những c&ocirc;ng việc th&uacute; vị như thế n&agrave;o?</p>

<blockquote>
<p>Đối với những dự &aacute;n đang l&agrave;m theo&nbsp;<a href="https://itviec.com/blog/agile-la-gi-scrum-la-gi/" rel="noopener noreferrer" target="_blank">m&ocirc; h&igrave;nh Agile</a>, mỗi ng&agrave;y b&ecirc;n anh sẽ tổ chức cuộc họp để b&agrave;n về t&igrave;nh h&igrave;nh hiện tại của dự &aacute;n v&agrave; những vấn đề đang gặp phải, xem c&oacute; ai cần gi&uacute;p đỡ hay kh&ocirc;ng.</p>

<p>Đối với những dự &aacute;n mới th&igrave; anh sẽ tham gia họp để kick-off v&agrave; triển khai l&agrave;m sản phẩm. Sau khi c&oacute; đầy đủ c&aacute;c th&ocirc;ng tin, anh sẽ thực hiện một số c&ocirc;ng việc ch&iacute;nh như:</p>

<ul>
	<li>X&acirc;y dựng kiến tr&uacute;c mới cho một dự &aacute;n</li>
	<li>Ph&aacute;t triển c&aacute;c t&iacute;nh năng theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</li>
	<li>Fix bug từ team Tester hoặc từ ph&iacute;a kh&aacute;ch h&agrave;ng</li>
	<li>Cuối chu kỳ của dự &aacute;n, c&oacute; thể hỗ trợ kh&aacute;ch h&agrave;ng đăng sản phẩm l&ecirc;n c&aacute;c cửa h&agrave;ng ứng dụng Android (v&iacute; dụ: Google Play) nếu kh&aacute;ch h&agrave;ng y&ecirc;u cầu</li>
</ul>

<p>Tham khảo:&nbsp;<a href="https://itviec.com/it-jobs/android-developer/ho-chi-minh-hcm" rel="noopener" target="_blank"><strong>Việc l&agrave;m Android Developer tại TP. HCM tr&ecirc;n ITviec</strong></a></p>
</blockquote>

<h2><strong>Nhu cầu tuyển dụng v&agrave; lương Developer Android</strong></h2>

<p><strong>Gần 85% người d&ugrave;ng smartphone v&agrave; 65% người d&ugrave;ng tablet tr&ecirc;n thế giới đang sử dụng c&aacute;c ứng dụng chạy tr&ecirc;n Android</strong>. Con số n&agrave;y sẽ c&ograve;n tăng mạnh mẽ trong những năm sắp tới, k&eacute;o theo sự ph&aacute;t triển thần tốc về số lượng Android Developer.</p>

<p>Theo anh Kh&aacute;nh nhận x&eacute;t, thị trường cho Android Developer vẫn chưa b&atilde;o ho&agrave;, nhất l&agrave; đối với chuy&ecirc;n vi&ecirc;n cao cấp. V&igrave; tuổi nghề của developer kh&aacute; thấp, sự thay thế diễn ra li&ecirc;n tục. Cũng như, thị trường oursourcing của Việt Nam đang ph&aacute;t triển kh&aacute; tốt n&ecirc;n cơ hội cho c&aacute;c bạn mới vẫn c&ograve;n.</p>

<p>Bản th&acirc;n anh Kh&aacute;nh l&agrave; một từ Tester trở th&agrave;nh Android Developer, anh chia sẻ rằng việc chuyển ng&agrave;nh nghề c&oacute; khi lại gi&uacute;p anh c&oacute; điểm mạnh hơn một Developer Android th&ocirc;ng thường.</p>

<blockquote>
<p>Hầu hết c&aacute;c developer chỉ quan t&acirc;m về mặt logic, nghĩa l&agrave; v&ograve;ng chạy của code kh&ocirc;ng xảy ra vấn đề l&agrave; được. C&ograve;n anh th&igrave; quan t&acirc;m nhiều hơn đến việc ứng dụng chạy thật như thế n&agrave;o, mong muốn của người d&ugrave;ng ra sao.</p>

<p>Khi ho&agrave;n th&agrave;nh mỗi task, bằng kinh nghiệm l&agrave;m việc của m&igrave;nh, anh sẽ thử chạy c&aacute;c case (t&igrave;nh huống) m&agrave; người d&ugrave;ng c&oacute; thể gặp phải để ph&aacute;t hiện bug v&agrave; fix bug sớm nhất. Dĩ nhi&ecirc;n l&agrave; kh&ocirc;ng thể đầy đủ tất cả c&aacute;c case nhưng cũng gi&uacute;p tiết kiệm thời gian hơn cho c&aacute;c bạn Tester.</p>
</blockquote>

<p>Theo quan s&aacute;t của Kh&aacute;nh đối với thị trường th&igrave; mức lương Android Developer hiện tại kh&aacute; hấp dẫn:</p>

<ul>
	<li>Đối với c&aacute;c bạn trẻ mới ra trường, mức lương khởi điểm c&oacute; thể tr&ecirc;n 500 USD.</li>
	<li>Đối với c&aacute;c bạn c&oacute; kinh nghiệm 2-3 năm mức lương c&oacute; thể v&agrave;o khoảng 1200 &ndash; 2000 USD t&ugrave;y năng lực v&agrave; c&ocirc;ng ty ứng tuyển.</li>
	<li>Đối với c&aacute;c c&ocirc;ng ty ch&acirc;u &Acirc;u hoặc Singapore th&igrave; mức lương c&oacute; thể cao hơn c&ocirc;ng ty trong nước hoặc c&aacute;c c&ocirc;ng ty Nhật Bản, H&agrave;n Quốc</li>
</ul>

<blockquote>
<p>Tham khảo:&nbsp;<a href="https://itviec.com/it-jobs/android-developer" rel="noopener" target="_blank"><strong>Việc l&agrave;m Android Developer to&agrave;n quốc tr&ecirc;n ITviec</strong></a></p>
</blockquote>

<p>Ngo&agrave;i ra, theo &ldquo;B&aacute;o c&aacute;o Lương IT: Mức Lương &amp; Mong Đợi Nghề Nghiệp Của C&aacute;c Chuy&ecirc;n Gia IT 2022-2023&rdquo; do ITviec tiến h&agrave;nh khảo s&aacute;t với 1257 chuy&ecirc;n gia IT tại Việt Nam, mức lương Mobile Developer v&ocirc; c&ugrave;ng hấp dẫn tại Việt Nam hiện nay như:</p>

<table>
	<tbody>
		<tr>
			<td><strong>Vị tr&iacute;</strong></td>
			<td><strong>Số năm kinh nghiệm</strong></td>
			<td><strong>Mức lương trung vị</strong></td>
		</tr>
		<tr>
			<td rowspan="4"><strong>Mobile Developer</strong></td>
			<td>Từ 1 đến dưới 3 năm</td>
			<td>19 triệu đồng</td>
		</tr>
		<tr>
			<td>Từ 3 đến dưới 5 năm</td>
			<td>27 triệu đồng</td>
		</tr>
		<tr>
			<td>Từ 5 năm đến dưới 8 năm</td>
			<td>42 triệu đồng</td>
		</tr>
		<tr>
			<td>Tr&ecirc;n 8 năm</td>
			<td>57.5 triệu đồng</td>
		</tr>
	</tbody>
</table>

<blockquote>
<p>Tham khảo đầy đủ tất cả mức&nbsp;<a href="https://itviec.com/blog/bao-cao-luong-it/?utm_source=blog&amp;utm_medium=internal-link&amp;utm_campaign=salary-report-2022&amp;utm_content=dec2022" rel="noopener" target="_blank"><strong>lương ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin</strong></a>&nbsp;với &ldquo;B&aacute;o c&aacute;o Lương IT: Mức Lương &amp; Mong Đợi Nghề Nghiệp Của C&aacute;c Chuy&ecirc;n Gia IT 2022-2023&rdquo;.</p>
</blockquote>

<h2><strong>Những kỹ năng v&agrave; tố chất cần thiết đối với nghề n&agrave;y</strong></h2>

<p>Về mặt&nbsp;<strong>kỹ năng mềm</strong>, anh Kh&aacute;nh nghĩ c&oacute; hai điều quan trọng nhất kh&ocirc;ng chỉ với Android Developer n&oacute;i ri&ecirc;ng m&agrave; cả với Developer n&oacute;i chung, đ&oacute; ch&iacute;nh l&agrave;:</p>

<p><strong>1. Th&aacute;i độ tốt:</strong></p>

<p>Hiện tại th&igrave; với vị tr&iacute; Android Developer, anh Kh&aacute;nh nghĩ m&igrave;nh kh&ocirc;ng mắc phải lỗi n&agrave;y nữa nhưng trong qu&aacute; khứ, khi c&ograve;n l&agrave;m Tester, anh đ&atilde; từng c&oacute; th&aacute;i độ kh&ocirc;ng tốt. Tuy nhi&ecirc;n, sau n&agrave;y trong qu&aacute; tr&igrave;nh l&agrave;m việc, anh mới hiểu ra l&agrave; c&oacute; những việc c&oacute; thể bỏ qua th&igrave; anh sẽ bỏ qua chứ kh&ocirc;ng qu&aacute; cứng nhắc như trước nữa.</p>

<p><strong>2. Chủ động v&agrave; giao tiếp nhiều hơn:</strong></p>

<p>Anh Kh&aacute;nh cũng chia sẻ rằng ng&agrave;y xưa anh kh&aacute; thụ động, cứ chờ đến khi sếp giao task rồi mới bắt đầu l&agrave;m. Sau n&agrave;y th&igrave; anh chủ động xem t&agrave;i liệu kh&aacute;ch h&agrave;ng gửi trước, c&oacute; g&igrave; kh&ocirc;ng hiểu l&agrave; hỏi ngay chứ kh&ocirc;ng phải đợi nhận task rồi mới đọc.</p>

<p>C&oacute; nhiều c&aacute;ch kh&aacute;c nhau m&agrave; anh Kh&aacute;nh nghĩ bạn c&oacute; thể thử để cải thiện khả năng giao tiếp:</p>

<ul>
	<li>Hỗ trợ team kh&aacute;c khi c&oacute; thời gian rảnh</li>
	<li>Tham gia c&aacute;c hoạt động ngoại kho&aacute;, thể thao</li>
	<li>Rủ đồng nghiệp c&ugrave;ng đi ăn chung, n&oacute;i chuyện</li>
	<li>Gặp kh&oacute; khăn th&igrave; chủ động hỏi &yacute; kiến của Leader hoặc những Developer kh&aacute;c</li>
</ul>

<p><img alt="Android Developer - Developer Android - Anh Nguyễn Khắc Duy Khánh" src="https://itviec.com/blog/wp-content/uploads/2019/10/14183683_1308640362487133_4349074103888077325_n.jpg" style="height:427px; width:640px" /></p>

<p>Anh Kh&aacute;nh c&ugrave;ng bạn b&egrave; sau giờ l&agrave;m việc.</p>

<p>Kiến thức th&igrave; m&igrave;nh c&oacute; thể học trong qu&aacute; tr&igrave;nh l&agrave;m việc nhưng nếu c&oacute; th&aacute;i độ kh&ocirc;ng tốt hoặc c&aacute;ch l&agrave;m việc kh&ocirc;ng ph&ugrave; hợp th&igrave; cũng kh&oacute; gi&uacute;p team ph&aacute;t triển.</p>

<p>C&ograve;n về&nbsp;<strong>kỹ năng chuy&ecirc;n m&ocirc;n</strong>, anh Kh&aacute;nh nghĩ muốn trở th&agrave;nh một Android Developer giỏi th&igrave; n&ecirc;n:</p>

<p><strong>1. Nắm tốt kiến thức nền tảng:</strong></p>

<p>Bạn n&ecirc;n vững những kiến thức như khoa học m&aacute;y t&iacute;nh, cấu tr&uacute;c dữ liệu v&agrave; thuật to&aacute;n, những ng&ocirc;n ngữ sử dụng cho Android như Java v&agrave; Kotlin.</p>

<p>Ngo&agrave;i đọc s&aacute;ch v&agrave; gi&aacute;o tr&igrave;nh, anh Kh&aacute;nh c&ograve;n giải quyết c&aacute;c b&agrave;i tập tr&ecirc;n c&aacute;c trang online coding như:&nbsp;<a href="https://www.hackerearth.com/" rel="noopener noreferrer" target="_blank">Hackerearth</a>, Codepen.io&hellip; Thực h&agrave;nh nhiều th&ocirc;ng qua c&aacute;c dự &aacute;n c&aacute; nh&acirc;n, dự &aacute;n c&ocirc;ng ty v&agrave; tham khảo những code mẫu của developer kh&aacute;c (tr&ecirc;n&nbsp;<a href="https://github.com/" rel="noopener noreferrer" target="_blank">GitHub</a>/<a href="https://about.gitlab.com/" rel="noopener noreferrer" target="_blank">GitLab</a>).</p>

<p><strong>2. C&oacute; khả năng cập nhật li&ecirc;n tục kiến thức mới, c&ocirc;ng nghệ mới:</strong></p>

<p>C&oacute; rất nhiều trang blog hay c&oacute; thể tham khảo, như c&aacute;c b&agrave;i viết tr&ecirc;n trang Medium.</p>

<p>Ngo&agrave;i ra, tr&ecirc;n Youtube c&ograve;n c&oacute; một k&ecirc;nh của Google, thường cập nhật th&ocirc;ng tin về những phi&ecirc;n bản Android mới, kiến tr&uacute;c mới để viết sản phẩm hoặc một số thư viện gi&uacute;p cho việc ph&aacute;t triển ứng dụng tốt hơn.</p>

<blockquote>
<p>Tham khảo:&nbsp;<a href="https://itviec.com/it-jobs/android-developer/ha-noi" rel="noopener" target="_blank"><strong>Việc l&agrave;m Android Developer ở H&agrave; Nội tr&ecirc;n ITviec</strong></a></p>
</blockquote>

<h2><strong>Những t&agrave;i liệu tham khảo</strong></h2>

<p>Với những bạn c&oacute; nhu cầu chuyển hướng từ&nbsp;<a href="https://itviec.com/blog/web-developer/" rel="noopener noreferrer" target="_blank">Web Developer</a>&nbsp;hoặc&nbsp;<a href="https://itviec.com/blog/nghe-tester/" rel="noopener noreferrer" target="_blank">Tester</a>&nbsp;sang Android Developer th&igrave; phải học về ng&ocirc;n ngữ lập tr&igrave;nh Java, Kotlin.</p>

<p>Đồng thời, Android c&oacute; một số t&iacute;nh năng đặc trưng ri&ecirc;ng d&agrave;nh cho nền tảng m&agrave; bạn phải t&igrave;m hiểu. V&iacute; dụ: c&aacute;ch thức giao tiếp với cảm biến vị tr&iacute; GPS, kiểm tra kết nối mạng, giao tiếp với camera của m&aacute;y để thực hiện việc chụp ảnh&hellip;</p>

<p>Nếu đ&atilde; x&aacute;c định theo con đường Developer Android, anh Kh&aacute;nh nhấn mạnh đến việc phải nắm c&aacute;c kiến thức nền tảng ngay từ khi bắt đầu. Đ&acirc;y l&agrave; một số t&agrave;i liệu do anh Kh&aacute;nh chia sẻ m&agrave; anh vẫn tham khảo cho đến tận b&acirc;y giờ:</p>

<ul>
	<li><a href="https://developer.android.com/" rel="noopener noreferrer" target="_blank">Trang t&agrave;i liệu ch&iacute;nh thức của Google về lập tr&igrave;nh Android</a>, bao gồm c&aacute;ch thức x&acirc;y dựng một ứng dụng, test ứng dụng, th&ecirc;m ứng dụng v&agrave;o cửa h&agrave;ng Google Play&hellip;</li>
	<li><a href="https://medium.com/Androiddevelopers" rel="noopener noreferrer" target="_blank">Blog về Android Development tr&ecirc;n Medium</a>. Hoặc c&oacute; thể t&igrave;m kiếm một số b&agrave;i viết kh&aacute;c th&ocirc;ng qua hashtag #Android, #Java, #Kotlin</li>
	<li><a href="https://stackoverflow.com/questions/tagged/Android" rel="noopener noreferrer" target="_blank">Cộng đồng hỗ trợ tr&ecirc;n Stack Overflow</a>&nbsp;giải quyết c&aacute;c vấn đề gặp phải khi lập tr&igrave;nh</li>
	<li><a href="https://www.youtube.com/user/GoogleDevelopers" rel="noopener noreferrer" target="_blank">K&ecirc;nh Youtube ch&iacute;nh thức của Google Developers</a></li>
</ul>

<blockquote>
<p>V&agrave; đừng qu&ecirc;n:&nbsp;<a href="https://itviec.com/blog/tai-lieu-lap-trinh-android/" rel="noopener noreferrer" target="_blank"><strong>Học lập tr&igrave;nh Android với 17 t&agrave;i liệu ho&agrave;n to&agrave;n miễn ph&iacute;</strong></a></p>
</blockquote>

<h2><strong>Android Developer trong ng&agrave;nh IT n&oacute;i g&igrave;?</strong></h2>

<p>Trong qu&aacute; tr&igrave;nh l&agrave;m việc tại vị tr&iacute; Android Developer, anh Kh&aacute;nh đ&atilde; trải qua một sai lầm m&agrave; anh đ&atilde; học được rất nhiều từ đ&oacute;.</p>

<p>Anh kể về một lần sếp nhờ anh estimate &ndash; ước lượng thời gian ho&agrave;n th&agrave;nh, cho một ứng dụng. Ứng dụng n&agrave;y kh&ocirc;ng phải viết bằng Android m&agrave; được viết bằng Hybrid. C&aacute;i n&agrave;y chỉ cần viết code một lần nhưng c&oacute; thể build cho cả Android v&agrave; iOS.</p>

<blockquote>
<p>Khi bắt đầu estimate, anh kiểm tra một số t&agrave;i liệu kh&aacute;ch h&agrave;ng gửi. Sau đ&oacute;, anh tr&igrave;nh b&agrave;y với sếp l&agrave; kh&ocirc;ng đủ th&ocirc;ng tin để c&oacute; thể estimate ch&iacute;nh x&aacute;c bởi v&igrave; mức độ mong muốn của kh&aacute;ch h&agrave;ng c&oacute; thể cao hơn rất nhiều.</p>

<p>L&uacute;c đ&oacute;, sếp hiểu những g&igrave; anh n&oacute;i nhưng v&igrave; mong muốn c&oacute; được dự &aacute;n n&agrave;y n&ecirc;n sếp vẫn nhờ anh estimate. Theo g&oacute;c nh&igrave;n bản th&acirc;n, anh cho rằng dự &aacute;n c&oacute; thể ho&agrave;n th&agrave;nh trong v&ograve;ng 2 th&aacute;ng. Kh&aacute;ch h&agrave;ng cũng đồng &yacute; với estimate n&agrave;y v&agrave; team anh bắt đầu triển khai dự &aacute;n.</p>
</blockquote>

<p>Tuy nhi&ecirc;n, trong qu&aacute; tr&igrave;nh l&agrave;m việc, khi ph&aacute;t triển một t&iacute;nh năng th&igrave; kh&aacute;ch h&agrave;ng lại y&ecirc;u cầu ph&aacute;t triển th&ecirc;m c&aacute;c t&iacute;nh năng chi tiết hơn b&ecirc;n trong dẫn đến t&igrave;nh trạng trễ deadline.</p>

<p>Sau v&agrave;i lần trễ deadline, dự &aacute;n kh&ocirc;ng thể ho&agrave;n th&agrave;nh được nữa, kh&aacute;ch h&agrave;ng quyết định dừng dự &aacute;n. Điều n&agrave;y khiến cho uy t&iacute;n c&ocirc;ng ty anh bị giảm s&uacute;t v&agrave; c&ocirc;ng ty cũng gặp kh&oacute; khăn về t&agrave;i ch&iacute;nh.</p>

<p>Sau vụ việc lần đ&oacute;, anh Kh&aacute;nh tự r&uacute;t ra được hai b&agrave;i học qu&yacute; b&aacute;u:</p>

<ul>
	<li>Nếu thấy quan điểm của m&igrave;nh đ&uacute;ng,&nbsp;<strong>phải cố gắng bảo vệ quan điểm</strong>.</li>
	<li>Trước khi dự &aacute;n bắt đầu,&nbsp;<strong>phải l&agrave;m việc r&otilde; với kh&aacute;ch h&agrave;ng</strong>. M&igrave;nh phải cho kh&aacute;ch h&agrave;ng thấy những rủi ro c&oacute; thể gặp phải khi l&agrave;m sản phẩm v&agrave; giới hạn về khối lượng c&ocirc;ng việc sẽ chỉ ph&aacute;t triển những t&iacute;nh năng như thiết kế ban đầu. Nếu kh&aacute;ch h&agrave;ng muốn ph&aacute;t triển những t&iacute;nh năng cao cấp hơn th&igrave; phải chấp nhận việc k&eacute;o d&agrave;i tiến độ.</li>
</ul>

<p>Với những chia sẻ v&ocirc; c&ugrave;ng qu&yacute; b&aacute;u của anh Kh&aacute;nh với nghề Android Developer, mong rằng những bạn đ&atilde;, đang hoặc chuẩn bị, c&oacute; mong muốn theo ng&agrave;nh n&agrave;y sẽ c&oacute; được những lời khuy&ecirc;n, g&oacute;c nh&igrave;n mới mẻ cũng như ch&acirc;n thật hơn về nghề lập tr&igrave;nh Android.</p>

<p><strong>Tiểu sử:</strong></p>

<p>Anh&nbsp;<strong>Nguyễn Khắc Duy Kh&aacute;nh</strong>&nbsp;tốt nghiệp khoa Điện tử Viễn th&ocirc;ng, trường ĐH Khoa học Tự nhi&ecirc;n. Sau khi ra trường, anh l&agrave;m Tester ở&nbsp;<a href="https://itviec.com/companies/officience" rel="noopener noreferrer" target="_blank">Officience</a>&nbsp;trong 1.5 năm rồi chuyển hẳn sang l&agrave;m cho&nbsp;<a href="https://itviec.com/companies/siclo" rel="noopener noreferrer" target="_blank">SICLO</a>&nbsp;&ndash; một c&ocirc;ng ty outsourcing của Ph&aacute;p trong suốt hơn 4 năm qua với vai tr&ograve; Android Developer.</p>
', N'8c5d2fd9-a82f-4000-bbc7-48298dd53d69.png', N'17d8098e-c16c-448f-5850-08db794d4e58', CAST(N'2023-07-07T02:44:50.1544788' AS DateTime2), N'<p><strong>Android Developer l&agrave; một trong những nghề được dự đo&aacute;n sẽ &ldquo;h&aacute;i ra tiền&rdquo; v&agrave; đảm bảo cho bạn một tương lai n&oacute;i &ldquo;kh&ocirc;ng&rdquo; với thất nghiệp. Vậy th&igrave; nghề Developer Android thật sự l&agrave; g&igrave;? Cũng như thị trường tuyển dụng Android Developer v&agrave; mức&nbsp;<a href="https://itviec.com/blog/bao-cao-luong-it/?utm_source=blog&amp;utm_medium=internal-link&amp;utm_campaign=salary-report-2022&amp;utm_content=dec2022" rel="noopener" target="_blank">lương IT</a>&nbsp;của ng&agrave;nh nghề n&agrave;y s&ocirc;i động như thế n&agrave;o?</strong></p>

<p>ITviec sẽ giải đ&aacute;p tất cả thắc mắc của c&aacute;c bạn đang l&agrave; Android Developer hoặc đang c&oacute; &yacute; định theo nghề n&agrave;y th&ocirc;ng qua b&agrave;i phỏng vấn với anh&nbsp;<strong>Nguyễn Khắc Duy Kh&aacute;nh</strong>&nbsp;&ndash; Android Developer của c&ocirc;ng ty&nbsp;<a href="https://itviec.com/companies/siclo" rel="noopener noreferrer" target="_blank">SICLO</a>.</p>
', 302)
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description], [Slug], [Disable]) VALUES (1, N'Skill', N'the ability to carry out diverse duties in IT roles', N'skill', 0)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Slug], [Disable]) VALUES (2, N'Title', N'the type of position and level an employee holds', N'title', 0)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Slug], [Disable]) VALUES (3, N'Employer', N'seek candidates who write code in several coding languages', N'employer', 0)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Slug], [Disable]) VALUES (4, N'Province', N'where an Employee reports for work at Company', N'province', 0)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([Id], [Name], [Flag], [Disable]) VALUES (1, N'Vietnam', N'Vietnam.png', 0)
INSERT [dbo].[Countries] ([Id], [Name], [Flag], [Disable]) VALUES (2, N'United States', N'USA.png', 0)
INSERT [dbo].[Countries] ([Id], [Name], [Flag], [Disable]) VALUES (3, N'China', N'China.png', 0)
INSERT [dbo].[Countries] ([Id], [Name], [Flag], [Disable]) VALUES (4, N'Japan', N'Japan.png', 0)
INSERT [dbo].[Countries] ([Id], [Name], [Flag], [Disable]) VALUES (5, N'Singapore', N'Singapore.png', 0)
INSERT [dbo].[Countries] ([Id], [Name], [Flag], [Disable]) VALUES (6, N'Canada', N'Canada.png', 0)
INSERT [dbo].[Countries] ([Id], [Name], [Flag], [Disable]) VALUES (7, N'England', N'England.png', 0)
INSERT [dbo].[Countries] ([Id], [Name], [Flag], [Disable]) VALUES (8, N'India', N'India.png', 0)
INSERT [dbo].[Countries] ([Id], [Name], [Flag], [Disable]) VALUES (9, N'Russia', N'Russia.png', 0)
INSERT [dbo].[Countries] ([Id], [Name], [Flag], [Disable]) VALUES (10, N'Switzerland', N'Switzerland.png', 0)
INSERT [dbo].[Countries] ([Id], [Name], [Flag], [Disable]) VALUES (11, N'France', N'France.png', 0)
INSERT [dbo].[Countries] ([Id], [Name], [Flag], [Disable]) VALUES (12, N'Italy', N'Italy.png', 0)
INSERT [dbo].[Countries] ([Id], [Name], [Flag], [Disable]) VALUES (13, N'Poland', N'Poland.png', 0)
INSERT [dbo].[Countries] ([Id], [Name], [Flag], [Disable]) VALUES (14, N'South Korea', N'Korea.png', 0)
INSERT [dbo].[Countries] ([Id], [Name], [Flag], [Disable]) VALUES (15, N'Australia', N'Australia.png', 0)
INSERT [dbo].[Countries] ([Id], [Name], [Flag], [Disable]) VALUES (16, N'Germany', N'Germany.png', 0)
INSERT [dbo].[Countries] ([Id], [Name], [Flag], [Disable]) VALUES (17, N'Sweden', N'Sweden.png', 0)
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
SET IDENTITY_INSERT [dbo].[CVs] ON 

INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (5, N'Bachelor''s Degree', N'Computer Science', CAST(N'2023-07-08T21:43:17.3386267' AS DateTime2), N'XYZ University', 3.8, 26, N'<p><em><strong>I am a highly motivated and dedicated professional with a strong passion for software development. I have a solid understanding of various programming languages and frameworks, and I am constantly seeking opportunities to expand my knowledge and skills. Throughout my career, I have successfully delivered high-quality software solutions and collaborated effectively with cross-functional teams. I am a quick learner, adaptable to new environments, and thrive in challenging projects. I am eager to contribute my expertise and drive innovation in a dynamic organization.</strong></em></p>
', N'Software Engineer with 5 years of experience', N'267e5ead-c431-47b6-a1ad-08db77b96d25', 3, N'fd280c25-a538-4cec-9dc5-f522f87a122e.jpg', N'+1 123-456-7890', N'example1@email.com', N'KCN Tràng Duệ, huyện An Dương, thuộc Khu kinh tế Đình Vũ – Cát Hải, TP. Hải Phòng', N'02-439-345-151', N'<p>The candidate consistently demonstrated a high level of professionalism and delivered exceptional work. They showed great attention to detail and consistently met project requirements. Their technical skills were outstanding, and they effectively utilized industry best practices. They communicated effectively and collaborated well with the team. We were highly satisfied with their performance.<br />
The candidate demonstrated strong leadership skills and presented a clear vision for driving business growth. Their experience in managing cross-functional teams and implementing strategic initiatives makes them an excellent fit for the role. We would like to discuss compensation and benefits in the next phase of the hiring process.</p>
', 8, CAST(N'2023-07-10T04:48:28.6832694' AS DateTime2), N'Hải Phòng', N'lgelectronics@gmail.com')
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (6, N'Master''s Degree', N'Cybersecurity', CAST(N'2023-07-08T21:45:51.1244043' AS DateTime2), N'UVW University', 3.9, 40, N'<p><strong>I am a highly skilled information security analyst with a deep understanding of cybersecurity principles and best practices. I have expertise in conducting vulnerability assessments, implementing security measures, and managing incident response. With a strong knowledge of network and system security, I provide recommendations to mitigate risks and ensure compliance with industry standards. I possess strong analytical and problem-solving skills, enabling me to detect and respond to security threats effectively. I am committed to staying updated with the latest security trends and technologies to protect organizational assets.</strong></p>
', N'Information Security Analyst with 5 years of experience', N'12e86ead-91cc-4d9b-a1b1-08db77b96d25', 2, N'7b36f19a-4472-4f2c-a82e-ee58171b7edf.png', N'+1 456-789-0123', N'example5@email.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (7, N'Bachelor''s Degree', N'Statistics', CAST(N'2023-07-08T21:47:56.1815626' AS DateTime2), N'PQR University', 3.8, 12, N'<p>I am a skilled data analyst proficient in analyzing and interpreting complex datasets. I have expertise in statistical analysis, data visualization, and database querying languages such as SQL. I am experienced in using tools like Python and R for data manipulation and modeling. With a keen eye for detail, I uncover insights and trends to support data-driven decision-making. I am an effective communicator and excel at presenting data findings to non-technical stakeholders. I am passionate about leveraging data to drive business growth and improve operational efficiency.</p>
', N'Data Analyst with 3 years of experience', N'ad13de6d-628f-433d-a1b5-08db77b96d25', 2, N'a94416cf-df51-437a-b39b-b6276e6e3b6a.png', N'+1 901-234-5678', N'example9@email.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (9, N'Bachelor''s Degree', N'Graphic Design', CAST(N'2023-07-08T21:55:29.1480359' AS DateTime2), N'MNO University', 3.6, 19, N'<p><em>I am a creative UI/UX designer with expertise in creating intuitive and visually appealing user interfaces. I have a strong background in graphic design principles, typography, and color theory. I am skilled in using design tools such as Adobe Photoshop, Illustrator, and Sketch. With a user-centric approach, I conduct user research and usability testing to inform design decisions and enhance userexperience. I possess a deep understanding of user behavior and interaction design, enabling me to craft engaging and seamless user experiences. I collaborate closely with development teams to ensure the successful implementation of designs. I am passionate about creating innovative and accessible designs that leave a lasting impact on users.</em></p>
', N'UI/UX Designer with 4 years of experience', N'3d3eb2b1-eaef-4f3f-a1b4-08db77b96d25', 3, N'1057b92e-ff13-4069-b6e7-58fa05181da0.png', N'+1 789-012-3456', N'example8@email.com', N'14th Floor, CLand Tower, 156 Xa Dan II, Dong Da, Ha Noi', N'02435739623', N'<p>The candidate demonstrated exceptional technical skills and consistently exceeded expectations. They effectively solved complex problems and consistently delivered high-quality work. Their attention to detail and dedication were commendable. They communicated effectively and collaborated well with team members. We were highly impressed with their performance.<br />
The candidate&#39;s experience and qualifications make them a strong fit for the role. They demonstrated a solid understanding of project management principles and showcased excellent leadership skills. We would like to extend an offer for the position, pending reference checks.</p>
', 7, CAST(N'2023-07-10T04:45:17.6351935' AS DateTime2), N'Ha Noi', N'nitecovietnam@gmail.com')
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (10, N'Bachelor''s Degree', N'Electrical Engineering', CAST(N'2023-07-08T21:59:31.2123871' AS DateTime2), N'DEF University', 3.6, 45, N'<p>I am a dedicated hardware engineer with expertise in designing and testing electronic circuits and systems. I have a strong background in electrical engineering principles and digital logic design. I am skilled in using CAD tools and have experience in PCB layout design. With a detail-oriented approach, I ensure the quality and functionality of hardware designs through thorough testing and validation. I am a proactive problem-solver and continuously seek opportunities to enhance hardware performance and efficiency.</p>
', N'Hardware Engineer with 2 years of experience', N'a9ccff58-cc82-4ccb-a1b0-08db77b96d25', 0, N'1e277285-e4b1-4221-a930-986470ab7a97.jpg', N'+1 345-678-9012', N'example4@email.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (11, N'Bachelor''s Degree', N'Computer Science', CAST(N'2023-07-08T22:06:42.9009473' AS DateTime2), N'ABC University', 3.7, 21, N'<p><em>I am a skilled software developer experienced in developing high-quality and scalable applications. I have a strong foundation in programming languages such as Java and Python, and I am proficient in various software development frameworks. With a detail-oriented approach and excellent problem-solving skills, I consistently deliver robust and efficient solutions to meet client requirements. I am a team player and thrive in collaborative environments, aiming to contribute to the success of software development projects.</em></p>
', N'Software Developer with 3 years of experience', N'a424ee41-14d6-4cfd-a1ae-08db77b96d25', 3, N'8a594d12-7ab2-43b1-9252-47ef3dd1914d.jpg', N'+1 987-654-3210', N'example2@email.com', N'Số 23 Lê Duẩn, phường Bến Nghé, District 1, Ho Chi Minh', N'1800 588 822', N'<p><strong>The candidate demonstrated a strong technical skill set and consistently delivered high-quality work. They showed great attention to detail and successfully completed project requirements. Their problem-solving abilities and analytical skills were exceptional. They communicated effectively and collaborated well with team members. We highly recommend this candidate for their exceptional performance.</strong><br />
<em>The candidate possesses solid communication skills and demonstrated the ability to work well in a team. We were impressed by their portfolio, which showcased creativity and attention to detail. We would like to schedule a second interview to delve deeper into their experience and discuss potential projects.</em></p>
', 7, CAST(N'2023-07-10T04:07:12.6022106' AS DateTime2), N'Ho Chi Minh', N'techcombank@gmail.com')
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (12, N'Bachelor''s Degree', N'Statistics', CAST(N'2023-07-08T22:09:11.7760601' AS DateTime2), N'PQR University', 3.8, 20, N'<p>I am a skilled data analyst proficient in analyzing and interpreting complex datasets. I have expertise in statistical analysis, data visualization, and database querying languages such as SQL. I am experienced in using tools like Python and R for data manipulation and modeling. With a keen eye for detail, I uncover insights and trends to support data-driven decision-making. I am an effective communicator and excel at presenting data findings to non-technical stakeholders. I am passionate about leveraging data to drive business growth and improve operational efficiency.</p>
', N'Data Analyst with 3 years of experience', N'ad13de6d-628f-433d-a1b5-08db77b96d25', 3, N'8330335a-ff7d-4d0a-903d-ff4c7c898900.png', N'+1 901-234-5678', N'example9@email.com', N'Times Tower, 35 Le Van Luong, Nhan Chinh ward, Thanh Xuan, Ha Noi', N'212-796-1950', N'<p>The candidate consistently delivered high-quality work and demonstrated excellent technical skills. They effectively solved complex problems and consistently met project goals. Their attention to detail and commitment to quality were commendable. They communicated effectively and collaborated well with team members. We highly recommend this candidate for their exceptional performance.<br />
The candidate&#39;s qualifications and experience align well with the requirements of the position. They showcased strong technical skills and demonstrated excellent problem-solving abilities during the interview. We would like to move forward with the next steps of the hiring process.</p>
', 8, CAST(N'2023-07-10T04:42:17.2532717' AS DateTime2), N'Ha Noi', N'tyme@gmail.com')
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (13, N'Master''s Degree', N'Computer Science', CAST(N'2023-07-08T22:16:19.4203938' AS DateTime2), N'XYZ University', 3.8, 1, N'<p>I am an AI engineer specializing in machine learning and deep learning algorithms. I have a strong foundation in statistical modeling, data analysis, and programming languages such as Python and R. I have hands-on experience in developing and deploying AI models for various applications, including natural language processing and computer vision. With a passion for innovation, I stay abreast of the latest advancements in AI research and strive to leverage cutting-edge techniques to solve complex problems. I am an effective communicator and enjoy collaborating with interdisciplinary teams to deliver impactful AI solutions.</p>
', N'Artificial Intelligence Engineer with 3 years of experience', N'2779bd49-383b-43b1-a1b2-08db77b96d25', 0, N'8631215d-ec97-4cc4-915d-071ca05eaaa6.jpg', N'+1 567-890-1234', N'example6@email.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (14, N'Master''s Degree', N'Cybersecurity', CAST(N'2023-07-08T22:22:40.3722232' AS DateTime2), N'UVW University', 3.9, 17, N'<p>I am a highly skilled information security analyst with a deep understanding of cybersecurity principles and best practices. I have expertise in conducting vulnerability assessments, implementing security measures, and managing incident response. With a strong knowledge of network and system security, I provide recommendations to mitigate risks and ensure compliance with industry standards. I possess strong analytical and problem-solving skills, enabling me to detect and respond to security threats effectively. I am committed to staying updated with the latest security trends and technologies to protect organizational assets.</p>
', N'Information Security Analyst with 5 years of experience', N'12e86ead-91cc-4d9b-a1b1-08db77b96d25', 0, N'a4d28b8f-07fc-4d6c-b3a2-bb64c0d77437.png', N'+1 456-789-0123', N'example5@email.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (15, N'Bachelor''s Degree', N'Information Technology', CAST(N'2023-07-08T22:26:39.9621186' AS DateTime2), N'XYZ University', 3.5, 10, N'<p>I am a skilled network systems engineer with expertise in designing, implementing, and maintaining enterprise-level networks. I have a solid understanding of network protocols, routing, and security principles. With hands-on experience in network troubleshooting and optimization, I ensure the stability and performance of network infrastructure. I possess excellent communication skills and can effectively collaborate with cross-functional teams to achieve organizational goals. I am passionate about staying updated with emerging network technologies and implementing best practices for network management.</p>
', N'Network Systems Engineer with 4 years of experience', N'162874d4-2fe1-460e-a1af-08db77b96d25', 0, N'96c8a83e-949c-4150-b79e-61909d9589cb.jpg', N'+1 234-567-8901', N'example3@email.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (17, N'Master''s Degree', N'Business Administration', CAST(N'2023-07-08T22:37:06.9766440' AS DateTime2), N'JKL University', 3.7, 29, N'<p><em>I am a seasoned IT project manager with a track record of successfully delivering complex projects on time and within budget. I possess strong leadership and organizational skills, enabling me to effectively manage project scope, resources, and stakeholders. I am proficient in project management methodologies such as Agile and Waterfall and have experience in managing cross-functional teams. With excellent communication and negotiation skills, I ensure clear project objectives and foster collaboration among team members. I am dedicated to continuous process improvement and leveraging technology to drive project success.</em></p>
', N'IT Project Manager with 6 years of experience', N'505572f9-906f-4e8d-a1b3-08db77b96d25', 2, N'337ed978-8260-45ee-b6e2-11a941d09c65.jpg', N'+1 678-901-2345', N'example7@email.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (18, N'Bachelor''s Degree', N'Statistics', CAST(N'2023-07-09T03:29:07.0270166' AS DateTime2), N'PQR University', 3.8, 2, N'<p>I am a skilled data analyst proficient in analyzing and interpreting complex datasets. I have expertise in statistical analysis, data visualization, and database querying languages such as SQL. I am experienced in using tools like Python and R for data manipulation and modeling. With a keen eye for detail, I uncover insights and trends to support data-driven decision-making. I am an effective communicator and excel at presenting data findings to non-technical stakeholders. I am passionate about leveraging data to drive business growth and improve operational efficiency.</p>
', N'Data Analyst with 3 years of experience', N'ad13de6d-628f-433d-a1b5-08db77b96d25', 0, N'47816ac7-76cc-49fb-b47c-24ea75f7f4bc.png', N'+1 901-234-5678', N'example9@email.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (19, N'Bachelor''s Degree', N'Information Technology', CAST(N'2023-07-09T03:32:58.2460923' AS DateTime2), N'XYZ University', 3.5, 17, N'<p>I am a skilled network systems engineer with expertise in designing, implementing, and maintaining enterprise-level networks. I have a solid understanding of network protocols, routing, and security principles. With hands-on experience in network troubleshooting and optimization, I ensure the stability and performance of network infrastructure. I possess excellent communication skills and can effectively collaborate with cross-functional teams to achieve organizational goals. I am passionate about staying updated with emerging network technologies and implementing best practices for network management.</p>
', N'Network Systems Engineer with 4 years of experience', N'162874d4-2fe1-460e-a1af-08db77b96d25', 2, N'3eda782e-ba04-46ac-9b9e-d274d6147932.jpg', N'+1 234-567-8901', N'example3@email.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (20, N'Bachelor''s Degree', N'Information Technology', CAST(N'2023-07-09T03:41:39.0755636' AS DateTime2), N'XYZ University', 3.5, 6, N'<p>I am a skilled network systems engineer with expertise in designing, implementing, and maintaining enterprise-level networks. I have a solid understanding of network protocols, routing, and security principles. With hands-on experience in network troubleshooting and optimization, I ensure the stability and performance of network infrastructure. I possess excellent communication skills and can effectively collaborate with cross-functional teams to achieve organizational goals. I am passionate about staying updated with emerging network technologies and implementing best practices for network management.</p>
', N'Network Systems Engineer with 4 years of experience', N'071844fc-99c8-4895-a1b6-08db77b96d25', 0, N'e212e19a-86c5-4543-81d2-6fbc338a2682.jpg', N'+1 234-567-8901', N'example3@email.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (21, N'Bachelor''s Degree', N'Computer Science', CAST(N'2023-07-09T03:43:46.6411994' AS DateTime2), N'ABC University', 3.7, 23, N'<p>I am a skilled software developer experienced in developing high-quality and scalable applications. I have a strong foundation in programming languages such as Java and Python, and I am proficient in various software development frameworks. With a detail-oriented approach and excellent problem-solving skills, I consistently deliver robust and efficient solutions to meet client requirements. I am a team player and thrive in collaborative environments, aiming to contribute to the success of software development projects.</p>
', N'Software Developer with 3 years of experience', N'a424ee41-14d6-4cfd-a1ae-08db77b96d25', 3, N'1c009dcc-f38b-4764-a66d-9a7a07598cf4.jpg', N'+1 987-654-3210', N'example2@email.com', N'UDIC Complex N04 Hoang Dao Thuy Street, Trung Hoa Ward, Cau Giay District, Hanoi, Vietnam', N' 02839152424', N'<p>The candidate exhibited a deep understanding of their field and consistently delivered exceptional results. They demonstrated strong leadership skills and effectively managed complex projects. Their attention to detail and ability to solve problems were outstanding. They communicated effectively with stakeholders and ensured project success. We highly recommend this candidate for their technical expertise and professionalism.<br />
<em>The candidate&#39;s skills in user interface design and their ability to create visually appealing designs impressed us. They showcased creativity and a strong understanding of user experience principles. We would like to proceed with a design challenge to evaluate their problem-solving abilities.</em></p>
', 9, CAST(N'2023-07-10T04:14:47.0254558' AS DateTime2), N'Ho Chi Minh', N'dektechnologies@gmail.com')
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (22, N'Master''s Degree', N'Business Administration', CAST(N'2023-07-09T03:45:57.3776902' AS DateTime2), N'JKL University', 3.7, 11, N'<p>I am a seasoned IT project manager with a track record of successfully delivering complex projects on time and within budget. I possess strong leadership and organizational skills, enabling me to effectively manage project scope, resources, and stakeholders. I am proficient in project management methodologies such as Agile and Waterfall and have experience in managing cross-functional teams. With excellent communication and negotiation skills, I ensure clear project objectives and foster collaboration among team members. I am dedicated to continuous process improvement and leveraging technology to drive project success.</p>
', N'IT Project Manager with 6 years of experience', N'505572f9-906f-4e8d-a1b3-08db77b96d25', 0, N'68367241-cc89-45a9-afdc-85376cc92a38.jpg', N'+1 678-901-2345', N'example7@email.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (23, N'Master''s Degree', N'Cybersecurity', CAST(N'2023-07-10T03:23:58.0809104' AS DateTime2), N'UVW University', 3.9, 28, N'<p>I am a highly skilled information security analyst with a deep understanding of cybersecurity principles and best practices. I have expertise in conducting vulnerability assessments, implementing security measures, and managing incident response. With a strong knowledge of network and system security, I provide recommendations to mitigate risks and ensure compliance with industry standards. I possess strong analytical and problem-solving skills, enabling me to detect and respond to security threats effectively. I am committed to staying updated with the latest security trends and technologies to protect organizational assets.</p>
', N'Information Security Analyst with 5 years of experience', N'12e86ead-91cc-4d9b-a1b1-08db77b96d25', 3, N'b70c69b9-df0e-4101-8157-968dd0fe321c.png', N'+1 456-789-0123', N'example5@email.com', N'Lot I-11 , D2 street, Hi-tech Park, Tang Nhon Phu B Ward, Thu Duc, Ho Chi Minh', N'028 6285 5599', N'<p>The candidate showcased a strong technical skill set and consistently delivered exceptional results. They demonstrated excellent problem-solving abilities and effectively addressed project challenges. Their attention to detail and commitment to quality were evident in their work. They communicated effectively and collaborated well with team members. We highly recommend this candidate for their outstanding performance.<br />
The candidate demonstrated a strong understanding of industry trends and presented innovative ideas during the interview. Their passion for the field was evident, and they articulated their career goals effectively. We would like to proceed with a technical assessment to evaluate their practical skills.</p>
', 8, CAST(N'2023-07-10T04:47:22.4658003' AS DateTime2), N'Ho Chi Minh', N'samsung@gmail.com')
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (24, N'Bachelor''s Degree', N'Information Technology', CAST(N'2023-07-10T03:42:13.6544436' AS DateTime2), N'XYZ University', 3.5, 45, N'<p>I am a skilled network systems engineer with expertise in designing, implementing, and maintaining enterprise-level networks. I have a solid understanding of network protocols, routing, and security principles. With hands-on experience in network troubleshooting and optimization, I ensure the stability and performance of network infrastructure. I possess excellent communication skills and can effectively collaborate with cross-functional teams to achieve organizational goals. I am passionate about staying updated with emerging network technologies and implementing best practices for network management.</p>
', N'Network Systems Engineer with 4 years of experience', N'162874d4-2fe1-460e-a1af-08db77b96d25', 3, N'75f0215c-c23c-4def-bdf9-af3fcf61e9b6.jpg', N'+1 234-567-8901', N'example3@email.com', N'Anna building, Quang Trung sofware city, District 12, Ho Chi Minh
City: Ho Chi Minh', N'092212077600', N'<p>The candidate demonstrated excellent technical skills and consistently delivered high-quality work. They showed great attention to detail and successfully completed complex tasks. Their strong problem-solving abilities and analytical skills were evident throughout the project. They communicated effectively and collaborated well with team members. We highly recommend this candidate for their exceptional performance.<br />
The candidate&#39;s background in UX design and their portfolio demonstrated a strong understanding of user-centered design principles. They showcased excellent collaboration skills and effectively communicated their design decisions. We would like to proceed with a design exercise to further evaluate their abilities.</p>
', 7, CAST(N'2023-07-10T04:21:23.1958428' AS DateTime2), N'Ho Chi Minh', N'hrsgroup@gmail.com')
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (25, N'Bachelor''s Degree', N'Computer Science', CAST(N'2023-07-10T03:44:23.9584223' AS DateTime2), N'XYZ University', 3.8, 46, N'<p>I am a highly motivated and dedicated professional with a strong passion for software development. I have a solid understanding of various programming languages and frameworks, and I am constantly seeking opportunities to expand my knowledge and skills. Throughout my career, I have successfully delivered high-quality software solutions and collaborated effectively with cross-functional teams. I am a quick learner, adaptable to new environments, and thrive in challenging projects. I am eager to contribute my expertise and drive innovation in a dynamic organization.</p>
', N'Software Engineer with 5 years of experience', N'267e5ead-c431-47b6-a1ad-08db77b96d25', 3, N'501af5f7-5b93-4265-bba1-0eba7ae9bbfa.jpg', N'+1 123-456-7890', N'example1@email.com', N'285 Cach Mang Thang 8, Viettel Complex Building, District 10, Ho Chi Minh', N'1300084847', N'<p>The candidate demonstrated a strong work ethic and consistently delivered high-quality work. They showed great attention to detail and consistently met project deadlines. Their technical skills were exceptional, and they proactively sought solutions to challenges. They communicated effectively and collaborated well with team members. We were highly satisfied with their performance.<br />
The candidate&#39;s strong background in project management and their ability to deliver results impressed us. They showcased excellent organizational skills and demonstrated experience in leading complex projects. We would like to discuss their salary expectations in the next phase of the hiring process.</p>
', 9, CAST(N'2023-07-10T04:18:30.1281454' AS DateTime2), N'Ho Chi Minh', N'employmenthero@gmail.com')
INSERT [dbo].[CVs] ([Id], [Certificate], [Major], [ApplyDate], [GraduatedAt], [GPA], [JobId], [Description], [Introduce], [AppUserId], [Status], [UrlImage], [Phone], [Email], [EmployerAddress], [EmployerPhone], [Comment], [EmployerRating], [CommentOn], [City], [EmployerEmail]) VALUES (26, N'Bachelor''s Degree', N'Graphic Design', CAST(N'2023-07-10T03:47:15.0110900' AS DateTime2), N'MNO University', 3.6, 47, N'<p>I am a creative UI/UX designer with expertise in creating intuitive and visually appealing user interfaces. I have a strong background in graphic design principles, typography, and color theory. I am skilled in using design tools such as Adobe Photoshop, Illustrator, and Sketch. With a user-centric approach, I conduct user research and usability testing to inform design decisions and enhance userexperience. I possess a deep understanding of user behavior and interaction design, enabling me to craft engaging and seamless user experiences. I collaborate closely with development teams to ensure the successful implementation of designs. I am passionate about creating innovative and accessible designs that leave a lasting impact on users.</p>
', N'UI/UX Designer with 4 years of experience', N'3d3eb2b1-eaef-4f3f-a1b4-08db77b96d25', 2, N'bd62c18f-f20b-4c69-9de0-a6641ba777bd.png', N'+1 789-012-3456', N'example8@email.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CVs] OFF
GO
SET IDENTITY_INSERT [dbo].[Jobs] ON 

INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (1, N'C++ Developer (C++, OOP)', N'cpp-developer-cpp-oop-', NULL, 14, N'<p>We are looking for Window Application Engineer, who have solid background knowledge in Windows Application development and experience in Window API development.</p>

<h4><strong>Role and Responsibilities</strong></h4>

<p>&bull; Develop and maintain Windows application using C++</p>

<p>&bull; Analyze and understand requirements of the project</p>

<p>&bull; Design, develop and build new features on the current system</p>

<p>&bull; Write high-quality, clean and maintainable code</p>

<p>&bull; Debug and modify complex, production software</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Attractive Salary &amp; Benefit</p>

<p>&bull; Yearly Performance Bonus</p>

<p>&bull; Premium Health Insurance</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; Yearly Performance Bonus 2 times/year (up to 3-month salary) + 13th Salary. (At least 15 months)</p>

<p>&bull; Intensive Training Program.</p>

<p>&bull; Oversea Biz-trip</p>

<p>&bull; Flexible working time policy.</p>

<p>&bull; Udemy License is provided.</p>

<p>&bull; Premium Health Insurance.</p>

<p>&bull; 100% salary and mandatory social insurances in 2-month probation.</p>

<p>&bull; Daily shuttle bus from city center to company</p>

<p>&bull; Team Building Gifts quarterly.</p>

<p>&bull; Free luncheon.</p>

<p>&bull; Birthday Gifts.</p>

<p>&bull; Training Opportunities in Korea.</p>

<p>&bull; Take part in&nbsp;various&nbsp;significant activities&nbsp;such as SEHC Festival, SEHC Cup, Town Hall Meeting, Li&ecirc;n Qu&acirc;n Mobile Champion, SEHC Marathon, SEHC Hackathon, SEHC Home Town,....</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; B.S/M.S degree, major in Software Engineering, Computer Science,&hellip;</p>

<p>&bull; Solid Foundations in Windows Software development</p>

<p>&bull; At least 3 years of experience working with C, C++</p>

<p>&bull; Knowledge about Windows system APIs, Window OS structure, MFC</p>

<p>&bull; Knowledge about C, embedded system such as Display Product, video input interface, Windows Driver &amp; GPU (optional)</p>

<p>&bull; Hard-working, results oriented, high energy, self-motivated and creative individual who can become a part of a new and exciting team</p>

<p>&bull; UML diagram design, Unit test (Big plus)</p>
', CAST(N'2023-06-20T19:33:41.0000000' AS DateTime2), 6, 1, 4, 500, 2000, N'098dc935-43d3-4401-924e-08db79360ded')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (2, N'[Urgent] TeamLead Engineer (.NET, Cloud Services, Java)', N'[urgent]-teamlead-engineer-dotnet-cloud-services-java-', NULL, 18, N'<p><em>We are looking for a Vietnam-based, passionate tech leader whose mission is to drive the success of a newly founded HRS Technology Unit covering a unique venture within the HRS Group. HRS is creating a new technology unit based on our existing successful platforms developed and operated from our Innovation Hub in Ho-Chi-Minh City, Vietnam. The new Technology Unit will be an exciting challenge for a passionate engineering and tech leader by integrating and developing new technology, ramping up, and leading the engineering teams of the new business venture. You will ramp up the new team, integrate it into the existing development hub, and define the new platform&#39;s architecture along with the CTO of Government, Crisis &amp; Insurance Solutions.</em></p>

<p><em>HRS operates globally with technology innovation hubs in Germany, Ukraine, Poland, India and Vietnam. The engineering mission of HRS is to build a scalable, resilient, and secure platform to serve our global customers. HRS is seeking an inspirational Head of Engineering for the Government, Insurance and Crisis Solutions platform. We seek a &ldquo;StartUp mindset&quot; for technology-driven solutions and a leader who will attract, develop, and lead a strong team of developers, Architects, QAs, and DevOps and advocate HRS&rsquo;s Technology mission. The Head of Engineering will report to the CTO of the Business Unit.</em></p>

<p>&bull; Work with business stakeholders to understand and develop requirements and ascertain priorities</p>

<p>&bull; Build up the solution, and product framework and deliver the MVPs</p>

<p>&bull; Align the solution and applicable technology with HRS group&rsquo;s technology strategy</p>

<p>&bull; Build up the dynamic and innovative team</p>

<p>&bull; Manage the Agile software development life-cycle to optimize the processes and improve development productivity</p>

<p>&bull; Prepare and present the progress reports to upper management and stakeholders</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Attractive salary package and valuable benefits</p>

<p>&bull; Get the opportunity to access global L&amp;D programs</p>

<p>&bull; International and innovative working environment</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; Your voice is listened to and your skill development is supported constantly.</p>

<p>&bull; Working with colleagues and experts at other offices in Germany and other countries...</p>

<p>&bull; The salary is very attractive and competitive.</p>

<p>&bull; Rewarding outstanding contribution with the project bonus, quarterly bonus and yearly bonus.</p>

<p>&bull; Supportive working conditions: laptop, MS Surface Hub, nice office, rich pantry with coffee, soft drink, snacks.....</p>

<p>&bull; Fully compliance with Vietnam Labor Code, especially the insurance is based on full salary.</p>

<p>&bull; Additional standard benefits: additional health insurance, company trip and business travel, training, year-end party, team outing activities...</p>

<p>&bull; At HRS we feel globally united and mutually responsible, a belief that is rooted in our company history and values: Thinking and acting like an entrepreneur, with everyone across the whole company being given the opportunity to take full ownership to deliver on our shared vision every single day.</p>

<p>&bull; You will work in a modern working environment among some of the most talented people in our industry.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; BSc and/or MSc degree in Engineering, Computer Science, or a related field</p>

<p>&bull; Hands-on experience with MS technology i.e. .Net on both front-end and back-end</p>

<p>&bull; Experience in leading a development team following the agile methodology</p>

<p>&bull; Experience with cloud technologies such as Microsoft Azure or AWS or Google Cloud</p>

<p>&bull; Ability to grow up to the higher position</p>

<p>&bull; Fluent in English in written and verbal communication</p>
', CAST(N'2023-06-21T18:39:03.0000000' AS DateTime2), 13, 1, 2, 3000, 3800, N'944212e8-4830-4a30-4578-08db7969c64d')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (3, N'Solution Architect / Technical Architect', N'solution-architect-technical-architect', NULL, 2, N'<p>Are you an experienced&nbsp;<strong>Solution Architecture</strong>&nbsp;who is willing to deliver resilient solutions with enterprise integration patterns in business-complex and large-scaled systems for multiple years?&nbsp;If so read on.</p>

<p><strong>About Our Team</strong></p>

<p>Our team is responsible for creating a brand of new digital financial platforms and apps that are highly reliable and scalable using modern engineering practices. You will be joining a project which talented software engineers in our Digital Bank Build team who is responsible for designing, building, and maintaining the new digital banking platform and the customer channels. As part of the team, you will be responsible for implementing software features, involve in technical designs, and writing tests to ensure the high-quality delivery of the product. The teams operate in Scrum and DevOps models.</p>

<p>We&rsquo;re looking for top engineers out there! During the interview process, we will test your coding and design skills to assess your experience and depth of knowledge. Don&rsquo;t worry our interview process will be fun!</p>

<p><strong>What Is The Role?</strong></p>

<p>&bull; Analyze current technologies used within the company to define strategies and road-maps for improving cross-country digital architectures.</p>

<p>&bull; Identify technical gaps and advise proper solutions following standardized technologies and appropriate technology life cycles.</p>

<p>&bull; Influence business owners and stakeholders on an appropriate design considering technical complexity, risks, resources, scope, and time-bound.</p>

<p>&bull; Being technical liaison and evangelist to establish business relationships with all stakeholders for conducting product presentations and evaluations.</p>

<p>&bull; Observe the application of architectural compliance, company practices, and best practices to propose proper actions at the right time to mitigate risk and security issues.</p>

<p>&bull; Provide various levels of detailed specifications for different levels of stakeholders to be aligned on a common approach.</p>

<p>&bull; Follow up and support development teams to unblock technical issues, advise and influence team members, solution delivery managers, and product owners to follow good practices and appropriate architectural designs.</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Excellent environment and team to help you grow.</p>

<p>&bull; Competitive salary and learning culture.</p>

<p>&bull; Premium health care for you and your family.</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>At&nbsp;TYME Digital&nbsp;opportunities are here for the taking. If want to be part of our purpose and live and lead through our values, we can offer exciting development opportunities through expanded lateral roles, stretch assignments or people leadership.<br />
<br />
<strong>Some of our benefits:</strong></p>

<p>&bull; Meal and parking allowance are covered by the company</p>

<p>&bull; Full benefits and salary rank during probation</p>

<p>&bull; Insurances as Vietnamese labor law and premium health care for you and your family without seniority compulsory</p>

<p>&bull; Performance bonus up to 2 months</p>

<p>&bull; 13th month salary pro-rata</p>

<p>&bull; 15-day annual leave+ 3-day sick leave + 1 birthday leave + 1 Christmas leave</p>

<p>&bull; SMART goals and clear career opportunities (technical seminar, conference, and career talk) &ndash; we focus on your development</p>

<p>&bull; Values-driven, international working environment, and agile culture</p>

<p>&bull; Overseas travel opportunities for training and working related</p>

<p>&bull; Internal Hackathons and company&rsquo;s events (team building, coffee run, blue card&hellip;)</p>

<p>&bull; Work-life balance 40-hr per week from Mon to Fri</p>
', N'<p><strong>Your skills &amp; experience:</strong></p>

<p>&bull; Designing and delivering resilient solutions with enterprise integration patterns in business- complex and large-scale systems for multiple years</p>

<p>&bull; Strong experience in system resilience, analytics, monitoring, and notifications</p>

<p>&bull; Hands-on experience with Cloud (AWS is a big plus)</p>

<p>&bull; Strong experience in system resilience, analytics, monitoring, and notifications</p>

<p>&bull; Excellent understanding of application development across multiple geographies</p>

<p>&bull; Good at technical writing and documenting solutions by diagrams and figures</p>

<p>&bull; Experienced in different kinds of large-scale data stores and messaging systems</p>

<p>&bull; Experience in Fintech or Digital banking is a plus</p>

<p>&bull; Hands-on experience with Java, Spring Framework is a plus</p>

<p><strong>Your qualifications:</strong></p>

<p>&bull; At least 5 years of experience working as a software engineer</p>

<p>&bull; At least 3 years working as Solution Architect</p>

<p>&bull; Design one or more systems running on production</p>

<p>&bull; Technical leadership and communication skills</p>

<p>&bull; Excellent written and oral English</p>
', CAST(N'2023-06-22T18:45:13.0000000' AS DateTime2), 9, 1, 2, 2000, 3000, N'a8545ec6-809f-4723-924c-08db79360ded')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (4, N'CV Quản trị ứng dụng (Application Admin)', N'cv-quan-tri-ung-dung-application-admin-', NULL, 9, N'<p><strong>1. Quản l&yacute; hệ thống T24 bao gồm:</strong><br />
- C&agrave;i đặt, c&aacute;u h&igrave;nh, triển khai hệ thống T24 TAFJ,&nbsp;<br />
- Tracelog, khoanh v&ugrave;ng, ph&acirc;n t&iacute;ch, tối ưu tham số thiết lập cho T24<br />
- X&acirc;y dựng c&aacute;c ti&ecirc;u ch&iacute; kiểm tra, gi&aacute;m s&aacute;t T24, theo d&otilde;i hoạt động của hệ thống<br />
- N&acirc;ng cấp patch cho ứng dụng, ứng dụng nền tảng,...<br />
- Ph&acirc;n t&iacute;ch, tối ưu nghiệp vụ , tham số hệ thống, đảm bảo cho hệ thống T24 hoạt động ổn định, an to&agrave;n.<br />
- X&acirc;y dựng c&aacute;c c&ocirc;ng cụ tự động h&oacute;a t&aacute;c động v&agrave;o T24<br />
- Tham gia triển khai DEV/OP tr&ecirc;n hệ thống T24<br />
- Triển khai c&aacute;c kiến tr&uacute;c HA, x&acirc;y dựng chiến lược sao lưu, kh&ocirc;i phục cho T24. Đảm bảo t&iacute;nh sẵn s&agrave;ng li&ecirc;n tục 247 của hệ thống<br />
- X&acirc;y dựng qui tr&igrave;nh, t&agrave;i liệu quản trị vận h&agrave;nh, ứng ph&oacute; sự cố cho hệ thống<br />
<strong>2. Quản l&yacute; hệ thống Way4 bao gồm:</strong><br />
- C&agrave;i đặt, cấu h&igrave;nh, triển khai hệ thống Way4,&nbsp;<br />
- Tracelog, khoanh v&ugrave;ng, ph&acirc;n t&iacute;ch, tối ưu tham số thiết lập cho Way4<br />
- X&acirc;y dựng c&aacute;c ti&ecirc;u ch&iacute; kiểm tra, gi&aacute;m s&aacute;t Way4, theo d&otilde;i hoạt động của hệ thống<br />
- N&acirc;ng cấp patch cho ứng dụng,...<br />
- Ph&acirc;n t&iacute;ch, tối ưu nghiệp vụ , tham số hệ thống, đảm bảo cho hệ thống Way4 hoạt động ổn định, an to&agrave;n.<br />
- X&acirc;y dựng c&aacute;c c&ocirc;ng cụ tự động h&oacute;a t&aacute;c động v&agrave;o Way4<br />
- Tham gia triển khai DEV/OP tr&ecirc;n hệ thống Way4<br />
- Triển khai c&aacute;c kiến tr&uacute;c HA, x&acirc;y dựng chiến lược sao lưu, kh&ocirc;i phục cho Way4. Đảm bảo t&iacute;nh sẵn s&agrave;ng li&ecirc;n tục 247 của hệ thống<br />
- X&acirc;y dựng qui tr&igrave;nh, t&agrave;i liệu quản trị vận h&agrave;nh, ứng ph&oacute; sự cố cho hệ thống<br />
<strong>3. Quản l&yacute; hệ thống Microservice,APIGEE bao gồm:</strong><br />
- C&agrave;i đặt, c&acirc;u h&igrave;nh, triển khai c&aacute;c hệ thống như Kubernet, Tanzu, openshift,APIGEE....&nbsp;<br />
- Qui hoạch, tối ưu tham số hệ thống ph&ugrave; hợp với y&ecirc;u cầu của ứng dụng đ&aacute;p ứng nghiệp vụ<br />
- X&acirc;y dựng c&aacute;c chiến lược n&acirc;ng cao t&iacute;nh sẵn s&agrave;ng của hệ thống, ứng ph&oacute; với c&aacute;c sự cố sảy ra.<br />
- Nghi&ecirc;n cứu, x&acirc;y dựng c&aacute;c c&ocirc;ng cụ theo d&otilde;i, gi&aacute;m s&aacute;t... đ&aacute;nh gi&aacute; được hiệu năng của hệ thống<br />
- Tham gia triển khai DEV/OP tr&ecirc;n nền tảng Microservice<br />
- X&acirc;y dựng qui tr&igrave;nh, t&agrave;i liệu quản trị vận h&agrave;nh, ứng ph&oacute; sự cố cho hệ thống</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>- Mức lương cạnh tranh, hấp dẫn</p>

<p>- M&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, th&acirc;n thiện</p>

<p>- Được l&agrave;m việc với c&aacute;c hệ thống hiện đại, ti&ecirc;n tiến</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>- Mức lương cạnh tranh, hấp dẫn (Thưởng xếp loại thực hiện c&ocirc;ng việc 6 th&aacute;ng/lần, thưởng sinh nhật ng&acirc;n h&agrave;ng, thưởng c&aacute;c ng&agrave;y lễ tết trong năm&hellip;).</p>

<p>&nbsp;- Chế độ ph&uacute;c lợi cạnh tranh: Du lịch h&agrave;ng năm, Kh&aacute;m sức khỏe định k&igrave; h&agrave;ng năm; G&oacute;i bảo hiểm sức khỏe; C&aacute;c hoạt động tri &acirc;n, chăm lo đời sống tinh thần CBNV v&agrave; Th&acirc;n nh&acirc;n...</p>

<p>&nbsp;- M&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, th&acirc;n thiện, cởi mở.</p>

<p>&nbsp;- Được l&agrave;m việc với c&aacute;c hệ thống hiện đại, ti&ecirc;n tiến nhất thị trường, &aacute;p dụng c&aacute;c c&ocirc;ng nghệ h&agrave;ng đầu về an ninh bảo mật để đảm bảo an to&agrave;n cho người sử dụng.</p>

<p>&nbsp;- Cơ hội học hỏi nghiệp vụ ng&acirc;n h&agrave;ng.</p>
', N'<p><strong>*Tr&igrave;nh độ học vấn:</strong></p>

<p>- Tốt nghiệp hệ ch&iacute;nh quy c&aacute;c Trường Đại học trong nước hoặc nước ngo&agrave;i<br />
- Chuy&ecirc;n ng&agrave;nh đ&agrave;o tạo: C&ocirc;ng nghệ th&ocirc;ng tin, To&aacute;n tin, Điện tử Viễn th&ocirc;ng, ph&acirc;n t&iacute;ch dữ liệu&hellip;</p>

<p>- Ứng vi&ecirc;n c&oacute; chứng chỉ li&ecirc;n quan Unix, csdl, java, midleware, webserver, queue&hellip; chứng nhận đ&agrave;o tạo li&ecirc;n quan T24, Way4, Kubernet, Openshift, tanzu, redhat Jboss, &hellip;</p>

<p><strong>*Kinh nghiệm:</strong></p>

<p>- Tối thiểu 5 năm kinh nghi&ecirc;̣m c&agrave;i đặt, quản trị, cấu h&igrave;nh, tinh chỉnh tối ưu ứng dụng T24, Way4, Kubernet, Tanzu, openshift<br />
- Th&ocirc;ng thạo ng&ocirc;n ngữ SQL, Java, Golang (C&oacute; khả năng viết code, đọc code, tối ưu code)<br />
- Th&ocirc;ng thạo hệ điều h&agrave;nh AIX, LINUX. Hiểu kiến tr&uacute;c của m&aacute;y chủ, storage, nas ...<br />
- Th&ocirc;ng thạo kiến tr&uacute;c của c&aacute;c hệ thống T24, Way4, Kubernet, Tanzu, OpenShift. Hiểu kỹ c&aacute;c nền tảng ứng dụng triển khai như Jboss, activemq, tomcat, database...<br />
- Th&ocirc;ng thạo CA, https, c&aacute;c phần mềm, phần cứng loadbalance như F5, apache, ngix, elastic load balancer ..</p>

<p><strong>* Y&ecirc;u cầu kh&aacute;c:</strong></p>

<p>- Khả năng nghi&ecirc;n cứu tốt<br />
- Kỹ năng viết t&agrave;i liệu, thuyết tr&igrave;nh, thuyết phục tốt<br />
- Kỹ năng ph&acirc;n t&iacute;ch, giải quyết vấn đề tốt<br />
- Kỹ năng l&agrave;m việc nh&oacute;m v&agrave; l&agrave;m việc độc lập tốt<br />
- Tiếng Anh tốt, c&oacute; thể l&agrave;m việc trực tiếp với c&aacute;c đối t&aacute;c nước ngo&agrave;i.<br />
- Trung thực, tin cậy, cẩn trọng.<br />
- C&oacute; khả năng l&agrave;m việc dưới m&ocirc;i trường nhiều &aacute;p lực, li&ecirc;n tục thay đổi<br />
- C&oacute; khả năng lập kế hoạch thực hiện, triển khai c&ocirc;ng việc</p>
', CAST(N'2023-06-23T18:52:37.0000000' AS DateTime2), 4, 2, 4, 1000, 2000, N'f463e352-9ce4-489c-5851-08db794d4e58')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (5, N'IT - Product Owner', N'it-product-owner', NULL, 11, N'<ul>
	<li>Join the IT development team, reporting directly to development manager.</li>
	<li>Work with BUs/PMO to understand change request/project scope and objectives, collaborating with all stakeholders to deliver products on time, on scope within budget</li>
	<li>Discuss with BUs to come up with business solutions</li>
	<li>Explain to BAs for any confusion between BUs and BAs</li>
	<li>Manage CRs from BUs with a short turn around time</li>
	<li>Justifying available resource to BUs</li>
	<li>Develop comprehensive product roadmap</li>
	<li>Using modern tools to manage product backlogs, release backlogs, and measure team performance</li>
	<li>Report and escalate critical issues to higher management</li>
	<li>Create and maintain product documents</li>
	<li>Proactivelyimprove product features and quality</li>
	<li>Work closely with development teams to deliver the best outcome</li>
</ul>
', N'<h4>Top 3 reasons to join us</h4>

<p>&bull;&nbsp; 13 Monthly Base Salary</p>

<p>&bull;&nbsp; Training</p>

<p>&bull;&nbsp; Recorgnition</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; Average 15 Monthly Base salary per year</p>

<p>&bull; ACB Health Care.</p>

<p>&bull; Meal Allowance.</p>

<p>&bull; Preferential loan as regulated by ACB</p>

<p>&bull; Yearly Medical Checkup &amp; Team building activities.</p>

<p>&bull; Professional and Transparent Working Environment</p>
', N'<p>&bull;&nbsp; BS/MS degree in computer science, software engineering, bussiness/finance/banking or a related field</p>

<p>&bull;&nbsp; 3+ years of experience in product owner/product manager/project manager</p>

<p>&bull;&nbsp; 3+ years of experience in software development</p>

<p>&bull;&nbsp; Excellent customer facing and good collaboration with team members</p>

<p>&bull;&nbsp; Experience in managing multiple products simultaneously</p>

<p>&bull;&nbsp; Solid organizational skills and hand-on multitasking</p>

<p>&bull;&nbsp; PMP certification is a big plus</p>

<p>&bull;&nbsp; Experience in agile development teams, such as Scrum, Kanban</p>

<p>&bull;&nbsp; Interested in dealing with complex challenges and keen on exploring new things</p>

<p>&bull;&nbsp; Good problem-solving skills and teamwork spirit</p>

<p>&bull;&nbsp; Strong communication skills to effectively collaborate with other developers and stakeholders</p>

<p>&bull;&nbsp; Excellent English communication and writing</p>
', CAST(N'2023-06-24T19:41:15.0000000' AS DateTime2), 10, 1, 4, 1000, 2500, N'2c15a2e0-73db-435f-f4ca-08db796dfada')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (6, N'Senior Java Engineer (Spring, PostgreSQL)', N'senior-java-engineer-spring-postgresql-', NULL, 5, N'<p>We are currently looking for Java Developer<br />
<br />
<strong>Accountabilities Will&nbsp;Include:</strong>&nbsp;</p>

<p>&bull; Translate application user stories into functional applications</p>

<p>&bull; Design, build, and maintain efficient, reusable, and reliable Java code</p>

<p>&bull; Ensure the best possible performance, quality, and responsiveness of the applications</p>

<p>&bull; Identify bottlenecks and bugs, and devise solutions to these problems</p>

<p>&bull; Maintain code quality, organization, and automatization</p>

<p>&bull; Write and maintain high quality unit tests</p>

<p>&bull; Perform code review</p>

<p>&bull; Adhere to the acceptance criteria and the Definition of Done</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Product company with an unique end-point security</p>

<p>&bull; Attractive salary + 13th month salary + Bonus</p>

<p>&bull; Unlimited Vacation + Hybrid Working Model</p>
', N'<h2>Why you&#39;ll love working here</h2>

<p>You&rsquo;re resilient and passionate about securing the Work from Anywhere era.<br />
So are we.</p>

<p>Headquartered in Vancouver, Canada with international offices in Victoria &ndash; BC, Seattle &ndash; WA, San Jose - CA, Boulder - CO, Ankeny &ndash; IA, Austin - TX, Reading - UK and Ho Chi Minh City &ndash; Vietnam, Absolute Software (NASDAQ: ABST) (TSX: ABST) accelerates customers&rsquo; shift to work-from-anywhere through the industry&rsquo;s first self-healing Zero Trust platform, ensuring maximum security and uncompromised productivity.</p>

<p>&bull; Unlimited annual leaves &amp; 02 weeks off (paid leaves) per year</p>

<p>&bull; Internal Recruitment Program to Vancouver</p>

<p>&bull; Premium Insurance for you and your family (spouse &amp; children)</p>

<p>&bull; 13th month salary &amp; corporate bonus every 6 months</p>

<p>&bull; 16,000+ customers. 13+ million activated endpoints globally. Factory-embedded by 25 top device manufacturers</p>

<p>&bull; Fruity Monday, Happy Hour, Team Building, Interest Clubs.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p><strong>Requirements:</strong></p>

<p>&bull; Proficient in Java/JEE and Spring framework, with a good knowledge of its ecosystems</p>

<p>&bull; Strong understanding of object-oriented programming</p>

<p>&bull; Familiar with various design and architectural patterns</p>

<p>&bull; Skill for writing reusable Java libraries</p>

<p>&bull; Knowledge of concurrency patterns in Java</p>

<p>&bull; Familiarity with concepts of MVC, JDBC, and RESTful</p>

<p>&bull; Proficiency with SQL, Hibernate</p>

<p>&bull; Understanding fundamental design principles behind a scalable application</p>

<p>&bull; Creating database schemas that represent and support business processes</p>

<p>&bull; Implementing automated testing platforms and unit tests</p>

<p>&bull; Proficient understanding of code versioning tools, such as Git</p>

<p>&bull; Ability to clearly communicate with both technical and non-technical team members</p>

<h4><strong>Other Requirements:</strong></h4>

<p>&bull; Experience with Agile Scrum</p>

<p>&bull; Familiarity with build tools such as Maven, and Gradle</p>

<p>&bull; Experience with NoSQL is&nbsp;preferable</p>
', CAST(N'2023-06-25T20:10:17.0000000' AS DateTime2), 7, 1, 5, 500, 2000, N'fe21bb95-332b-4887-5bf9-08db7974ad47')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (7, N'Senior .NET Developers', N'senior-dotnet-developers', NULL, 18, N'<p>We have multiple teams working for our international clients, handling&nbsp;projects based on&nbsp;Microsoft technologies, such as ASP.NET.&nbsp;As an ASP.NET Web Developer, you will:</p>

<p>&bull; Join a variety of projects for our international clients based on Microsoft .NET platform</p>

<p>&bull; Work as part of a team to meet demanding project requirements</p>

<p>&bull; Follow best practices and coding standards to ensure the best system performance regardless of the browser or device</p>

<p>&bull; Join all required software development phases from planning, estimation, designing and developing the implementation</p>

<p>&bull; Participate in Agile processes such as Scrum or Kanban.</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Attractive salary package</p>

<p>&bull; Hybrid working mode</p>

<p>&bull; Signing bonus for IT related posts</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; Hybrid working mode.&nbsp;</p>

<p>&bull; Highly competitive remuneration package: attractive monthly salary and allowances, 13th month salary, additional performance bonus, high public holiday bonuses, and birthday gift, employee service award up to $1,000 for employees with 3+ years.</p>

<p>&bull; Attractive AON healthcare coverage including health and accident insurance in addition to the standard insurances regulated by the Labor Code. Luxury company summer vacation and team-building budget.</p>

<p>&bull; Opportunities to work onsite for international projects in Sweden, Australia, UK, USA, etc.</p>

<p>&bull; Organized training and full support in building your career.</p>

<p>&bull; English-speaking, international and professional work environment: working with expatriates from a number of countries, state of the art working space with a wonderful view over the city skyline, modern facilities include computer dual 24&rdquo; screens running latest versions of Windows 11 Enterprise, MS Office 365, Team, latest version of Visual Studio, and SQL Server, Dell OptiPlex Workstation with 32 GB Ram, 512GB NVMe SSD.</p>

<p>&bull; Western management style that is professional, dynamic, open minded, creative, supportive, friendly and encouraging feedback.</p>

<p>&bull; Company Management that regularly communicates Company&rsquo;s strategy, development plan and new opportunities to employees.</p>

<p>&bull; Employee and family are engaged and taken care by the Company via Trade Union activities.</p>

<p>&bull; Diversified social and charity activities often organized by NICEF - Niteco Charity Engagement Foundation to create opportunities for our young employees to raise funds and help people with difficulties in Vietnam.</p>

<p>&bull; Physical care environment where you are taken care, feeling relaxed and enjoying lots of leisure activities such as badminton, ping pong, football, table football, dancing, running, cycling, cinema, etc.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; At least 4 years of experience in .NET projects: .NET, ASP.NET</p>

<p>&bull; Experience with ECommerce and/or ePiServer CMS is a big plus</p>

<p>&bull; Experience with WebAPI</p>

<p>&bull; Advanced Microsoft Data Technologies: ADO.NET, SQL Server, Entity Framework</p>

<p>&bull; Skills in front-end engineering using Object-Oriented JavaScript &amp; Responsive web design are an advantage&nbsp;</p>

<p>&bull; Good in implementing &amp; optimizing .NET Server-side technologies</p>

<p>&bull; Very good in understanding &amp; applying Design Patterns/Design Principles</p>

<p>&bull; Proficient in code review, code refactoring</p>

<p>&bull; Experience working in an Agile/Scrums Software Development environment</p>

<p>&bull; Good at English, both in comprehension and communication</p>

<p>&bull; Good attitude regarding self-testing and self-learning.</p>
', CAST(N'2023-06-26T20:20:13.0000000' AS DateTime2), 2, 2, 4, 1000, 2000, N'0163aa78-b118-49a5-6b9e-08db796fb4d9')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (8, N'Tech Lead / Senior Mobile Engineer (React Native)', N'tech-lead-senior-mobile-engineer-react-native-', NULL, 13, N'<p><em>We are seeking a talented React Native Engineer to help in the design and development of the company&rsquo;s mobile clients. As part of our mobile client team, you will be given the autonomy to develop critical features for our core products.</em></p>

<p><strong>PURPOSE OF JOB:&nbsp;</strong></p>

<p>Responsible for the translation of product design wireframes to actual code, including developing and improving all BAEMIN apps and merchant apps.&nbsp;</p>

<p><strong>JOB RESPONSIBILITY</strong></p>

<p><strong>Deliver Mobile App Service</strong></p>

<p>&bull; Build and develop app features on given requirements, collaborate with Backend, Product Design, Product Manager and Marketing team to develop and continuously improve new features;</p>

<p>&bull; Understand the product, constantly optimize the performance, identify and fix problems, improve stability and user experiences;</p>

<p>&bull; Collaborate with QA on continuous integration and ensure quality through design, processes, and tools in a CI/CD environment;</p>

<p>&bull; Work closely with other junior engineers, involve in constructive and concise code review with peers, especially junior ones;</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Experience Self-Leading Growth</p>

<p>&bull; Working With World-Class &amp; Modern System</p>

<p>&bull; Enjoy Everyday Happiness At Work</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>1/ Attractive salary &amp; benefits</p>

<p>&bull; 12 annual leave + 4 full-paid sick leave</p>

<p>&bull; Year-end bonus, performance bonus, public holiday bonus, birthday bonus;</p>

<p>&bull; Appraisal and salary review every year</p>

<p>2/ Macbook for employees</p>

<p>3/ Training Courses</p>

<p>&bull; Personal training, internal training, and overseas training in Korea.....</p>

<p>4/ Activities</p>

<p>&bull; Company trip &amp; team-building every year, team-bonding every month;</p>

<p>&bull; Awesome Year-End Party;</p>

<p>&bull; Team building for Team/Dept every month;</p>

<p>5/ Vouchers</p>

<p>6/ Opportunity to be trained &amp; worked in a leading e-commerce company in Viet Nam</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; A degree of Computer Science, Software Engineer/ Information Technology or experiences in related fields;</p>

<p>&bull; At least 3+ years of professional experience with React Native or Cross-platform mobile development;</p>

<p>&bull; Willing to improve our mobiles app&rsquo;s UX for customers;</p>

<p>&bull; Demonstrate solid knowledge of pure JavaScript and TypeScript;</p>

<p>&bull; Knowledge and experience of state management libraries like Redux, and Saga;</p>

<p>&bull; Experience with Mobile app development (iOS and Android);</p>

<p>&bull; Effective communication and teamwork skills, particularly ability to work in squad to ensure delivering project on time in full;</p>

<p>&bull; Fluency in spoken and written English is preferred;</p>

<p>&bull; High learning agility and a real passion for coding and programming, innovation, and solving challenging problems to improve mobile app&rsquo;s UX for customers;</p>

<p>&bull; High adaptability and flexibility to the rapid changes of the business;</p>

<p>&bull; High responsibility and diligence;</p>
', CAST(N'2023-06-27T20:25:18.0000000' AS DateTime2), 4, 1, 3, 1000, 3000, N'88ddb9d4-48b1-488d-924d-08db79360ded')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (9, N'Senior Frontend Engineer (JavaScript/ReactJS)', N'senior-frontend-engineer-javascript-reactjs-', NULL, 7, N'<p>&bull; Be hands-on, build and lead cross-functional squads of engineers by example</p>

<p>&bull; Define and implement engineering standards and champion engineering excellence</p>

<p>&bull; Identify and capitalise on opportunities to accelerate development whilst increasing stability</p>

<p>&bull; Instil a strong engineering culture in your squads and create a collaborative environment for your team</p>

<p>&bull; Ensure your squads are obsessed with automation.</p>

<p>&bull; Champion agile development You Build it You Own it culture.</p>

<p>&bull; Own the low- and high-level architecture and solution design for your platforms, including practices, patterns and technical stack selection.</p>

<p>&bull; Grow, support and develop engineers.</p>

<p><strong>Work location:</strong></p>

<p>Ha Noi: 6 Quang Trung, Hoan Kiem, Ha Noi/&nbsp;C5 Building Tower, D&rsquo;Capitale Tower, 119 Tran Duy Hung, Cau Giay,Ha Noi</p>

<p>Ho Chi Minh: 23 Le Duan, Ben Nghe ward, District 1, Ho Chi Minh</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Top-tier banking environment in Vietnam</p>

<p>&bull; Challenging opportunities for the &ldquo;Greater&rdquo; You</p>

<p>&bull; Attractive career path and benefits</p>
', N'<h4>Why you&#39;ll love working here</h4>

<p><strong>WHY BECOME&nbsp;IT/DATA EXPERTS AT TECHCOMBANK?</strong></p>

<p>&bull; Investing&nbsp;<strong>over 300 million USD</strong>&nbsp;to develop large-scale IT projects, Techcombank is one of the leading bank in Technology trends in Vietnam</p>

<p>&bull; You will grow with Techcombank by having the opportunity to learn from&nbsp;<strong>top experts</strong>&nbsp;from across the world</p>

<p>&bull; Techcombank provides a&nbsp;<strong>rewarding remuneration structure</strong>&nbsp;that commensurate with your achievement and contribution</p>

<p>&bull; Techcombank is the&nbsp;<strong>Top 2 Best place to work&nbsp;</strong>in the banking industry where you can experience various exciting activities throughout the year: Company anniversary, Team building, Active Saturday , Year End Party, etc.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; Graduated with good grade or higher majoring in Information Technology, Mathematics, Electronics and Telecommunications at universities of science and technology</p>

<p>&bull; Demonstrable experience implementing enterprise grade web applications</p>

<p>&bull; 8 years&rsquo; experience in hands-on web development using JavaScript and/or Typescript</p>

<p>&bull; Deep understanding of Angular, RXJS and optimising for performance at scale</p>

<p>&bull; Demonstrable experience with test automation and exposure to modern frameworks including Jest, Nx, MonoRepo and PACT.</p>

<p>&bull; Familiarity with common CICD tool chains and deployment environments including Jenkins, Kubernetes, Nginx and ArgoCD</p>

<p>&bull; Have experience in managing a team, strong leadership skill and problem solving skill</p>
', CAST(N'2023-06-28T05:19:41.0000000' AS DateTime2), 3, 1, 1, 500, 1500, N'6f192bbb-e0c3-4f52-85d3-08db77fb01d9')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (10, N'Senior Frontend Engineer (JavaScript/NodeJS/ReactJS)', N'senior-frontend-engineer-javascript-nodejs-reactjs-', NULL, 7, N'<p><strong>Employment Hero is an Australian tech unicorn - valued at over $1.25 billion.</strong></p>

<p>Our world-class software is the easiest way for small and medium-sized businesses to manage HR, payroll, employee engagement, and benefits. We&rsquo;ve grown 100% year-on-year since our inception in 2014, and now service over 200,000 businesses and over 1 Million active users globally. We have exciting growth plans for 2023 and beyond, powered by our mission of making employment easier and more valuable for everyone.</p>

<p>We take a&nbsp;<strong>Remote First</strong>&nbsp;approach with our team. Employment Hero can hire across the world, so long as candidates have eligible working rights and are in a suitable timezone to their colleagues. If you&rsquo;ve got the skills for the role and the passion for our mission then we want to hear from you!</p>

<p><strong>About the Software Development Engineer Job:</strong></p>

<p>As our Software Development Engineer focused on Security you will sit within our Security and Core Platform team, working closely with Infrastructure, engineering and product teams across the business.</p>

<p>As a core member of our Security Engineering function, this role will see you being a critical part of the team helping to design and develop our infrastructure and its security standards.</p>

<p>This is a hands-on role that requires experience and expertise in managing projects and processes related to the security of our networks, AWS cloud-based systems and applications.</p>

<p>To be a success in this role you&rsquo;ll relish the challenge of working in a business that has scaled rapidly over the last few years, and are ambitious to find elegant and simple solutions to complex security challenges at scale.</p>

<p>We are looking for a Senior Software Development Engineer to join our security engineering team who will:</p>

<p>&bull; Develop, implement and maintain security protocols and practices in software applications</p>

<p>&bull; Perform security audits and identify potential vulnerabilities in software products,</p>

<p>&bull; Remedying and patching vulnerabilities</p>

<p>&bull; Collaborate with other developers and engineers to evangelise security in building software</p>

<p>&bull; Have a passion for and demonstrated experience in quality coding, through testing and test automation tools/frameworks</p>

<p>&bull; Learn and collaborate with our highly respected and amazing Full-stack Developers</p>

<p>This position is ideally suited to someone who is passionate about complex frontend security challenges and is excited to join a high performing and supportive team as we move into our next period of major growth.</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Remote First &amp; WFH Allowances</p>

<p>&bull; 20 Annual leave Days &amp; 1 Leisure Rules Day</p>

<p>&bull; Top Compensation &amp; Healthcare Package</p>
', N'<h4><strong>Why you love working here?</strong></h4>

<p>&bull; Remotely working and flexible working time</p>

<p>&bull; 20 annual leave days</p>

<p>&bull; 1 Leisure Rules day</p>

<p>&bull; Top private healthcare package (Included your spouses and children)</p>

<p>&bull; USD 500/ annual/ person for books/ tech conferences/courses</p>

<p>&bull; USD 500/ annual/ person for English learning</p>

<p>&bull; A generous budget to spend on setting up your home office (if you need a desk, chair, screen? You name it!)</p>

<p>&bull; We set you up for success with the latest and greatest hardware, tools and tech</p>

<p>&bull; Parking fee funded by company</p>

<p>&bull; Lunch allowance for every working day</p>

<p>&bull; Australian Trip for who are eligible</p>

<p>&bull; Very attractive Referral Bonus</p>

<p>&bull; Fully compliance with Vietnam Labor Code</p>

<p>&bull; Social Security is based on full salary</p>

<p>&bull; Employee Share Option Program: be an owner of Employment Hero!</p>

<p><strong>Why join Employment Hero?</strong></p>

<p>Oh, and we don&rsquo;t want to toot our own horn (actually yes, we do), but others think we&rsquo;re pretty cool too &ndash; we&rsquo;ve received many awards for smashing some seriously ambitious goals including:</p>

<p>&bull; The Australian&#39;s Top 100 Innovators List 2021</p>

<p>&bull; LinkedIn Top 10 Startups 2020</p>

<p>&bull; Deloitte Technology Fast 50 2019, ranked #20 in Australia</p>

<p>&bull; GetApp Category Leader Q1 2019</p>

<p>&bull; Deloitte Technology Fast 50 2018, ranked #12 in Australia</p>

<p>&bull; HRD Gold Medalist - Human Capital Management Systems 2018</p>

<p>&bull; HRD Gold Medalist - Rewards and Recognition Service Provider 2018</p>

<p>&bull; HRD Rewards and Recognition Employer of Choice 2018</p>

<p>&bull; LinkedIn Top 25 Startups 2018</p>

<p>&bull; EY Entrepreneur of the Year National Finalist 2018</p>

<p>&bull; Dynamic Business Top 10 Entrepreneurs, our CEO Ben Thompson ranked #2</p>

<p>&bull; BRW Most Innovative Companies 2015</p>

<p>&bull; Anthill Smart 100 List 2015</p>

<p>&bull; Startup Daily Top 50 Emerging Leaders 2015</p>

<p>&bull; HRD Employer of Choice Award 2015</p>

<p>&bull; Aon Hewitt Best Employers 2013</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; You&rsquo;re a senior software engineer focused on security, specialised in frontend technologies - deep experience with&nbsp;<strong>ReactJS</strong>&nbsp;and&nbsp;<strong>JavaScript&nbsp;</strong>is essential</p>

<p>&bull; Understanding and experience with AWS Cloud tools and technologies</p>

<p>&bull; Experience in quality coding practices, including unit testing, automation testing, Test Driven Development (TDD)</p>

<p>&bull; Experience in Object Orientated Programming (OOP)</p>

<p>&bull; Fantastic communication - the ability to speak and write in English is essential</p>

<p>&bull; Comfort and willingness to work from your home, working with teams across APAC</p>

<p><strong>Nice to have/bonus:</strong></p>

<p>&bull; Familiarity with security governance frameworks such as NIST, ISO27001, and OWASP</p>

<p>&bull; Degree qualified in Computer Science or Similar</p>

<p>&bull; Experience working at a SaaS and/or Start-up, due to our fast paced environment</p>
', CAST(N'2023-06-28T05:24:33.0000000' AS DateTime2), 6, 1, 3, 1500, 2500, N'17d8098e-c16c-448f-5850-08db794d4e58')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (11, N'Bridge Software Engineer onsite Japan', N'bridge-software-engineer-onsite-japan', NULL, 24, N'<h5>&bull; Tham gia v&agrave;o c&aacute;c dự &aacute;n quan trọng của FPT Japan v&agrave; c&aacute;c kh&aacute;ch h&agrave;ng l&agrave; c&aacute;c c&ocirc;ng ty, tập đo&agrave;n lớn tại Nhật v&agrave; tr&ecirc;n thế giới.</h5>

<h5>&bull; Tạo design, coding, unit Testing, fix bug bằng 1 hoặc nhiều ng&ocirc;n ngữ/frame work như Java, C++, embedded, NET, Node JS&hellip;.</h5>

<h5>&bull; Horensho giữa nội bộ v&agrave; KH, trao đổi th&ocirc;ng tin r&otilde; r&agrave;ng đầy đủ, ch&iacute;nh x&aacute;c</h5>

<h5>&bull; Quản l&yacute; v&agrave; kiểm so&aacute;t thay đổi của request, x&aacute;c định/xem lại scope v&agrave; trao đổi với kh&aacute;ch h&agrave;ng</h5>

<h5>&bull; Giải th&iacute;ch đầy đủ, ch&iacute;nh x&aacute;c phần y&ecirc;u cầu của kh&aacute;ch h&agrave;ng v&agrave; design cho team ph&aacute;t triển, b&aacute;o c&aacute;o cho kh&aacute;ch h&agrave;ng theo đ&uacute;ng tiến độ</h5>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<h5>&bull; Global Exposure</h5>

<h5>&bull; Fast Track Career</h5>

<h5>&bull; Diversified Jobs &amp; Technologies</h5>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<h5>&bull; Thu nhập 400~800man/năm</h5>

<h5>&bull; X&eacute;t tăng lương 1 lần/năm</h5>

<h5>&bull; Cơ hội l&agrave;m việc với nhiều tập đo&agrave;n lớn của Nhật v&agrave; tr&ecirc;n thế giới</h5>

<h5>&bull; Được học hỏi nhiều về hệ thống lớn, c&aacute;ch quản l&yacute; team size lớn</h5>

<h5>&bull; Được hưởng đầy đủ c&aacute;c quyền lợi theo luật lao động Nhật Bản.</h5>

<h5>&bull; Được hưởng c&aacute;c chế độ, ch&iacute;nh s&aacute;ch chăm s&oacute;c sức khỏe cho nh&acirc;n vi&ecirc;n: k&yacute; t&uacute;c x&aacute; cho nh&acirc;n vi&ecirc;n/trợ cấp nh&agrave; ở, đi lại, trợ cấp gia đ&igrave;nh 1 man/người phụ thuộc, c&aacute;c g&oacute;i bảo hiểm, kh&aacute;m sức khỏe định kỳ, t&agrave;i trợ v&eacute; m&aacute;y bay về Việt Nam h&agrave;ng năm,&hellip;</h5>

<h5>&bull; M&ocirc;i trường l&agrave;m việc h&ograve;a đồng, th&acirc;n thiện, cởi mở, dễ trao đổi &yacute; kiến</h5>

<h5>&bull; Được tham gia miễn ph&iacute; h&agrave;ng trăm kh&oacute;a học training nội bộ v&agrave; được hỗ trợ thi chứng chỉ, được thưởng n&oacute;ng nếu đỗ c&aacute;c chứng chỉ kh&oacute; theo quy định của c&ocirc;ng ty.</h5>

<h5>&bull; Ng&agrave;y nghỉ &gt;120 ng&agrave;y/năm chưa bao gồm nghỉ ph&eacute;p.</h5>
', N'<h4><strong>Your skills and experience</strong></h4>

<h5>&bull; C&oacute; từ 2-3 năm kinh nghiệm lập tr&igrave;nh trở l&ecirc;n với c&aacute;c ng&ocirc;n ngữ bất kỳ: PM, BrSE Java, C/C++, .Net, Python&hellip;</h5>

<h5>&bull; Coding cho c&aacute;c function kh&oacute;/business phức tạp, IT plan/ITC.</h5>

<h5>&bull; Quản l&yacute; được thay đổi requirement, đ&aacute;nh gi&aacute; được scope v&agrave; đ&agrave;m ph&aacute;n được với KH về scope, tạo schedule tương ứng.</h5>

<h5>&bull; C&oacute; thể coding/unit test, IT execution, l&agrave;m việc độc lập được tại site KH (communication).</h5>

<h5>&bull; Khả năng giao tiếp tốt với kh&aacute;ch h&agrave;ng v&agrave; member dự &aacute;n.</h5>

<h5>&bull;&nbsp;<strong>Tiếng Nhật N2, tự tin giao tiếp tốt với kh&aacute;ch h&agrave;ng.</strong></h5>
', CAST(N'2023-06-29T05:36:04.0000000' AS DateTime2), 3, 2, 5, 1000, 2500, N'81e8a451-4305-4706-131b-08db7884c3ac')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (12, N'C++ Software Developers (Python, Linux)', N'cpp-software-developers-python-linux-', NULL, 14, N'<p>We are looking for a Senior Software Engineer with an interest in media streaming.</p>

<p>You will be part of a team of experienced developers specialized in video streaming. Together with the team, you will design and build cutting edge products and functionality - enabling new innovative ways of watching streaming TV for millions of people.</p>

<p>In your daily work, you will develop code and make the right design judgements in solutions relating to MPEG2-TS, RTSP and much else connected to modern streamed media. Technologies you will be using are typically C++, Python, Linux.</p>

<p>Your responsibilities include but not limited to the following:</p>

<p>&bull; Troubleshoot issues, suggest and provide solutions for released feature</p>

<p>&bull; Pre-study, design and implement new feature</p>

<p>&bull; Continuously improve together with the team</p>

<p>&bull; Actively contribute to our customer satisfaction</p>

<p><em>At DEK Technologies Vietnam, you will live with Agile &amp; Lean principles where employees are empowered at all levels to collaborate cross-functionally, to take pride in collective ownership, to improve yourself by continuously learning, practicing &amp; sharing with others.</em></p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; 100% salary during probation, 13th salary</p>

<p>&bull; Premium insurance (includes probation time)</p>

<p>&bull; Technical, Soft skill, English Training courses</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p><strong>At DEK Technologies you will find yourself in an exciting career with:</strong></p>

<p><strong>Compensation &amp; benefits:</strong></p>

<p>&bull; Attractive compensation and benefits you will love.</p>

<p>&bull; Annual health check-up and Extra 24/7 Health and Accident Insurance applied from the 1st day of joining.</p>

<p>&bull; Loyalty bonus for long-term employees such as Cash bonus, Gifts, Extra insurance, and Extra leave.</p>

<p><strong>Career advancement</strong></p>

<p>&bull; Onsite Program, Exchange Program and Office Transfer Program.</p>

<p>&bull; Diverse offline and online technical workshop, soft skills training sessions and health talks.</p>

<p>&bull; English courses taught by DEK&rsquo;s English teacher.</p>

<p>&bull; At DEK, there are many different possible career paths. You can also tailor one for yourself.</p>

<p><strong>Work environment</strong></p>

<p>&bull; 40 flexible working hours per week from Monday to Friday.</p>

<p>&bull; Annual Trip, Family Day, Year End party, BBQs party, Team Building, Release Celebration, Mid-Autumn party, Christmas party, Thank You party, etc.</p>

<p>&bull; Football Club, Badminton Club, Running Club, Music band, etc.</p>

<p>&bull; Annual health check-up</p>

<p>&bull; Annual company trip &amp; annual family day</p>

<p>&bull; Activities such as; sport &amp; music clubs, yoga &amp; piano classes</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p><strong>A University qualification in Software Engineering or a related degree with:</strong></p>

<p><strong>Must have:</strong></p>

<p>&bull; At least 3 years&rsquo; experience working C++</p>

<p>&bull; Experience working with Python programming language</p>

<p>&bull; Good knowledge about networking and Linux</p>

<p>&bull; Good knowledge about Microservices</p>

<p>&bull; Analytical mindset and ability to design complex systems</p>

<p><strong>Nice to have:</strong></p>

<p>&bull; Having knowledge about Linux kernel space</p>

<p>&bull; Have experience about shell scripting</p>

<p>&bull; Having knowledge about Video Streaming Technologies (e.g MPEG2-TS, RTSP, &hellip;)</p>
', CAST(N'2023-06-30T05:39:49.0000000' AS DateTime2), 1, 1, 1, 500, 2000, N'819a4259-5ac2-4c8c-7213-08db79423d40')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (13, N'Production Application Engineer (C/C++)', N'production-application-engineer-c-cpp-', NULL, 14, N'<p><em>Life&lsquo;s good with LG!</em></p>

<p><em>LG Electronics Development Vietnam (LGEDV) focuses on eco-friendly automotive components. LGEDV produces high-quality in-car infotainment systems that deliver both information and entertainment on-the-go for many of the world&lsquo;s biggest automobile brands. LGEDV conduct core R&amp;D activities, and various product reliability tests in support of our vehicle component business.</em></p>

<p><em>With the key missions of offering an environment that enables colleagues to demonstrate their capabilities, focus on their work and create value &amp; delivering the &ldquo;invaluable&rdquo; office operation services &amp; solutions that contributes to a company&rsquo;s business success.</em></p>

<p><strong>As member of Software Development team, you will be responsible for researching and developing applications for Car Infotainment, AVN (Audio Video Navigation) system, Cluster and Telematics as below:</strong><br />
<strong>&bull; Develop AUTOMOTIVE software, applications and technologies (production Applications);</strong><br />
<strong>&bull; Responsible for software delivery to head quarter;</strong><br />
<strong>&bull; Generate reports, communicate with local managements and head quarter.</strong></p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Competitive salary &amp; up-to 16-month income / year</p>

<p>&bull; Attractive allowances &amp; benefits</p>

<p>&bull; Flexible working time with many company holidays</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; 13th month salary + Incentive bonus (Total remuneration package / year:&nbsp;<strong>up to 16-month salary</strong>) + Annual salary review;</p>

<p><strong>&bull; HYBRID WORKING</strong>, flexible working time (Mon - Fri)</p>

<p>&bull; Support for&nbsp;<strong>lunch, transportation and other allowances&nbsp;</strong>(Coding Expert, Technical leader, phone...);</p>

<p><strong>&bull; PVI Premium&nbsp;</strong>health care &amp; accident insurance;</p>

<p><strong>&bull; Total 19 days off</strong>&nbsp;(12 days of annual leave &amp; additional 7 days of company holidays: Summer holiday, Mid-Autumn, Christmas, LG and VS DCV Foundation Days);</p>

<p>&bull; Support fee to get TOEIC &amp; technical certifications (ISTQB, Agile Scrum...);</p>

<p>&bull; On-site &amp; training opportunities abroad;</p>

<p>&bull; Company trip, sport clubs (zumba, football, pingpong, badminton,...);</p>

<p>&bull; Monthly budget for team activities, etc.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; BACHELOR degree: Information Technology, Computer Science, Computer Engineering, Electrical Engineering, Telecommunication Engineering, Informatics or equivalent;<br />
&bull; Strong motivation to develop career in EMBEDDED SOFTWARE field;<br />
&bull; Programming language skills such as C/C++;<br />
&bull; Experience with Serial interface communication (UART / USB / Ethernet);<br />
&bull; Knowledge about Software Development Life Cycle (V-Model);<br />
&bull; High responsibility and good team-work;<br />
&bull; Good in problem analysis and solving;<br />
&bull; Good communication in English &amp; Vietnamese;<br />
<br />
*** These skills would be considered as an advantage but not the must:<br />
&bull; Experience with APPLICATION DEVELOPMENT;<br />
&bull; Experience in system verification and validation (CANoe, CANalyzer);<br />
&bull; Experience in using Linux;<br />
&bull; Experience with mass production of product;<br />
&bull; Experience with CAN interface communication;<br />
&bull; Experience with Micom/BSP development;<br />
&bull; Ability to effectively present information to top management, public groups, and/or board of directors.</p>
', CAST(N'2023-06-30T05:43:11.5929937' AS DateTime2), 5, 4, 4, 900, 2000, N'0276ee84-282a-4d63-56cb-08db7971d697')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (14, N'Sr Java Developer', N'sr-java-developer', NULL, 5, N'<p><em><strong>+ 01-month sign-on bonus; *** Apply and Join in 19 Jun - 31 Jul 2023</strong></em></p>

<p><em><strong>Location:&nbsp;</strong></em></p>

<p>&bull; Ho Chi Minh - 02 Tan Vien, ward 2, Tan Binh, Ho Chi Minh&nbsp;</p>

<p>&bull; Da Nang - 2/9 Street, Hai Chau, Da Nang</p>

<p>&bull; Hybrid work available</p>

<p><em><strong>Your key responsibilities:</strong></em></p>

<p>&bull; Love Coding.</p>

<p>&bull; Follow Your Passion.</p>

<p>&bull; Enjoy Every Single Working Day with Your Nice Colleagues and Our Kind Clients.</p>

<p>&bull; Take Your Skill to the Next Level.</p>

<p>The responsibility includes: design, coding, troubleshooting and working with project team as well as customers on features/bug fixes.</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Inspired Leadership Team and Talented Colleagues</p>

<p>&bull; Attractive Salary and Benefits</p>

<p>&bull; Remote work available and flexible working time</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p><em><strong>Want to be the Best? Join KMS!</strong></em><br />
It&rsquo;s positive to claim we&rsquo;re one of the top IT companies in Vietnam:</p>

<p>&bull; From Vietnam, we have crafted brilliant products for millions of global users</p>

<p>&bull; We build awesome global products to conquer the world from Vietnam: QASymphony, Kobiton, Katalon, Grove HR, Visily and many more to come</p>

<p>&bull; We&rsquo;re committed to investing in our people and building a workplace you&rsquo;ll love coming to every day.</p>

<p><em><strong>Perks You&#39;ll Enjoy&nbsp;</strong></em></p>

<p>&bull; Working in one of the Best Places to Work in Vietnam</p>

<p>&bull; Building large-scale &amp; global software products</p>

<p>&bull; Working &amp; growing with Passionate &amp; Talented Team</p>

<p>&bull; Diverse careers opportunities with Software Outsourcing, Software Product Development, IT Solutions &amp; Consulting</p>

<p>&bull; Attractive Salary and Benefits</p>

<p>&bull; Two performance appraisals every year and performance bonus</p>

<p>&bull; Remote work available and flexible working time</p>

<p>&bull; Onsite opportunities: short-term and long-term assignments in North American (U.S, Canada), Europe, Asia.</p>

<p>&bull; Various training on hot-trend technologies, best practices and soft skills</p>

<p>&bull; Premium healthcare insurance for you and your loved ones</p>

<p>&bull; Company trip, big annual year-end party every year, team building, etc.</p>

<p>&bull; Fitness &amp; sport activities: football, tennis, table-tennis, badminton, yoga, swimming&hellip;</p>

<p>&bull; Joining community development activities: 1% Pledge, charity every quarter, blood donation, public seminars, career orientation talks,&hellip;</p>

<p>&bull; Free in-house entertainment facilities (foosball, ping pong, gym&hellip;), coffee, and snack (instant noodles, cookies, candies&hellip;)</p>

<p>And much more, join us and let yourself explore other fantastic things!</p>

<ul>
</ul>
', N'<h4><strong>Your skills and experience</strong></h4>

<p><em><strong>General requirements:</strong></em></p>

<p>&bull; At least an intermediate skill level of English</p>

<p>&bull; Likely having 3+ years of experience (flexible depending on how fast your learning and technical developing capabilities are)</p>

<p>&bull; Able to obtain deep knowledge of the project&rsquo;s technologies</p>

<p>&bull; Able to work independently with minimal guidance</p>

<p>&bull; Able to self-learn and quickly adapt to new technologies</p>

<p><em><strong>Technical requirements:</strong></em></p>

<p>&bull; Fluent with Java in order to develop enterprise web-based applications</p>

<p>&bull; Strong experience with OO designs and design patterns</p>

<p>&bull; Strong experience with web-based technologies: Spring (Spring Core, Spring MVC, Spring Security, Spring Data, Spring Boot) and ORM (JPA, Hibernate)</p>

<p>&bull; Good experience with unit testing: JUnit, mock</p>

<p>&bull; Experience with software development principles such as SOLID, DRY</p>

<p>&bull; Experience with writing efficient SQL queries</p>

<p>&bull; Experience with Web Services (REST, etc.).</p>

<p>&bull; Experience in cloud environment (Azure/AWS/GCP)</p>

<p><em><strong>Nice to have:</strong></em></p>

<p>&bull; Experience with HTML/ CSS/ SCSS/ JavaScript/ Bootstrap and one of following JavaScript frameworks: ReactJS, Angular, VueJS, KnockoutJS</p>
', CAST(N'2023-07-01T05:56:01.4601497' AS DateTime2), 11, 3, 5, 1000, 2300, N'cd6a3852-872c-42e6-56cc-08db7971d697')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (15, N'ZaloPay, Software Engineer (iOS)', N'zalopay-software-engineer-ios-', NULL, 3, N'<p>We are seeking a talented iOS Developer with strong Swift programming skills to join our team. You will primarily focus on developing features related to login/register, reset pin, KYC, merchant site integration, and ticket support for our e-wallet product.</p>

<p><strong>Responsibilities:</strong></p>

<p>&bull; Develop and maintain iOS applications using Swift and related technologies.</p>

<p>&bull; Implement login/register, reset pin, KYC, and merchant site integration features.</p>

<p>&bull; Support users in binding their e-wallets to merchant accounts and facilitate top-up and payment processes.</p>

<p>&bull; Assist account owners in submitting and resolving ticket requests for pin resets.</p>

<p>&bull; Collaborate with backend developers to ensure seamless integration between the iOS app and server-side functionality.</p>

<p>&bull; Follow best practices for code versioning using Git and contribute to a clean and well-documented codebase.</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Attractive salary &amp; benefits you&#39;ll love</p>

<p>&bull; Building large-scale products</p>

<p>&bull; Working in one of the best places to work in VN</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>We hope VNG is a place where you build your career. Whether you want to pursue to be a manager or focus on professional development, we acknowledge and appreciate your talents. Therefore, we open up to you more promotion opportunities in VNG, and designed program to help you succeed in every single career path.&nbsp;<br />
<br />
<strong>NO SUIT, NO TIE:&nbsp;</strong>At VNG, we do not have many rules because we respect you and want to make comfortable atmosphere to help employees perform their jobs well.</p>

<p><strong>Company &ldquo;pay&rdquo; for you:&nbsp;</strong>Lunch, parking, swimming, learning English or gym for free and you know you are really in care.</p>

<p><strong>NO BARRIERS:&nbsp;</strong>Office of VNG is an open space because we always try to remove all barriers to help members easily shares with each other.</p>

<p><strong>Being a big family:&nbsp;</strong>Like a gift for family day. A party for the kids. We know how much your family matters.</p>

<p><strong>NO RANK At VNG,</strong>&nbsp;members are encouraged to contribute ideas and debate with the others.</p>

<p><strong>Be explored:&nbsp;</strong>Ph.D., un-academic guy, bookish girl, fashion designers ... VNGers are different and this diversity makes life more colorful.</p>

<p><strong>NO &quot;OFFICE&quot;:&nbsp;</strong>Office is like your home. You can hang paintings, plant trees, even feed aquarium on the desk.</p>

<p><strong>Be showed your best:&nbsp;</strong>VNGers like to &quot;mortification&quot; with the group games such as: Fansipan climbing, waterfall rafting, go over heat mats; there activities not only are tightening friendship, but also practice their bravery.</p>

<p><strong>GAMING:&nbsp;</strong>Even if you do not make the game, stealing beans in the boss&rsquo;s garden or versusing with your colleagues in a sword competition play online is also an interesting way to relax.<br />
<br />
<strong>Changing the world:&nbsp;</strong>Creating an entertainment channel, building a social network and developing a game. On the Internet world, every single thing you did can change the lives of many people.</p>

<p><br />
<em><strong>Let&rsquo;s join VNG to share our mission: &#39;MAKE THE INTERNET CHANGE VIETNAMESE LIVES&#39;</strong></em></p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p><strong>Requirements:</strong></p>

<p>&bull; Strong experience as an iOS Developer with Swift.</p>

<p>&bull; Experience with RxSwift, Sqlite, Cocoa pod, Carthage, MVVM, VIPER</p>

<p>&bull; Knowledge of Git for version control.</p>

<p>&bull; Excellent problem-solving and collaboration skills.</p>

<p>&bull; Good communication skills and ability to work in a team environment.</p>

<p><strong>Preferred Qualifications:</strong></p>

<p>&bull; Experience working in the fintech domain.</p>

<p>&bull; Familiarity with React Native, Android development, or backend technologies.</p>

<p>&bull; Join our team and contribute to the development of our exciting e-wallet product. Apply your iOS development skills and help create a seamless user experience for our customers.</p>
', CAST(N'2023-07-01T06:00:10.3721819' AS DateTime2), 2, 1, 4, 2000, 3500, N'26d104bf-c718-4288-b831-08db787dab64')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (16, N'Senior AI Developer (Python, JavaScript)', N'senior-ai-developer-python-javascript-', NULL, 22, N'<p><strong>Key Responsibilities</strong></p>

<p>&bull; Study and transform data science prototypes</p>

<p>&bull; Design&nbsp;and develop&nbsp;machine learning systems</p>

<p>&bull; Research and Implement appropriate ML algorithms</p>

<p>&bull; Perform statistical analysis and fine-tuning using test results</p>

<p>&bull; Train and retrain the system</p>

<p>&bull; Extent existing ML libraries if necessary</p>

<p>&bull; Follow given procedures and instructions to produce well-designed, testable and clean code</p>

<p>&bull; Perform other duties as assigned</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Inspired Leadership Team and Talented Colleagues</p>

<p>&bull; Attractive Salary and Benefits</p>

<p>&bull; Remote work available and flexible working time</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p><em><strong>Perks You&#39;ll Enjoy&nbsp;</strong></em></p>

<p>&bull; Working in one of the Best Places to Work in Vietnam</p>

<p>&bull; Building large-scale &amp; global software products</p>

<p>&bull; Working &amp; growing with Passionate &amp; Talented Team</p>

<p>&bull; Diverse careers opportunities with Software Outsourcing, Software Product Development, IT Solutions &amp; Consulting</p>

<p>&bull; Attractive Salary and Benefits</p>

<p>&bull; Two performance appraisals every year and performance bonus</p>

<p>&bull; Onsite opportunities: short-term and long-term assignments in North American (U.S, Canada), Europe, Asia.</p>

<p>&bull; Flexible working time</p>

<p>&bull; Various training on hot-trend technologies, best practices and soft skills</p>

<p>&bull; Premium healthcare insurance for you and your loved ones</p>

<p>&bull; Company trip, big annual year-end party every year, team building, etc.</p>

<p>&bull; Fitness &amp; sport activities: football, tennis, table-tennis, badminton, yoga, swimming,&hellip;</p>

<p>&bull; Joining community development activities: 1% Pledge, charity every quarter, blood donation, public seminars, career orientation talks,&hellip;</p>

<p>&bull; Free in-house entertainment facilities (foosball, ping pong, gym&hellip;), coffee, and snack (instant noodles, cookies, candies&hellip;)</p>

<p>And much more, join us and let yourself explore other fantastic things!</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p><strong>Qualifications</strong></p>

<p>&bull; 3+ years of experience in developing machine learning/data science application</p>

<p>&bull; Strong experience in&nbsp;<em>computer vision</em></p>

<p>&bull; Strong programming skills in Python, JavaScript</p>

<p>&bull; Good foundation in math and algorithms</p>

<p>&bull; Have knowledge of Neural Networks</p>

<p>&bull; Experience in using ML frameworks such as&nbsp;<em>TensorFlow</em>/ Keras/&nbsp;<em>PyTorch</em></p>
', CAST(N'2023-07-01T17:46:25.8658956' AS DateTime2), 3, 1, 2, 1500, 2800, N'cd6a3852-872c-42e6-56cc-08db7971d697')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (17, N'Senior Fullstack Javascript Engineer (NodeJS, ReactJS)', N'senior-fullstack-javascript-engineer-nodejs-reactjs-', NULL, 20, N'<p>&nbsp;We are looking for Full-stack Javascript Engineer (Reactjs/Nodejs) who loves data and to transform it into valuable information.&nbsp;#LI-RK1</p>

<p>&bull; Test the software you write to ensure we deliver the highest quality product</p>

<p>&bull; Work on software and system optimizations, helping to identify and remove potential performance bottlenecks</p>

<p>&bull; Focus on innovating new and better ways to create solutions that add value and amaze the end user, with a penchant for simple elegant design in every aspect from data structures to code to UI and systems architecture</p>

<p>&bull; Work with Agile development methodologies</p>

<p>&bull; Use best software engineering practices to write, document, and maintain code</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Attractive salary package and valuable benefits</p>

<p>&bull; Get the opportunity to access global L&amp;D programs</p>

<p>&bull; International and innovative working environment</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p><strong>OUR BENEFIT</strong></p>

<p>&bull; Competitive salary - performance bonus and valuable benefits.</p>

<p>&bull; Challenging projects with onsite opportunities in Europe.</p>

<p>&bull; Supportive working conditions: Laptop, MS Surface Hub, pure pantry with coffee, soft drink, snacks, etc.</p>

<p>&bull; Premium company traveling program and other exciting activities.</p>

<p>&bull; Highly appreciate your idea and constantly supporting your skill development.</p>

<p>&bull; International and innovative working environment with Germany, Australia, Poland, Ukraine, etc.</p>

<p>&bull; Premium healthcare for employees.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; Good experience in JavaScript, NodeJS, HTML/CSS,&nbsp;React.JS</p>

<p>&bull; Willingness to work on UI with attention to details</p>

<p>&bull; Hands-on experience in NodeJs backend development</p>

<p>&bull; Good knowledge of MicroService development and continuous integration</p>

<p>&bull; Good understanding of SCRUM/Agile methodologies</p>

<p>&bull; Proficient in using HTML5, JavaScript, CSS3, and other Web front-end skills to restore the project page;</p>

<p>&bull; Experience&nbsp;in&nbsp;AWS is nice to have</p>

<p>&bull; Good knowledge of flexible layout, making mobile terminal responsive layout and solving screen adaptation problems</p>

<p>&bull; English competencies</p>
', CAST(N'2023-07-02T17:55:39.7844115' AS DateTime2), 5, 1, 3, 1500, 2700, N'944212e8-4830-4a30-4578-08db7969c64d')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (18, N'Backend Engineer (Java, open level)', N'backend-engineer-java-open-level-', NULL, 12, N'<p>&bull; Learn and apply the key principles of enterprise software development in Java in a variety of projects.</p>

<p>&bull; Implement business requirements according to the specification.</p>

<p>&bull; Work in API integration, API development</p>

<p>&bull; Develop unit test package, execute test &amp; document test results to ensure the quality of the program</p>

<p>&bull; Investigate all reported problems/errors and implement fixes for the Issues/problems so that the system can operate correctly and efficiently.</p>

<p>&bull; Prepare and maintain up to date system documentation</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Attractive salary &amp; benefits you&#39;ll love</p>

<p>&bull; Building large-scale products</p>

<p>&bull; Working in one of the best places to work in VN</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>We hope VNG is a place where you build your career. Whether you want to pursue to be a manager or focus on professional development, we acknowledge and appreciate your talents. Therefore, we open up to you more promotion opportunities in VNG, and designed program to help you succeed in every single career path.&nbsp;<br />
<br />
<strong>NO SUIT, NO TIE:&nbsp;</strong>At VNG, we do not have many rules because we respect you and want to make comfortable atmosphere to help employees perform their jobs well.</p>

<p><strong>Company &ldquo;pay&rdquo; for you:&nbsp;</strong>Lunch, parking, swimming, learning English or gym for free and you know you are really in care.</p>

<p><strong>NO BARRIERS:&nbsp;</strong>Office of VNG is an open space because we always try to remove all barriers to help members easily shares with each other.</p>

<p><strong>Being a big family:&nbsp;</strong>Like a gift for family day. A party for the kids. We know how much your family matters.</p>

<p><strong>NO RANK At VNG,</strong>&nbsp;members are encouraged to contribute ideas and debate with the others.</p>

<p><strong>Be explored:&nbsp;</strong>Ph.D., un-academic guy, bookish girl, fashion designers ... VNGers are different and this diversity makes life more colorful.</p>

<p><strong>NO &quot;OFFICE&quot;:&nbsp;</strong>Office is like your home. You can hang paintings, plant trees, even feed aquarium on the desk.</p>

<p><strong>Be showed your best:&nbsp;</strong>VNGers like to &quot;mortification&quot; with the group games such as: Fansipan climbing, waterfall rafting, go over heat mats; there activities not only are tightening friendship, but also practice their bravery.</p>

<p><strong>GAMING:&nbsp;</strong>Even if you do not make the game, stealing beans in the boss&rsquo;s garden or versusing with your colleagues in a sword competition play online is also an interesting way to relax.<br />
<br />
<strong>Changing the world:&nbsp;</strong>Creating an entertainment channel, building a social network and developing a game. On the Internet world, every single thing you did can change the lives of many people.</p>

<p><br />
<em><strong>Let&rsquo;s join VNG to share our mission: &#39;MAKE THE INTERNET CHANGE VIETNAMESE LIVES&#39;</strong></em></p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; At least 2 years experience as a software engineer in a complex, enterprise-level development environment;</p>

<p>&bull; Solid experience in Java 8+ and Java open-source frameworks, including developing using modern frameworks, e.g. Spring boot;</p>

<p>&bull; Experience in designing &amp; developing RESTful APIs and microservices-based systems;</p>

<p>&bull; Experience with relational and non-relational data stores</p>

<p>&bull; Familiar with distributed, event-driven systems, using messaging protocols and middleware such as Rabbit MQ, Apache Kafka...</p>

<p>&bull; Good Understanding of OOP, key design patterns...</p>

<p>&bull; Understanding with Docker, Kubernetes, networking</p>

<p><strong>﻿Nice to have:</strong></p>

<p>&bull; Experience in front-end programming (JavaScript, ReactJS...)</p>

<p>&bull; Experience in backend languages like Golang, and Python...is a big plus</p>

<p>&bull; Knowledge of e-payment, e-wallet, payment gateway, e-banking, and finance...</p>

<p>&bull; Experience in Agile (Scrum or Kaban)</p>

<p>&bull; Good English skills</p>
', CAST(N'2023-07-02T18:02:15.7929891' AS DateTime2), 10, 1, 1, 1800, 3000, N'26d104bf-c718-4288-b831-08db787dab64')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (19, N'Frontend Technical Lead', N'frontend-technical-lead', NULL, 7, N'<p>As Technical Leader working with a professional enterprise customer, you have a chance to interact with stakeholders on all levels of the client organisation and by those activities, you contribute into the activities to bridge the gap between business and technology, translate business challenges and goals into sound and solid technical solutions which bring value to and help support the goals of the client.</p>

<p>In this project you are expected to work closely with other teams and managers and understand the business motivation and provide proper support from technical perspective for the best decision making.&nbsp;</p>

<p>As Technical Leader, you are expected to become the leader who can provide technical support, facilitate technical troubles as well as coaching other team member to become more mature in daily activities. Technical Leader will also play an important role to support the team build up the proper way of working so that all the best technical practices can be applied to ensure effectiveness and efficiency of software development activities.</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Attractive salary package</p>

<p>&bull; Hybrid working mode</p>

<p>&bull; Signing bonus for IT related posts</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; Hybrid working mode.&nbsp;</p>

<p>&bull; Highly competitive remuneration package: attractive monthly salary and allowances, 13th month salary, additional performance bonus, high public holiday bonuses, and birthday gift, employee service award up to $1,000 for employees with 3+ years.</p>

<p>&bull; Attractive AON healthcare coverage including health and accident insurance in addition to the standard insurances regulated by the Labor Code. Luxury company summer vacation and team-building budget.</p>

<p>&bull; Opportunities to work onsite for international projects in Sweden, Australia, UK, USA, etc.</p>

<p>&bull; Organized training and full support in building your career.</p>

<p>&bull; English-speaking, international and professional work environment: working with expatriates from a number of countries, state of the art working space with a wonderful view over the city skyline, modern facilities include computer dual 24&rdquo; screens running latest versions of Windows 11 Enterprise, MS Office 365, Team, latest version of Visual Studio, and SQL Server, Dell OptiPlex Workstation with 32 GB Ram, 512GB NVMe SSD.</p>

<p>&bull; Western management style that is professional, dynamic, open minded, creative, supportive, friendly and encouraging feedback.</p>

<p>&bull; Company Management that regularly communicates Company&rsquo;s strategy, development plan and new opportunities to employees.</p>

<p>&bull; Employee and family are engaged and taken care by the Company via Trade Union activities.</p>

<p>&bull; Diversified social and charity activities often organized by NICEF - Niteco Charity Engagement Foundation to create opportunities for our young employees to raise funds and help people with difficulties in Vietnam.</p>

<p>&bull; Physical care environment where you are taken care, feeling relaxed and enjoying lots of leisure activities such as badminton, ping pong, football, table football, dancing, running, cycling, cinema, etc.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; Bachelor of IT, Computer Science, or relevant field</p>

<p>&bull; Responsible for architecting a powerful and feature-rich web application which resides on top of a micro frontend architecture.</p>

<p>&bull; Experience in splitting application to Micro-component architecture, using different techniques: Refactoring, Rewriting, Containers, Service extraction/ Composition/ Migration to archive high level of flexibility, testability, and velocity.</p>

<p>&bull;&nbsp;<strong>Experience server-side rendering using Next JS.</strong></p>

<p>&bull; Good knowledge of frontend technologies including but not limited to HTML, CSS (SASS, LESS, Critical), various JS frameworks/libraries.&nbsp;</p>

<p>&bull; Good understanding on how browser rendering works and provide various frontend rendering optimization strategy.</p>

<p>&bull; Working with both client and server-side experimentation/personalization and able to provide optimized solution for each problem respectively.</p>

<p>&bull; At least 4 years&rsquo; experience working in an international software project.&nbsp;</p>

<p>&bull; Strong understanding of OOD/OOP.</p>

<p>&bull; Good knowledge in building testable software, abstraction layers, and mock objects. Good experience in unit test frameworks.</p>

<p>&bull; Be structured, solution-oriented, own quality mindset, and have good problem-solving skills.</p>

<p>&bull; Thrive well in a creative and changing environment.</p>

<p>&bull; Have good communication skills, have experience with technical coaching and mentoring work.</p>

<p>&bull; High sense of responsibility and leadership-orientation.</p>

<p>&bull; Good English skills in both speaking and writing.&nbsp;</p>

<p>NICE TO HAVE</p>

<p>&bull; Experience with performance optimization, data caching is a plus.</p>

<p>&bull;&nbsp;<strong>Experience working with CDN like Akamai to deliver the best experience (optimization, caching, edge computing&hellip;)</strong></p>

<p>&bull; Good knowledge of end-to-end design language using token.</p>

<p>&bull; Experience with customer facing roles is a plus.&nbsp;</p>

<p>&bull; Experience with large-scale e-commerce projects is a plus.</p>

<p>&bull; Experience with Azure cloud native deployment is a plus.</p>
', CAST(N'2023-07-02T18:07:35.9026431' AS DateTime2), 2, 2, 5, 600, 1500, N'0163aa78-b118-49a5-6b9e-08db796fb4d9')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (20, N'Senior Java API Dev (Spring)', N'senior-java-api-dev-spring-', NULL, 5, N'<p>Our goal is simple: to be #1 digital technology team in Vietnam. To achieve this, we are seeking for Java API Developers to drive innovation and transformation by placing a heavy emphasis on the craft of software development and the adoption of engineering principles.</p>

<p>At the core, our business is banking but technology is critical to serve the needs of our millions of customers and deliver on our mission of financial inclusion and literacy for the emerging markets. To achieve this goal,&nbsp;TYME has established a Centre of Excellence in Vietnam to be a world class digital technology hub.</p>

<p><strong>About our Team</strong></p>

<p>Our team is responsible for creating a brand of new digital financial platforms and apps that are highly reliable and scalable using modern engineering practices. You will be joining a project which talented software engineers in our Digital Bank Build team who is responsible for designing, building and maintaining the new digital banking platform and the customer channels. As part of the team, you will be responsible for implementing software features, involve in technical designs and writing tests to ensure the high quality delivery of the product. The teams operate in Scrum and DevOps model.</p>

<p>We&#39;re looking for top engineers out there! During the interview process we will test your coding and design skills to assess your experience and depth of knowledge. Don&#39;t worry our interview process will be fun!</p>

<p><strong>Responsibilities</strong></p>

<p>&bull; As a backend engineer, you will be working within a specific problem where you will design, develop, and deploy backend services with a focus on scalability, high availability, and low latency.</p>

<p>&bull; Solving complex technical and business problems and learn new technology and frameworks.</p>

<p>&bull; Be part of a team that will take full responsibility for the features you own.</p>

<p>&bull; Design, develop, test, deploy, monitor and improve, you are responsible for the full life-cycle of your product &ndash; build it, own it.</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Excellent environment and team to help you grow.</p>

<p>&bull; Competitive salary and learning culture.</p>

<p>&bull; Premium health care for you and your family.</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>We pride ourselves on being cutting edge and stretching the limits of all our personnel - whether you are a mobile engineer, in quality assurance or a technical lead architect in our team. Our engineering teams form a cohesive, collaborative and motivated community that delivers innovative solutions to our businesses in Asia and Africa.</p>

<p><strong>You&rsquo;ll love working with us if you are:</strong></p>

<p>&bull; Passionate about technology</p>

<p>&bull; Independent but also a good team player</p>

<p>&bull; Comfortable with high degree of ambiguity</p>

<p>&bull; Focused on usability and speed</p>

<p>&bull; Keen on presenting your ideas to your peers and management</p>

<p>At TYME opportunities are here for the taking. If want to be part of our purpose and live and lead through our values, we can offer exciting development opportunities through expanded lateral roles, stretch assignments or people leadership.</p>

<p><strong>Some of our benefits:</strong></p>

<p>&bull;&nbsp;<strong>Meal and parking allowance</strong>&nbsp;covered by company.</p>

<p>&bull;&nbsp;<strong>Full benefits and salary rank during probation</strong>.</p>

<p>&bull;&nbsp;<strong>Insurances</strong>&nbsp;as Vietnamese labor law and&nbsp;<strong>premium health care</strong>&nbsp;for you and your family.</p>

<p>&bull;&nbsp;<strong>SMART goals and clear career opportunities</strong>&nbsp;(technical seminar, conference and career talk) - we focus on your development.</p>

<p>&bull;&nbsp;<strong>Values driven, international working environment and agile culture.</strong></p>

<p>&bull;&nbsp;<strong>Overseas travel opportunities</strong>&nbsp;for training and working related.</p>

<p>&bull;&nbsp;<strong>Internal Hackathons and company&#39;s events</strong>&nbsp;(team building, coffee run, blue card...)</p>

<p>&bull;&nbsp;<strong>Pro-Rate</strong>&nbsp;and&nbsp;<strong>performance bonus</strong>.</p>

<p>&bull;&nbsp;<strong>15-day annual + 3-day sick leave</strong>&nbsp;per year from company.</p>

<p>&bull; Work-life balance&nbsp;<strong>40-hr per week</strong>&nbsp;from&nbsp;<strong>Mon to Fri</strong>.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p><strong>Must have:</strong></p>

<p>&bull; A pragmatic mindset.</p>

<p>&bull; Outstanding problem-solving ability, eagerness to learn, and curiosity.</p>

<p>&bull; A few years of software development experience with one or more general-purpose programming languages.</p>

<p>&bull; Strong database and schema design for large-scale application.</p>

<p>&bull; Adaptable attitude and personality that is ready for continuous change.</p>

<p>&bull; Collaboration and culture fit in Agile experience will be an advantage.</p>

<p>&bull; Good English reading and writing skills</p>

<p><strong>Nice to have:</strong></p>

<p>&bull; Experience in developing distributed systems on top of micro-services architecture, event-driven architecture using Java, Spring and Spring boot, Kafka, Redis, etc. is a big plus</p>

<p>&bull; Experience in AWS, Ansible, Packer, Docker, Rancher, K8s is a big plus</p>

<p>&bull; Experienced in automated testing frameworks is a plus</p>

<p>&bull; Good English listening and speaking is a big plus</p>

<p>&bull; Experience working in the banking and the financial domain is a plus</p>
', CAST(N'2023-07-03T18:15:18.3363315' AS DateTime2), 5, 1, 1, 700, 1600, N'a8545ec6-809f-4723-924c-08db79360ded')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (21, N'Expert, Software Engineer (Java, Spring)', N'expert-software-engineer-java-spring-', NULL, 26, N'<p>The job holder is responsible for maintaining the server-side developments of web applications by leading teams to develop and maintaining functional and stable web applications to meet customer needs.</p>

<p>The job holder will collaborate closely with other developers to ensure backend system quality and consistency to support functionality of applications.</p>

<p>Key accountabilities</p>

<p><em><strong>A. Software Development</strong></em></p>

<p>&bull; Drive and deliver top quality Java, Java Spring backend code across a broad array of interactive web projects.</p>

<p>&bull; Own a digital platform&rsquo;s backend code and the architecture of the user experience, bringing into life functionalities proposed by designers from development to delivery.</p>

<p>&bull; Collaborate with Front End Developers to integrate user-facing elements with server-side logic and other applications APIs.</p>

<p>&bull; Ensure that all materials produced have a high degree of quality, accuracy, timeliness and complies with accessibility standards.</p>

<p>&bull; Maintain consistent solution architecture to backend solutions to easily integrate with future products.</p>

<p>&bull; Actively test and debug programs to ensure stability and accuracy.</p>

<p>&bull; Develop and maintain back end code that improves analytical and statistical modeling and forecasting methods to support business tribes in their decision making process.</p>

<p><em><strong>B. Software Documentation</strong></em></p>

<p>&bull; Guide tribe and squad members on translating business requirements into technical design documents.</p>

<p>&bull; Actively review and drive discussions with squad members on functional requirement documents for building and improving TCB&rsquo;s digital products.</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Top-tier banking environment in Vietnam</p>

<p>&bull; Challenging opportunities for the &ldquo;Greater&rdquo; You</p>

<p>&bull; Attractive career path and benefits</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p><strong>WHY BECOME&nbsp;IT/DATA EXPERTS AT TECHCOMBANK?</strong></p>

<p>&bull; Investing&nbsp;<strong>over 300 million USD</strong>&nbsp;to develop large-scale IT projects, Techcombank is one of the leading bank in Technology trends in Vietnam</p>

<p>&bull; You will grow with Techcombank by having the opportunity to learn from&nbsp;<strong>top experts</strong>&nbsp;from across the world</p>

<p>&bull; Techcombank provides a&nbsp;<strong>rewarding remuneration structure</strong>&nbsp;that commensurate with your achievement and contribution</p>

<p>&bull; Techcombank is the&nbsp;<strong>Top 2 Best place to work&nbsp;</strong>in the banking industry where you can experience various exciting activities throughout the year: Company anniversary, Team building, Active Saturday , Year End Party, etc.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p><strong>Your skills and experiences&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>

<p>&bull; Bachelors degree in Computer Science, Software Engineering or Information Technology</p>

<p>&bull; +8 years of relevant working experience in backend development</p>

<p>&bull; English proficiency requirements are pursuant to Techcombanks policy</p>

<p>&bull; Experience in backend web development using scripting languages/frameworks (Java, Java Spring)</p>

<p>&bull; Deep experience working with relational Oracle, MySQL, PostgresSQL&hellip;</p>

<p>&bull; Experience working in a source-controlled environment such as GIT or TFVC</p>

<p>&bull; Experience in full development life cycle from requirements analysis through coding and release</p>

<p>&bull; Deep experience developing, testing, documenting and releasing mission-critical software</p>

<p>&bull; Solid understanding of API design and implementation</p>

<p>&bull; Experience in Agile Software Development with a strong understanding of Agile principles, practices and Scrum methodologies.</p>

<p>&bull; Experience working in Agile teams to support digital transformation projects.</p>
', CAST(N'2023-07-03T18:20:40.8362799' AS DateTime2), 8, 2, 2, 2000, 2500, N'6f192bbb-e0c3-4f52-85d3-08db77fb01d9')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (22, N'Principal Java Engineer / Tech Lead (Spring, MySQL)', N'principal-java-engineer-tech-lead-spring-mysql-', NULL, 6, N'<p>We are currently looking for Java&nbsp;<strong>Technical Lead</strong>:</p>

<p><strong>Accountabilities Will Include:</strong></p>

<p>&bull; Lead project&rsquo;s execution under the technical expert background</p>

<p>&bull; Ability to lead a team to work co-operatively with others and stakeholders</p>

<p>&bull; Design, build, and maintain efficient, reusable, and reliable large-scale system</p>

<p>&bull; Ensure the best possible performance, quality, and responsiveness of the system</p>

<p>&bull; Develop the system and Perform code review as other engineers</p>

<p>&bull; Identify bottlenecks and bugs, and devise solutions to these problems</p>

<p>&bull; Maintain code quality, organization, and apply engineering practices.</p>

<p>&bull; Adhere to the acceptance criteria and the Definition of Done</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Product company with an unique end-point security</p>

<p>&bull; Attractive salary + 13th month salary + Bonus</p>

<p>&bull; Unlimited Vacation + Hybrid Working Model</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; Absolute is the world&rsquo;s only firmware-embedded endpoint visibility and control platform with 13,000+ global customers. 500 million endpoints. Factory-embedded by 28 top device manufacturers.</p>

<p>&bull; 13th month salary &amp; corporate bonus every 6 months</p>

<p>&bull; Premium Insurance for you and your family</p>

<p>&bull; Unlimited annual leave days</p>

<p>&bull; Flexible working time and Hybrid working model</p>

<p>&bull; Internal Recruitment Program to Vancouver</p>

<p>&bull; Interesting Team Building Activities</p>

<p>To learn more about what it&rsquo;s like to work at Absolute, you can check our Facebook page at or visit our YouTube channel.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p><strong>What You&rsquo;ll Need</strong></p>

<p>&bull; Proficient in Java/JEE and Spring framework, with a good knowledge of its ecosystems</p>

<p>&bull; Strong understanding of object-oriented programming</p>

<p>&bull; Familiar with various design and architectural patterns</p>

<p>&bull; Skill for writing reusable Java libraries</p>

<p>&bull; Knowledge of concurrency patterns in Java</p>

<p>&bull; Familiar with concepts such as MVC, RESTful, NoSQL, Microservices.</p>

<p>&bull; Understanding fundamental design principles behind a scalable application</p>

<p>&bull; Hands-on coding and leading the project</p>

<p>&bull; Ability to clearly communicate with both technical and non-technical team members in both Vietnamese and English</p>

<p><strong>Other Requirements:</strong></p>

<p>&bull; Experience with SDLC, Agile and Scrum</p>

<p>&bull; Experience with Event Driven Architecture, DDD, VCS &amp; Git workflows, CI/CD and DevOps</p>

<p>&bull; Familiarity with build tools such as Maven, and Gradle</p>

<p>&bull; Technical and design documentation skill</p>
', CAST(N'2023-07-04T02:57:29.1817049' AS DateTime2), 4, 1, 3, 1200, 2300, N'fe21bb95-332b-4887-5bf9-08db7974ad47')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (23, N'Embedded System Testers', N'embedded-system-testers', NULL, 16, N'<p>As a key Software Test Engineering team member, you will work with the modern Driver Monitoring System (DMS). It is also known as a driver attention monitor, a vehicle safety system to assess the driver&#39;s alertness and warn the driver if needed. The DMS is an embedded system that uses a Machine Learning algorithm to detect driver fatigue and distraction. The system is installed in thousands of vehicles and has detected millions of distraction and fatigue events around the world.</p>

<p>You will be responsible for verifying and validating the DMS at different levels. You will design and develop test cases for execution on multiple platforms. You will collaborate with a world-class team of Engineers as we work together to deliver best-in-class technology.<br />
<br />
Your responsibilities include but are not limited to the following:</p>

<p>&bull; Design specifications for Driver Monitoring System</p>

<p>&bull; Develop and execute the automation test script</p>

<p>&bull; Design and develop an automation test framework</p>

<p>&bull; Interface with key stakeholders on project test activities</p>

<p><em>At DEK Technologies Vietnam, you will live with Agile &amp; Lean principles where employees are empowered at all levels to collaborate cross-functionally, take pride in collective ownership, and improve yourself by continuously learning, practicing &amp; sharing with others.</em></p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; 100% salary during probation, 13th salary</p>

<p>&bull; Premium insurance (includes probation time)</p>

<p>&bull; Technical, Soft skill, English Training courses</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p><strong>At DEK Technologies you will find yourself in an exciting career with:</strong></p>

<p><strong>Compensation &amp; benefits:</strong></p>

<p>&bull; Attractive compensation and benefits you will love.</p>

<p>&bull; Annual health check-up and Extra 24/7 Health and Accident Insurance applied from the 1st day of joining.</p>

<p>&bull; Loyalty bonus for long-term employees such as Cash bonus, Gifts, Extra insurance, and Extra leave.</p>

<p><strong>Career advancement</strong></p>

<p>&bull; Onsite Program, Exchange Program and Office Transfer Program.</p>

<p>&bull; Diverse offline and online technical workshop, soft skills training sessions and health talks.</p>

<p>&bull; English courses taught by DEK&rsquo;s English teacher.</p>

<p>&bull; At DEK, there are many different possible career paths. You can also tailor one for yourself.</p>

<p><strong>Work environment</strong></p>

<p>&bull; 40 flexible working hours per week from Monday to Friday.</p>

<p>&bull; Annual Trip, Family Day, Year End party, BBQs party, Team Building, Release Celebration, Mid-Autumn party, Christmas party, Thank You party, etc.</p>

<p>&bull; Football Club, Badminton Club, Running Club, Music band, etc.</p>

<p>&bull; Annual health check-up</p>

<p>&bull; Annual company trip &amp; annual family day</p>

<p>&bull; Activities such as; sport &amp; music clubs, yoga &amp; piano classes</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p><strong>A University Qualification in Software Engineering or a related degree with experience.</strong></p>

<p>&bull; Experience with embedded system testing</p>

<p>&bull; Experienced with Linux working environment&nbsp;</p>

<p>&bull; Knowledge of testing methodologies, testing process, quality models, standards</p>

<p>&bull; Experience with automation tests in any testing level using programming languages such as C, C++, Python or NI TestStand</p>

<p>&bull; Good at English communication</p>
', CAST(N'2023-07-04T12:10:47.6268734' AS DateTime2), 1, 1, 2, 1200, 2700, N'819a4259-5ac2-4c8c-7213-08db79423d40')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (24, N'Manual Tester - Khối CNTT', N'manual-tester-khoi-cntt', NULL, 13, N'<p>&bull; Tiếp nhận c&aacute;c y&ecirc;u cầu kiểm thử c&aacute;c sản phẩm, dịch vụ CNTT</p>

<p>&bull; Thực hiện t&igrave;m hiểu, ph&acirc;n t&iacute;ch v&agrave; l&agrave;m r&otilde; y&ecirc;u cầu. X&acirc;y dựng chiến lược kiểm thử cho y&ecirc;u cầu sản phẩm, dịch vụ CNTT</p>

<p>&bull; X&acirc;y dựng kế hoạch kiểm thử, viết kịch bản, tạo b&aacute;o c&aacute;o kiểm thử, b&aacute;o c&aacute;o lỗi kiểm thử. X&acirc;y dựng t&agrave;i liệu cho c&aacute;c y&ecirc;u cầu sau khi đ&atilde; thực hiện</p>

<p>&bull; Điều phối c&ocirc;ng việc trong nh&oacute;m từ 4-10 nh&acirc;n sự</p>

<p>&bull; Thực hiện kiểm thử, đ&aacute;nh gi&aacute; chất lượng sản phẩm&nbsp;</p>

<p>&bull; Ph&acirc;n t&iacute;ch /đ&aacute;nh gi&aacute; nguy&ecirc;n nh&acirc;n lỗi sau golive</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Mức lương cạnh tranh, hấp dẫn</p>

<p>&bull; M&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, th&acirc;n thiện</p>

<p>&bull; Được l&agrave;m việc với c&aacute;c hệ thống hiện đại, ti&ecirc;n tiến</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; Mức lương cạnh tranh, hấp dẫn (Thưởng xếp loại thực hiện c&ocirc;ng việc 6 th&aacute;ng/lần, thưởng sinh nhật ng&acirc;n h&agrave;ng, thưởng c&aacute;c ng&agrave;y lễ tết trong năm&hellip;).</p>

<p>&bull; Chế độ ph&uacute;c lợi cạnh tranh: Du lịch h&agrave;ng năm, Kh&aacute;m sức khỏe định k&igrave; h&agrave;ng năm; G&oacute;i bảo hiểm sức khỏe; C&aacute;c hoạt động tri &acirc;n, chăm lo đời sống tinh thần CBNV v&agrave; Th&acirc;n nh&acirc;n...</p>

<p>&bull; M&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, th&acirc;n thiện, cởi mở.</p>

<p>&bull; Được l&agrave;m việc với c&aacute;c hệ thống hiện đại, ti&ecirc;n tiến nhất thị trường, &aacute;p dụng c&aacute;c c&ocirc;ng nghệ h&agrave;ng đầu về an ninh bảo mật để đảm bảo an to&agrave;n cho người sử dụng.</p>

<p>&bull; Cơ hội học hỏi nghiệp vụ ng&acirc;n h&agrave;ng.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; Tốt nghiệp hệ ch&iacute;nh quy c&aacute;c Trường Đại học trong nước hoặc nước ngo&agrave;i</p>

<p>&bull; Chuy&ecirc;n ng&agrave;nh đ&agrave;o tạo: C&ocirc;ng nghệ th&ocirc;ng tin, To&aacute;n tin, Điện tử Viễn th&ocirc;ng, Kế To&aacute;n, T&agrave;i ch&iacute;nh Ng&acirc;n h&agrave;ng...</p>

<p>&bull; C&oacute; tr&ecirc;n 3&nbsp;năm kinh nghiệm trong c&ocirc;ng t&aacute;c kiểm thử trong ng&acirc;n h&agrave;ng, Tổ chức T&agrave;i ch&iacute;nh, C&ocirc;ng ty về CNTT</p>

<p>&bull; C&oacute; kinh nghiệm l&agrave;m việc với Agile/Scrum</p>

<p>&bull; C&oacute; kiến thức tổng quan về ng&acirc;n h&agrave;ng v&agrave; am hiểu nghiệp vụ ng&acirc;n h&agrave;ng</p>

<p>&bull; C&oacute; hiểu biết s&acirc;u, rộng về hoạt động kiểm thử phần mềm</p>

<p>&bull; C&oacute; kinh nghiệm kiểm thử phần mềm với Android v&agrave; IOS</p>

<p>&bull; C&oacute; chứng chỉ&nbsp; đ&agrave;o tạo về kiểm thử l&agrave; 1 lợi thế</p>

<p>&bull; C&oacute; kinh nghiệm trong c&ocirc;ng t&aacute;c kiểm thử tự động l&agrave; 1 lợi thế</p>

<p>&bull; C&oacute; kinh nghiệm quản l&yacute; nh&oacute;m</p>

<p>&bull; Kỹ năng ph&acirc;n t&iacute;ch t&agrave;i liệu, y&ecirc;u cầu, b&aacute;o c&aacute;o, viết t&agrave;i liệu tốt</p>

<p>&bull; Kỹ năng tư duy/logic tốt, giao tiếp, thuyết tr&igrave;nh, thuyết phục</p>

<p>&bull; Tiếng Anh tốt, c&oacute; thể l&agrave;m việc trực tiếp với c&aacute;c đối t&aacute;c nước ngo&agrave;i l&agrave; một lợi thế</p>
', CAST(N'2023-07-05T12:15:08.8584547' AS DateTime2), 2, 2, 4, 800, 1800, N'f463e352-9ce4-489c-5851-08db794d4e58')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (25, N'IT - Automation Tester (Mobile)', N'it-automation-tester-mobile-', NULL, 8, N'<p>&bull; Ph&acirc;n t&iacute;ch v&agrave; thiết kế test case dựa tr&ecirc;n những y&ecirc;u cầu của Nghiệp vụ.</p>

<p>&bull; Thực hiện việc test UI tr&ecirc;n c&aacute;c nền tảng kh&aacute;c nhau như : Web Browser , Mobile Device.</p>

<p>&bull; Thực hiện việc test t&iacute;ch hợp , test API , test Database nhằm mục đ&iacute;ch đảm bảo chất lượng cho c&aacute;c dự &aacute;n.</p>

<p>&bull; C&oacute; thể thực hiện c&aacute;c y&ecirc;u cầu li&ecirc;n quan đến Automation Test để hỗ trợ việc regression test , t&iacute;ch hợp với CI/CD dự &aacute;n&nbsp;</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; 13 Monthly Base Salary</p>

<p>&bull; Training</p>

<p>&bull; Recorgnition</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; Trung b&igrave;nh 15 th&aacute;ng Lương cơ bản mỗi năm</p>

<p>&bull; Chăm s&oacute;c sức khỏe ACB.</p>

<p>&bull; Phụ cấp ăn uống.</p>

<p>&bull; Vay ưu đ&atilde;i theo quy định của ACB</p>

<p>&bull; Kh&aacute;m sức khỏe định kỳ h&agrave;ng năm &amp; Hoạt động team building.</p>

<p>&bull; M&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, minh bạch</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; C&oacute; &iacute;t nhất 2 năm kinh nghiệm test automation Mobile.</p>

<p>&bull; C&oacute; kinh nghiệm build CI/CD l&agrave; lợi thế.</p>

<p>&bull; C&oacute; kinh nghiệm x&acirc;y dựng framework l&agrave; lợi thế.</p>

<p>&bull; Ng&ocirc;n ngữ lập tr&igrave;nh: Groovy, JavaScript</p>

<p>&bull; Cơ sở dữ liệu: SQL server, Oracle</p>

<p>&bull; Kinh nghiệm test performance, test manual Mobile, web, API</p>

<p>&bull; Ngoại ngữ: tiếng Anh đọc hiểu t&agrave;i liệu chuy&ecirc;n m&ocirc;n v&agrave; giao tiếp với đối t&aacute;c nước ngo&agrave;i</p>
', CAST(N'2023-07-06T12:29:28.3091741' AS DateTime2), 6, 1, 1, 600, 1500, N'2c15a2e0-73db-435f-f4ca-08db796dfada')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (26, N'Flutter Software Engineer', N'flutter-software-engineer', NULL, 13, N'<p>LG CTO VSL is seeking talented individuals who is potential for&nbsp;<strong>Application framework development</strong>. You&#39;ll partner with LG&rsquo;s worldwide software labs to create groundbreaking technology. This is an incredible opportunity to make a meaningful impact on the future of home life.</p>

<p>As a member of application engineering team in LG CTO VSL, your roles &amp; responsibilities will be as follows:</p>

<p>&bull; Work with the local engineering team, product managers, and program managers at VSL and remote locations (Korea) to build and ship embedded system applications.</p>

<p>&bull; As a member of application team, design software module, implement, test &amp; release according to agile process.</p>

<p>&bull; Expected engineering output in the form of source code, engineering documentation, test results, release note.</p>

<p>&bull; Provide high quality and high performing embedded system applications</p>

<p>Senior level engineers are required to perform code reviews of fellow or junior team members.</p>

<p>Support leadership team (Product Owner, Scrum leader and cross functional leaders) for the successful outcome of engineering projects.</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Competitive salary &amp; up-to 16-month income / year</p>

<p>&bull; Attractive allowances &amp; benefits</p>

<p>&bull; Flexible working time with many company holidays</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; 13th month salary + Incentive bonus (Total remuneration package / year:&nbsp;<strong>up to 16-month salary</strong>) + Annual salary review;</p>

<p>&bull;&nbsp;<strong>HYBRID WORKING</strong>, flexible working time (Mon - Fri)</p>

<p>&bull; Support for&nbsp;<strong>lunch, transportation and other allowances&nbsp;</strong>(Coding Expert, Technical leader, phone...);</p>

<p>&bull;&nbsp;<strong>PVI Premium&nbsp;</strong>health care &amp; accident insurance;</p>

<p>&bull;&nbsp;<strong>Total 19 days off</strong>&nbsp;(12 days of annual leave &amp; additional 7 days of company holidays: Summer holiday, Mid-Autumn, Christmas, LG and VS DCV Foundation Days);</p>

<p>&bull; Support fee to get TOEIC &amp; technical certifications (ISTQB, Agile Scrum...);</p>

<p>&bull; On-site &amp; training opportunities abroad;</p>

<p>&bull; Company trip, sport clubs (zumba, football, pingpong, badminton,...);</p>

<p>&bull; Monthly budget for team activities, etc.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; Bachelor&#39;s (or higher) degree in computer science or the relating fields.</p>

<p>&bull; Have at least 2 years experience in Flutter engine OR Flutter (Dart language) app or widget development for mobile or embedded device.</p>

<p>&bull; Have experience using Github, Jenkins, Travis CI tool</p>

<p>&bull; Basic written English skill to use JIRA system.</p>

<p>&bull; Experience in Agile Scrum methodology.</p>
', CAST(N'2023-07-06T12:35:21.0444149' AS DateTime2), 6, 2, 3, 800, 2200, N'0276ee84-282a-4d63-56cb-08db7971d697')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (27, N'Tech Lead / Senior Backend Engineer (Java/Nodejs/Golang)', N'tech-lead-senior-backend-engineer-java-nodejs-golang-', NULL, 1, N'<p><strong>PURPOSE OF JOB</strong></p>

<p>The person is responsible for creating, coding, and improving all the BAEMIN services, which are BAEMIN applications, operations, external system integration to help create a functional, seamless experience for end-users.</p>

<h3><strong>JOB RESPONSIBILITY</strong></h3>

<p><strong>Deliver Backend Services:</strong></p>

<ul>
	<li>Develop and provide API for BAEMIN Services;</li>
	<li>Design and implement backend services;</li>
	<li>Collaborate with client developers and other team members to establish objectives and design more functional, cohesive codes to enhance the user experiences;</li>
	<li>Optimize servers for performance and stability, implement security structures, generating reusable code libraries and generate data storage solutions;</li>
	<li>Analyze and improve the efficiency, scalability, and stability of our system;</li>
	<li>Work closely with other junior engineers to support and supervise the service quality.</li>
</ul>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Experience Self-Leading Growth</p>

<p>&bull; Working With World-Class &amp; Modern System</p>

<p>&bull; Enjoy Everyday Happiness At Work</p>
', N'<h2>Why you&#39;ll love working here</h2>

<p>1/ Attractive salary &amp; benefits</p>

<p>- 12 annual leave + 4 full-paid sick leave;</p>

<p>- Year-end bonus, performance bonus, public holiday bonus, birthday bonus;</p>

<p>- Appraisal and salary review every year;</p>

<p>2/ Macbook provided</p>

<p>3/ Opportunity to be trained &amp; worked in a leading food tech company in Viet Nam;</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<h3><strong>Skills and Qualifications</strong></h3>

<p>&bull; From 4- 5 years of&nbsp;<strong>backend software development experience;</strong></p>

<p>&bull; Experience in implementing a&nbsp;<strong>Microservices Architecture;</strong></p>

<p>&bull; Experience in domain-oriented technology design and implementation;</p>

<p>&bull; Experience in cloud services such as&nbsp;<strong>AWS and GCP;</strong></p>

<p>&bull; Enjoy discussions about the stability and scalability of backend systems;</p>

<p>&bull; Have positive personality and active in everything;</p>

<p>&bull; Be able to motivate yourself and be thorough in self-management;</p>

<p>&bull; Ability to collaborate with other teams to define problems and find solutions;</p>

<h3><strong>Preferred Qualifications</strong></h3>

<p>&bull; Experience in technical lead in<strong>&nbsp;cross-functional organizations</strong>&nbsp;centered on domains and missions, such as Squad and Cell;</p>

<p>&bull; Experience in development with Java or Nodejs or Golang;</p>

<p>&bull; Excellent problem-solving and written/verbal communication skills;</p>

<p>&bull; Experience with unit testing, integration test automation, and deployment automation;</p>

<p>&bull; Experience in working in an English-speaking multinational team.</p>
', CAST(N'2023-07-06T12:39:14.9079887' AS DateTime2), 5, 1, 2, 1800, 2900, N'88ddb9d4-48b1-488d-924d-08db79360ded')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (28, N'Android Developer (Java, Kotlin)', N'android-developer-java-kotlin-', NULL, 10, N'<p>You can participate to many interested mobile projects for Samsung&#39;s leading technology products like:<br />
- TV project: mobile application for interactive with Samsung&rsquo;s Smart TV seri like Frame, Sero, QTV, The Wall&hellip;<br />
- AV Project: mobile application for Samsung&rsquo;s high end speakers like Sound Bar, Galaxy home&hellip;<br />
- Flip project: provide education solution for streaming and sharing documents from phone/tablet to Smart Signage<br />
- Signage project: mobile application for control and remote to Samsung display devices.<br />
- Beside that, you could contribute to some famous Samsung SDK products.</p>

<p><em><strong>JOB RESPONSIBILITIES</strong></em><strong>:</strong></p>

<p>&bull; Develop and maintain mobile application base on Android platform (Kotlin/Java)</p>

<p>&bull; Understanding the requirements needed to perform the software/application development work required by each project</p>

<p>&bull; Be responsible for building attractive, efficient, and responsive applications for tablet and smartphones.</p>

<p>&bull; Be involved in the complete project lifecycle from requirements to final delivery.</p>

<p>&bull; Researching, designing, implementing and managing software programs based on company&rsquo;s procedures.</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Attractive Salary &amp; Benefit</p>

<p>&bull; Yearly Performance Bonus</p>

<p>&bull; Premium Health Insurance</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; Yearly Performance Bonus 2 times/year (up to 3-month salary) + 13th Salary. (At least 15 months)</p>

<p>&bull; Intensive Training Program.</p>

<p>&bull; Flexible working week policy.</p>

<p>&bull; Free luncheon.</p>

<p>&bull; Udemy License is provided.</p>

<p>&bull; Premium Health Insurance.</p>

<p>&bull; 100% salary and mandatory social insurances in 2-month probation.</p>

<p>&bull; Daily shuttle bus from city center to company</p>

<p>&bull; Team Building Gifts quarterly.</p>

<p>&bull; Birthday Gifts.</p>

<p>&bull; Training Opportunities in Korea.</p>

<p>&bull; Take part in&nbsp;various&nbsp;significant activities&nbsp;such as SEHC Festival, SEHC Cup, Town Hall Meeting, Li&ecirc;n Qu&acirc;n Mobile Champion, SEHC Marathon, SEHC Hackathon, SEHC Home Town,....</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p><strong>Technical requirement:</strong></p>

<p>&bull; Have experience with source version control (Git, SVN,&hellip;)</p>

<p>&bull; At least 3-years experiences with native Android development (Android Studio, Kotlin, Java, Google API&hellip;)</p>

<p>&bull; Experience in writing OOP code and develop apps using MVC, MVP or MVVM.</p>

<p>&bull; Familiar with reactive framework like RxJava, RxAndroid</p>

<p>&bull; Experience working with remote data via REST APIs and JSON as well as integrating with third-party libraries and APIs</p>

<p>&bull; In-depth understanding of UI component &amp; customization, proficient in creating flexible UI for various device screen sizes.</p>

<p>&bull; Strong experience on caching, lazy loading, background threads, networking, push notifications.</p>

<p>&bull; Performance analysis and tuning experience including memory usage, CPU utilization, memory leak.</p>

<p>&bull; Familiar with Unit Tests, UI Automation Test framework is a plus.</p>

<p><strong>General requirement:</strong></p>

<p>&bull; University graduated with computer science, software, application programing related major.</p>

<p>&bull; Good background knowledge about Design pattern, Data structures and Algorithms.</p>

<p>&bull; Good for logical thinking and problem-solving.</p>

<p>&bull; Ability to self-learn and adapt to new technologies quickly.</p>

<p>&bull; Being able to use the English for working.</p>
', CAST(N'2023-07-07T12:43:54.5951991' AS DateTime2), 2, 3, 3, 1000, 1500, N'098dc935-43d3-4401-924e-08db79360ded')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (29, N'Mid Weight Fullstack / Backend Software Engineer', N'mid-weight-fullstack-backend-software-engineer', NULL, 4, N'<p>Employment Hero is an Australian tech unicorn - valued at over $1.25 billion. Our world-class software is the easiest way for small and medium-sized businesses to manage HR, payroll, employee engagement, and benefits. We&rsquo;ve grown 100% year-on-year since our inception in 2014, and now service over 200,000 businesses and 1 million + active users globally. We have exciting growth plans for 2023 and beyond, powered by our mission of making employment easier and more valuable for everyone.</p>

<p>We take a Remote First approach with our team. Employment Hero can hire across the world, so long as candidates have eligible working rights and are in a suitable timezone to their colleagues. If you&rsquo;ve got the skills for the role and the passion for our mission then we want to hear from you!</p>

<p><em>Employment Hero celebrates diverse perspectives and experiences, we invite people of all backgrounds and identities to apply for this position.</em></p>

<p><strong>About our Mid Weight Fullstack/Backend Software Engineer roles</strong></p>

<p>Being the heartbeat of our engineering team, we are seeking a number of Fullstack and Backend Developers role who will be developing product features and collaborating with colleagues in design, product and engineering while taking ownership of writing automated tests for your production codes. You will be honing essentials tech stacks such as Ruby on Rails and ReactJS with our cutting-edge technologies and dabble in a wide array of products and features.</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Remote First &amp; WFH Allowances</p>

<p>&bull; 20 Annual leave Days &amp; 1 Leisure Rules Day</p>

<p>&bull; Top Compensation &amp; Healthcare Package</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; Remotely working and flexible working time</p>

<p>&bull; 20 annual leave days</p>

<p>&bull; 1 Leisure Rules day</p>

<p>&bull; Top private healthcare package (Included your spouses and children)</p>

<p>&bull; USD 500/ annual/ person for books/ tech conferences/courses</p>

<p>&bull; USD 500/ annual/ person for English learning</p>

<p>&bull; A generous budget to spend on setting up your home office (if you need a desk, chair, screen? You name it!)</p>

<p>&bull; We set you up for success with the latest and greatest hardware, tools and tech</p>

<p>&bull; Parking fee funded by company</p>

<p>&bull; Lunch allowance for every working day</p>

<p>&bull; Australian Trip for who are eligible</p>

<p>&bull; Very attractive Referral Bonus</p>

<p>&bull; Fully compliance with Vietnam Labor Code</p>

<p>&bull; Social Security is based on full salary</p>

<p>&bull; Employee Share Option Program: be an owner of Employment Hero!</p>

<p><strong>Why join Employment Hero?</strong></p>

<p>Oh, and we don&rsquo;t want to toot our own horn (actually yes, we do), but others think we&rsquo;re pretty cool too &ndash; we&rsquo;ve received many awards for smashing some seriously ambitious goals including:</p>

<p>&bull; The Australian&#39;s Top 100 Innovators List 2021</p>

<p>&bull; LinkedIn Top 10 Startups 2020</p>

<p>&bull; Deloitte Technology Fast 50 2019, ranked #20 in Australia</p>

<p>&bull; GetApp Category Leader Q1 2019</p>

<p>&bull; Deloitte Technology Fast 50 2018, ranked #12 in Australia</p>

<p>&bull; HRD Gold Medalist - Human Capital Management Systems 2018</p>

<p>&bull; HRD Gold Medalist - Rewards and Recognition Service Provider 2018</p>

<p>&bull; HRD Rewards and Recognition Employer of Choice 2018</p>

<p>&bull; LinkedIn Top 25 Startups 2018</p>

<p>&bull; EY Entrepreneur of the Year National Finalist 2018</p>

<p>&bull; Dynamic Business Top 10 Entrepreneurs, our CEO Ben Thompson ranked #2</p>

<p>&bull; BRW Most Innovative Companies 2015</p>

<p>&bull; Anthill Smart 100 List 2015</p>

<p>&bull; Startup Daily Top 50 Emerging Leaders 2015</p>

<p>&bull; HRD Employer of Choice Award 2015</p>

<p>&bull; Aon Hewitt Best Employers 2013</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p><strong>Responsibilities</strong></p>

<p>As a growing team, we need innovative and passionate Fullstack and Backend&nbsp;<em>Software Engineers</em>&nbsp;to join the squad who will:</p>

<p>&bull; Develop new product lines with new critical features, using our techstack which includes React Native, ReactJS, Ruby on Rails, NodeJS within an AWS Cloud environment using EC2 and Kubernetes</p>

<p>&bull; Provide your input into our technical strategy with your squad, including participate in sprint planning</p>

<p>&bull; Develop code for the frontend, mobile and backends environments as an end-to-end fullstack developer,</p>

<p>&bull; Ensure both your colleagues and yourself are producing high quality code through testing and code reviews</p>

<p>&bull; Share your knowledge with your squad and mentor junior developers</p>

<p>&bull; Collaborate with highly respected Senior Fullstack &amp; Backend Developers in a high performing and supportive squad</p>

<p>&bull; Show your passion for working in highly complex and technically challenging development</p>

<p>&bull; Enhance legacy features for our award-winning HR tech platform</p>

<p><strong>Requirements</strong></p>

<p>&bull; To be a success in this role you&#39;ll have:</p>

<p>&bull; Frontend / Mobile Software Development experience with React Native and / or ReactJS or a similar Javascript/Typescript based framework</p>

<p>&bull;&nbsp;<em>It will be preferred</em>&nbsp;if you have experience in Fullstack Software Development, Server-side and API Development (GraphQL), particularly with Ruby on Rails OR NodeJS (<em>open to candidates who are willing to learn our technical stack)</em></p>

<p>&bull; High-level Object Oriented Programming (OOP) skills</p>

<p>&bull; Demonstrated experience implementing, maintaining and deploying full-stack web technologies</p>

<p>&bull; Experience in translating design wireframes into functioning UI components</p>

<p>&bull; Strong English communication skills (both verbal &amp; written)</p>

<p>&bull; Strong understanding of standard Software Engineering processes, Testing, and Agile methodology</p>

<p>&bull; A team player that always puts colleagues ahead of yourself and has a highly adaptable and versatile approach to work</p>

<p>&bull; You are passionate about learning and sharing your knowledge, and not afraid to challenge your peers, but also welcome being challenged</p>

<p>Nice to have skills/experiences (but not required to be considered):</p>

<p>&bull; Bachelor&#39;s degree in Computer Science of Software Engineering or an equivalent</p>

<p>&bull; Experience in developing highly modular mobile applications and mobile application performance tuning</p>

<p>&bull; Experience writing unit tests</p>

<p>&bull; Experience in functional programming</p>

<p>&bull; Experience with AWS tooling and environments, EC2, Kubernetes etc</p>
', CAST(N'2023-07-07T12:56:18.0560942' AS DateTime2), 2, 4, 1, 2000, 2600, N'17d8098e-c16c-448f-5850-08db794d4e58')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (30, N'Technical Leader (.NET) – Onsite Indonesia', N'technical-leader-dotnet-–-onsite-indonesia', NULL, 1, N'<p>&bull; Establishing project specifications and technical direction<br />
&bull; Overseeing software quality and system modifications<br />
&bull; Guiding team members with troubleshooting technical issues<br />
&bull; Analyzing existing operations to identify risks and redundancies.<br />
&bull; Conducting comprehensive assessments to develop solutions.<br />
&bull; Working on Software development by converting ideas, designs and requirements into concrete and stable applications<br />
&bull; Build scalable code and feature that can be reused easily on the different other project.<br />
&bull; Develops and communicates technical processes, standards, and best practices to the team</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Global Exposure</p>

<p>&bull; Fast Track Career</p>

<p>&bull; Diversified Jobs &amp; Technologies</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p><strong>&bull; Onsite Indonesia &ndash; Jakarta (from 2-3 months)</strong><br />
&bull; &ldquo;FPT care&rdquo; health insurance provided by AON and is exclusive for FPT employees.<br />
&bull; Annual Summer Vacation: follows company&rsquo;s policy and starts from May every year<br />
&bull; Salary review 2 times/year or on excellent performance<br />
&bull; International, dynamic, friendly working environment<br />
&bull; Annual leave, working conditions follow Vietnam labor laws.<br />
&bull; Other allowances: lunch allowance, working on-site allowance, etc.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p><strong>Required Technical Skills</strong><br />
&bull; Working with the integration team to architect and design<br />
&bull; Strong understanding of Micro-services<br />
&bull; Strong understanding of basic design patterns.<br />
&bull; Proactively stress on making perfect documentations, both technical and functional to explain the working and the design of the architecture.<br />
&bull; Demonstrated success working within an Agile development environment.<br />
&bull; Working with&nbsp;<strong>.NET, CQRS, Rabbit, Elastic search, Queue RPC, AngularJS</strong><br />
&bull; Aid and support the Business team and other developers to version and support modern systems.<br />
&bull; Have experience in building component/control.<br />
&bull; Have experience working with work workflows.<br />
&bull; Have experience in CICD.<br />
<strong>&bull; Number year exp: 5-10 years for Senior Software engineer</strong><br />
<strong>&bull; Proficiency in English is required.</strong></p>

<p><strong>Required Soft Skills</strong><br />
&bull; Energetic / Pro-active<br />
&bull; Comfortable working in an Agile environment<br />
&bull; Challenge oriented with an enthusiastic mindset to learn new technologies.<br />
&bull; Strong verbal and written communication skills<br />
&bull; Constant learner and team player</p>
', CAST(N'2023-07-08T13:13:43.6435276' AS DateTime2), 4, 3, 3, 2000, 3500, N'81e8a451-4305-4706-131b-08db7884c3ac')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (36, N'Senior Manager, Frontend Engineering', N'senior-manager-frontend-engineering', NULL, 7, N'<p>&bull; Be hands-on, build and lead cross-functional squads of engineers by example</p>

<p>&bull; Define and implement engineering standards and champion engineering excellence</p>

<p>&bull; Identify and capitalise on opportunities to accelerate development whilst increasing stability</p>

<p>&bull; Instil a strong engineering culture in your squads and create a collaborative environment for your team</p>

<p>&bull; Ensure your squads are obsessed with automation.</p>

<p>&bull; Champion agile development You Build it You Own it culture.</p>

<p>&bull; Own the low- and high-level architecture and solution design for your platforms, including practices, patterns and technical stack selection.</p>

<p>&bull; Grow, support and develop engineers.</p>

<p><strong>Work location:</strong></p>

<p>Ha Noi: 6 Quang Trung, Hoan Kiem, Ha Noi/&nbsp;C5 Building Tower, D&rsquo;Capitale Tower, 119 Tran Duy Hung, Cau Giay,Ha Noi</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Top-tier banking environment in Vietnam</p>

<p>&bull; Challenging opportunities for the &ldquo;Greater&rdquo; You</p>

<p>&bull; Attractive career path and benefits</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p><strong>WHY BECOME&nbsp;IT/DATA EXPERTS AT TECHCOMBANK?</strong></p>

<p>&bull; Investing&nbsp;<strong>over 300 million USD</strong>&nbsp;to develop large-scale IT projects, Techcombank is one of the leading bank in Technology trends in Vietnam</p>

<p>&bull; You will grow with Techcombank by having the opportunity to learn from&nbsp;<strong>top experts</strong>&nbsp;from across the world</p>

<p>&bull; Techcombank provides a&nbsp;<strong>rewarding remuneration structure</strong>&nbsp;that commensurate with your achievement and contribution</p>

<p>&bull; Techcombank is the&nbsp;<strong>Top 2 Best place to work&nbsp;</strong>in the banking industry where you can experience various exciting activities throughout the year: Company anniversary, Team building, Active Saturday , Year End Party, etc.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; Graduated with good grade or higher majoring in Information Technology, Mathematics, Electronics and Telecommunications at universities of science and technology</p>

<p>&bull; Demonstrable experience implementing enterprise grade web applications</p>

<p>&bull; 8 years&rsquo; experience in hands-on web development using JavaScript and/or Typescript</p>

<p>&bull; Deep understanding of Angular, RXJS and optimising for performance at scale</p>

<p>&bull; Demonstrable experience with test automation and exposure to modern frameworks including Jest, Nx, MonoRepo and PACT.</p>

<p>&bull; Familiarity with common CICD tool chains and deployment environments including Jenkins, Kubernetes, Nginx and ArgoCD</p>

<p>&bull; Have experience in managing a team, strong leadership skill and problem solving skill</p>
', CAST(N'2023-07-08T18:15:59.9529475' AS DateTime2), 6, 2, 5, 700, 1500, N'6f192bbb-e0c3-4f52-85d3-08db77fb01d9')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (38, N'Fullstack Developer (MySQL/Java/ReactJS)', N'fullstack-developer-mysql-java-reactjs-', NULL, 18, N'<p><strong>Junior Fullstack Developer:</strong></p>

<p>&bull; Lập tr&igrave;nh, ph&aacute;t triển c&aacute;c hệ thống, ứng dụng của Ng&acirc;n h&agrave;ng.</p>

<p>&bull; Ph&aacute;t triển hoặc phối hợp c&ugrave;ng c&aacute;c nh&agrave; cung cấp ph&aacute;t triển v&agrave; triển khai c&aacute;c giải ph&aacute;p CNTT.</p>

<p>&bull; Quản l&yacute;, ph&aacute;t triển dịch vụ t&iacute;ch hợp với c&aacute;c hệ thống core như: T24, WAY4, BPM, CRM, CIC ...</p>

<p>&bull; Nghi&ecirc;n cứu, thử nghiệm, triển khai &aacute;p dụng c&aacute;c xu hướng c&ocirc;ng nghệ mới v&agrave;o việc ph&aacute;t triển: GraphQL, Docker Container (K8s), CICD, EventSourcing, CQRS, NoSQL ...</p>

<p>&bull; Duy tr&igrave; hoạt động của c&aacute;c sản phẩm dịch vụ trong phạm vi quản l&yacute;.</p>

<p><strong>Senior Fullstack Developer:&nbsp;</strong>Bổ sung c&aacute;c nh&oacute;m c&ocirc;ng việc sau:</p>

<p>&bull; Tham gia ph&acirc;n t&iacute;ch nghiệp vụ, đề xuất giải ph&aacute;p, phương &aacute;n triển khai nhằm cải tiến, n&acirc;ng cao hiệu quả của c&aacute;c dự &aacute;n trong qu&aacute; tr&igrave;nh l&agrave;m việc.</p>

<p>&bull; L&ecirc;n timeline c&ocirc;ng việc, chia tasks cho c&aacute;c th&agrave;nh vi&ecirc;n trong nh&oacute;m, gi&aacute;m s&aacute;t v&agrave; hỗ trợ c&aacute;c th&agrave;nh vi&ecirc;n ho&agrave;n th&agrave;nh đ&uacute;ng cam kết.</p>

<p>&bull; Dẫn dắt nh&oacute;m 03-06 nh&acirc;n sự, gi&uacute;p th&agrave;nh vi&ecirc;n c&ugrave;ng ph&aacute;t triển v&agrave; ho&agrave;n th&agrave;nh nhiệm vụ được giao.</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Mức lương cạnh tranh, hấp dẫn</p>

<p>&bull; M&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, th&acirc;n thiện</p>

<p>&bull; Được l&agrave;m việc với c&aacute;c hệ thống hiện đại, ti&ecirc;n tiến</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; Mức lương cạnh tranh, hấp dẫn (Thưởng xếp loại thực hiện c&ocirc;ng việc 6 th&aacute;ng/lần, thưởng sinh nhật ng&acirc;n h&agrave;ng, thưởng c&aacute;c ng&agrave;y lễ tết trong năm&hellip;).</p>

<p>&bull; Chế độ ph&uacute;c lợi cạnh tranh: Du lịch h&agrave;ng năm, Kh&aacute;m sức khỏe định k&igrave; h&agrave;ng năm; G&oacute;i bảo hiểm sức khỏe; C&aacute;c hoạt động tri &acirc;n, chăm lo đời sống tinh thần CBNV v&agrave; Th&acirc;n nh&acirc;n...</p>

<p>&bull; M&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, th&acirc;n thiện, cởi mở.</p>

<p>&bull; Được l&agrave;m việc với c&aacute;c hệ thống hiện đại, ti&ecirc;n tiến nhất thị trường, &aacute;p dụng c&aacute;c c&ocirc;ng nghệ h&agrave;ng đầu về an ninh bảo mật để đảm bảo an to&agrave;n cho người sử dụng.</p>

<p>&bull; Cơ hội học hỏi nghiệp vụ ng&acirc;n h&agrave;ng.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p><strong>Y&ecirc;u cầu chung:</strong></p>

<p>&bull; Tốt nghiệp Đại học ch&iacute;nh quy c&aacute;c chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin, Khoa học m&aacute;y t&iacute;nh, Điện tử viễn th&ocirc;ng, C&ocirc;ng nghệ phần mềm, Hệ thống th&ocirc;ng tin ... v&agrave;/hoặc c&oacute; chứng chỉ lập tr&igrave;nh vi&ecirc;n tương đương (<em>Aptech Greenwich, ...</em>).</p>

<p>&bull; Th&agrave;nh thạo tiếng Anh (<em>TOEIC 450 trở l&ecirc;n hoặc tương đương</em>).</p>

<p>&bull; Hiểu biết về quy tr&igrave;nh ph&aacute;t triển phần mềm v&agrave; quen thuộc với tư duy l&agrave;m việc Agile.</p>

<p><strong>Đối với ứng vi&ecirc;n Junior:</strong></p>

<p>&bull; Tối thiểu 01 năm kinh nghiệm l&agrave;m việc tại c&aacute;c c&ocirc;ng ty, dự &aacute;n về lập tr&igrave;nh Fullstack.</p>

<p>&bull; Th&agrave;nh thạo &iacute;t nhất 01 trong c&aacute;c ng&ocirc;n ngữ BackEnd (<em>VD: Java, NodeJS</em>) v&agrave; FrontEnd frameworks (<em>VD:</em>&nbsp;<em>Angularjs, ReactJS</em>).</p>

<p>&bull; Th&agrave;nh thạo &iacute;t nhất 01 trong c&aacute;c loại database: Oracle, SQLserver, PostgreSQL, Mongodb ...</p>

<p>&bull; Hiểu biết về restful, GraqpQL.</p>

<p>&bull; C&oacute; kinh nghiệm trong mảng t&agrave;i ch&iacute;nh ng&acirc;n h&agrave;ng l&agrave; một lợi thế.</p>

<p>​<strong>Đối với ứng vi&ecirc;n Senior:&nbsp;</strong>Bổ sung c&aacute;c điều kiện:</p>

<p>&bull; Tối thiểu 03 năm kinh nghiệm l&agrave;m việc tại c&aacute;c c&ocirc;ng ty, dự &aacute;n về lập tr&igrave;nh BackEnd; trong đ&oacute;, tối thiểu 01 năm kinh nghiệm l&agrave;m việc với microservices.</p>

<p>&bull; Hiểu biết s&acirc;u về c&aacute;c kỹ thuật/c&ocirc;ng nghệ: MySQL, Redis, MongoDB, PostgreSQL, Kafka &hellip;</p>

<p>&bull; C&oacute; khả năng tuning performance của ứng dụng, hệ thống.</p>

<p>&bull; C&oacute; kinh nghiệm ph&aacute;t triển, sử dụng cloud, FrontEnd l&agrave; một lợi thế.</p>
', CAST(N'2023-07-08T20:11:08.6741356' AS DateTime2), 2, 2, 3, 1000, 3000, N'f463e352-9ce4-489c-5851-08db794d4e58')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (39, N'[HOT] PHP Developer (Laravel, MySQL)', N'[hot]-php-developer-laravel-mysql-', NULL, 15, N'<p>&ndash;&nbsp;Lập tr&igrave;nh Web tr&ecirc;n m&ocirc;i trường Linux sử dụng c&aacute;c nền tảng m&atilde; nguồn mở, tham gia trực tiếp với 1 trong c&aacute;c nh&oacute;m ph&aacute;t triển sau:<br />
&bull;&nbsp;Hệ thống vận h&agrave;nh của Giaohangtietkiem: Đăng đơn, Track &amp; Trace, Định tuyến, Trung chuyển,&hellip;;<br />
&bull;&nbsp;Hệ thống dịch vụ kh&aacute;ch h&agrave;ng: Quản l&yacute; th&ocirc;ng tin kh&aacute;ch h&agrave;ng, T&iacute;nh ph&iacute;, Đối so&aacute;t, API,&hellip;;<br />
&bull;&nbsp;Tối ưu hiệu năng v&agrave; bảo mật của hệ thống; Ph&aacute;t triển dịch vụ l&otilde;i: Email, SMS, VoIP, Web service, SSO&hellip;;<br />
&bull; Ph&aacute;t triển hệ thống ERP nội bộ của Giaohangtietkiem: Chấm c&ocirc;ng, KPI, T&iacute;nh lương, Quản l&yacute; hồ sơ nh&acirc;n vi&ecirc;n, Quản l&yacute; hợp đồng, Quản l&yacute; t&agrave;i sản&hellip;;<br />
&ndash; Ph&aacute;t triển web backend/frontend li&ecirc;n quan của Giaohangtietkiem;<br />
&ndash;&nbsp;Ph&aacute;t triển API phục vụ Mobile Apps v&agrave; t&iacute;ch hợp với c&aacute;c hệ thống;<br />
&ndash; Nhận y&ecirc;u cầu, thiết kế v&agrave; xử l&yacute; c&ocirc;ng việc được giao bởi Trưởng nh&oacute;m;<br />
&ndash; L&agrave;m việc v&agrave; hỗ trợ trực tiếp với c&aacute;c Team sản phẩm, Mobile Developer, CSKH, Khối Vận h&agrave;nh,&hellip;;</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; M&ocirc;i trường TRẺ, T&Agrave;I NĂNG, nhiều cơ hội ph&aacute;t triển</p>

<p>&bull; C&ocirc;ng ty Product: hệ thống lớn, kh&ocirc;ng ngừng tối ưu</p>

<p>&bull; Thu nhập cạnh tranh (500$ - 2000$), chế độ hấp dẫn</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p><strong>I/ V&Igrave; SAO BẠN N&Ecirc;N GIA NHẬP TRUNG T&Acirc;M C&Ocirc;NG NGHỆ GIAO H&Agrave;NG TIẾT KIỆM ?</strong></p>

<p>- Thu nhập cạnh tranh, lương NET từ Junior đến Senior: 500$ &ndash; 2000$</p>

<p>- Ch&iacute;nh s&aacute;ch review kết quả 2 lần/ năm;</p>

<p>- Bảo hiểm sức khỏe cao cấp Generali;</p>

<p>- M&ocirc;i trường xanh, đẹp, trẻ trung, h&ograve;a đồng với văn h&oacute;a &ldquo;kh&ocirc;ng khoảng c&aacute;ch&rdquo;.</p>

<p>- Sản phẩm chất lượng đến từ c&ocirc;ng ty top đầu Việt Nam trong lĩnh vực E - logistics, tiếp cận với h&agrave;ng trăm ngh&igrave;n users v&agrave; h&agrave;ng triệu lượt transactions/ng&agrave;y.</p>

<p>- Đội ngũ nh&acirc;n sự t&agrave;i năng, hội tụ nh&acirc;n sự đến từ c&aacute;c trường ĐH CNTT h&agrave;ng đầu VN, c&aacute;c chuy&ecirc;n gia nổi tiếng về nhiều lĩnh vực, cố vấn chuy&ecirc;n m&ocirc;n từ trường ĐH.</p>

<p>- C&aacute;c hoạt động gắn kết nội bộ được tổ chức thường xuy&ecirc;n, kick-off, team building h&agrave;ng năm.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&ndash; C&oacute; từ 1 năm kinh nghiệm l&agrave;m c&aacute;c dự &aacute;n PHP, sử dụng th&agrave;nh thạo một trong c&aacute;c framework PHP (Laravel, WordPress, CakePHP, Zend, CodeIgniter).<br />
&ndash; Hiểu biết s&acirc;u về ng&ocirc;n ngữ PHP hoặc JS, OOP.<br />
&ndash; Đ&atilde; từng l&agrave;m việc/hiểu biết về API RestFul.<br />
&ndash; C&oacute; kinh nghiệm l&agrave;m việc với một trong c&aacute;c hệ quản trị CSDL như MySQL, Maria DB, MongoDB.<br />
&ndash; Cẩn thận, ki&ecirc;n nhẫn, đam m&ecirc; lập tr&igrave;nh v&agrave; sẵn s&agrave;ng học hỏi c&aacute;c c&ocirc;ng nghệ mới.<br />
&ndash; Chịu được &aacute;p lực c&ocirc;ng việc.<br />
&ndash; C&oacute; kỹ năng ph&acirc;n t&iacute;ch v&agrave; giải quyết vấn đề.<br />
&ndash; C&oacute; khả năng l&agrave;m việc độc lập v&agrave; theo nh&oacute;m.</p>
', CAST(N'2023-07-09T02:36:35.4472352' AS DateTime2), 10, 2, 4, 800, 1700, N'ae093749-cfdf-4406-6852-08db7d8e1b41')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (40, N'Embedded Software Engineer (IoT Project)', N'embedded-software-engineer-iot-project-', NULL, 16, N'<p>&bull; Our vendor is the world leading company in IoT Wireless technology including Bluetooth, Zigbee, Z-wave, Proprietary wireless, Thread, Wi-Fi, Wi-Sun. The projects are dealing with hardware integration and software platform for IOT applications such as Home Automation &amp; Security, lighting, Industrial Automation, Smart Metering, Retail &amp; Commercial. The software platforms include RTOS, drivers, security and middleware while hardware platforms include IoT SOC, radio modules and development boards. With the future of a smarter world and stage-of-art radio frequency, mesh networking, high-end tool chains from the vendor, you have a chance to look for deeper software development to solve key problems in IoT nowadays.</p>

<p>&bull; You will participate in the design, development, testing and documentation for embedded software part of IoT applications, providing consultant technical support for end user. Responsible for software delivery, communicate with leader, project manager or customer.</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Global Exposure</p>

<p>&bull; Fast Track Career</p>

<p>&bull; Diversified Jobs &amp; Technologies</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; &ldquo;FPT care&rdquo; health insurance provided by AON and is exclusive for FPT employees.</p>

<p>&bull; Annual Summer Vacation: follows company&rsquo;s policy and starts from May every year</p>

<p>&bull; Salary review 2 times/year or on excellent performance</p>

<p>&bull; International, dynamic, friendly working environment</p>

<p>&bull; Annual leave, working conditions follow Vietnam labor laws.</p>

<p>&bull; Other allowances: lunch allowance, working on-site allowance, etc.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p><strong>Basic Qualification:</strong></p>

<p>&bull; Strong in Embedded C programming</p>

<p>&bull; From 1.5 years experience in embedded software development</p>

<p>&bull; Basic English verbal communication</p>

<p><strong>Preferred Qualification:</strong></p>

<p>&bull; Familiar with embedded protocols such as UART, SPI, I2C, I2S</p>

<p>&bull; Embedded operating systems (RTOS and Linux Embedded)</p>

<p>&bull; Experience working with IoT project is plus, included wireless stacks (Zigbee, Wi-Fi, Thread, Bluetooth and Proprietary)</p>
', CAST(N'2023-07-10T02:57:32.7969291' AS DateTime2), 1, 2, 2, 2300, 2800, N'81e8a451-4305-4706-131b-08db7884c3ac')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (45, N'Middle/Senior .NET Engineer (C#, SQL)', N'middle-senior-dotnet-engineer-csharp-sql-', NULL, 18, N'<p><em>HRS is reinventing the way businesses and governments work, stay and pay in today&rsquo;s dynamic global marketplace. HRS&rsquo; advanced platform technology is extending its reach beyond hospitality to meetings, office space management, payment efficiency and crisis recovery.</em><br />
<em>HRS is also recognized for its&nbsp;</em><em>, technology that helps corporate hotel programs achieve their NetZero targets, and its groundbreaking Crew &amp; Passengers Solution, which leverages automation to elevate experiences for air and rail operations.</em><br />
<em>Founded in 1972, HRS works with 35 percent of the global Fortune 500, as well as the world&rsquo;s leading hotel chains, regional hospitality groups and payment providers.</em></p>

<p><strong>POSITION</strong></p>

<p>A newly founded HRS Technology Unit covering a unique venture within the HRS Group. HRS is creating a new technology unit based on our existing successful platforms developed and operated from our Innovation Hub in Ho-Chi-Minh City, Vietnam. The new Technology Unit will be an exciting challenge for a passionate .Net developer, who will integrate and develop new technology for the new business venture.</p>

<p>&bull; Designing, analyzing and implementing the software product including front-end and back end</p>

<p>&bull; Reviewing the source code according to requirements and standard software quality</p>

<p>&bull; Writing the technical document if required</p>

<p>&bull; Carrying out training sessions and workshops to guide the developer team if applicable</p>

<p>&bull; Keep up to date with technology trends and development</p>

<p>&bull; Inspiring and supporting junior developer</p>

<p>&bull; Reporting to the team head</p>
', N'<h4>Top 3 reasons to join us</h4>

<p>&bull; Attractive salary package and valuable benefits</p>

<p>&bull; Get the opportunity to access global L&amp;D programs</p>

<p>&bull; International and innovative working environment</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; Highly appreciate your idea and constantly supporting your skill development.</p>

<p>&bull; International and innovative working environment with Germany, Australia, Poland, Ukraine, etc.</p>

<p>&bull; Challenging products with onsite opportunities in Europe.</p>

<p>&bull; Attractive salary - performance bonus and valuable benefits.</p>

<p>&bull; Premium healthcare for employees.</p>

<p>&bull; Supportive working conditions: Laptop, MS Surface Hub, pure pantry with coffee, soft drink, snacks, etc.</p>

<p>&bull; Premium company traveling program and other exciting activities.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; Passionate in software development</p>

<p>&bull; At least 3 years of experience in programming software with C# and databases (SQL database is preferable)</p>

<p>&bull; Solid knowledge and experience with OOP, SOLID principles and design patterns</p>

<p>&bull; Experience&nbsp;with standard software quality is an advantage</p>

<p>&bull; Experience with the Agile Scrum process is an advantage</p>

<p>&bull; Can communicate in English.</p>
', CAST(N'2023-07-10T03:18:37.1309116' AS DateTime2), 2, 1, 5, 1200, 2400, N'944212e8-4830-4a30-4578-08db7969c64d')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (46, N'Intermediate Backend Developer (Remote) - Ruby on Rails', N'intermediate-backend-developer-remote-ruby-on-rails', NULL, 12, N'<p>Employment Hero is an Australian tech unicorn - valued at over $1.25 billion. Our world-class software is the easiest way for small and medium-sized businesses to manage HR, payroll, employee engagement, and benefits. We&rsquo;ve grown 100% year-on-year since our inception in 2014, and now service over 200,000 businesses and 1 million + active users globally. We have exciting growth plans for 2023 and beyond, powered by our mission of making employment easier and more valuable for everyone.</p>

<p>We take a Remote First approach with our team. Employment Hero can hire across the world, so long as candidates have eligible working rights and are in a suitable timezone to their colleagues. If you&rsquo;ve got the skills for the role and the passion for our mission then we want to hear from you!</p>

<p><em>Employment Hero celebrates diverse perspectives and experiences, we invite people of all backgrounds and identities to apply for this position.</em></p>

<p><strong>About our Intermediate Backend Engineer roles</strong></p>

<p>Being the heartbeat of our engineering team, we are seeking a number of Fullstack and Backend Developers role who will be developing product features and collaborating with colleagues in design, product and engineering while taking ownership of writing automated tests for your production codes. You will be honing essentials tech stacks such as Ruby on Rails and ReactJS with our cutting-edge technologies and dabble in a wide array of products and features.</p>

<p><strong>Responsibilities:</strong></p>

<p>As a growing team, we need innovative and passionate&nbsp;<em>Intermediate Backend Developers</em>&nbsp;who will:</p>

<p>&bull; Develop new product lines with new critical features, using our techstack which includes Ruby on Rails, NodeJS within an AWS Cloud environment using EC2 and Kubernetes</p>

<p>&bull; Provide your input into our technical strategy with your squad, including participate in sprint planning</p>

<p>&bull; Develop code for backend environments as an end-to-end backend developer,</p>

<p>&bull; Ensure both your colleagues and yourself are producing high quality code through testing and code reviews</p>

<p>&bull; Share your knowledge with your squad and mentor junior developers</p>

<p>&bull; Collaborate with highly respected Senior Fullstack/Backend Developers, in a high performing and supportive squad</p>

<p>&bull; Show your passion for working in highly complex and technically challenging development</p>

<p>&bull; Enhance legacy features for our award-winning HR tech platform</p>

<p>It would be great if you have (nice to have)</p>

<p>&bull; Experienced or willing to learn the Ruby programming language (we are open for candidates with any working experience of coding language who are willing to learn our technical stacks)</p>

<p>&bull; Experience with microservices architecture, Kubernetes, and Amazon AWS.</p>

<p>&bull; History of collaboration with teammates, mentorship, or technical leadership.</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Remote First &amp; WFH Allowances</p>

<p>&bull; 20 Annual leave Days &amp; 1 Leisure Rules Day</p>

<p>&bull; Top Compensation &amp; Healthcare Package</p>
', N'<h4><strong>Why you love working here</strong><strong>?</strong></h4>

<p>&bull; Remotely working and flexible working time</p>

<p>&bull; 20 annual leave days</p>

<p>&bull; 1 Leisure Rules day</p>

<p>&bull; Top private healthcare package (Included your spouses and children)</p>

<p>&bull; USD 500/ annual/ person for books/ tech conferences/courses</p>

<p>&bull; USD 500/ annual/ person for English learning</p>

<p>&bull; A generous budget to spend on setting up your home office (if you need a desk, chair, screen? You name it!)</p>

<p>&bull; We set you up for success with the latest and greatest hardware, tools and tech</p>

<p>&bull; Parking fee funded by company</p>

<p>&bull; Lunch allowance for every working day</p>

<p>&bull; Australian Trip for who are eligible</p>

<p>&bull; Very attractive Referral Bonus</p>

<p>&bull; Fully compliance with Vietnam Labor Code</p>

<p>&bull; Social Security is based on full salary</p>

<p>&bull; Employee Share Option Program: be an owner of Employment Hero!</p>

<p><strong>Why join Employment Hero?</strong></p>

<p>Oh, and we don&rsquo;t want to toot our own horn (actually yes, we do), but others think we&rsquo;re pretty cool too &ndash; we&rsquo;ve received many awards for smashing some seriously ambitious goals including:</p>

<p>&bull; The Australian&#39;s Top 100 Innovators List 2021</p>

<p>&bull; LinkedIn Top 10 Startups 2020</p>

<p>&bull; Deloitte Technology Fast 50 2019, ranked #20 in Australia</p>

<p>&bull; GetApp Category Leader Q1 2019</p>

<p>&bull; Deloitte Technology Fast 50 2018, ranked #12 in Australia</p>

<p>&bull; HRD Gold Medalist - Human Capital Management Systems 2018</p>

<p>&bull; HRD Gold Medalist - Rewards and Recognition Service Provider 2018</p>

<p>&bull; HRD Rewards and Recognition Employer of Choice 2018</p>

<p>&bull; LinkedIn Top 25 Startups 2018</p>

<p>&bull; EY Entrepreneur of the Year National Finalist 2018</p>

<p>&bull; Dynamic Business Top 10 Entrepreneurs, our CEO Ben Thompson ranked #2</p>

<p>&bull; BRW Most Innovative Companies 2015</p>

<p>&bull; Anthill Smart 100 List 2015</p>

<p>&bull; Startup Daily Top 50 Emerging Leaders 2015</p>

<p>&bull; HRD Employer of Choice Award 2015</p>

<p>&bull; Aon Hewitt Best Employers 2013</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p><strong>Requirements:</strong></p>

<p>&bull; Your architecture must be well-designed and thoughtful. Our system is complicated, but modern, and require a high level of architecture design to ensure hundreds of engineers can work together with confidence, and hundred of features are delivered at the highest quality.</p>

<p>&bull; Your code must be elegant, clean, and fast.</p>

<p>&bull; Your deployment must pass a series of automatic tests and metrical checks.</p>

<p>&bull; Our observability system and bot army help you responsible for any bugs, data integrity, and performance issues after.</p>

<p>Achieving all of them is hard, but don&#39;t worry, we create an excellent environment for you to learn and grow. Moreover, as a part of the engineering team, you may join in building the technical foundations and leadership to help others grow.</p>
', CAST(N'2023-07-10T03:25:15.0387554' AS DateTime2), 1, 1, 1, 1500, 2200, N'17d8098e-c16c-448f-5850-08db794d4e58')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (47, N'Fullstack Developer (MySQL/Java/ReactJS) - All Level', N'fullstack-developer-mysql-java-reactjs-all-level', NULL, 4, N'<p><strong>Junior Fullstack Developer:</strong></p>

<p>&bull; Lập tr&igrave;nh, ph&aacute;t triển c&aacute;c hệ thống, ứng dụng của Ng&acirc;n h&agrave;ng.</p>

<p>&bull; Ph&aacute;t triển hoặc phối hợp c&ugrave;ng c&aacute;c nh&agrave; cung cấp ph&aacute;t triển v&agrave; triển khai c&aacute;c giải ph&aacute;p CNTT.</p>

<p>&bull; Quản l&yacute;, ph&aacute;t triển dịch vụ t&iacute;ch hợp với c&aacute;c hệ thống core như: T24, WAY4, BPM, CRM, CIC ...</p>

<p>&bull; Nghi&ecirc;n cứu, thử nghiệm, triển khai &aacute;p dụng c&aacute;c xu hướng c&ocirc;ng nghệ mới v&agrave;o việc ph&aacute;t triển: GraphQL, Docker Container (K8s), CICD, EventSourcing, CQRS, NoSQL ...</p>

<p>&bull; Duy tr&igrave; hoạt động của c&aacute;c sản phẩm dịch vụ trong phạm vi quản l&yacute;.</p>

<p><strong>Senior Fullstack Developer:&nbsp;</strong>Bổ sung c&aacute;c nh&oacute;m c&ocirc;ng việc sau:</p>

<p>&bull; Tham gia ph&acirc;n t&iacute;ch nghiệp vụ, đề xuất giải ph&aacute;p, phương &aacute;n triển khai nhằm cải tiến, n&acirc;ng cao hiệu quả của c&aacute;c dự &aacute;n trong qu&aacute; tr&igrave;nh l&agrave;m việc.</p>

<p>&bull; L&ecirc;n timeline c&ocirc;ng việc, chia tasks cho c&aacute;c th&agrave;nh vi&ecirc;n trong nh&oacute;m, gi&aacute;m s&aacute;t v&agrave; hỗ trợ c&aacute;c th&agrave;nh vi&ecirc;n ho&agrave;n th&agrave;nh đ&uacute;ng cam kết.</p>

<p>&bull; Dẫn dắt nh&oacute;m 03-06 nh&acirc;n sự, gi&uacute;p th&agrave;nh vi&ecirc;n c&ugrave;ng ph&aacute;t triển v&agrave; ho&agrave;n th&agrave;nh nhiệm vụ được giao.</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Mức lương cạnh tranh, hấp dẫn</p>

<p>&bull; M&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, th&acirc;n thiện</p>

<p>&bull; Được l&agrave;m việc với c&aacute;c hệ thống hiện đại, ti&ecirc;n tiến</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; Mức lương cạnh tranh, hấp dẫn (Thưởng xếp loại thực hiện c&ocirc;ng việc 6 th&aacute;ng/lần, thưởng sinh nhật ng&acirc;n h&agrave;ng, thưởng c&aacute;c ng&agrave;y lễ tết trong năm&hellip;).</p>

<p>&bull; Chế độ ph&uacute;c lợi cạnh tranh: Du lịch h&agrave;ng năm, Kh&aacute;m sức khỏe định k&igrave; h&agrave;ng năm; G&oacute;i bảo hiểm sức khỏe; C&aacute;c hoạt động tri &acirc;n, chăm lo đời sống tinh thần CBNV v&agrave; Th&acirc;n nh&acirc;n...</p>

<p>&bull; M&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, th&acirc;n thiện, cởi mở.</p>

<p>&bull; Được l&agrave;m việc với c&aacute;c hệ thống hiện đại, ti&ecirc;n tiến nhất thị trường, &aacute;p dụng c&aacute;c c&ocirc;ng nghệ h&agrave;ng đầu về an ninh bảo mật để đảm bảo an to&agrave;n cho người sử dụng.</p>

<p>&bull; Cơ hội học hỏi nghiệp vụ ng&acirc;n h&agrave;ng.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p><strong>Y&ecirc;u cầu chung:</strong></p>

<p>&bull; Tốt nghiệp Đại học ch&iacute;nh quy c&aacute;c chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin, Khoa học m&aacute;y t&iacute;nh, Điện tử viễn th&ocirc;ng, C&ocirc;ng nghệ phần mềm, Hệ thống th&ocirc;ng tin ... v&agrave;/hoặc c&oacute; chứng chỉ lập tr&igrave;nh vi&ecirc;n tương đương (<em>Aptech Greenwich, ...</em>).</p>

<p>&bull; Th&agrave;nh thạo tiếng Anh (<em>TOEIC 450 trở l&ecirc;n hoặc tương đương</em>).</p>

<p>&bull; Hiểu biết về quy tr&igrave;nh ph&aacute;t triển phần mềm v&agrave; quen thuộc với tư duy l&agrave;m việc Agile.</p>

<p><strong>Đối với ứng vi&ecirc;n Junior:</strong></p>

<p>&bull; Tối thiểu 01 năm kinh nghiệm l&agrave;m việc tại c&aacute;c c&ocirc;ng ty, dự &aacute;n về lập tr&igrave;nh Fullstack.</p>

<p>&bull; Th&agrave;nh thạo &iacute;t nhất 01 trong c&aacute;c ng&ocirc;n ngữ BackEnd (<em>VD: Java, NodeJS</em>) v&agrave; FrontEnd frameworks (<em>VD:</em>&nbsp;<em>Angularjs, ReactJS</em>).</p>

<p>&bull; Th&agrave;nh thạo &iacute;t nhất 01 trong c&aacute;c loại database: Oracle, SQLserver, PostgreSQL, Mongodb ...</p>

<p>&bull; Hiểu biết về restful, GraqpQL.</p>

<p>&bull; C&oacute; kinh nghiệm trong mảng t&agrave;i ch&iacute;nh ng&acirc;n h&agrave;ng l&agrave; một lợi thế.</p>

<p>​<strong>Đối với ứng vi&ecirc;n Senior:&nbsp;</strong>Bổ sung c&aacute;c điều kiện:</p>

<p>&bull; Tối thiểu 03 năm kinh nghiệm l&agrave;m việc tại c&aacute;c c&ocirc;ng ty, dự &aacute;n về lập tr&igrave;nh BackEnd; trong đ&oacute;, tối thiểu 01 năm kinh nghiệm l&agrave;m việc với microservices.</p>

<p>&bull; Hiểu biết s&acirc;u về c&aacute;c kỹ thuật/c&ocirc;ng nghệ: MySQL, Redis, MongoDB, PostgreSQL, Kafka &hellip;</p>

<p>&bull; C&oacute; khả năng tuning performance của ứng dụng, hệ thống.</p>

<p>&bull; C&oacute; kinh nghiệm ph&aacute;t triển, sử dụng cloud, FrontEnd l&agrave; một lợi thế.</p>
', CAST(N'2023-07-11T03:54:46.3721634' AS DateTime2), 2, 2, 4, 1800, 3300, N'f463e352-9ce4-489c-5851-08db794d4e58')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (48, N'Senior Frontend Engineer (ReactJS/JavaScript)', N'senior-frontend-engineer-reactjs-javascript-', NULL, 7, N'<p><strong>PURPOSE OF JOB:&nbsp;</strong></p>

<p>Responsible for the translation of product design wireframes to actual code, including developing and maintaining all the BAEMIN&rsquo;s external web services, such as brand websites, internal operating web services, and API server if needed.</p>

<p><strong>Deliver web frontend services:</strong></p>

<p>&bull; Build and develop web features on given requirements, collaborate effectively with product designers and backend engineers for external web services, operators who use internal operating services, and backend engineers which provide API;</p>

<p>&bull; Analyze, propose and implement solutions to complex and flexible business features;</p>

<p>&bull; Maintain and improve high-quality in-house JavaScript libraries and toolsets following product design guidelines;</p>

<p>&bull; Work closely with other junior engineers, involve them in constructive and concise code review with peers, especially junior ones;</p>

<p>&bull; Other tasks assigned by Line Manager;</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Experience Self-Leading Growth</p>

<p>&bull;&nbsp;Working With World-Class &amp; Modern System</p>

<p>&bull; Enjoy Everyday Happiness At Work</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>1/ Attractive salary &amp; benefits</p>

<p>&bull; 12 annual leave + 4 full-paid sick leave;</p>

<p>&bull; Year-end bonus, performance bonus, public holiday bonus, birthday bonus;</p>

<p>&bull; Appraisal and salary review every year;</p>

<p>2/ Macbook provided</p>

<p>3/ Opportunity to be trained &amp; worked in a leading food tech company in Viet Nam</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; A degree of Computer Science, Software Engineer/ Information Technology or experiences in related fields.</p>

<p>&bull;&nbsp;<strong>From 3 to 5 years of experience of&nbsp;&ldquo;client-side&rdquo; programming.</strong></p>

<p>&bull;&nbsp;<strong>From 2 to 5 years of coding experience in component-based UI&nbsp;framework&nbsp;(preferred ReactJs, Typescript).</strong></p>

<p>&bull; Familiar with agile software development and engineering culture.</p>

<p>&bull; Knowledge and experience in Cloud base infrastructure. (e.g. AWS, Google Cloud).</p>

<p>&bull; Knowledge about developing simple API server.</p>

<p>&bull; Effective communication and teamwork skills, particularly ability to work in squad to ensure delivering project OTIF.</p>

<p>&bull; High learning agility and real passion for coding and programming, innovation, and solving challenging problems.</p>

<p>&bull; High adaptability and flexibility to the rapid changes of the business.</p>

<p>&bull; High responsibility and diligence.</p>

<p>&bull; Detail-oriented and efficient time manager who thrives in a dynamic and fast-paced working environment.</p>
', CAST(N'2023-07-12T03:21:02.9550766' AS DateTime2), 4, 3, 5, 700, 1700, N'88ddb9d4-48b1-488d-924d-08db79360ded')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (49, N'ZaloPay, Senior Data Engineer', N'zalopay-senior-data-engineer', NULL, 6, N'<p>As a Big Data Platform in ZaloPay, we are developing a high-quality data warehouse that can address business problems, provide data insight to each business aspect, transform product to Data-driven decision making manner. We are looking for an Engineer who will join our team to be responsible for building out the data pipelines (data ingestion framework and ETL processing) that are scalable and reusable. This role will work with other cross functional teams to help build and support the next generation of data platform.</p>

<p><strong>Responsibilities:</strong></p>

<p>&bull; Possess an understanding of the data structures and governance.</p>

<p>&bull; Build the infrastructure required for optimal extraction, transformation, and loading of data from a wide variety of data sources.</p>

<p>&bull; Design and maintain optimal data pipeline architecture.</p>

<p>&bull; Assemble large, complex data sets to build data mart that meet functional/non-functional business requirements.</p>

<p>&bull; Communicate effectively with Developers and Business users to understand and clarify requirements.</p>

<p>&bull; Support internal training and proper documentation ensuring the successful onboarding of new team members</p>

<p>&bull; Implement internal process improvements: automating manual processes, optimizing data delivery, re-designing infrastructure for greater scalability, etc.</p>

<p>&bull; Develop efficient software code for multiple use cases leveraging Spark and Big Data Technologies for various use cases built on the platform</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Attractive salary &amp; benefits you&#39;ll love</p>

<p>&bull; Building large-scale products</p>

<p>&bull; Working in one of the best places to work in VN</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>We hope VNG is a place where you build your career. Whether you want to pursue to be a manager or focus on professional development, we acknowledge and appreciate your talents. Therefore, we open up to you more promotion opportunities in VNG, and designed program to help you succeed in every single career path.&nbsp;<br />
<br />
<strong>NO SUIT, NO TIE:&nbsp;</strong>At VNG, we do not have many rules because we respect you and want to make comfortable atmosphere to help employees perform their jobs well.</p>

<p><strong>Company &ldquo;pay&rdquo; for you:&nbsp;</strong>Lunch, parking, swimming, learning English or gym for free and you know you are really in care.</p>

<p><strong>NO BARRIERS:&nbsp;</strong>Office of VNG is an open space because we always try to remove all barriers to help members easily shares with each other.</p>

<p><strong>Being a big family:&nbsp;</strong>Like a gift for family day. A party for the kids. We know how much your family matters.</p>

<p><strong>NO RANK At VNG,</strong>&nbsp;members are encouraged to contribute ideas and debate with the others.</p>

<p><strong>Be explored:&nbsp;</strong>Ph.D., un-academic guy, bookish girl, fashion designers ... VNGers are different and this diversity makes life more colorful.</p>

<p><strong>NO &quot;OFFICE&quot;:&nbsp;</strong>Office is like your home. You can hang paintings, plant trees, even feed aquarium on the desk.</p>

<p><strong>Be showed your best:&nbsp;</strong>VNGers like to &quot;mortification&quot; with the group games such as: Fansipan climbing, waterfall rafting, go over heat mats; there activities not only are tightening friendship, but also practice their bravery.</p>

<p><strong>GAMING:&nbsp;</strong>Even if you do not make the game, stealing beans in the boss&rsquo;s garden or versusing with your colleagues in a sword competition play online is also an interesting way to relax.<br />
<br />
<strong>Changing the world:&nbsp;</strong>Creating an entertainment channel, building a social network and developing a game. On the Internet world, every single thing you did can change the lives of many people.</p>

<p><br />
<em><strong>Let&rsquo;s join VNG to share our mission: &#39;MAKE THE INTERNET CHANGE VIETNAMESE LIVES&#39;</strong></em></p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; Bachelor&rsquo;s degree in computer science, engineering, mathematics, or a related technical discipline.</p>

<p>&bull; 3+ years&rsquo; experience working as a Data Engineer role, ETL with large amounts of data.</p>

<p>&bull; Experience with data warehousing architecture and data modeling, ETL data pipeline.</p>

<p>&bull; Experience with using the following software/tool in big data field.</p>

<p>&bull; Big data tool: Hadoop, Apache Spark, Presto, Kafka, etc.</p>

<p>&bull; NoSQL and OLAP database: MongoDB, Clickhouse, Elastic search, etc.</p>

<p>&bull; Data pipeline and workflow management tools: Luigi, Airflow, etc.</p>

<p>&bull; Good at programming languages: Scala, Python, Java.</p>

<p>&bull; Data governance: Apache Atlas.</p>

<p>&bull; Experience with SRE, Patching &amp; Automation: Kubernetes or Docker &amp; Containerization</p>

<p>&bull; Experience in data testing process.</p>

<p>&bull; Experience in performing root cause analysis, identify problems and propose recommendations for improvement.</p>

<p>&bull; Strong organizational and multitasking skills with ability to balance competing priorities</p>

<p>&bull; Fundamental knowledge of modern cloud computing platforms and concepts is a plus.</p>
', CAST(N'2023-07-12T11:32:29.3416750' AS DateTime2), 1, 1, 4, 1500, 2600, N'26d104bf-c718-4288-b831-08db787dab64')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (50, N'Frontend Technical Lead (React, HTML, CSS)', N'frontend-technical-lead-react-html-css-', NULL, 7, N'<p>As Technical Leader working with a professional enterprise customer, you have a chance to interact with stakeholders on all levels of the client organisation and by those activities, you contribute into the activities to bridge the gap between business and technology, translate business challenges and goals into sound and solid technical solutions which bring value to and help support the goals of the client.</p>

<p>In this project you are expected to work closely with other teams and managers and understand the business motivation and provide proper support from technical perspective for the best decision making.&nbsp;</p>

<p>As Technical Leader, you are expected to become the leader who can provide technical support, facilitate technical troubles as well as coaching other team member to become more mature in daily activities. Technical Leader will also play an important role to support the team build up the proper way of working so that all the best technical practices can be applied to ensure effectiveness and efficiency of software development activities.</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Attractive salary package</p>

<p>&bull; Hybrid working mode</p>

<p>&bull; Signing bonus for IT related posts</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; Hybrid working mode.&nbsp;</p>

<p>&bull; Highly competitive remuneration package: attractive monthly salary and allowances, 13th month salary, additional performance bonus, high public holiday bonuses, and birthday gift, employee service award up to $1,000 for employees with 3+ years.</p>

<p>&bull; Attractive AON healthcare coverage including health and accident insurance in addition to the standard insurances regulated by the Labor Code. Luxury company summer vacation and team-building budget.</p>

<p>&bull; Opportunities to work onsite for international projects in Sweden, Australia, UK, USA, etc.</p>

<p>&bull; Organized training and full support in building your career.</p>

<p>&bull; English-speaking, international and professional work environment: working with expatriates from a number of countries, state of the art working space with a wonderful view over the city skyline, modern facilities include computer dual 24&rdquo; screens running latest versions of Windows 11 Enterprise, MS Office 365, Team, latest version of Visual Studio, and SQL Server, Dell OptiPlex Workstation with 32 GB Ram, 512GB NVMe SSD.</p>

<p>&bull; Western management style that is professional, dynamic, open minded, creative, supportive, friendly and encouraging feedback.</p>

<p>&bull; Company Management that regularly communicates Company&rsquo;s strategy, development plan and new opportunities to employees.</p>

<p>&bull; Employee and family are engaged and taken care by the Company via Trade Union activities.</p>

<p>&bull; Diversified social and charity activities often organized by NICEF - Niteco Charity Engagement Foundation to create opportunities for our young employees to raise funds and help people with difficulties in Vietnam.</p>

<p>&bull; Physical care environment where you are taken care, feeling relaxed and enjoying lots of leisure activities such as badminton, ping pong, football, table football, dancing, running, cycling, cinema, etc.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; Bachelor of IT, Computer Science, or relevant field</p>

<p>&bull; Responsible for architecting a powerful and feature-rich web application which resides on top of a micro frontend architecture.</p>

<p>&bull; Experience in splitting application to Micro-component architecture, using different techniques: Refactoring, Rewriting, Containers, Service extraction/ Composition/ Migration to archive high level of flexibility, testability, and velocity.</p>

<p>&bull;&nbsp;<strong>Experience server-side rendering using Next JS.</strong></p>

<p>&bull; Good knowledge of frontend technologies including but not limited to HTML, CSS (SASS, LESS, Critical), various JS frameworks/libraries.&nbsp;</p>

<p>&bull; Good understanding on how browser rendering works and provide various frontend rendering optimization strategy.</p>

<p>&bull; Working with both client and server-side experimentation/personalization and able to provide optimized solution for each problem respectively.</p>

<p>&bull; At least 4 years&rsquo; experience working in an international software project.&nbsp;</p>

<p>&bull; Strong understanding of OOD/OOP.</p>

<p>&bull; Good knowledge in building testable software, abstraction layers, and mock objects. Good experience in unit test frameworks.</p>

<p>&bull; Be structured, solution-oriented, own quality mindset, and have good problem-solving skills.</p>

<p>&bull; Thrive well in a creative and changing environment.</p>

<p>&bull; Have good communication skills, have experience with technical coaching and mentoring work.</p>

<p>&bull; High sense of responsibility and leadership-orientation.</p>

<p>&bull; Good English skills in both speaking and writing.&nbsp;</p>

<p>NICE TO HAVE</p>

<p>&bull; Experience with performance optimization, data caching is a plus.</p>

<p>&bull;&nbsp;<strong>Experience working with CDN like Akamai to deliver the best experience (optimization, caching, edge computing&hellip;)</strong></p>

<p>&bull; Good knowledge of end-to-end design language using token.</p>

<p>&bull; Experience with customer facing roles is a plus.&nbsp;</p>

<p>&bull; Experience with large-scale e-commerce projects is a plus.</p>

<p>&bull; Experience with Azure cloud native deployment is a plus.</p>
', CAST(N'2023-07-12T15:44:06.7505516' AS DateTime2), 4, 2, 3, 1100, 1800, N'0163aa78-b118-49a5-6b9e-08db796fb4d9')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (51, N'Kiểm toán viên Kiểm toán Công Nghệ Thông Tin (IT audit)', N'kiem-toan-vien-kiem-toan-cong-nghe-thong-tin-it-audit-', NULL, 25, N'<p>&bull; Hỗ trợ x&acirc;y dựng kế hoạch kiểm to&aacute;n nội bộ về CNTT h&agrave;ng năm</p>

<p>&bull; Thu thập, ph&acirc;n t&iacute;ch th&ocirc;ng tin, đ&aacute;nh gi&aacute; rủi ro, x&acirc;y dựng thủ tục kiểm to&aacute;n chi tiết theo phạm vi tr&aacute;ch nhiệm được ph&acirc;n c&ocirc;ng</p>

<p>&bull; Tham gia c&aacute;c cuộc kiểm to&aacute;n về CNTT theo cấp độ kiểm to&aacute;n vi&ecirc;n: C&aacute;c chuy&ecirc;n đề CNTT; kiểm to&aacute;n dự &aacute;n IT, kiểm to&aacute;n an ninh th&ocirc;ng tin, kiểm to&aacute;n hạ tầng c&ocirc;ng nghệ (mạng, m&aacute;y chủ, c&aacute;c hệ điều h&agrave;nh, c&aacute;c hệ cơ sở dữ liệu, CAATs/SQL, kiểm to&aacute;n ITGC, c&aacute;c chốt kiểm so&aacute;t tự động,&hellip;), kiểm to&aacute;n ứng dụng; c&aacute;c dịch vụ ng&acirc;n h&agrave;ng số&hellip;; đề xuất kiến nghị/khuyến nghị nhằm n&acirc;ng cao hiệu quả c&aacute;c hoạt động/đơn vị được kiểm tra</p>

<p>&bull; B&aacute;o c&aacute;o c&aacute;c ph&aacute;t hiện kiểm to&aacute;n l&ecirc;n Trưởng nh&oacute;m/Trưởng đo&agrave;n KTNB v&agrave; trao đổi thống nhất với nh&acirc;n sự đơn vị được kiểm to&aacute;n</p>

<p>&bull; Chịu tr&aacute;ch nhiệm phối hợp theo d&otilde;i t&igrave;nh h&igrave;nh khắc phục c&aacute;c khuyến nghị kiểm to&aacute;n đối với mảng phụ tr&aacute;ch</p>

<p>&bull; Tham gia ph&aacute;t triển c&aacute;c c&ocirc;ng cụ, phần mềm v&agrave; chương tr&igrave;nh, thủ tục KTNB theo ph&acirc;n c&ocirc;ng; X&acirc;y dựng c&aacute;c ch&iacute;nh s&aacute;ch v&agrave; thủ tục kiểm to&aacute;n li&ecirc;n quan đến CNTT; Hồ trợ x&acirc;y dựng t&agrave;i liệu hướng dẫn kiểm to&aacute;n CNTT;</p>

<p>&bull; Thực hiện tham mưu, tư vấn, g&oacute;p &yacute; về việc ban h&agrave;nh c&aacute;c quy chế, ch&iacute;nh s&aacute;ch, c&aacute;c hệ thống CNTT của MB theo ph&acirc;n c&ocirc;ng.</p>

<p>&bull; Thực hiện c&aacute;c nhiệm vụ kh&aacute;c theo ph&acirc;n c&ocirc;ng của Trưởng ph&ograve;ng hoặc BLĐ</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Mức lương cạnh tranh, hấp dẫn</p>

<p>&bull; M&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, th&acirc;n thiện</p>

<p>&bull; Được l&agrave;m việc với c&aacute;c hệ thống hiện đại, ti&ecirc;n tiến</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull; Mức lương cạnh tranh, hấp dẫn (Thưởng xếp loại thực hiện c&ocirc;ng việc 6 th&aacute;ng/lần, thưởng sinh nhật ng&acirc;n h&agrave;ng, thưởng c&aacute;c ng&agrave;y lễ tết trong năm&hellip;).</p>

<p>&bull; Chế độ ph&uacute;c lợi cạnh tranh: Du lịch h&agrave;ng năm, Kh&aacute;m sức khỏe định k&igrave; h&agrave;ng năm; G&oacute;i bảo hiểm sức khỏe; C&aacute;c hoạt động tri &acirc;n, chăm lo đời sống tinh thần CBNV v&agrave; Th&acirc;n nh&acirc;n...</p>

<p>&bull; M&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, th&acirc;n thiện, cởi mở.</p>

<p>&bull; Được l&agrave;m việc với c&aacute;c hệ thống hiện đại, ti&ecirc;n tiến nhất thị trường, &aacute;p dụng c&aacute;c c&ocirc;ng nghệ h&agrave;ng đầu về an ninh bảo mật để đảm bảo an to&agrave;n cho người sử dụng.</p>

<p>&bull; Cơ hội học hỏi nghiệp vụ ng&acirc;n h&agrave;ng.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p><strong>Tr&igrave;nh độ học vấn:</strong></p>

<p>&bull; C&oacute; tr&igrave;nh độ Đại học trở l&ecirc;n chuy&ecirc;n ng&agrave;nh kinh tế, quản trị kinh doanh, luật, kế to&aacute;n, CNTT</p>

<p><strong>Kiến thức/Kinh nghiệm:</strong></p>

<p>&bull; C&oacute; kiến thức tốt về Kiểm to&aacute;n CNTT: hạ tầng CNTT, thiết bị mạng, c&aacute;c hệ điều h&agrave;nh, cơ sở dữ liệu, an ninh th&ocirc;ng tin; Dự &aacute;n CNTT, SQL.</p>

<p>&bull; Ưu ti&ecirc;n nh&acirc;n sự c&oacute; chứng chỉ CISA/CISM/CISSP hoặc chứng chỉ kh&aacute;c li&ecirc;n quan</p>

<p>&bull; C&oacute; &iacute;t nhất 02 năm kinh nghiệm về CNTT hoặc kiểm to&aacute;n CNTT trong c&aacute;c tổ chức t&agrave;i ch&iacute;nh (ng&acirc;n h&agrave;ng, c&ocirc;ng ty t&agrave;i ch&iacute;nh&hellip;).</p>

<p>&bull; Am hiểu c&aacute;c ti&ecirc;u chuẩn về rủi ro v&agrave; kiểm to&aacute;n</p>

<p>&bull; Ưu ti&ecirc;n nh&acirc;n sự đ&atilde; c&oacute; kinh nghiệm l&agrave;m KTNB về CNTT tại c&aacute;c bank/kiểm to&aacute;n độc lập tại Big4 đ&atilde; c&oacute; kinh nghiệm kiểm to&aacute;n CNTT tại Ng&acirc;n h&agrave;ng</p>

<p><strong>Kỹ năng v&agrave; y&ecirc;u cầu kh&aacute;c</strong></p>

<p>&bull; TOEIC 500 trở l&ecirc;n hoặc chứng chỉ tương đương</p>

<p>&bull; C&oacute; khả năng sử dụng th&agrave;nh th&agrave;nh c&ocirc;ng cụ xử l&yacute;, ph&acirc;n t&iacute;ch dữ liệu như: SQL, Dashboard, VBA, Power BI, Python...</p>

<p>&bull; C&oacute; kỹ năng giao tiếp tốt, hợp t&aacute;c đối với kh&aacute;ch h&agrave;ng nội bộ v&agrave; kh&aacute;ch h&agrave;ng b&ecirc;n ngo&agrave;i</p>

<p>&bull; C&oacute; khả năng l&agrave;m việc nh&oacute;m, lu&ocirc;n hướng về mục ti&ecirc;u v&agrave; lợi &iacute;ch chung của tổ chức.</p>

<p>&bull; C&oacute; kỹ năng ph&acirc;n t&iacute;ch, tổng hợp b&aacute;o c&aacute;o kết quả kiểm to&aacute;n.</p>
', CAST(N'2023-07-12T19:50:19.3799819' AS DateTime2), 2, 2, 2, 1000, 1700, N'f463e352-9ce4-489c-5851-08db794d4e58')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (52, N'Senior/Middle Fullstack Engineer (Java, ReactJS)', N'senior-middle-fullstack-engineer-java-reactjs-', NULL, 4, N'<p><em>HRS is reinventing how businesses and governments work, stay and pay in today&rsquo;s dynamic global marketplace. HRS&rsquo; advanced platform technology extends its reach beyond hospitality to meetings, office space management, payment efficiency and crisis recovery.</em><br />
<em>Beyond cost savings in the global post-pandemic economy, HRS clients gain from an unrivaled focus on essential aspects including safety, security, and satisfaction.</em></p>

<p>We are looking for a&nbsp;<strong>Full Stack Engineer Java/React</strong>&nbsp;who is keen on being responsible for the highest quality standards in developing features and tests.</p>

<p>&bull; Implement full-stack applications in JavaScript/TypeScript (React) and Java (Spring Boot)&nbsp;</p>

<p>&bull; Ensure the quality of code is kept on a high level &nbsp;</p>

<p>&bull; Develop, implement, and improve application architecture based on AWS Cloud &nbsp;</p>

<p>&bull; Support the Product Owner with requirement engineering &nbsp;</p>

<p>&bull; Collaborate across teams with regard to overarching technical concepts and practices &nbsp;</p>

<p>&bull; Stabilize, perform improvement, and refactor service layer and data model&nbsp;</p>

<p>&bull; You work on one of our core systems and implement our extranet application, used by thousands of clients to create and manage their assets, content, and data</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Attractive salary package and valuable benefits</p>

<p>&bull; Get the opportunity to access global L&amp;D programs</p>

<p>&bull; International and innovative working environment</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p><strong>OUR BENEFIT</strong></p>

<p>&bull;Competitive salary - performance bonus and valuable benefits.</p>

<p>&bull; Challenging projects with onsite opportunities in Europe.</p>

<p>&bull; Supportive working conditions: Laptop, MS Surface Hub, pure pantry with coffee, soft drink, snacks, etc.</p>

<p>&bull; Premium company traveling program and other exciting activities.</p>

<p>&bull; Highly appreciate your idea and constantly supporting your skill development.</p>

<p>&bull; International and innovative working environment with Germany, Australia, Poland, Ukraine, etc.</p>

<p>&bull; Premium healthcare for employees.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; Good experience in Java, Spring Boot, JavaScript/TypeScript, HTML/CSS, ReactJS&nbsp;</p>

<p>&bull; Willingness to work on UI with attention to details&nbsp;</p>

<p>&bull; Hands-on experience in NodeJs backend development&nbsp;</p>

<p>&bull; Good knowledge of MicroService development and continuous integration&nbsp;</p>

<p>&bull; Good understanding of SCRUM/Agile methodologies&nbsp;</p>

<p>&bull; Proficient in using HTML5, JavaScript, CSS3, and other Web front-end skills to restore the project page;&nbsp;</p>

<p>&bull; Good knowledge of flexible layout, making mobile terminal responsive layout, and solving screen adaptation problems&nbsp;</p>

<p>&bull; Fluency in English, spoken and written&nbsp;</p>
', CAST(N'2023-07-13T02:12:45.3356927' AS DateTime2), 3, 1, 1, 1000, 2300, N'944212e8-4830-4a30-4578-08db7969c64d')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (53, N'Scrum Master', N'scrum-master', NULL, 11, N'<p><strong>PURPOSE OF JOB</strong></p>

<p>&bull; To facilitate and coach Agile practices for all squads consisting of developers, QC, product design, and a product manager.</p>

<p>&bull; Help the squads to achieve their sprint goals, remove any impediments, and improve their performance by adopting Agile methodologies.</p>

<p><strong>JOB RESPONSIBILITIES</strong></p>

<p>&bull; Coach the team on the Agile methodology and the Scrum framework, ensuring that the team is applying the processes effectively.</p>

<p>&bull; Guide the team on Scrum activities and events, including sprint planning, daily scrum, sprint review, and sprint retrospective.</p>

<p>&bull; Guide the product owner in writing user stories and prioritization.</p>

<p>&bull; Guide the development team to do estimation and coordinate the work.</p>

<p>&bull; Remove the impediments and roadblocks that are impacting the team&#39;s ability to deliver the sprint goals.</p>

<p>&bull; Come up with metrics to report back to the management team.</p>

<p>&bull; Foster a culture of continuous improvement and innovation within the team.</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; Experience Self-Leading Growth</p>

<p>&bull; Working With World-Class &amp; Modern System</p>

<p>&bull; Enjoy Everyday Happiness At Work</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>1. Experience self-leading growth in an environment that emphasizes autonomy and respects individual initiatives;</p>

<p>2. Acquire world-class knowledge accumulated from Woowa Brothers corporation with Korea&#39;s #1 food delivery app;</p>

<p>3. Enjoy everyday happiness at work with our witty culture, high flexibility with hybrid working model, open, young and dynamic environment,...</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<p>&bull; At least 3 years of experience as a Scrum Master.</p>

<p>&bull; Deep understanding of the Agile methodology and the Scrum framework.</p>

<p>&bull; Excellent coaching and facilitation skills.</p>

<p>&bull; Strong communication and collaboration skills.</p>

<p>&bull; Ability to work effectively with cross-functional teams.</p>

<p><strong>Reporting Line:&nbsp;</strong>This position reports to the Chief Technology Officer (CTO).</p>

<p><strong>F2F Interview Preparation</strong></p>

<p>To prepare for the F2F interview, assume that you will act as a Scrum Master or Agile Coach for a Squad that has little background in the Agile methodology and Scrum framework. Your responsibility is to coach the team to become familiar with it. Please put together a 30-45 minutes presentation with a focus on the Agile mindset and Scrum (or other Agile-enabled) framework.</p>

<p>If you are passionate about Agile methodology and the Scrum framework and want to work with a dynamic team in a fast-growing industry, we want to hear from you.</p>
', CAST(N'2023-07-14T10:17:58.0277435' AS DateTime2), 1, 1, 5, 600, 1200, N'88ddb9d4-48b1-488d-924d-08db79360ded')
INSERT [dbo].[Jobs] ([Id], [Name], [Slug], [CategoryId], [TitleId], [Description], [Introduce], [ObjectTarget], [Experience], [CreateDate], [Popular], [ProvinceId], [TimeId], [MinSalary], [MaxSalary], [AppUserId]) VALUES (54, N'Senior Fullstack .NET Engineer', N'senior-fullstack-dotnet-engineer', NULL, 18, N'<p>&bull; Develop back-end website applications.</p>

<p>&bull; Develop front-end website architecture as well as user interactions on web pages. Ensuring responsiveness of applications.</p>

<p>&bull; Handle Azure Cloud services for functionality.</p>

<p>&bull; Handle Azure DevOps pipeline enhancements.</p>

<p>&bull; Ensure the quality of the deliverables (i.e., tech AC are well documented, understood, and estimated. Finished products are well tested and documented. The product is performant and secure).</p>

<p>&bull; Implement the application (presentation, application and data management).</p>

<p>&nbsp; &nbsp;- Error handling enhancements.</p>

<p>&nbsp; &nbsp;- Disaster recovery implementation and testing.</p>

<p>&nbsp; &nbsp;- Automated regression testing enhancements.</p>

<p>&bull; Implement general services (web services, data distribution).</p>

<p>&bull; Be able to work alongside colleagues globally.</p>

<p>&bull; Committed to seeing through a project from conception to finished product.</p>

<p>&bull; Meet both technical and consumer needs.</p>

<p>&bull; Stay abreast of developments in web applications and programming languages.</p>
', N'<h4><strong>Top 3 reasons to join us</strong></h4>

<p>&bull; 13th-month salary. Dedication bonus goes up to 40%</p>

<p>&bull; Premium healthcare insurance</p>

<p>&bull; Teambuilding trips, training events</p>
', N'<h4><strong>Why you&#39;ll love working here</strong></h4>

<p>&bull;&nbsp;<strong>Attractive salary based on your performance.</strong></p>

<p>&bull;&nbsp;<strong>Annual 13th month salary.</strong></p>

<p>&bull;&nbsp;<strong>Dedication bonus goes up to 40% monthly salary.</strong></p>

<p>&bull;&nbsp;<strong>Project bonus will be paid twice a year.</strong></p>

<p>&bull; Premium healthcare insurance, Annual health checks up.</p>

<p>&bull; Breakfast is available at the office in the early morning and snacks in the late afternoon.</p>

<p>&bull; Team building allowance.</p>

<p>&bull; Annual Company team building trip.</p>

<p>&bull; Clubs (Football, Badminton, Swimming, Chess, Music band).</p>

<p>&bull; Exclusive training programs for all staff in technical, soft skills and process.</p>

<p>&bull; English class.</p>

<p>&bull; Technical clubs.</p>

<p>&bull; Marriage allowance, having newborn baby allowance, bereavement allowance.</p>
', N'<h4><strong>Your skills and experience</strong></h4>

<h4><br />
<em><strong>Must have:</strong></em></h4>

<p>&bull;&nbsp;<strong>5+ years of experience in .NET&nbsp;</strong>development with expertise in developing large-scale enterprise applications and solutions.</p>

<p>&bull;&nbsp;<strong>Experience with .NET Core and Entity Framework.</strong></p>

<p>&bull; Proficiency with scripting languages such as Bash and PowerShell.</p>

<p>&bull; Proficiency with fundamental front-end languages such<strong>&nbsp;as HTML5, CSS, Angular Framework and Angular Unit testing.</strong></p>

<p>&bull; Experience with mobile app development with Angular Framework and Ionic/CapacitorJS Framework.</p>

<p>&bull; Experience with Azure DevOps: CI/CD, Automation, and IaaC (Terraform).</p>

<p>&bull; Certified or obtain a solid knowledge of Azure Cloud technologies such as Azure Application and Integration Components.</p>

<p>&bull; Proficiency with database technology such as Azure SQL and Cosmos DB.</p>

<p>&bull; Experience with Agile Software Development using Scrum framework.</p>

<p>&bull; Proficient in GIT flow, GitHub or similar.</p>

<p><em><strong>Nice to have:</strong></em></p>

<p>&bull; Experience in Workflow Development.</p>

<p>&bull; Understand and follow Clean Architectures.</p>

<p>&bull; Clean code and refactor code ability.</p>

<p>&bull; Arc42 documentation experience.</p>

<p>&bull; ITIL Foundation.</p>

<p><em><strong>Soft skills:</strong></em></p>

<p>&bull; Have great problem-solving skills.</p>

<p>&bull; Attention to detail and good documentation skills.</p>

<p>&bull; Attention to detail.</p>

<p>&bull; Passionate about product quality with a strong service orientation.</p>

<p>&bull; Effective verbal English skills in video conference and face-to-face communication.</p>
', CAST(N'2023-07-14T21:19:18.2677999' AS DateTime2), 1, 3, 4, 900, 1600, N'51d552b0-1372-42d1-355b-08db8474bade')
SET IDENTITY_INSERT [dbo].[Jobs] OFF
GO
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (1, 1)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (12, 1)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (13, 1)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (40, 1)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (8, 2)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (24, 2)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (28, 2)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (19, 3)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (50, 3)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (8, 4)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (15, 4)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (24, 4)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (10, 5)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (17, 5)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (46, 5)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (39, 6)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (46, 6)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (5, 7)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (2, 8)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (7, 8)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (30, 8)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (45, 8)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (54, 8)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (22, 9)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (27, 9)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (38, 9)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (39, 9)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (47, 9)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (49, 9)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (28, 10)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (3, 11)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (7, 11)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (11, 11)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (45, 11)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (19, 12)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (50, 12)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (26, 13)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (18, 14)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (27, 14)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (9, 15)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (10, 15)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (17, 15)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (19, 15)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (38, 15)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (47, 15)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (48, 15)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (50, 15)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (52, 15)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (30, 16)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (54, 16)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (23, 17)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (40, 17)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (15, 18)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (26, 19)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (2, 20)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (3, 20)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (4, 20)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (6, 20)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (11, 20)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (14, 20)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (18, 20)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (20, 20)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (21, 20)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (22, 20)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (27, 20)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (28, 20)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (38, 20)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (47, 20)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (52, 20)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (8, 21)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (15, 21)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (24, 21)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (29, 22)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (46, 22)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (53, 23)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (5, 24)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (3, 25)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (20, 25)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (36, 27)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (48, 27)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (39, 29)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (4, 30)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (25, 30)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (45, 30)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (49, 30)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (51, 30)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (9, 32)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (10, 32)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (16, 32)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (17, 32)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (18, 32)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (25, 32)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (36, 32)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (48, 32)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (12, 33)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (16, 33)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (23, 33)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (40, 33)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (51, 33)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (6, 35)
GO
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (21, 35)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (49, 35)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (5, 36)
INSERT [dbo].[JobSkill] ([JobsId], [SkillsId]) VALUES (53, 36)
GO
SET IDENTITY_INSERT [dbo].[Provinces] ON 

INSERT [dbo].[Provinces] ([Id], [Name], [Slug], [CategoryId], [Disable], [Popular]) VALUES (1, N'Ho Chi Minh', N'ho-chi-minh', 4, 0, 0)
INSERT [dbo].[Provinces] ([Id], [Name], [Slug], [CategoryId], [Disable], [Popular]) VALUES (2, N'Ha Noi', N'ha-noi', 4, 0, 0)
INSERT [dbo].[Provinces] ([Id], [Name], [Slug], [CategoryId], [Disable], [Popular]) VALUES (3, N'Da Nang', N'da-nang', 4, 0, 0)
INSERT [dbo].[Provinces] ([Id], [Name], [Slug], [CategoryId], [Disable], [Popular]) VALUES (4, N'Others', N'others', 4, 0, 0)
SET IDENTITY_INSERT [dbo].[Provinces] OFF
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (1, N'C++', N'cpp', N'09eb3415-8442-4d2f-a9ed-371b2c01e809.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (2, N'Android', N'android', N'eabf0179-75d1-43b5-8eda-4650cf2cb15b.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (3, N'CSS', N'css', N'73597a49-b989-407c-8c18-9f68273fb656.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (4, N'React Native', N'react-native', N'cca64e1f-e0a7-4964-9bbb-9139aeb4e44a.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (5, N'NodeJS', N'nodejs', N'cd70231f-f334-4b47-a6a1-694139768ad7.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (6, N'PHP', N'php', N'108fddff-618a-4f30-bfa6-b70f9a701097.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (7, N'JSON', N'json', N'980fcb5f-04cc-4508-ac96-118e6ddb3827.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (8, N'.NET', N'dotnet', N'84c6a61e-822b-4fff-858a-7a53cf286ca0.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (9, N'MySQL', N'mysql', N'b2a49590-2b4b-409c-b4d9-5ae9d9d90661.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (10, N'Kotlin', N'kotlin', N'9060c55a-3e92-4b03-9724-f9cc8fee0be7.jpg', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (11, N'C#', N'csharp', N'ac0d91b2-7c3d-4622-ad01-806ca1e349a4.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (12, N'HTML5', N'html5', N'f81b20a5-e57e-4d1f-8167-261119e2639d.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (13, N'Dart', N'dart', N'1f036f33-ae6e-4f43-a489-c349cbe91886.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (14, N'Golang', N'golang', N'431178d2-345f-4008-86ab-8ff94f2e5040.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (15, N'ReactJS', N'reactjs', N'6e314142-36c6-41f4-85bb-fdf4166d6c46.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (16, N'Angular', N'angular', N'1f99b56c-ff18-4847-ac20-273d5b575f4b.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (17, N'C language', N'c-language', N'4f810d7f-81c8-463f-aaf3-5cee19720956.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (18, N'Swift', N'swift', N'e4d35ba6-2ebc-4888-919a-04fffa1da6ae.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (19, N'Flutter', N'flutter', N'c85e83d4-0e90-4bfb-9b69-98a307bfdaa7.jpg', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (20, N'Java', N'java', N'0cef441d-ceee-43ee-a672-fc4b8ba4da5b.jpg', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (21, N'iOS', N'ios', N'75b1ea3f-e347-45d3-9eb1-0e0550aa6e87.jpg', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (22, N'Ruby', N'ruby', N'f944f528-c413-4781-858f-4b00f2141544.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (23, N'WordPress', N'wordpress', N'd681fa95-5f2a-4367-a045-cfe92d5eefd4.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (24, N'Drupal', N'drupal', N'268d7ffc-34bd-4376-88c2-2c7566047764.jpg', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (25, N'VueJS', N'vuejs', N'52617713-71fe-43a0-9077-9f622735cb53.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (26, N'Unity', N'unity', N'1add6073-89ee-4b93-96f8-e3a695d770ae.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (27, N'TypeScript', N'typescript', N'b6ffeb4f-b307-4d34-a773-8fcc1a2ce04f.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (28, N'jQuery', N'jquery', N'2198a273-85c8-4ebd-8f0a-4f5351902729.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (29, N'Laravel', N'laravel', N'75d7163f-73e8-4387-9909-a289b8179346.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (30, N'SQL', N'sql', N'46fd3794-41fc-4f1d-b63c-39d1d6f41a44.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (31, N'Magento', N'magento', N'2999644d-7da0-4c6d-b969-8683fd045dec.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (32, N'JavaScript', N'javascript', N'009a632e-9169-4063-9349-8c36cb14d9dd.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (33, N'Python', N'python', N'4707ba40-ecb1-4673-9649-de586bdd942d.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (34, N'Scala', N'scala', N'26342b46-36ef-435c-9ff4-fcb4548856d9.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (35, N'PostgreSQL', N'postgresql', N'0a56fd6a-8a6e-4fc4-88a6-1e001f8c408d.png', 1, 0, 0)
INSERT [dbo].[Skills] ([Id], [Name], [Slug], [Logo], [CategoryId], [Disable], [Popular]) VALUES (36, N'Scrum', N'scrum', N'a80846fd-de7f-4a7e-963e-60d31af051b0.png', 1, 0, 0)
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
SET IDENTITY_INSERT [dbo].[Times] ON 

INSERT [dbo].[Times] ([Id], [Name], [Slug], [Disable]) VALUES (1, N'Part time', N'part-time', 0)
INSERT [dbo].[Times] ([Id], [Name], [Slug], [Disable]) VALUES (2, N'Full time', N'full-time', 0)
INSERT [dbo].[Times] ([Id], [Name], [Slug], [Disable]) VALUES (3, N'Work from home', N'work-from-home', 0)
INSERT [dbo].[Times] ([Id], [Name], [Slug], [Disable]) VALUES (4, N'At office', N'at-office', 0)
INSERT [dbo].[Times] ([Id], [Name], [Slug], [Disable]) VALUES (5, N'Temporary', N'temporary', 0)
SET IDENTITY_INSERT [dbo].[Times] OFF
GO
SET IDENTITY_INSERT [dbo].[Titles] ON 

INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (1, N'Team Leader', 2, 0, N'team-leader', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (2, N'Solution Architect', 2, 0, N'solution-architect', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (3, N'iOS Developer', 2, 0, N'ios-developer', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (4, N'Full Stack Developer', 2, 0, N'full-stack-developer', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (5, N'Java Developer', 2, 0, N'java-developer', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (6, N'System Engineer', 2, 0, N'system-engineer', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (7, N'Front End Developer', 2, 0, N'front-end-developer', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (8, N'Tester', 2, 0, N'tester', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (9, N'System Administrator', 2, 0, N'system-administrator', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (10, N'Android Developer', 2, 0, N'android-developer', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (11, N'Product Owner', 2, 0, N'product-owner', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (12, N'Back End Developer', 2, 0, N'back-end-developer', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (13, N'Mobile Apps Developer', 2, 0, N'mobile-apps-developer', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (14, N'C++ Developer', 2, 0, N'cpp-developer', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (15, N'PHP Developer', 2, 0, N'php-developer', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (16, N'Embedded Engineer', 2, 0, N'embedded-engineer', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (17, N'UX UI Designer', 2, 0, N'ux-ui-designer', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (18, N'.NET Developer', 2, 0, N'dotnet-developer', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (19, N'Project Manager', 2, 0, N'project-manager', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (20, N'NodeJS Developer', 2, 0, N'nodejs-developer', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (21, N'Business Analyst', 2, 0, N'business-analyst', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (22, N'Python Developer', 2, 0, N'python-developer', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (23, N'Product Manager', 2, 0, N'product-manager', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (24, N'Bridge Engineer', 2, 0, N'bridge-engineer', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (25, N'Software Architect', 2, 0, N'software-architect', 0)
INSERT [dbo].[Titles] ([Id], [Name], [CategoryId], [Disable], [Slug], [Popular]) VALUES (26, N'Software Engineer', 2, 0, N'software-engineer', 0)
SET IDENTITY_INSERT [dbo].[Titles] OFF
GO
/****** Object:  Index [IX_AppRoleClaims_RoleId]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_AppRoleClaims_RoleId] ON [dbo].[AppRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AppRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppUserClaims_UserId]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_AppUserClaims_UserId] ON [dbo].[AppUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppUserRoles_RoleId]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_AppUserRoles_RoleId] ON [dbo].[AppUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AppUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppUsers_CategoryId]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_AppUsers_CategoryId] ON [dbo].[AppUsers]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppUsers_CountryId]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_AppUsers_CountryId] ON [dbo].[AppUsers]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppUsers_ProvinceId]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_AppUsers_ProvinceId] ON [dbo].[AppUsers]
(
	[ProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AppUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Blogs_AppUserId]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Blogs_AppUserId] ON [dbo].[Blogs]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CVs_AppUserId]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_CVs_AppUserId] ON [dbo].[CVs]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CVs_JobId]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_CVs_JobId] ON [dbo].[CVs]
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Jobs_AppUserId]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Jobs_AppUserId] ON [dbo].[Jobs]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Jobs_CategoryId]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Jobs_CategoryId] ON [dbo].[Jobs]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Jobs_ProvinceId]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Jobs_ProvinceId] ON [dbo].[Jobs]
(
	[ProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Jobs_TimeId]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Jobs_TimeId] ON [dbo].[Jobs]
(
	[TimeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Jobs_TitleId]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Jobs_TitleId] ON [dbo].[Jobs]
(
	[TitleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_JobSkill_SkillsId]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_JobSkill_SkillsId] ON [dbo].[JobSkill]
(
	[SkillsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Provinces_CategoryId]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Provinces_CategoryId] ON [dbo].[Provinces]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Skills_CategoryId]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Skills_CategoryId] ON [dbo].[Skills]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Titles_CategoryId]    Script Date: 7/14/2023 9:34:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Titles_CategoryId] ON [dbo].[Titles]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AppUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Disable]
GO
ALTER TABLE [dbo].[AppUsers] ADD  DEFAULT ((0)) FOR [Popular]
GO
ALTER TABLE [dbo].[Blogs] ADD  DEFAULT ((0)) FOR [Popular]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Disable]
GO
ALTER TABLE [dbo].[Countries] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Disable]
GO
ALTER TABLE [dbo].[CVs] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Jobs] ADD  DEFAULT ((0)) FOR [Popular]
GO
ALTER TABLE [dbo].[Provinces] ADD  DEFAULT ((4)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Provinces] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Disable]
GO
ALTER TABLE [dbo].[Provinces] ADD  DEFAULT ((0)) FOR [Popular]
GO
ALTER TABLE [dbo].[Skills] ADD  DEFAULT ((1)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Skills] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Disable]
GO
ALTER TABLE [dbo].[Skills] ADD  DEFAULT ((0)) FOR [Popular]
GO
ALTER TABLE [dbo].[Times] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Disable]
GO
ALTER TABLE [dbo].[Titles] ADD  DEFAULT ((2)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Titles] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Disable]
GO
ALTER TABLE [dbo].[Titles] ADD  DEFAULT ((0)) FOR [Popular]
GO
ALTER TABLE [dbo].[AppRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AppRoleClaims_AppRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AppRoles] ([Id])
GO
ALTER TABLE [dbo].[AppRoleClaims] CHECK CONSTRAINT [FK_AppRoleClaims_AppRoles_RoleId]
GO
ALTER TABLE [dbo].[AppUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AppUserClaims_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
GO
ALTER TABLE [dbo].[AppUserClaims] CHECK CONSTRAINT [FK_AppUserClaims_AppUsers_UserId]
GO
ALTER TABLE [dbo].[AppUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AppUserLogins_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
GO
ALTER TABLE [dbo].[AppUserLogins] CHECK CONSTRAINT [FK_AppUserLogins_AppUsers_UserId]
GO
ALTER TABLE [dbo].[AppUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AppUserRoles_AppRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AppRoles] ([Id])
GO
ALTER TABLE [dbo].[AppUserRoles] CHECK CONSTRAINT [FK_AppUserRoles_AppRoles_RoleId]
GO
ALTER TABLE [dbo].[AppUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AppUserRoles_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
GO
ALTER TABLE [dbo].[AppUserRoles] CHECK CONSTRAINT [FK_AppUserRoles_AppUsers_UserId]
GO
ALTER TABLE [dbo].[AppUsers]  WITH CHECK ADD  CONSTRAINT [FK_AppUsers_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[AppUsers] CHECK CONSTRAINT [FK_AppUsers_Categories_CategoryId]
GO
ALTER TABLE [dbo].[AppUsers]  WITH CHECK ADD  CONSTRAINT [FK_AppUsers_Countries_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[AppUsers] CHECK CONSTRAINT [FK_AppUsers_Countries_CountryId]
GO
ALTER TABLE [dbo].[AppUsers]  WITH CHECK ADD  CONSTRAINT [FK_AppUsers_Provinces_ProvinceId] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Provinces] ([Id])
GO
ALTER TABLE [dbo].[AppUsers] CHECK CONSTRAINT [FK_AppUsers_Provinces_ProvinceId]
GO
ALTER TABLE [dbo].[AppUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AppUserTokens_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
GO
ALTER TABLE [dbo].[AppUserTokens] CHECK CONSTRAINT [FK_AppUserTokens_AppUsers_UserId]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_AppUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AppUsers] ([Id])
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_AppUsers_AppUserId]
GO
ALTER TABLE [dbo].[CVs]  WITH CHECK ADD  CONSTRAINT [FK_CVs_AppUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AppUsers] ([Id])
GO
ALTER TABLE [dbo].[CVs] CHECK CONSTRAINT [FK_CVs_AppUsers_AppUserId]
GO
ALTER TABLE [dbo].[CVs]  WITH CHECK ADD  CONSTRAINT [FK_CVs_Jobs_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[Jobs] ([Id])
GO
ALTER TABLE [dbo].[CVs] CHECK CONSTRAINT [FK_CVs_Jobs_JobId]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_AppUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AppUsers] ([Id])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_AppUsers_AppUserId]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_Provinces_ProvinceId] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Provinces] ([Id])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_Provinces_ProvinceId]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_Times_TimeId] FOREIGN KEY([TimeId])
REFERENCES [dbo].[Times] ([Id])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_Times_TimeId]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_Titles_TitleId] FOREIGN KEY([TitleId])
REFERENCES [dbo].[Titles] ([Id])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_Titles_TitleId]
GO
ALTER TABLE [dbo].[JobSkill]  WITH CHECK ADD  CONSTRAINT [FK_JobSkill_Jobs_JobsId] FOREIGN KEY([JobsId])
REFERENCES [dbo].[Jobs] ([Id])
GO
ALTER TABLE [dbo].[JobSkill] CHECK CONSTRAINT [FK_JobSkill_Jobs_JobsId]
GO
ALTER TABLE [dbo].[JobSkill]  WITH CHECK ADD  CONSTRAINT [FK_JobSkill_Skills_SkillsId] FOREIGN KEY([SkillsId])
REFERENCES [dbo].[Skills] ([Id])
GO
ALTER TABLE [dbo].[JobSkill] CHECK CONSTRAINT [FK_JobSkill_Skills_SkillsId]
GO
ALTER TABLE [dbo].[Provinces]  WITH CHECK ADD  CONSTRAINT [FK_Provinces_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Provinces] CHECK CONSTRAINT [FK_Provinces_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Skills]  WITH CHECK ADD  CONSTRAINT [FK_Skills_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Skills] CHECK CONSTRAINT [FK_Skills_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Titles]  WITH CHECK ADD  CONSTRAINT [FK_Titles_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Titles] CHECK CONSTRAINT [FK_Titles_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [JobPortalDb] SET  READ_WRITE 
GO
