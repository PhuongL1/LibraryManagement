USE [LibraryDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/14/2024 7:29:31 AM ******/
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
/****** Object:  Table [dbo].[Books]    Script Date: 10/14/2024 7:29:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Author] [nvarchar](max) NOT NULL,
	[Genre] [nvarchar](max) NOT NULL,
	[YearPublished] [int] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240926155317_InitialCreate', N'6.0.6')
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([Id], [Title], [Author], [Genre], [YearPublished]) VALUES (1, N'The Great Gatsby', N'F. Scott Fitzgerald', N'Fiction', 1925)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Genre], [YearPublished]) VALUES (2, N'To Kill a Mockingbird', N'Harper Lee', N'Fiction', 1960)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Genre], [YearPublished]) VALUES (3, N'To Kill a Mockingbird (Updated)', N'Harper Lee', N'Fiction', 1960)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
