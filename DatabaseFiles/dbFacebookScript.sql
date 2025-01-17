USE [master]
GO
/****** Object:  Database [dbFaceBook]    Script Date: 3/16/2023 7:29:08 PM ******/
CREATE DATABASE [dbFaceBook]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbFaceBook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\dbFaceBook.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbFaceBook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\dbFaceBook_log.ldf' , SIZE = 3520KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbFaceBook] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbFaceBook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbFaceBook] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbFaceBook] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbFaceBook] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbFaceBook] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbFaceBook] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbFaceBook] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbFaceBook] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbFaceBook] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbFaceBook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbFaceBook] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbFaceBook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbFaceBook] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbFaceBook] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbFaceBook] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbFaceBook] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbFaceBook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbFaceBook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbFaceBook] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbFaceBook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbFaceBook] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbFaceBook] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [dbFaceBook] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbFaceBook] SET RECOVERY FULL 
GO
ALTER DATABASE [dbFaceBook] SET  MULTI_USER 
GO
ALTER DATABASE [dbFaceBook] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbFaceBook] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbFaceBook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbFaceBook] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [dbFaceBook] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbFaceBook', N'ON'
GO
USE [dbFaceBook]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/16/2023 7:29:08 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/16/2023 7:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/16/2023 7:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/16/2023 7:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/16/2023 7:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/16/2023 7:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/16/2023 7:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/16/2023 7:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
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
/****** Object:  Table [dbo].[Comments]    Script Date: 3/16/2023 7:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[CommentDateTime] [datetime2](7) NOT NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 3/16/2023 7:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PostDateTime] [datetime2](7) NOT NULL,
	[Post] [nvarchar](max) NULL,
	[ImageName] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220511120432_FaceBookUser', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220513115149_Post', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220513123252_UserPost', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220519054906_UserComment', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220519055912_UserComment', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220519092712_PostIdDTchanged', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230316133234_ForPostImage', N'3.1.25')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [PasswordHash], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'33b22940-f8e6-4cd5-a226-77f94b1303ab', N'asad@gmail.com', N'Ahmed', N'Hussain', N'asad@gmail.com', N'+923001234567', N'AQAAAAEAACcQAAAAEHkG+LbaivMbkYIF9ILIIYxYyNnvGj3F6sDJM8VIVJtQYlBEerhTfSO/NmMUaTR8qg==', N'ASAD@GMAIL.COM', N'ASAD@GMAIL.COM', 0, N'YYYS7J3QWBIVDPYRJCZT5CLRA4VLVPAC', N'3d7eff50-56d4-4653-b98c-a1b5ccffd0cb', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [PasswordHash], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'600c579e-6484-43fe-bc29-6701407e1138', N'akmal@gmail.com', N'Akmal', N'Khan', N'akmal@gmail.com', N'+923052038680', N'AQAAAAEAACcQAAAAEI1ft/1rygkSUZYpcprDq7JUkDLuvVWEVXV7Me748Z2oswvRznbQiVjCv6/exCwt/g==', N'AKMAL@GMAIL.COM', N'AKMAL@GMAIL.COM', 0, N'DZNUVLGOIXBAQADJNKBOSFIMKPQCWGMQ', N'89d38c3e-8515-4cc5-8884-e0a19d346317', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [PasswordHash], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'81f2112c-f28b-4903-a631-d42911486788', N'akmalshah@gmail.com', N'Akmal', N'Shah', N'akmalshah@gmail.com', N'+923135643512', N'AQAAAAEAACcQAAAAEAMfD9pfCjPi9FUgObEDADO7zCaqpquZ1+H5pSOS1LJrzjGPq1WbVK6C8GNFSZI+8g==', N'AKMALSHAH@GMAIL.COM', N'AKMALSHAH@GMAIL.COM', 0, N'2JQLZQIY6FJR2GPLO7OW3XKPQQ2CXQ72', N'66494d55-8b34-4ce9-aacf-5324f859b4f3', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [PasswordHash], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'85cc1a74-edf8-4bf1-9489-3e5fc40bb8d6', N'farooqalwi313@gmail.com', N'Muhammad', N'Farooq', N'farooqalwi313@gmail.com', N'+923052038680', N'AQAAAAEAACcQAAAAEDYFNNgfkaE3u0bTWuWCykWFxJKdc9e/WmBSs3ZZjfAYAujuURrb2hkaHt1Rh1taAg==', N'FAROOQALWI313@GMAIL.COM', N'FAROOQALWI313@GMAIL.COM', 0, N'DE4H3EUO54SNQ3IY3BOS6CXVAR7W5VYS', N'0401fb9e-9981-4f35-9911-87403051168c', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [PasswordHash], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ba884931-7c82-47b3-8775-458cfa96c90f', N'asadali@gmail.com', N'Asad', N'Ali', N'asadali@gmail.com', N'+923111324567', N'AQAAAAEAACcQAAAAEJ3axvNKKh3fT+6CecoOP6MSGNDCb0J322FVnEsh01KvKu3yakXDedjdSkwYplqF/A==', N'ASADALI@GMAIL.COM', N'ASADALI@GMAIL.COM', 0, N'KQF3UCRK2JUKOVBRTSGIPJFAWWOXXFCD', N'0f21aa26-d382-48eb-b699-8f1b598d3cad', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [PasswordHash], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ff174a0b-816f-46a2-96f4-ccc8571690ba', N'saad@gmail.com', N'Saad', N'Hussain', N'saad@gmail.com', N'+923330987654', N'AQAAAAEAACcQAAAAEN4dcWYEYYJpOK1e6NY8WjQnwfdGJD2etaVZADI6KdXaEN2Qpgm5LN8ZucgcfnFugA==', N'SAAD@GMAIL.COM', N'SAAD@GMAIL.COM', 0, N'SXMLNAUO5XZ664FYUWWB47VMDSFPYDNP', N'86942ac5-31d7-43e2-b933-1b5496f9f395', 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [PostID], [FirstName], [LastName], [Email], [CommentDateTime], [Comment]) VALUES (1, 5, N'Ahmed', N'Hussain', N'asad@gmail.com', CAST(N'2022-05-24T19:01:56.2616996' AS DateTime2), N'واہ')
INSERT [dbo].[Comments] ([Id], [PostID], [FirstName], [LastName], [Email], [CommentDateTime], [Comment]) VALUES (2, 1003, N'Ahmed', N'Hussain', N'asad@gmail.com', CAST(N'2022-05-24T19:46:27.9364026' AS DateTime2), N'Absolute')
INSERT [dbo].[Comments] ([Id], [PostID], [FirstName], [LastName], [Email], [CommentDateTime], [Comment]) VALUES (4, 1006, N'Akmal', N'Khan', N'akmal@gmail.com', CAST(N'2022-05-25T11:35:20.6077231' AS DateTime2), N'بہترین')
INSERT [dbo].[Comments] ([Id], [PostID], [FirstName], [LastName], [Email], [CommentDateTime], [Comment]) VALUES (5, 1004, N'Akmal', N'Khan', N'akmal@gmail.com', CAST(N'2022-05-25T11:47:49.1035929' AS DateTime2), N'Agreed')
INSERT [dbo].[Comments] ([Id], [PostID], [FirstName], [LastName], [Email], [CommentDateTime], [Comment]) VALUES (6, 1009, N'Akmal', N'Khan', N'akmal@gmail.com', CAST(N'2022-05-25T12:01:40.1126377' AS DateTime2), N'Absolute')
INSERT [dbo].[Comments] ([Id], [PostID], [FirstName], [LastName], [Email], [CommentDateTime], [Comment]) VALUES (7, 1003, N'Akmal', N'Khan', N'akmal@gmail.com', CAST(N'2022-05-25T12:03:25.8224872' AS DateTime2), N'Sure')
INSERT [dbo].[Comments] ([Id], [PostID], [FirstName], [LastName], [Email], [CommentDateTime], [Comment]) VALUES (9, 1004, N'Saad', N'Hussain', N'saad@gmail.com', CAST(N'2022-05-25T12:51:09.1287519' AS DateTime2), N'Thanks')
INSERT [dbo].[Comments] ([Id], [PostID], [FirstName], [LastName], [Email], [CommentDateTime], [Comment]) VALUES (10, 7, N'Ahmed', N'Hussain', N'asad@gmail.com', CAST(N'2022-05-25T18:21:01.6180816' AS DateTime2), N'آمین')
INSERT [dbo].[Comments] ([Id], [PostID], [FirstName], [LastName], [Email], [CommentDateTime], [Comment]) VALUES (11, 10, N'Akmal', N'Khan', N'akmal@gmail.com', CAST(N'2022-05-25T18:21:47.2003279' AS DateTime2), N'of course')
INSERT [dbo].[Comments] ([Id], [PostID], [FirstName], [LastName], [Email], [CommentDateTime], [Comment]) VALUES (12, 1007, N'Akmal', N'Khan', N'akmal@gmail.com', CAST(N'2022-05-26T12:54:39.9244524' AS DateTime2), N'good')
INSERT [dbo].[Comments] ([Id], [PostID], [FirstName], [LastName], [Email], [CommentDateTime], [Comment]) VALUES (13, 1002, N'Akmal', N'Khan', N'akmal@gmail.com', CAST(N'2022-05-26T13:00:31.8465535' AS DateTime2), N'👍')
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([Id], [FirstName], [LastName], [Email], [PostDateTime], [Post], [ImageName], [ImagePath]) VALUES (1, N'Akmal', N'Khan', N'akmal@gmail.com', CAST(N'2022-05-13T17:39:12.6492120' AS DateTime2), N'The best outlining app for your best work
Where brilliant ideas are captured, fleshed out, and realized.', NULL, NULL)
INSERT [dbo].[Posts] ([Id], [FirstName], [LastName], [Email], [PostDateTime], [Post], [ImageName], [ImagePath]) VALUES (2, N'Ahmed', N'Hussain', N'asad@gmail.com', CAST(N'2022-05-13T17:39:45.8657854' AS DateTime2), N'Certification on Linux Essential Course completion which steps forward to earn professional Certificate from the Linux Professional Institute (LPI).
Thanks for CISCO Academy and SMIT who gave guidance in being certified.', NULL, NULL)
INSERT [dbo].[Posts] ([Id], [FirstName], [LastName], [Email], [PostDateTime], [Post], [ImageName], [ImagePath]) VALUES (4, N'Muhammad', N'Farooq', N'farooqalwi313@gmail.com', CAST(N'2022-05-14T20:11:53.0675265' AS DateTime2), N'For all curriculum related content, tools and supplements that should be accessible for students.', NULL, NULL)
INSERT [dbo].[Posts] ([Id], [FirstName], [LastName], [Email], [PostDateTime], [Post], [ImageName], [ImagePath]) VALUES (5, N'Saad', N'Hussain', N'saad@gmail.com', CAST(N'2022-05-14T20:21:52.1117529' AS DateTime2), N'یہ الگ بات کہ خاموش کھڑے رہتے ہیں 
پھر بھی جولوگ بڑے ہیں وہ بڑے رہتے ہیں
ایسے درویشوں سے ملتا ہے ہمارا شجرہ
جن کے جوتوں میں کئی تاج پڑے رہتے ہیں', NULL, NULL)
INSERT [dbo].[Posts] ([Id], [FirstName], [LastName], [Email], [PostDateTime], [Post], [ImageName], [ImagePath]) VALUES (7, N'Akmal', N'Khan', N'akmal@gmail.com', CAST(N'2022-05-14T20:56:42.1076456' AS DateTime2), N'بہترین دعا:--------------

سبحان الله وبحمدہ سبحان العظیم

(اللهم اغفرلنا قبل الموت) 

یااللہ موت سے پہلے ہم کو معاف فرما ....

 (وارحمنا عندالموت)

 اور موت کے وقت ہم پر رحم فرما ... 

(ولاتعذبنا بعدالموت) 

اور ہم کو موت کے بعد عذاب نہ دینا ...

 (ولاتحاسبنا يوم القيامة) 

اور ہم سے قیامت کے دن حساب نہ لینا ... 

(انك علی كل شيئ قدير)

 بے شک تو ہر چیز پر قادر ہے ...', NULL, NULL)
INSERT [dbo].[Posts] ([Id], [FirstName], [LastName], [Email], [PostDateTime], [Post], [ImageName], [ImagePath]) VALUES (8, N'Ahmed', N'Hussain', N'asad@gmail.com', CAST(N'2022-05-16T11:29:15.2162093' AS DateTime2), N'W3Schools is optimized for learning and training. Examples might be simplified to improve reading and learning. Tutorials, references, and examples are constantly reviewed to avoid errors, but we cannot warrant full correctness of all content. While using W3Schools, you agree to have read and accepted our terms of use, cookie and privacy policy.', NULL, NULL)
INSERT [dbo].[Posts] ([Id], [FirstName], [LastName], [Email], [PostDateTime], [Post], [ImageName], [ImagePath]) VALUES (9, N'Ahmed', N'Hussain', N'asad@gmail.com', CAST(N'2022-05-16T12:20:25.0869778' AS DateTime2), N'--------- "بڑا آدمی" ---------
ابّا مجھے بڑا آدمی بننا ہے ، بہت بڑا . بہت پیسہ کمانا ہے ،بہت شہرت و نام کمانا ہے اور بڑی کامیابی چاہیے
بڑا آدمی وہ ہوتا ہے جسے پتا ہو کے وہ سب سے چھوٹا ہے', NULL, NULL)
INSERT [dbo].[Posts] ([Id], [FirstName], [LastName], [Email], [PostDateTime], [Post], [ImageName], [ImagePath]) VALUES (10, N'Ahmed', N'Hussain', N'asad@gmail.com', CAST(N'2022-05-16T14:31:57.5286558' AS DateTime2), N'اختتام ایک نئی منزل کا آغاز ہوتا ہے۔
یہ سارا سفر ہی سفر ہے منزل کوئی نہیں۔', NULL, NULL)
INSERT [dbo].[Posts] ([Id], [FirstName], [LastName], [Email], [PostDateTime], [Post], [ImageName], [ImagePath]) VALUES (1002, N'Saad', N'Hussain', N'saad@gmail.com', CAST(N'2022-05-17T11:39:38.2721451' AS DateTime2), N'imagine that there is an illiterate shepherd who can count only 
upto 20.', NULL, NULL)
INSERT [dbo].[Posts] ([Id], [FirstName], [LastName], [Email], [PostDateTime], [Post], [ImageName], [ImagePath]) VALUES (1003, N'Saad', N'Hussain', N'saad@gmail.com', CAST(N'2022-05-17T11:44:05.9622351' AS DateTime2), N'As an example, he said that if we take the diameter of the Earth as compared to distance between Earth and Sun, the diameter of earth can be said to be zero since it is too small.', NULL, NULL)
INSERT [dbo].[Posts] ([Id], [FirstName], [LastName], [Email], [PostDateTime], [Post], [ImageName], [ImagePath]) VALUES (1004, N'Saad', N'Hussain', N'saad@gmail.com', CAST(N'2022-05-17T11:44:43.5697878' AS DateTime2), N'If your income is more than your wants 
you are rich.
If your wants are more than your income
you are poor.', NULL, NULL)
INSERT [dbo].[Posts] ([Id], [FirstName], [LastName], [Email], [PostDateTime], [Post], [ImageName], [ImagePath]) VALUES (1005, N'Akmal', N'Khan', N'akmal@gmail.com', CAST(N'2022-05-17T11:46:44.3986090' AS DateTime2), N'I have become rich not so much by acquiring lots of money, but by progressively reducing my wants.', NULL, NULL)
INSERT [dbo].[Posts] ([Id], [FirstName], [LastName], [Email], [PostDateTime], [Post], [ImageName], [ImagePath]) VALUES (1006, N'Ahmed', N'Hussain', N'asad@gmail.com', CAST(N'2022-05-17T11:59:53.0000000' AS DateTime2), N'یقین کا نہ آناہی بہتر ہے۔ یہ ڈروخوف رہے کہ جو کچھ بھی کر رہا ہے پتا نہیں قبول ہو گا بھی کہ نہیں بڑی اچھی چیز ہے ۔ اسی امید وخوف کے بیچ زندگی گزر جاۓ ، جوانی میں خوف غالب ر ہے تو بڑھاپے میں امید ۔ یقین کا نہ ملناہی اچھی بات ہے۔', NULL, NULL)
INSERT [dbo].[Posts] ([Id], [FirstName], [LastName], [Email], [PostDateTime], [Post], [ImageName], [ImagePath]) VALUES (1007, N'Saad', N'Hussain', N'saad@gmail.com', CAST(N'2022-05-17T13:02:08.7648628' AS DateTime2), N'It all depends on the scale of comparison with your wants.', NULL, NULL)
INSERT [dbo].[Posts] ([Id], [FirstName], [LastName], [Email], [PostDateTime], [Post], [ImageName], [ImagePath]) VALUES (1009, N'Ahmed', N'Hussain', N'asad@gmail.com', CAST(N'2022-05-17T13:03:05.5644011' AS DateTime2), N'1. What is ZERO?
2. What is INFINITY?
3. Can ZERO and INFINITY be same?', NULL, NULL)
INSERT [dbo].[Posts] ([Id], [FirstName], [LastName], [Email], [PostDateTime], [Post], [ImageName], [ImagePath]) VALUES (1011, N'Ahmed', N'Hussain', N'asad@gmail.com', CAST(N'2023-03-16T18:40:11.3493550' AS DateTime2), N'The blue sky.', N'sky_stars.jpg', N'/Images/sky_stars.jpg')
INSERT [dbo].[Posts] ([Id], [FirstName], [LastName], [Email], [PostDateTime], [Post], [ImageName], [ImagePath]) VALUES (1012, N'Ahmed', N'Hussain', N'asad@gmail.com', CAST(N'2023-03-16T18:42:46.4327486' AS DateTime2), N'The only true wisdom is in knowing you know nothing.', NULL, NULL)
INSERT [dbo].[Posts] ([Id], [FirstName], [LastName], [Email], [PostDateTime], [Post], [ImageName], [ImagePath]) VALUES (1013, N'Ahmed', N'Hussain', N'asad@gmail.com', CAST(N'2023-03-16T19:23:41.5817385' AS DateTime2), N'HTTP Codes', N'HTTP code.jpg', N'/Images/HTTP code.jpg')
SET IDENTITY_INSERT [dbo].[Posts] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3/16/2023 7:29:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/16/2023 7:29:08 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3/16/2023 7:29:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3/16/2023 7:29:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3/16/2023 7:29:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3/16/2023 7:29:08 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/16/2023 7:29:08 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
USE [master]
GO
ALTER DATABASE [dbFaceBook] SET  READ_WRITE 
GO
