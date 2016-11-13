/****** Object:  Table [dbo].[Area]    Script Date: 13.08.2016 11:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[AreaID] [int] IDENTITY(1,1) NOT NULL,
	[CountyID] [int] NOT NULL,
	[AreaName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[AreaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cities]    Script Date: 13.08.2016 11:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NOT NULL,
	[CityName] [nvarchar](100) NOT NULL,
	[PlateNo] [nvarchar](2) NOT NULL,
	[PhoneCode] [nvarchar](7) NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Counties]    Script Date: 13.08.2016 11:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Counties](
	[CountyID] [int] IDENTITY(1,1) NOT NULL,
	[CityID] [int] NOT NULL,
	[CountyName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Counties] PRIMARY KEY CLUSTERED 
(
	[CountyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countries]    Script Date: 13.08.2016 11:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[BinaryCode] [nvarchar](2) NOT NULL,
	[TripleCode] [nvarchar](3) NOT NULL,
	[CountryName] [nvarchar](100) NOT NULL,
	[PhoneCode] [nvarchar](6) NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Neighborhood]    Script Date: 13.08.2016 11:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Neighborhood](
	[NeighborhoodID] [int] IDENTITY(1,1) NOT NULL,
	[AreaID] [int] NOT NULL,
	[NeighborhoodName] [nvarchar](100) NOT NULL,
	[ZipCode] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Neighborhood] PRIMARY KEY CLUSTERED 
(
	[NeighborhoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Area]  WITH CHECK ADD  CONSTRAINT [FK_Area_Counties] FOREIGN KEY([CountyID])
REFERENCES [dbo].[Counties] ([CountyID])
GO
ALTER TABLE [dbo].[Area] CHECK CONSTRAINT [FK_Area_Counties]
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Countries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Countries] ([CountryID])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_Countries]
GO
ALTER TABLE [dbo].[Counties]  WITH CHECK ADD  CONSTRAINT [FK_Counties_Cities] FOREIGN KEY([CityID])
REFERENCES [dbo].[Cities] ([CityID])
GO
ALTER TABLE [dbo].[Counties] CHECK CONSTRAINT [FK_Counties_Cities]
GO
ALTER TABLE [dbo].[Neighborhood]  WITH CHECK ADD  CONSTRAINT [FK_Neighborhood_Area] FOREIGN KEY([AreaID])
REFERENCES [dbo].[Area] ([AreaID])
GO
ALTER TABLE [dbo].[Neighborhood] CHECK CONSTRAINT [FK_Neighborhood_Area]
GO