USE [TaskManagementDb]
GO
/****** Object:  User [onur]    Script Date: 23.08.2024 11:19:10 ******/
CREATE USER [onur] FOR LOGIN [onur] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 23.08.2024 11:19:10 ******/
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
/****** Object:  Table [dbo].[Projects]    Script Date: 23.08.2024 11:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[ProjectId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectTasks]    Script Date: 23.08.2024 11:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTasks](
	[ProjectTaskId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[DueDate] [datetime2](7) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[Priority] [nvarchar](max) NOT NULL,
	[ProjectId] [int] NOT NULL,
 CONSTRAINT [PK_ProjectTasks] PRIMARY KEY CLUSTERED 
(
	[ProjectTaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 23.08.2024 11:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Role] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240822075127_mig1', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240822082751_mig2', N'8.0.8')
GO
SET IDENTITY_INSERT [dbo].[Projects] ON 

INSERT [dbo].[Projects] ([ProjectId], [Name], [Description], [UserId]) VALUES (2, N'Deneme', N'Deneme projesidir', 1)
INSERT [dbo].[Projects] ([ProjectId], [Name], [Description], [UserId]) VALUES (4, N'İkinci Proje', N'Bu proje ikinci örnek projedir.', 3)
INSERT [dbo].[Projects] ([ProjectId], [Name], [Description], [UserId]) VALUES (5, N'Üçüncü Proje', N'Bu proje üçüncü örnek projedir.', 1)
INSERT [dbo].[Projects] ([ProjectId], [Name], [Description], [UserId]) VALUES (6, N'Dördüncü Proje', N'Bu proje dördüncü örnek projedir.', 2)
SET IDENTITY_INSERT [dbo].[Projects] OFF
GO
SET IDENTITY_INSERT [dbo].[ProjectTasks] ON 

INSERT [dbo].[ProjectTasks] ([ProjectTaskId], [Title], [Description], [DueDate], [Status], [Priority], [ProjectId]) VALUES (2, N'İlk Görev', N'Projenin ilk görevi.', CAST(N'2024-08-25T00:00:00.0000000' AS DateTime2), N'Beklemede', N'Yüksek', 2)
INSERT [dbo].[ProjectTasks] ([ProjectTaskId], [Title], [Description], [DueDate], [Status], [Priority], [ProjectId]) VALUES (3, N'İlk Görev', N'Projenin ilk görevi.', CAST(N'2024-08-25T00:00:00.0000000' AS DateTime2), N'Beklemede', N'Yüksek', 2)
INSERT [dbo].[ProjectTasks] ([ProjectTaskId], [Title], [Description], [DueDate], [Status], [Priority], [ProjectId]) VALUES (4, N'İkinci Görev', N'Projenin ikinci görevi.', CAST(N'2024-09-10T00:00:00.0000000' AS DateTime2), N'Tamamlandı', N'Orta', 2)
INSERT [dbo].[ProjectTasks] ([ProjectTaskId], [Title], [Description], [DueDate], [Status], [Priority], [ProjectId]) VALUES (6, N'Üçüncü Görev', N'Projenin üçüncü görevi.', CAST(N'2024-09-15T00:00:00.0000000' AS DateTime2), N'İptal Edildi', N'Düşük', 5)
SET IDENTITY_INSERT [dbo].[ProjectTasks] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Username], [Role], [Password]) VALUES (1, N'Ahmet', N'admin', N'4747')
INSERT [dbo].[Users] ([UserId], [Username], [Role], [Password]) VALUES (2, N'Merve', N'user', N'1616')
INSERT [dbo].[Users] ([UserId], [Username], [Role], [Password]) VALUES (3, N'Nazan', N'admin', N'4747')
INSERT [dbo].[Users] ([UserId], [Username], [Role], [Password]) VALUES (4, N'kerem', N'admin', N'7272')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (N'') FOR [Password]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Users_UserId]
GO
ALTER TABLE [dbo].[ProjectTasks]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTasks_Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([ProjectId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectTasks] CHECK CONSTRAINT [FK_ProjectTasks_Projects_ProjectId]
GO
