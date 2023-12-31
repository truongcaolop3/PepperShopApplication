USE [master]
GO
/****** Object:  Database [PepperShopDB]    Script Date: 8/26/2023 12:26:05 PM ******/
CREATE DATABASE [PepperShopDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PepperShopDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\PepperShopDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PepperShopDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\PepperShopDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PepperShopDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PepperShopDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PepperShopDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PepperShopDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PepperShopDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PepperShopDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PepperShopDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PepperShopDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PepperShopDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PepperShopDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PepperShopDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PepperShopDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PepperShopDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PepperShopDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PepperShopDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PepperShopDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PepperShopDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PepperShopDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PepperShopDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PepperShopDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PepperShopDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PepperShopDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PepperShopDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PepperShopDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PepperShopDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PepperShopDB] SET  MULTI_USER 
GO
ALTER DATABASE [PepperShopDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PepperShopDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PepperShopDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PepperShopDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PepperShopDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [PepperShopDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/26/2023 12:26:05 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 8/26/2023 12:26:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/26/2023 12:26:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/26/2023 12:26:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/26/2023 12:26:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/26/2023 12:26:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/26/2023 12:26:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 8/26/2023 12:26:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[categories]    Script Date: 8/26/2023 12:26:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[customers]    Script Date: 8/26/2023 12:26:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[Id] [int] NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dish_product]    Script Date: 8/26/2023 12:26:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dish_product](
	[DishId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_dish_product] PRIMARY KEY CLUSTERED 
(
	[DishId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dishes]    Script Date: 8/26/2023 12:26:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dishes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dishes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[employees]    Script Date: 8/26/2023 12:26:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[Id] [int] NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[order_details]    Script Date: 8/26/2023 12:26:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[DishId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_order_details] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[orders]    Script Date: 8/26/2023 12:26:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[EmployeeId] [int] NULL,
	[Status] [int] NOT NULL,
	[OrderTime] [datetime2](7) NOT NULL,
	[CompleteTime] [datetime2](7) NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[products]    Script Date: 8/26/2023 12:26:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[Unit] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 8/26/2023 12:26:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
 CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230809073401_AddRelationshipOneToOne', N'5.0.17')
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (1, N'Pepper', N'truongcao@gmail.com', N'TRUONGCAO@GMAIL.COM', N'truongcao@gmail.com', N'TRUONGCAO@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOyvpqqa94FFSK6EKoyJhmXpG26ngRA4liVWYkt5YmCWuiDXrRkfc1f4ICv4oDyB4A==', N'A2XNVMR67KA5JYA4YHU4ZJEUWL2ZQADO', N'df998b0b-040c-49d1-83ac-71adc480dc91', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (2, N'Pepper', N'123@gmail.com', N'123@GMAIL.COM', N'123@gmail.com', N'123@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOCFc84M6/PzR3tzsQPYwEt7W1kOPBeViqmk+MbK/oN6Vqq3ZCkDvczAJ9JzN5cMLA==', N'YGQMPUPARGNLXOVBCVUV6RO4UHBD5UTI', N'8eb6d466-3bd9-437e-b71e-447535fa34e0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (3, N'aaaaaa', N'11@gmail.com', N'11@GMAIL.COM', N'11@gmail.com', N'11@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEO0PKl1J7S8pq3OAzA/LuL/p92+YVSFrG9WS0mBL2utZ/LijO1ZxwEl70+WsFrg2Ew==', N'22HRQ7CXHGLD5XBTPX4SUPQXK3BUXTBM', N'090f6196-ed0e-47b0-9e8e-4323900fde53', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (4, N'aaaaaaa', N'111@gmail.com', N'111@GMAIL.COM', N'111@gmail.com', N'111@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMnfODj2ixcZo/G7AxO/F7Epzr2Pn/8iQSoX0iVnXPn53luXNxc1Id2qSlK3AhCbBQ==', N'J4FKSMBIPDSKTZFFYI3LIF5JONSPICBS', N'86a24aec-5da2-4619-ab01-d86038ff53e1', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (5, N'Pepper', N'1232@gmail.com', N'1232@GMAIL.COM', N'1232@gmail.com', N'1232@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEu7ey/7+zbG1fe0TG1PD4/UlomrXd0Fps3yV+cqPGBNoi/Y3xufLXka4RVLVwNH9A==', N'XACYNDKVA5V25MRARNJSM6PANSIFCXYK', N'8f545ab8-1ef3-4a0b-9df3-d1094c0306d8', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (6, N'dat 123123', N'truongcao1@gmail.com', N'TRUONGCAO1@GMAIL.COM', N'truongcao1@gmail.com', N'TRUONGCAO1@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEK2rF7sINFAEtMjYh1E7JfaGfYwfLIDTA/Ie8o3httaBFXQbShuK+5FuFMF3Vp4qqA==', N'4QZCZCEJLMFXXH4BQRJXSK4LYD2C2AFP', N'1d714140-9284-49e3-ad19-3769e22ce162', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (7, N'Pepper', N'truongcao12312@gmail.com', N'TRUONGCAO12312@GMAIL.COM', N'truongcao12312@gmail.com', N'TRUONGCAO12312@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBVPnbCtOvUwhDzzgbftaEYxbyqBOjmriFIW8zCl+3TpzxrpoWXziN8kinF+drCHSQ==', N'3FFZ3JR5RHTF55KBUWWOPV7JFGQCT4LF', N'4e52ee6c-eeab-4122-87e9-794d965a4a63', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (8, N'Pepper123', N'111123124@gmail.com', N'111123124@GMAIL.COM', N'111123124@gmail.com', N'111123124@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHSWvpiJYJ987oVtlnecD5yomAJ67pcOZud1C8Dg3qKVmBWJJ/BTLQ7uJrCIfh+Rlg==', N'VMGBHUN6YJB7ISTXC5JPDDCKORHRICTU', N'1f3f97c4-a083-4866-8bda-774bda76328c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (9, N'Pepper123123', N'truonPepper123123gcao@gmail.com', N'TRUONPEPPER123123GCAO@GMAIL.COM', N'truonPepper123123gcao@gmail.com', N'TRUONPEPPER123123GCAO@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMU0S0l4BrzIYawRn8COaS0A54g+wbzR1AOYnm2BSrRC6bMA24Bij7DN3BhBL0MCLA==', N'Y7FRDAR62MT7Q262Q4Y6NRHONITJSGOY', N'8392e93e-72b4-4a99-bb69-3859e1691833', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (10, N'aaaaaaa123', N'aaaaaaa123@gmail.com', N'AAAAAAA123@GMAIL.COM', N'aaaaaaa123@gmail.com', N'AAAAAAA123@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEvH195yx3H1+He1UEQxc0LLHWr119GPt9e6vWRypMjPrT0IrgY6kppT+FLGMd9t2Q==', N'JQJSKO2534ALIDF2KIAUOLUB3KYD4LCB', N'93cf6dd2-50d5-482a-a5ad-af2ffd11160f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (11, N'aaaaaaa123123', N'truongcao1111@gmail.com', N'TRUONGCAO1111@GMAIL.COM', N'truongcao1111@gmail.com', N'TRUONGCAO1111@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOgBCMYfL/fvezzMBnxiqmyrXPD76oAjW18r8svdJn81KVW/U163o+xpKslrRbVA1Q==', N'VVIFYVL3VBNW7PMIC5MAJSQF2B3L24DU', N'79bb13bc-2d28-43d7-b6b3-a02690dfddee', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (12, N'Pepper', N'truongcao1521111@gmail.com', N'TRUONGCAO1521111@GMAIL.COM', N'truongcao1521111@gmail.com', N'TRUONGCAO1521111@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECv+vLXb5CCISKhGrVfmiCoaFe9v79rYfP8n0YdocA0e37s/wllfO9urqm3v63SP4Q==', N'2LVUIVJFRAP6W3I3DDRZSKHJN7DLWRHZ', N'62d7d40d-dd78-4dfa-b672-a295333d5cdd', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (13, N'aaaaaa124124', N'1xczcx12311@gmail.com', N'1XCZCX12311@GMAIL.COM', N'1xczcx12311@gmail.com', N'1XCZCX12311@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIfTu1LaFJ9wAlesW2x8XxuYWUKe5eG0wNO1kHgFn9ErxfrIejFxbBoCtax/o6bCbw==', N'W7LKOULVNL3ALUFPKJNYTTN55B65HU4T', N'b154675f-5e4b-47d8-8e58-d2c2e314114f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (14, N'Pepper', N'truo123ngcao@gmail.com', N'TRUO123NGCAO@GMAIL.COM', N'truo123ngcao@gmail.com', N'TRUO123NGCAO@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGCcRRET9Uz6n0vOjcx9J5xITFncFjFBRRcw/M5OTTpMhXx4oXVy0Vxyx7/+rWeMdQ==', N'CXWSBL7RGA2P5YAUQU6T76CHHOJXNSUS', N'448c8725-7c5c-4d47-a4ad-7f7dbe0031f5', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (15, N'ádasdasgbasv', N'truoxxxxngcao@gmail.com', N'TRUOXXXXNGCAO@GMAIL.COM', N'truoxxxxngcao@gmail.com', N'TRUOXXXXNGCAO@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEO+4JvrNCrsSNHcYP+SfWTjX9Q3m/pg7INpj6uuQRpv5ZILNABXqeGUHGl45H4dpjw==', N'IRRQ6BW7HIW7Y3WIMAAMFEYY23TQMXLN', N'c25914c0-1808-47b4-b839-182a55c3d44d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (16, N'dat 1231231', N'truonxxxxxzxcgcao1@gmail.com', N'TRUONXXXXXZXCGCAO1@GMAIL.COM', N'truonxxxxxzxcgcao1@gmail.com', N'TRUONXXXXXZXCGCAO1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELTjEKIH+umjQSxyOGyChSaM7QeCv16yMGFtUAdnFKztBrq8pD2ZdimyCwRH8JiRRw==', N'JW4AA3QQOQPPUE2E2HU4QM2FHJM76S33', N'bbfe0cc9-8419-4115-82c7-f08f1ace2bf6', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (17, N'Pepper', N'1421as11@gmail.com', N'1421AS11@GMAIL.COM', N'1421as11@gmail.com', N'1421AS11@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBuRHkukE26WtnGqWEI7zI2jbB1+1zC2nwzCe1THtnNbCbIt6I0NDldPx29AF5MTiw==', N'H7S2GOAUT5KABLWCE3M5F5L27P66NLLA', N'3039b188-c2e4-4c5f-a0db-150ff0037e29', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (3, 1)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (6, 2)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (4, 4)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (7, 4)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (4, 5)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (4, 6)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (4, 7)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (4, 8)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (5, 8)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (4, 9)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (5, 12)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (7, 12)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (5, 14)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (5, 15)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (7, 15)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (1, 17)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (2, 18)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (6, 26)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (6, 33)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (1, 34)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (1, 35)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (1, 36)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (1, 37)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (1, 38)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (2, 39)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (3, 39)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (2, 40)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (3, 40)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (2, 41)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (3, 41)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (2, 42)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (3, 42)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (2, 43)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (2, 44)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (6, 44)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (2, 45)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (3, 45)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (3, 46)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (3, 47)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (5, 48)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (5, 49)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (4, 50)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (4, 51)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (7, 52)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (7, 53)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (7, 54)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (7, 55)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (7, 56)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (5, 57)
INSERT [dbo].[dish_product] ([DishId], [ProductId]) VALUES (5, 58)
SET IDENTITY_INSERT [dbo].[dishes] ON 

INSERT [dbo].[dishes] ([Id], [Name], [Image], [Status]) VALUES (1, N'Canh chua', N'./img/canhchua.jpg', 1)
INSERT [dbo].[dishes] ([Id], [Name], [Image], [Status]) VALUES (2, N'Cá kho', N'./img/cakho.jpg', 1)
INSERT [dbo].[dishes] ([Id], [Name], [Image], [Status]) VALUES (3, N'Thịt kho', N'./img/thitkho.jpg', 1)
INSERT [dbo].[dishes] ([Id], [Name], [Image], [Status]) VALUES (4, N'Lẩu hải Sản', N'./img/Lau-hai-san.jpg', 1)
INSERT [dbo].[dishes] ([Id], [Name], [Image], [Status]) VALUES (5, N'Súp cua', N'./img/supcua.jpg', 1)
INSERT [dbo].[dishes] ([Id], [Name], [Image], [Status]) VALUES (6, N'Canh khổ qua', N'./img/canhkhoqua.jpg', 1)
INSERT [dbo].[dishes] ([Id], [Name], [Image], [Status]) VALUES (7, N'Cà ri', N'./img/cari.jpg', 1)
SET IDENTITY_INSERT [dbo].[dishes] OFF
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (1, N'Thịt ba chỉ', 1000, N'gram', 18, N'./img/thitbachi.png', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (2, N'Thịt xay', 1000, N'gram', 18, N'./img/thitxay.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (3, N'Xương heo', 1000, N'gram', 18, N'./img/xuongheo.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (4, N'cá thu', 1000, N'gram', 22, N'./img/cathu.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (5, N'Mực', 1000, N'gram', 22, N'./img/muc.png', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (6, N'bạch tuộc', 1000, N'gram', 22, N'./img/bachtuoc.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (7, N'Tôm', 1000, N'gram', 14, N'./img/tom.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (8, N'Cua biển', 1000, N'gram', 22, N'./img/cuabien.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (9, N'Nghêu', 1000, N'gram', 12, N'./img/ngheu.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (10, N'Sò huyết', 1000, N'gram', 16, N'./img/sohuyet.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (11, N'Thịt bò', 1000, N'gram', 20, N'./img/thitbo.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (12, N'Thịt gà', 1000, N'gram', 11, N'./img/thitga.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (13, N'Trứng gà', 1000, N'chục', 28, N'./img/trungga.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (14, N'Trứng cút', 1000, N'chục', 28, N'./img/trungcut.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (15, N'Trứng bách thảo', 1000, N'chục', 70, N'./img/trungbachthao.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (16, N'Lươn', 1000, N'gram', 13, N'./img/luon.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (17, N'Cá dìa', 1000, N'gram', 20, N'./img/cadia.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (18, N'Cá Ngừ', 1000, N'gram', 40, N'./img/cangu.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (19, N'Dầu ăn Simply', 1000, N'L', 60, N'./img/symply.png', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (20, N'Dầu ăn Meizan', 1000, N'L', 48, N'./img/meizan.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (21, N'Dầu ăn Happy Koki', 1000, N'L', 35, N'./img/happykoki.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (22, N'Dầu ăn Tường an', 1000, N'L', 44, N'./img/tuongan.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (24, N'Rau Mùng tơi', 1000, N'gram', 4, N'./img/mongtoi.png', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (25, N'Rau Xà lách', 1000, N'gram', 4, N'./img/xalach.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (26, N'Rau Ngò', 1000, N'gram', 4, N'./img/ngo.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (27, N'Hành lá', 1000, N'gram', 4, N'./img/hanhla.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (28, N'Súp lơ', 1000, N'gram', 6, N'./img/suplo.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (29, N'Rau Tía tô', 1000, N'gram', 4, N'./img/tiato.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (30, N'Cải thìa', 1000, N'gram', 4, N'./img/caithia.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (31, N'Cải ngọt', 1000, N'gram', 4, N'./img/caingot.jpeg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (32, N'Cải bẹ', 1000, N'gram', 4, N'./img/caibe.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (33, N'khổ qua', 1000, N'gram', 4, N'./img/khoqua.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (34, N'Giá đỗ', 1000, N'gram', 3, N'./img/giado.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (35, N'Đậu bắp', 1000, N'gram', 3, N'./img/daubap.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (36, N'Thơm', 1000, N'gram', 3, N'./img/thom.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (37, N'Măng chua', 1000, N'gram', 5, N'./img/mangchua.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (38, N'Gói gia vị Canh chua', 1000, N'gói', 5, N'./img/giavicanhchua.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (39, N'Hành tím', 1000, N'gram', 3, N'./img/hanhtim.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (40, N'Tỏi', 1000, N'gram', 3, N'./img/toi.jpeg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (41, N'Sã', 1000, N'gram', 3, N'./img/sa.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (42, N'Ớt', 1000, N'gram', 3, N'./img/ot.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (43, N'Rựu trắng', 13, N'0.5L', 13, N'./img/ruutrang.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (44, N'Tiêu', 1000, N'gram', 12, N'./img/tieu.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (45, N'Gói gia vị Cá kho', 1000, N'gói', 5, N'./img/giavicakho.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (46, N'Nước Dừa', 1000, N'trái', 16, N'./img/nuocdua.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (47, N'Gói gia vị thịt kho', 1000, N'gói', 5, N'./img/giavithitkho.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (48, N'Nấm Rơm', 1000, N'gram', 16, N'./img/namrom.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (49, N'Nấm Kim châm', 1000, N'gram', 12, N'./img/namkimcham.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (50, N'Bắp Mĩ', 1000, N'gram', 16, N'./img/bapmi.jpeg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (51, N'Bột năng', 1000, N'gram', 13, N'./img/botnang.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (52, N'khoai lang', 1000, N'gram', 4, N'./img/khoailang.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (53, N'khoai tây', 1000, N'gram', 4, N'./img/khoaitay.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (54, N'Su su', 1000, N'gram', 4, N'./img/susu.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (55, N'Nước cốt dừa', 1000, N'lon', 18, N'./img/nuoccotdua.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (56, N'Gói Ngũ vị hương', 1000, N'gói', 5, N'./img/nguvihuong.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (57, N'Bột bắp', 1000, N'gram', 13, N'./img/botbap.jpg', NULL)
INSERT [dbo].[products] ([Id], [Name], [Quantity], [Unit], [Price], [Image], [CategoryId]) VALUES (58, N'Nấm đông cô', 1000, N'gram', 16, N'./img/namdongco.jpg', NULL)
SET IDENTITY_INSERT [dbo].[products] OFF
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 8/26/2023 12:26:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/26/2023 12:26:05 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 8/26/2023 12:26:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 8/26/2023 12:26:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 8/26/2023 12:26:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 8/26/2023 12:26:05 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/26/2023 12:26:05 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_dish_product_ProductId]    Script Date: 8/26/2023 12:26:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_dish_product_ProductId] ON [dbo].[dish_product]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_order_details_DishId]    Script Date: 8/26/2023 12:26:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_order_details_DishId] ON [dbo].[order_details]
(
	[DishId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_order_details_OrderId]    Script Date: 8/26/2023 12:26:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_order_details_OrderId] ON [dbo].[order_details]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_order_details_ProductId]    Script Date: 8/26/2023 12:26:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_order_details_ProductId] ON [dbo].[order_details]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_orders_CustomerId]    Script Date: 8/26/2023 12:26:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_orders_CustomerId] ON [dbo].[orders]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_orders_EmployeeId]    Script Date: 8/26/2023 12:26:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_orders_EmployeeId] ON [dbo].[orders]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_products_CategoryId]    Script Date: 8/26/2023 12:26:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_products_CategoryId] ON [dbo].[products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[customers]  WITH CHECK ADD  CONSTRAINT [FK_customers_AspNetUsers_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customers] CHECK CONSTRAINT [FK_customers_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[dish_product]  WITH CHECK ADD  CONSTRAINT [FK_dish_product_dishes_DishId] FOREIGN KEY([DishId])
REFERENCES [dbo].[dishes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[dish_product] CHECK CONSTRAINT [FK_dish_product_dishes_DishId]
GO
ALTER TABLE [dbo].[dish_product]  WITH CHECK ADD  CONSTRAINT [FK_dish_product_products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[dish_product] CHECK CONSTRAINT [FK_dish_product_products_ProductId]
GO
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [FK_employees_AspNetUsers_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [FK_employees_AspNetUsers_Id]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK_order_details_dishes_DishId] FOREIGN KEY([DishId])
REFERENCES [dbo].[dishes] ([Id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK_order_details_dishes_DishId]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK_order_details_orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[orders] ([Id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK_order_details_orders_OrderId]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK_order_details_products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[products] ([Id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK_order_details_products_ProductId]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[customers] ([Id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_customers_CustomerId]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_employees_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[employees] ([Id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_employees_EmployeeId]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[categories] ([Id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [PepperShopDB] SET  READ_WRITE 
GO
