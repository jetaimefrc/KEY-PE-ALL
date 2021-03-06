USE [master]
GO
/****** Object:  Database [SE1212]    Script Date: 7/20/2018 11:43:22 PM ******/
CREATE DATABASE [SE1212]
 GO
USE [SE1212]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 7/20/2018 11:43:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[ID] [nvarchar](10) NOT NULL,
	[NameDepart] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentInfo]    Script Date: 7/20/2018 11:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentInfo](
	[ID] [nvarchar](10) NOT NULL,
	[NameStu] [nvarchar](50) NOT NULL,
	[DepartID] [nvarchar](10) NOT NULL,
	[Gender] [bit] NULL,
	[Age] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Department] ([ID], [NameDepart]) VALUES (N'1', N'Kĩ Thuật Phần Mềm')
INSERT [dbo].[Department] ([ID], [NameDepart]) VALUES (N'2', N'Quản trị Kinh Doanh')
INSERT [dbo].[Department] ([ID], [NameDepart]) VALUES (N'3', N'Đồ họa')
INSERT [dbo].[Department] ([ID], [NameDepart]) VALUES (N'4', N'Ngôn Ngữ Nhật')
INSERT [dbo].[Department] ([ID], [NameDepart]) VALUES (N'5', N'Ngôn Ngữ Anh')
INSERT [dbo].[StudentInfo] ([ID], [NameStu], [DepartID], [Gender], [Age]) VALUES (N'1', N'Nhat Dep trai', N'1', 1, 23)
INSERT [dbo].[StudentInfo] ([ID], [NameStu], [DepartID], [Gender], [Age]) VALUES (N'10', N'Xuan Truong', N'2', 1, 49)
INSERT [dbo].[StudentInfo] ([ID], [NameStu], [DepartID], [Gender], [Age]) VALUES (N'11', N'AAAA', N'2', 1, 46)
INSERT [dbo].[StudentInfo] ([ID], [NameStu], [DepartID], [Gender], [Age]) VALUES (N'12', N'ASDASD', N'2', 0, 19)
INSERT [dbo].[StudentInfo] ([ID], [NameStu], [DepartID], [Gender], [Age]) VALUES (N'13', N'AXXXXXXXXZ', N'2', 0, 19)
INSERT [dbo].[StudentInfo] ([ID], [NameStu], [DepartID], [Gender], [Age]) VALUES (N'3', N'Hòa', N'3', 1, 32)
INSERT [dbo].[StudentInfo] ([ID], [NameStu], [DepartID], [Gender], [Age]) VALUES (N'5', N'Đức Cancer', N'3', 1, 52)
INSERT [dbo].[StudentInfo] ([ID], [NameStu], [DepartID], [Gender], [Age]) VALUES (N'8', N'Hiep Oc Cho XXX', N'3', 0, 60)
INSERT [dbo].[StudentInfo] ([ID], [NameStu], [DepartID], [Gender], [Age]) VALUES (N'9', N'Khanh Huyen A', N'1', 1, 20)
ALTER TABLE [dbo].[StudentInfo]  WITH CHECK ADD FOREIGN KEY([DepartID])
REFERENCES [dbo].[Department] ([ID])
GO
USE [master]
GO
ALTER DATABASE [SE1212] SET  READ_WRITE 
GO
