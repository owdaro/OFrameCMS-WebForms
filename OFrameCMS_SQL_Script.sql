
/****** Object:  Table [dbo].[GY_Albums]    Script Date: 03/06/2015 01:39:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GY_Albums](
	[AlbumID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Location] [nvarchar](250) NULL,
	[TakenOn] [datetime] NULL,
	[AddedOn] [datetime] NOT NULL,
	[Hide] [bit] NOT NULL,
	[Tags] [nvarchar](250) NULL,
	[EventID] [int] NULL,
	[ImageID] [int] NULL,
	[Locale] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Albums] PRIMARY KEY CLUSTERED 
(
	[AlbumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GY_AudioCategories]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GY_AudioCategories](
	[AudioCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
	[ImageID] [int] NULL,
	[Locale] [nvarchar](10) NOT NULL,
	[ParentAudioCategoryID] [int] NULL,
 CONSTRAINT [PK_AudioCategories] PRIMARY KEY CLUSTERED 
(
	[AudioCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GY_Audios]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GY_Audios](
	[AudioID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
	[AddedOn] [datetime] NOT NULL,
	[TakenOn] [datetime] NULL,
	[Tags] [nvarchar](250) NULL,
	[Location] [nvarchar](250) NULL,
	[AudioSetID] [int] NULL,
	[AudioCategoryID] [int] NOT NULL,
	[LocalAudioURL] [nvarchar](max) NULL,
	[WebAudioURL] [nvarchar](max) NULL,
	[ShowWebAudio] [bit] NOT NULL,
	[FileID] [bigint] NULL,
	[Length] [nvarchar](50) NULL,
	[LikesCount] [float] NOT NULL,
	[DislikesCount] [float] NOT NULL,
	[Locale] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Audios] PRIMARY KEY CLUSTERED 
(
	[AudioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GY_AudioSet]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GY_AudioSet](
	[AudioSetID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
	[AddedOn] [datetime] NOT NULL,
	[TakenOn] [datetime] NULL,
	[Tags] [nvarchar](250) NULL,
	[Location] [nvarchar](250) NULL,
	[AudioCategoryID] [int] NOT NULL,
	[ImageID] [int] NULL,
	[Locale] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_AudioSet] PRIMARY KEY CLUSTERED 
(
	[AudioSetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GY_Drives]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GY_Drives](
	[DriveID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
	[ImageID] [int] NULL,
	[Locale] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_GY_Drives] PRIMARY KEY CLUSTERED 
(
	[DriveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GY_Events]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GY_Events](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[SubTitle] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NOT NULL,
	[SubDescription] [nvarchar](250) NULL,
	[StartsOn] [datetime] NULL,
	[EndsOn] [datetime] NULL,
	[Location] [nvarchar](250) NULL,
	[Tags] [nvarchar](250) NULL,
	[Hide] [bit] NOT NULL,
	[EventTypeID] [int] NOT NULL,
	[UseExternalForm] [bit] NOT NULL,
	[ExternalFormEmbedCode] [nvarchar](max) NULL,
	[ExternalFormURL] [nvarchar](max) NULL,
	[ExternalFormID] [int] NULL,
	[PopUpExternalForm] [bit] NOT NULL,
	[RegistrationStartDateTime] [datetime] NULL,
	[RegistrationEndDateTime] [datetime] NULL,
	[ImageID] [int] NULL,
	[Locale] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GY_Files]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GY_Files](
	[FileID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[SubTitle] [nvarchar](250) NULL,
	[Hide] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[FileURL] [nvarchar](max) NULL,
	[WebFileURL] [nvarchar](max) NULL,
	[ShowWebFile] [bit] NOT NULL,
	[FileName] [nvarchar](250) NULL,
	[Extension] [nvarchar](10) NULL,
	[Size] [float] NOT NULL,
	[AddedOn] [datetime] NOT NULL,
	[DownloadCount] [float] NOT NULL,
	[Tags] [nvarchar](250) NULL,
	[FolderID] [bigint] NULL,
	[DriveID] [int] NOT NULL,
	[FileTypeID] [int] NOT NULL,
	[Date] [datetime] NULL,
	[ImageID] [int] NULL,
	[Locale] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_GY_Files] PRIMARY KEY CLUSTERED 
(
	[FileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GY_FileTypes]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GY_FileTypes](
	[FileTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
 CONSTRAINT [PK_GY_FileTypes] PRIMARY KEY CLUSTERED 
(
	[FileTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GY_Folders]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GY_Folders](
	[FolderID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
	[DriveID] [int] NOT NULL,
	[Tags] [nvarchar](250) NULL,
	[AddedOn] [datetime] NOT NULL,
	[ParentFolderID] [bigint] NULL,
	[ImageID] [int] NULL,
	[Locale] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_GY_Folders] PRIMARY KEY CLUSTERED 
(
	[FolderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GY_LayerProperties]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GY_LayerProperties](
	[LayerPropertyID] [bigint] IDENTITY(1,1) NOT NULL,
	[LayerID] [bigint] NOT NULL,
	[Attribute] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_GY_LayerProperties] PRIMARY KEY CLUSTERED 
(
	[LayerPropertyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GY_Layers]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GY_Layers](
	[LayerID] [bigint] IDENTITY(1,1) NOT NULL,
	[SlideID] [bigint] NOT NULL,
	[LayerContentType] [nvarchar](100) NOT NULL,
	[LayerContent] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Hide] [bit] NOT NULL,
 CONSTRAINT [PK_GY_Layers] PRIMARY KEY CLUSTERED 
(
	[LayerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GY_Photos]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GY_Photos](
	[PhotoID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[AlbumID] [int] NOT NULL,
	[Hide] [bit] NOT NULL,
	[AddedOn] [datetime] NOT NULL,
	[TakenOn] [datetime] NULL,
	[Location] [nvarchar](250) NULL,
	[Tags] [nvarchar](250) NULL,
	[ImageID] [int] NULL,
	[Locale] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
(
	[PhotoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GY_SlideProperties]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GY_SlideProperties](
	[SlidePropertyID] [bigint] IDENTITY(1,1) NOT NULL,
	[SlideID] [bigint] NOT NULL,
	[Attribute] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[IsImageProperty] [bit] NOT NULL,
 CONSTRAINT [PK_GY_SlideProperties] PRIMARY KEY CLUSTERED 
(
	[SlidePropertyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GY_Slides]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GY_Slides](
	[SlideID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Position] [int] NOT NULL,
	[BGImageURL] [nvarchar](max) NULL,
	[BGImageThumbURL] [nvarchar](max) NULL,
	[BGImageDummyURL] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
 CONSTRAINT [PK_GY_Slides] PRIMARY KEY CLUSTERED 
(
	[SlideID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GY_VideoCategories]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GY_VideoCategories](
	[VideoCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
	[ImageID] [int] NULL,
	[Locale] [nvarchar](10) NOT NULL,
	[ParentVideoCategoryID] [int] NULL,
 CONSTRAINT [PK_VideoCategories] PRIMARY KEY CLUSTERED 
(
	[VideoCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GY_Videos]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GY_Videos](
	[VideoID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
	[AddedOn] [datetime] NOT NULL,
	[TakenOn] [datetime] NULL,
	[Tags] [nvarchar](250) NULL,
	[Location] [nvarchar](250) NULL,
	[VideoSetID] [int] NULL,
	[VideoCategoryID] [int] NOT NULL,
	[LocalVideoURL] [nvarchar](max) NULL,
	[WebVideoURL] [nvarchar](max) NULL,
	[ShowWebVideo] [bit] NOT NULL,
	[FileID] [bigint] NULL,
	[Length] [nvarchar](50) NULL,
	[LikesCount] [float] NOT NULL,
	[DislikesCount] [float] NOT NULL,
	[ImageID] [int] NULL,
	[Locale] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[VideoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GY_VideoSet]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GY_VideoSet](
	[VideoSetID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
	[AddedOn] [datetime] NOT NULL,
	[TakenOn] [datetime] NULL,
	[Tags] [nvarchar](250) NULL,
	[Location] [nvarchar](250) NULL,
	[VideoCategoryID] [int] NOT NULL,
	[ImageID] [int] NULL,
	[Locale] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_VideoSet] PRIMARY KEY CLUSTERED 
(
	[VideoSetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ME_BookCategories]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ME_BookCategories](
	[BookCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
	[ImageID] [int] NULL,
 CONSTRAINT [PK_ME_BookCategories] PRIMARY KEY CLUSTERED 
(
	[BookCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ME_Books]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ME_Books](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[SubTitle] [nvarchar](250) NULL,
	[Username] [nvarchar](50) NOT NULL,
	[WrittenOn] [datetime] NOT NULL,
	[Hide] [bit] NOT NULL,
	[Tags] [nvarchar](250) NULL,
	[BookCategoryID] [int] NOT NULL,
	[ImageID] [int] NULL,
 CONSTRAINT [PK_ME_Books] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ME_Chapters]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ME_Chapters](
	[ChapterID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[SubTitle] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[ChapterContent] [nvarchar](max) NOT NULL,
	[BookID] [int] NOT NULL,
	[Tags] [nvarchar](250) NULL,
	[Hide] [bit] NOT NULL,
 CONSTRAINT [PK_ME_Chapters] PRIMARY KEY CLUSTERED 
(
	[ChapterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ME_Clients]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ME_Clients](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_ME_Clients] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ME_PortfolioCategories]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ME_PortfolioCategories](
	[PortfolioCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[PortfolioID] [int] NOT NULL,
	[ProjectCategoryID] [int] NOT NULL,
 CONSTRAINT [PK_ME_PortfolioCategories] PRIMARY KEY CLUSTERED 
(
	[PortfolioCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ME_Portfolios]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ME_Portfolios](
	[PortfolioID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[ClientID] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Date] [date] NULL,
	[URL] [nvarchar](max) NULL,
	[ImageID] [int] NULL,
 CONSTRAINT [PK_ME_Portfolios] PRIMARY KEY CLUSTERED 
(
	[PortfolioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ME_PostCategories]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ME_PostCategories](
	[PostCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
	[ParentPostCategoryID] [int] NULL,
	[ImageID] [int] NULL,
	[Locale] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_BLOG_PostCategories] PRIMARY KEY CLUSTERED 
(
	[PostCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ME_Posts]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ME_Posts](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[SubTitle] [nvarchar](250) NULL,
	[PostContent] [nvarchar](max) NOT NULL,
	[Tags] [nvarchar](250) NULL,
	[AddedOn] [datetime] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Hide] [bit] NOT NULL,
	[PostCategoryID] [int] NOT NULL,
	[ParentPostID] [int] NULL,
	[ImageID] [int] NULL,
	[Locale] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_BLOG_Posts] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ME_ProjectCategories]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ME_ProjectCategories](
	[ProjectCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_ME_ProjectCategories] PRIMARY KEY CLUSTERED 
(
	[ProjectCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ME_Subscriptions]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ME_Subscriptions](
	[Email] [nvarchar](250) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Mobile] [nvarchar](20) NULL,
	[IsSubscribed] [bit] NOT NULL,
 CONSTRAINT [PK_ME_Subscriptions] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ME_Testimonials]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ME_Testimonials](
	[TestimonialID] [int] IDENTITY(1,1) NOT NULL,
	[Testimonial] [nvarchar](500) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Company] [nvarchar](100) NULL,
	[Position] [nvarchar](100) NULL,
	[ImageID] [int] NULL,
 CONSTRAINT [PK_ME_Testimonials] PRIMARY KEY CLUSTERED 
(
	[TestimonialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MS_EducationQualificationTypes]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MS_EducationQualificationTypes](
	[EducationQualificationTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
 CONSTRAINT [PK_EducationQualificationTypes] PRIMARY KEY CLUSTERED 
(
	[EducationQualificationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MS_UserAdresses]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MS_UserAdresses](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[AddressCategory] [nvarchar](50) NOT NULL,
	[StreetName] [nvarchar](100) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[ZipCode] [nvarchar](10) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Hide] [bit] NOT NULL,
 CONSTRAINT [PK_UserAdresses] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MS_UserCategories]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MS_UserCategories](
	[UserCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
 CONSTRAINT [PK_UserCategories] PRIMARY KEY CLUSTERED 
(
	[UserCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MS_UserEducations]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MS_UserEducations](
	[EducationID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[InstituteName] [nvarchar](100) NOT NULL,
	[Stream] [nvarchar](50) NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[EducationQualificationTypeID] [int] NOT NULL,
	[Hide] [bit] NOT NULL,
 CONSTRAINT [PK_UserEducations] PRIMARY KEY CLUSTERED 
(
	[EducationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MS_Users]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MS_Users](
	[Username] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](250) NOT NULL,
	[ProfilePic] [nvarchar](max) NULL,
	[SecurityQuestion] [nvarchar](200) NOT NULL,
	[SecurityAnswer] [nvarchar](200) NOT NULL,
	[DateOfBirth] [date] NULL,
	[Gender] [nvarchar](20) NULL,
	[UserRole] [nvarchar](50) NOT NULL,
	[UserCategoryID] [int] NULL,
	[Hide] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MS_UsersData]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MS_UsersData](
	[UserDataID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[UsersDataCategory] [nvarchar](50) NOT NULL,
	[UserData] [nvarchar](max) NOT NULL,
	[Hide] [bit] NOT NULL,
 CONSTRAINT [PK_UsersData] PRIMARY KEY CLUSTERED 
(
	[UserDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MS_UserWorks]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MS_UserWorks](
	[WorkID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Organization] [nvarchar](50) NOT NULL,
	[Position] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[WorkHere] [bit] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Hide] [bit] NOT NULL,
 CONSTRAINT [PK_UserWorks] PRIMARY KEY CLUSTERED 
(
	[WorkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OW_ActivityLogs]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OW_ActivityLogs](
	[ActivityLogID] [uniqueidentifier] NOT NULL,
	[ActivityOn] [datetime] NOT NULL,
	[ActivityType] [nvarchar](100) NOT NULL,
	[ActivityMessage] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ActivityLogs] PRIMARY KEY CLUSTERED 
(
	[ActivityLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OW_Images]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OW_Images](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[ImageURL] [nvarchar](max) NULL,
	[WebImageURL] [nvarchar](max) NULL,
	[WebImageThumbURL] [nvarchar](max) NULL,
	[ShowWebImage] [bit] NOT NULL,
	[OriginalWidth] [int] NOT NULL,
	[OriginalHeight] [int] NOT NULL,
	[CropHeight] [int] NOT NULL,
	[CropWidth] [int] NOT NULL,
	[Width] [int] NOT NULL,
	[Height] [int] NOT NULL,
	[X1] [int] NOT NULL,
	[X2] [int] NOT NULL,
	[Y1] [int] NOT NULL,
	[Y2] [int] NOT NULL,
	[XUnit] [int] NOT NULL,
	[YUnit] [int] NOT NULL,
	[Mode] [nvarchar](50) NOT NULL,
	[Scale] [nvarchar](50) NOT NULL,
	[Anchor] [nvarchar](50) NOT NULL,
	[Quality] [int] NOT NULL,
	[MaxWidth] [int] NOT NULL,
	[MaxHeight] [int] NOT NULL,
	[ThumbCropHeight] [int] NOT NULL,
	[ThumbCropWidth] [int] NOT NULL,
	[ThumbWidth] [int] NOT NULL,
	[ThumbHeight] [int] NOT NULL,
	[ThumbX1] [int] NOT NULL,
	[ThumbX2] [int] NOT NULL,
	[ThumbY1] [int] NOT NULL,
	[ThumbY2] [int] NOT NULL,
	[ThumbMode] [nvarchar](50) NOT NULL,
	[ThumbScale] [nvarchar](50) NOT NULL,
	[ThumbAnchor] [nvarchar](50) NOT NULL,
	[ThumbQuality] [int] NOT NULL,
	[ThumbMaxWidth] [int] NOT NULL,
	[ThumbMaxHeight] [int] NOT NULL,
	[ThumbXUnit] [int] NOT NULL,
	[ThumbYUnit] [int] NOT NULL,
	[FocusPointX] [float] NOT NULL,
	[FocusPointY] [float] NOT NULL,
 CONSTRAINT [PK_OW_Images] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OW_Menu]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OW_Menu](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[IconURL] [nvarchar](max) NULL,
	[ParentMenuID] [int] NULL,
	[NavigateURL] [nvarchar](max) NOT NULL,
	[IsRoot] [bit] NOT NULL,
	[Hide] [bit] NOT NULL,
	[Position] [int] NOT NULL,
	[Locale] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_OW_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_AvailabilityTypes]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_AvailabilityTypes](
	[AvailabilityTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
	[ColorName] [nvarchar](50) NULL,
 CONSTRAINT [PK_AvailabilityTypes] PRIMARY KEY CLUSTERED 
(
	[AvailabilityTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_Brands]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Brands](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ImageURL] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_CardTypes]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_CardTypes](
	[CardTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
 CONSTRAINT [PK_CardTypes] PRIMARY KEY CLUSTERED 
(
	[CardTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_Categories]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ImageURL] [nvarchar](max) NULL,
	[ImageThumbURL] [nvarchar](max) NULL,
	[AlternateText] [nvarchar](100) NULL,
	[Hide] [bit] NOT NULL,
	[SectionID] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_Colors]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Colors](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Hex] [nvarchar](10) NULL,
	[SectionID] [int] NULL,
	[CategoryID] [int] NULL,
	[SubCategoryID] [int] NULL,
	[ImageURL] [nvarchar](max) NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_CouponProducts]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_CouponProducts](
	[CouponProductsID] [bigint] IDENTITY(1,1) NOT NULL,
	[CouponID] [bigint] NOT NULL,
	[ProductID] [int] NOT NULL,
	[AntiCouponProductID] [int] NULL,
 CONSTRAINT [PK_SC_CouponProducts] PRIMARY KEY CLUSTERED 
(
	[CouponProductsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_Coupons]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Coupons](
	[CouponID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Code] [nvarchar](20) NOT NULL,
	[DiscountAmountOnTotal] [float] NULL,
	[DiscountPercentageOnTotal] [float] NULL,
	[DiscountAmountOnEach] [float] NULL,
	[DiscountPercentageOnEach] [float] NULL,
	[DiscountAmountOnShipping] [float] NULL,
	[DiscountPercentageOnShipping] [float] NULL,
	[FreeShipping] [bit] NOT NULL,
	[MinCartAmount] [float] NULL,
	[CouponUseCount] [int] NULL,
	[CouponUseCountPerCustomer] [int] NULL,
	[IsEnabled] [bit] NOT NULL,
	[ExpiresOn] [datetime] NULL,
	[SectionID] [int] NULL,
	[CategoryID] [int] NULL,
	[SubCategoryID] [int] NULL,
	[BrandID] [int] NULL,
 CONSTRAINT [PK_SC_Coupons] PRIMARY KEY CLUSTERED 
(
	[CouponID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_DiscountRanges]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_DiscountRanges](
	[DiscountRangeID] [bigint] IDENTITY(1,1) NOT NULL,
	[LowerRange] [float] NOT NULL,
	[UpperRange] [float] NOT NULL,
	[ProductID] [int] NOT NULL,
	[DiscountPercentage] [float] NULL,
	[DiscountAmount] [float] NULL,
	[FixedPrice] [float] NULL,
 CONSTRAINT [PK_SC_DiscountRanges] PRIMARY KEY CLUSTERED 
(
	[DiscountRangeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_DiscountRules]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_DiscountRules](
	[DiscountRuleID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsEnabled] [bit] NOT NULL,
	[IsExpirable] [bit] NOT NULL,
	[ExpiresOn] [datetime] NULL,
	[ExpiresAfterUses] [int] NULL,
	[ExpiresAfterDays] [int] NULL,
	[ProductQuantityOnToShipFree] [float] NULL,
	[ProductQuantityOnToShipFreeProductID] [int] NULL,
	[CartAmountOnToShipFree] [float] NULL,
	[CartDiscountOnTotalAmount] [float] NULL,
	[CartDiscountAmount] [float] NULL,
	[CartDiscountPercentage] [float] NULL,
	[DiscountPercentageForRepeatCustomer] [float] NULL,
	[DiscountAmountForRepeatCustomer] [float] NULL,
	[CustomerPurchaseRepeatCount] [int] NULL,
	[BuyThisCount] [float] NULL,
	[GetThisCount] [float] NULL,
	[GetThatCount] [float] NULL,
	[BuyThisProductID] [int] NULL,
	[GetThisProductID] [int] NULL,
	[DiscountOnSectionID] [int] NULL,
	[DiscountOnCategoryID] [int] NULL,
	[DiscountOnSubCategoryID] [int] NULL,
	[DiscountOnBrandID] [int] NULL,
	[DiscountPercentageOnSecCatSubBrand] [float] NULL,
 CONSTRAINT [PK_SC_DiscountRules] PRIMARY KEY CLUSTERED 
(
	[DiscountRuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_GuestOrders]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_GuestOrders](
	[GuestOrderID] [bigint] IDENTITY(1,1) NOT NULL,
	[EmailID] [nvarchar](250) NOT NULL,
	[Mobile] [nvarchar](20) NULL,
	[OrderNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SC_GuestOrders] PRIMARY KEY CLUSTERED 
(
	[GuestOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_Highlights]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Highlights](
	[HighlightID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Highlight] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_ProductHighlights] PRIMARY KEY CLUSTERED 
(
	[HighlightID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_Icons]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Icons](
	[IconID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[IconURL] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[AlternateText] [nvarchar](100) NULL,
 CONSTRAINT [PK_Icons] PRIMARY KEY CLUSTERED 
(
	[IconID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_OrderDetails]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_OrderDetails](
	[OrderDetailID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [nvarchar](50) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [float] NOT NULL,
	[ShipmentDate] [date] NULL,
	[DeliveryDate] [date] NULL,
	[ShipmentCompanyID] [int] NULL,
	[TrackingID] [bigint] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_Orders]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Orders](
	[OrderNumber] [nvarchar](50) NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[ShippingAddress] [nvarchar](max) NOT NULL,
	[BillingAddress] [nvarchar](max) NOT NULL,
	[EmailID] [nvarchar](150) NOT NULL,
	[Mobile] [nvarchar](20) NOT NULL,
	[ShipmentTypeID] [int] NULL,
	[OrderTotal] [float] NOT NULL,
	[ShipmentCost] [float] NOT NULL,
	[IsConfirmed] [bit] NOT NULL,
	[IsCancelled] [bit] NOT NULL,
	[IsCompleted] [bit] NOT NULL,
	[IsPaid] [bit] NOT NULL,
	[IsFailed] [bit] NOT NULL,
	[IsRefund] [bit] NOT NULL,
	[IsDispatched] [bit] NOT NULL,
	[IsReturned] [bit] NOT NULL,
	[ReceiptHTML] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_ProductDownloads]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_ProductDownloads](
	[ProductDownloadID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
	[DisableDownloadAfterDays] [int] NOT NULL,
	[MaxDownloadsAllowed] [bigint] NOT NULL,
	[DownloadURL] [nvarchar](max) NULL,
	[WebDownloadURL] [nvarchar](max) NULL,
	[UseWebDownloadURL] [bit] NOT NULL,
 CONSTRAINT [PK_SC_ProductDownloads] PRIMARY KEY CLUSTERED 
(
	[ProductDownloadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_ProductIcons]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_ProductIcons](
	[ProductIconID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[IconID] [int] NOT NULL,
 CONSTRAINT [PK_ProductIcons] PRIMARY KEY CLUSTERED 
(
	[ProductIconID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_ProductImages]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_ProductImages](
	[ProductImageID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ImageURL] [nvarchar](max) NULL,
	[ImageThumbURL] [nvarchar](max) NULL,
	[WebImageURL] [nvarchar](max) NULL,
	[WebThumbImageURL] [nvarchar](max) NULL,
	[AlternateText] [nvarchar](100) NULL,
	[Hide] [bit] NOT NULL,
	[ShowWebImage] [bit] NOT NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[ProductImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_ProductLocks]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_ProductLocks](
	[ProductLockID] [uniqueidentifier] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [float] NOT NULL,
	[Username] [nvarchar](50) NULL,
	[AnonymousUserID] [nvarchar](50) NULL,
	[Timeout] [datetime] NOT NULL,
 CONSTRAINT [PK_SC_ProductLocks] PRIMARY KEY CLUSTERED 
(
	[ProductLockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_ProductModels]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_ProductModels](
	[ProductModelID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
	[SectionID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[SubCategoryID] [int] NOT NULL,
 CONSTRAINT [PK_SC_ProductModels] PRIMARY KEY CLUSTERED 
(
	[ProductModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_Products]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[SubTitle] [nvarchar](100) NULL,
	[Description] [nvarchar](max) NULL,
	[CostPrice] [float] NULL,
	[Price] [float] NULL,
	[AvailableQuantity] [float] NULL,
	[IsPriceOnRequest] [bit] NOT NULL,
	[HasDiscount] [bit] NOT NULL,
	[DiscountPercentage] [float] NULL,
	[DiscountAmount] [float] NULL,
	[IsDiscountRangeEnabled] [bit] NOT NULL,
	[PriceDescription] [nvarchar](max) NULL,
	[SpecialOffer] [nvarchar](max) NULL,
	[Details] [nvarchar](max) NULL,
	[PreOderFlag] [bit] NOT NULL,
	[PreOrderDescription] [nvarchar](max) NULL,
	[PreOrderReleaseDate] [datetime] NULL,
	[RemovePreOrderOnDate] [bit] NOT NULL,
	[SectionID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[SubCategoryID] [int] NOT NULL,
	[ProductModelID] [int] NULL,
	[ProductTypeID] [int] NULL,
	[AvailabilityTypeID] [int] NULL,
	[BrandID] [int] NULL,
	[UnitID] [int] NULL,
	[SizeID] [int] NULL,
	[ColorID] [int] NULL,
	[Hide] [bit] NOT NULL,
	[Model] [nvarchar](50) NULL,
	[Manufacturer] [nvarchar](100) NULL,
	[ItemNumber] [nvarchar](50) NULL,
	[MaxOQ] [float] NULL,
	[MinOQ] [float] NULL,
	[Tags] [nvarchar](250) NULL,
	[Likes] [int] NOT NULL,
	[UploadedOn] [datetime] NOT NULL,
	[ShowInCart] [bit] NOT NULL,
	[SoldOutCount] [float] NOT NULL,
	[Barcode] [nvarchar](20) NULL,
	[IsDownloadable] [bit] NOT NULL,
	[StringField1] [nvarchar](100) NULL,
	[StringField2] [nvarchar](100) NULL,
	[StringField3] [nvarchar](100) NULL,
	[FloatField1] [float] NULL,
	[FloatField2] [float] NULL,
	[FloatField3] [float] NULL,
	[IntField1] [int] NULL,
	[IntField2] [int] NULL,
	[IntField3] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_ProductTypes]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_ProductTypes](
	[ProductTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
	[SectionID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[SubCategoryID] [int] NOT NULL,
 CONSTRAINT [PK_SC_ProductTypes] PRIMARY KEY CLUSTERED 
(
	[ProductTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_ProductVideos]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_ProductVideos](
	[ProductVideoID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[YouTubeVideoURL] [nvarchar](max) NULL,
	[OtherVideoURL] [nvarchar](max) NULL,
	[VideoURL] [nvarchar](max) NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[ShowYouTubeVideo] [bit] NOT NULL,
	[ShowOtherVideo] [bit] NOT NULL,
	[ShowLocalVideo] [bit] NOT NULL,
	[Hide] [bit] NOT NULL,
 CONSTRAINT [PK_SC_ProductVideos] PRIMARY KEY CLUSTERED 
(
	[ProductVideoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_Ratings]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Ratings](
	[RatingID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Rating] [float] NOT NULL,
 CONSTRAINT [PK_ProductRatings] PRIMARY KEY CLUSTERED 
(
	[RatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_Reviews]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Reviews](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Review] [nvarchar](max) NOT NULL,
	[Approved] [bit] NOT NULL,
	[Hide] [bit] NOT NULL,
	[RatingID] [int] NOT NULL,
 CONSTRAINT [PK_ProductReviews] PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_Sections]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Sections](
	[SectionID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ImageURL] [nvarchar](max) NULL,
	[ImageThumbURL] [nvarchar](max) NULL,
	[AlternateText] [nvarchar](100) NULL,
	[Hide] [bit] NOT NULL,
 CONSTRAINT [PK_Sections] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_ShipmentCompanies]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_ShipmentCompanies](
	[ShipmentCompanyID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ImageURL] [nvarchar](max) NULL,
	[ImageThumbURL] [nvarchar](max) NULL,
	[AlternateText] [nvarchar](100) NULL,
	[Hide] [bit] NOT NULL,
 CONSTRAINT [PK_ShipmentCompanies] PRIMARY KEY CLUSTERED 
(
	[ShipmentCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_ShipmentTypes]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_ShipmentTypes](
	[ShipmentTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Hide] [bit] NOT NULL,
 CONSTRAINT [PK_ShipmentTypes] PRIMARY KEY CLUSTERED 
(
	[ShipmentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_Sizes]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Sizes](
	[SizeID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[SectionID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[SubCategoryID] [int] NOT NULL,
 CONSTRAINT [PK_ProductSize] PRIMARY KEY CLUSTERED 
(
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_SubCategories]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_SubCategories](
	[SubCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ImageURL] [nvarchar](max) NULL,
	[ImageThumbURL] [nvarchar](max) NULL,
	[AlternateText] [nvarchar](100) NULL,
	[CategoryID] [int] NOT NULL,
	[Hide] [bit] NOT NULL,
 CONSTRAINT [PK_SubCategories] PRIMARY KEY CLUSTERED 
(
	[SubCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_TempCart]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_TempCart](
	[CartID] [bigint] IDENTITY(1,1) NOT NULL,
	[AnonymousUserID] [nvarchar](50) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [float] NOT NULL,
 CONSTRAINT [PK_TempCart] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_Trackings]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Trackings](
	[TrackingID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Trackings] PRIMARY KEY CLUSTERED 
(
	[TrackingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_Units]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Units](
	[UnitID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[SectionID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[SubCategoryID] [int] NOT NULL,
 CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_UserCardDetails]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_UserCardDetails](
	[UserCardDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[NameOnCard] [nvarchar](100) NOT NULL,
	[CardTypeID] [int] NOT NULL,
	[CardNumber] [nvarchar](30) NOT NULL,
	[SecurityCode] [nvarchar](10) NULL,
	[ValidFrom] [date] NULL,
	[ValidTill] [date] NULL,
 CONSTRAINT [PK_UserCardDetails] PRIMARY KEY CLUSTERED 
(
	[UserCardDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_UserCart]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_UserCart](
	[CartID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [float] NOT NULL,
 CONSTRAINT [PK_UserCart] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC_UserOrders]    Script Date: 03/06/2015 01:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_UserOrders](
	[UserOrderID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[OrderNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserOrders] PRIMARY KEY CLUSTERED 
(
	[UserOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[GY_Albums]  WITH CHECK ADD  CONSTRAINT [FK_GY_Albums_GY_Events] FOREIGN KEY([EventID])
REFERENCES [dbo].[GY_Events] ([EventID])
GO
ALTER TABLE [dbo].[GY_Albums] CHECK CONSTRAINT [FK_GY_Albums_GY_Events]
GO
ALTER TABLE [dbo].[GY_Albums]  WITH CHECK ADD  CONSTRAINT [FK_GY_Albums_OW_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[OW_Images] ([ImageID])
GO
ALTER TABLE [dbo].[GY_Albums] CHECK CONSTRAINT [FK_GY_Albums_OW_Images]
GO
ALTER TABLE [dbo].[GY_AudioCategories]  WITH CHECK ADD  CONSTRAINT [FK_GY_AudioCategories_GY_AudioCategories] FOREIGN KEY([ParentAudioCategoryID])
REFERENCES [dbo].[GY_AudioCategories] ([AudioCategoryID])
GO
ALTER TABLE [dbo].[GY_AudioCategories] CHECK CONSTRAINT [FK_GY_AudioCategories_GY_AudioCategories]
GO
ALTER TABLE [dbo].[GY_AudioCategories]  WITH CHECK ADD  CONSTRAINT [FK_GY_AudioCategories_OW_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[OW_Images] ([ImageID])
GO
ALTER TABLE [dbo].[GY_AudioCategories] CHECK CONSTRAINT [FK_GY_AudioCategories_OW_Images]
GO
ALTER TABLE [dbo].[GY_Audios]  WITH CHECK ADD  CONSTRAINT [FK_GY_Audios_GY_AudioCategories] FOREIGN KEY([AudioCategoryID])
REFERENCES [dbo].[GY_AudioCategories] ([AudioCategoryID])
GO
ALTER TABLE [dbo].[GY_Audios] CHECK CONSTRAINT [FK_GY_Audios_GY_AudioCategories]
GO
ALTER TABLE [dbo].[GY_Audios]  WITH CHECK ADD  CONSTRAINT [FK_GY_Audios_GY_AudioSet] FOREIGN KEY([AudioSetID])
REFERENCES [dbo].[GY_AudioSet] ([AudioSetID])
GO
ALTER TABLE [dbo].[GY_Audios] CHECK CONSTRAINT [FK_GY_Audios_GY_AudioSet]
GO
ALTER TABLE [dbo].[GY_Audios]  WITH CHECK ADD  CONSTRAINT [FK_GY_Audios_GY_Files] FOREIGN KEY([FileID])
REFERENCES [dbo].[GY_Files] ([FileID])
GO
ALTER TABLE [dbo].[GY_Audios] CHECK CONSTRAINT [FK_GY_Audios_GY_Files]
GO
ALTER TABLE [dbo].[GY_AudioSet]  WITH CHECK ADD  CONSTRAINT [FK_GY_AudioSet_GY_AudioCategories] FOREIGN KEY([AudioCategoryID])
REFERENCES [dbo].[GY_AudioCategories] ([AudioCategoryID])
GO
ALTER TABLE [dbo].[GY_AudioSet] CHECK CONSTRAINT [FK_GY_AudioSet_GY_AudioCategories]
GO
ALTER TABLE [dbo].[GY_AudioSet]  WITH CHECK ADD  CONSTRAINT [FK_GY_AudioSet_OW_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[OW_Images] ([ImageID])
GO
ALTER TABLE [dbo].[GY_AudioSet] CHECK CONSTRAINT [FK_GY_AudioSet_OW_Images]
GO
ALTER TABLE [dbo].[GY_Drives]  WITH CHECK ADD  CONSTRAINT [FK_GY_Drives_OW_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[OW_Images] ([ImageID])
GO
ALTER TABLE [dbo].[GY_Drives] CHECK CONSTRAINT [FK_GY_Drives_OW_Images]
GO
ALTER TABLE [dbo].[GY_Events]  WITH CHECK ADD  CONSTRAINT [FK_GY_Events_OW_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[OW_Images] ([ImageID])
GO
ALTER TABLE [dbo].[GY_Events] CHECK CONSTRAINT [FK_GY_Events_OW_Images]
GO
ALTER TABLE [dbo].[GY_Files]  WITH CHECK ADD  CONSTRAINT [FK_GY_Files_GY_Drives] FOREIGN KEY([DriveID])
REFERENCES [dbo].[GY_Drives] ([DriveID])
GO
ALTER TABLE [dbo].[GY_Files] CHECK CONSTRAINT [FK_GY_Files_GY_Drives]
GO
ALTER TABLE [dbo].[GY_Files]  WITH CHECK ADD  CONSTRAINT [FK_GY_Files_GY_FileTypes] FOREIGN KEY([FileTypeID])
REFERENCES [dbo].[GY_FileTypes] ([FileTypeID])
GO
ALTER TABLE [dbo].[GY_Files] CHECK CONSTRAINT [FK_GY_Files_GY_FileTypes]
GO
ALTER TABLE [dbo].[GY_Files]  WITH CHECK ADD  CONSTRAINT [FK_GY_Files_GY_Folders] FOREIGN KEY([FolderID])
REFERENCES [dbo].[GY_Folders] ([FolderID])
GO
ALTER TABLE [dbo].[GY_Files] CHECK CONSTRAINT [FK_GY_Files_GY_Folders]
GO
ALTER TABLE [dbo].[GY_Files]  WITH CHECK ADD  CONSTRAINT [FK_GY_Files_OW_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[OW_Images] ([ImageID])
GO
ALTER TABLE [dbo].[GY_Files] CHECK CONSTRAINT [FK_GY_Files_OW_Images]
GO
ALTER TABLE [dbo].[GY_Folders]  WITH CHECK ADD  CONSTRAINT [FK_GY_Folders_GY_Drives] FOREIGN KEY([DriveID])
REFERENCES [dbo].[GY_Drives] ([DriveID])
GO
ALTER TABLE [dbo].[GY_Folders] CHECK CONSTRAINT [FK_GY_Folders_GY_Drives]
GO
ALTER TABLE [dbo].[GY_Folders]  WITH CHECK ADD  CONSTRAINT [FK_GY_Folders_GY_Folders] FOREIGN KEY([ParentFolderID])
REFERENCES [dbo].[GY_Folders] ([FolderID])
GO
ALTER TABLE [dbo].[GY_Folders] CHECK CONSTRAINT [FK_GY_Folders_GY_Folders]
GO
ALTER TABLE [dbo].[GY_Folders]  WITH CHECK ADD  CONSTRAINT [FK_GY_Folders_OW_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[OW_Images] ([ImageID])
GO
ALTER TABLE [dbo].[GY_Folders] CHECK CONSTRAINT [FK_GY_Folders_OW_Images]
GO
ALTER TABLE [dbo].[GY_LayerProperties]  WITH CHECK ADD  CONSTRAINT [FK_GY_LayerProperties_GY_Layers] FOREIGN KEY([LayerID])
REFERENCES [dbo].[GY_Layers] ([LayerID])
GO
ALTER TABLE [dbo].[GY_LayerProperties] CHECK CONSTRAINT [FK_GY_LayerProperties_GY_Layers]
GO
ALTER TABLE [dbo].[GY_Layers]  WITH CHECK ADD  CONSTRAINT [FK_GY_Layers_GY_Slides] FOREIGN KEY([SlideID])
REFERENCES [dbo].[GY_Slides] ([SlideID])
GO
ALTER TABLE [dbo].[GY_Layers] CHECK CONSTRAINT [FK_GY_Layers_GY_Slides]
GO
ALTER TABLE [dbo].[GY_Photos]  WITH CHECK ADD  CONSTRAINT [FK_GY_Photos_GY_Albums] FOREIGN KEY([AlbumID])
REFERENCES [dbo].[GY_Albums] ([AlbumID])
GO
ALTER TABLE [dbo].[GY_Photos] CHECK CONSTRAINT [FK_GY_Photos_GY_Albums]
GO
ALTER TABLE [dbo].[GY_Photos]  WITH CHECK ADD  CONSTRAINT [FK_GY_Photos_OW_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[OW_Images] ([ImageID])
GO
ALTER TABLE [dbo].[GY_Photos] CHECK CONSTRAINT [FK_GY_Photos_OW_Images]
GO
ALTER TABLE [dbo].[GY_SlideProperties]  WITH CHECK ADD  CONSTRAINT [FK_GY_SlideProperties_GY_Slides] FOREIGN KEY([SlideID])
REFERENCES [dbo].[GY_Slides] ([SlideID])
GO
ALTER TABLE [dbo].[GY_SlideProperties] CHECK CONSTRAINT [FK_GY_SlideProperties_GY_Slides]
GO
ALTER TABLE [dbo].[GY_VideoCategories]  WITH CHECK ADD  CONSTRAINT [FK_GY_VideoCategories_GY_VideoCategories] FOREIGN KEY([ParentVideoCategoryID])
REFERENCES [dbo].[GY_VideoCategories] ([VideoCategoryID])
GO
ALTER TABLE [dbo].[GY_VideoCategories] CHECK CONSTRAINT [FK_GY_VideoCategories_GY_VideoCategories]
GO
ALTER TABLE [dbo].[GY_VideoCategories]  WITH CHECK ADD  CONSTRAINT [FK_GY_VideoCategories_OW_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[OW_Images] ([ImageID])
GO
ALTER TABLE [dbo].[GY_VideoCategories] CHECK CONSTRAINT [FK_GY_VideoCategories_OW_Images]
GO
ALTER TABLE [dbo].[GY_Videos]  WITH CHECK ADD  CONSTRAINT [FK_GY_Videos_GY_Files] FOREIGN KEY([FileID])
REFERENCES [dbo].[GY_Files] ([FileID])
GO
ALTER TABLE [dbo].[GY_Videos] CHECK CONSTRAINT [FK_GY_Videos_GY_Files]
GO
ALTER TABLE [dbo].[GY_Videos]  WITH CHECK ADD  CONSTRAINT [FK_GY_Videos_GY_VideoCategories] FOREIGN KEY([VideoCategoryID])
REFERENCES [dbo].[GY_VideoCategories] ([VideoCategoryID])
GO
ALTER TABLE [dbo].[GY_Videos] CHECK CONSTRAINT [FK_GY_Videos_GY_VideoCategories]
GO
ALTER TABLE [dbo].[GY_Videos]  WITH CHECK ADD  CONSTRAINT [FK_GY_Videos_GY_VideoSet] FOREIGN KEY([VideoSetID])
REFERENCES [dbo].[GY_VideoSet] ([VideoSetID])
GO
ALTER TABLE [dbo].[GY_Videos] CHECK CONSTRAINT [FK_GY_Videos_GY_VideoSet]
GO
ALTER TABLE [dbo].[GY_Videos]  WITH CHECK ADD  CONSTRAINT [FK_GY_Videos_OW_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[OW_Images] ([ImageID])
GO
ALTER TABLE [dbo].[GY_Videos] CHECK CONSTRAINT [FK_GY_Videos_OW_Images]
GO
ALTER TABLE [dbo].[GY_VideoSet]  WITH CHECK ADD  CONSTRAINT [FK_GY_VideoSet_GY_VideoCategories] FOREIGN KEY([VideoCategoryID])
REFERENCES [dbo].[GY_VideoCategories] ([VideoCategoryID])
GO
ALTER TABLE [dbo].[GY_VideoSet] CHECK CONSTRAINT [FK_GY_VideoSet_GY_VideoCategories]
GO
ALTER TABLE [dbo].[GY_VideoSet]  WITH CHECK ADD  CONSTRAINT [FK_GY_VideoSet_OW_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[OW_Images] ([ImageID])
GO
ALTER TABLE [dbo].[GY_VideoSet] CHECK CONSTRAINT [FK_GY_VideoSet_OW_Images]
GO
ALTER TABLE [dbo].[ME_BookCategories]  WITH CHECK ADD  CONSTRAINT [FK_ME_BookCategories_OW_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[OW_Images] ([ImageID])
GO
ALTER TABLE [dbo].[ME_BookCategories] CHECK CONSTRAINT [FK_ME_BookCategories_OW_Images]
GO
ALTER TABLE [dbo].[ME_Books]  WITH CHECK ADD  CONSTRAINT [FK_ME_Books_ME_BookCategories] FOREIGN KEY([BookCategoryID])
REFERENCES [dbo].[ME_BookCategories] ([BookCategoryID])
GO
ALTER TABLE [dbo].[ME_Books] CHECK CONSTRAINT [FK_ME_Books_ME_BookCategories]
GO
ALTER TABLE [dbo].[ME_Books]  WITH CHECK ADD  CONSTRAINT [FK_ME_Books_OW_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[OW_Images] ([ImageID])
GO
ALTER TABLE [dbo].[ME_Books] CHECK CONSTRAINT [FK_ME_Books_OW_Images]
GO
ALTER TABLE [dbo].[ME_Books]  WITH CHECK ADD  CONSTRAINT [FK_ME_Books_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[MS_Users] ([Username])
GO
ALTER TABLE [dbo].[ME_Books] CHECK CONSTRAINT [FK_ME_Books_Users]
GO
ALTER TABLE [dbo].[ME_Chapters]  WITH CHECK ADD  CONSTRAINT [FK_ME_Chapters_ME_Books] FOREIGN KEY([BookID])
REFERENCES [dbo].[ME_Books] ([BookID])
GO
ALTER TABLE [dbo].[ME_Chapters] CHECK CONSTRAINT [FK_ME_Chapters_ME_Books]
GO
ALTER TABLE [dbo].[ME_PortfolioCategories]  WITH CHECK ADD  CONSTRAINT [FK_ME_PortfolioCategories_ME_Portfolios] FOREIGN KEY([PortfolioID])
REFERENCES [dbo].[ME_Portfolios] ([PortfolioID])
GO
ALTER TABLE [dbo].[ME_PortfolioCategories] CHECK CONSTRAINT [FK_ME_PortfolioCategories_ME_Portfolios]
GO
ALTER TABLE [dbo].[ME_PortfolioCategories]  WITH CHECK ADD  CONSTRAINT [FK_ME_PortfolioCategories_ME_ProjectCategories] FOREIGN KEY([ProjectCategoryID])
REFERENCES [dbo].[ME_ProjectCategories] ([ProjectCategoryID])
GO
ALTER TABLE [dbo].[ME_PortfolioCategories] CHECK CONSTRAINT [FK_ME_PortfolioCategories_ME_ProjectCategories]
GO
ALTER TABLE [dbo].[ME_Portfolios]  WITH CHECK ADD  CONSTRAINT [FK_ME_Portfolios_ME_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[ME_Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ME_Portfolios] CHECK CONSTRAINT [FK_ME_Portfolios_ME_Clients]
GO
ALTER TABLE [dbo].[ME_Portfolios]  WITH CHECK ADD  CONSTRAINT [FK_ME_Portfolios_OW_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[OW_Images] ([ImageID])
GO
ALTER TABLE [dbo].[ME_Portfolios] CHECK CONSTRAINT [FK_ME_Portfolios_OW_Images]
GO
ALTER TABLE [dbo].[ME_PostCategories]  WITH CHECK ADD  CONSTRAINT [FK_ME_PostCategories_ME_PostCategories] FOREIGN KEY([ParentPostCategoryID])
REFERENCES [dbo].[ME_PostCategories] ([PostCategoryID])
GO
ALTER TABLE [dbo].[ME_PostCategories] CHECK CONSTRAINT [FK_ME_PostCategories_ME_PostCategories]
GO
ALTER TABLE [dbo].[ME_PostCategories]  WITH CHECK ADD  CONSTRAINT [FK_ME_PostCategories_OW_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[OW_Images] ([ImageID])
GO
ALTER TABLE [dbo].[ME_PostCategories] CHECK CONSTRAINT [FK_ME_PostCategories_OW_Images]
GO
ALTER TABLE [dbo].[ME_Posts]  WITH CHECK ADD  CONSTRAINT [FK_ME_Posts_ME_PostCategories] FOREIGN KEY([PostCategoryID])
REFERENCES [dbo].[ME_PostCategories] ([PostCategoryID])
GO
ALTER TABLE [dbo].[ME_Posts] CHECK CONSTRAINT [FK_ME_Posts_ME_PostCategories]
GO
ALTER TABLE [dbo].[ME_Posts]  WITH CHECK ADD  CONSTRAINT [FK_ME_Posts_ME_Posts] FOREIGN KEY([ParentPostID])
REFERENCES [dbo].[ME_Posts] ([PostID])
GO
ALTER TABLE [dbo].[ME_Posts] CHECK CONSTRAINT [FK_ME_Posts_ME_Posts]
GO
ALTER TABLE [dbo].[ME_Posts]  WITH CHECK ADD  CONSTRAINT [FK_ME_Posts_OW_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[OW_Images] ([ImageID])
GO
ALTER TABLE [dbo].[ME_Posts] CHECK CONSTRAINT [FK_ME_Posts_OW_Images]
GO
ALTER TABLE [dbo].[ME_Testimonials]  WITH CHECK ADD  CONSTRAINT [FK_ME_Testimonials_OW_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[OW_Images] ([ImageID])
GO
ALTER TABLE [dbo].[ME_Testimonials] CHECK CONSTRAINT [FK_ME_Testimonials_OW_Images]
GO
ALTER TABLE [dbo].[MS_UserAdresses]  WITH CHECK ADD  CONSTRAINT [FK_UserAdresses_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[MS_Users] ([Username])
GO
ALTER TABLE [dbo].[MS_UserAdresses] CHECK CONSTRAINT [FK_UserAdresses_Users]
GO
ALTER TABLE [dbo].[MS_UserEducations]  WITH CHECK ADD  CONSTRAINT [FK_UserEducations_EducationQualificationTypes] FOREIGN KEY([EducationQualificationTypeID])
REFERENCES [dbo].[MS_EducationQualificationTypes] ([EducationQualificationTypeID])
GO
ALTER TABLE [dbo].[MS_UserEducations] CHECK CONSTRAINT [FK_UserEducations_EducationQualificationTypes]
GO
ALTER TABLE [dbo].[MS_UserEducations]  WITH CHECK ADD  CONSTRAINT [FK_UserEducations_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[MS_Users] ([Username])
GO
ALTER TABLE [dbo].[MS_UserEducations] CHECK CONSTRAINT [FK_UserEducations_Users]
GO
ALTER TABLE [dbo].[MS_Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserCategories] FOREIGN KEY([UserCategoryID])
REFERENCES [dbo].[MS_UserCategories] ([UserCategoryID])
GO
ALTER TABLE [dbo].[MS_Users] CHECK CONSTRAINT [FK_Users_UserCategories]
GO
ALTER TABLE [dbo].[MS_UsersData]  WITH CHECK ADD  CONSTRAINT [FK_UsersData_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[MS_Users] ([Username])
GO
ALTER TABLE [dbo].[MS_UsersData] CHECK CONSTRAINT [FK_UsersData_Users]
GO
ALTER TABLE [dbo].[MS_UserWorks]  WITH CHECK ADD  CONSTRAINT [FK_UserWorks_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[MS_Users] ([Username])
GO
ALTER TABLE [dbo].[MS_UserWorks] CHECK CONSTRAINT [FK_UserWorks_Users]
GO
ALTER TABLE [dbo].[OW_Menu]  WITH CHECK ADD  CONSTRAINT [FK_OW_Menu_OW_Menu] FOREIGN KEY([ParentMenuID])
REFERENCES [dbo].[OW_Menu] ([MenuID])
GO
ALTER TABLE [dbo].[OW_Menu] CHECK CONSTRAINT [FK_OW_Menu_OW_Menu]
GO
ALTER TABLE [dbo].[SC_Categories]  WITH CHECK ADD  CONSTRAINT [FK_SC_Categories_SC_Sections] FOREIGN KEY([SectionID])
REFERENCES [dbo].[SC_Sections] ([SectionID])
GO
ALTER TABLE [dbo].[SC_Categories] CHECK CONSTRAINT [FK_SC_Categories_SC_Sections]
GO
ALTER TABLE [dbo].[SC_Colors]  WITH CHECK ADD  CONSTRAINT [FK_SC_Colors_SC_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[SC_Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[SC_Colors] CHECK CONSTRAINT [FK_SC_Colors_SC_Categories]
GO
ALTER TABLE [dbo].[SC_Colors]  WITH CHECK ADD  CONSTRAINT [FK_SC_Colors_SC_Sections] FOREIGN KEY([SectionID])
REFERENCES [dbo].[SC_Sections] ([SectionID])
GO
ALTER TABLE [dbo].[SC_Colors] CHECK CONSTRAINT [FK_SC_Colors_SC_Sections]
GO
ALTER TABLE [dbo].[SC_Colors]  WITH CHECK ADD  CONSTRAINT [FK_SC_Colors_SC_SubCategories] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[SC_SubCategories] ([SubCategoryID])
GO
ALTER TABLE [dbo].[SC_Colors] CHECK CONSTRAINT [FK_SC_Colors_SC_SubCategories]
GO
ALTER TABLE [dbo].[SC_CouponProducts]  WITH CHECK ADD  CONSTRAINT [FK_SC_CouponProducts_SC_Coupons] FOREIGN KEY([CouponID])
REFERENCES [dbo].[SC_Coupons] ([CouponID])
GO
ALTER TABLE [dbo].[SC_CouponProducts] CHECK CONSTRAINT [FK_SC_CouponProducts_SC_Coupons]
GO
ALTER TABLE [dbo].[SC_CouponProducts]  WITH CHECK ADD  CONSTRAINT [FK_SC_CouponProducts_SC_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[SC_Products] ([ProductID])
GO
ALTER TABLE [dbo].[SC_CouponProducts] CHECK CONSTRAINT [FK_SC_CouponProducts_SC_Products]
GO
ALTER TABLE [dbo].[SC_Coupons]  WITH CHECK ADD  CONSTRAINT [FK_SC_Coupons_SC_Brands] FOREIGN KEY([BrandID])
REFERENCES [dbo].[SC_Brands] ([BrandID])
GO
ALTER TABLE [dbo].[SC_Coupons] CHECK CONSTRAINT [FK_SC_Coupons_SC_Brands]
GO
ALTER TABLE [dbo].[SC_Coupons]  WITH CHECK ADD  CONSTRAINT [FK_SC_Coupons_SC_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[SC_Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[SC_Coupons] CHECK CONSTRAINT [FK_SC_Coupons_SC_Categories]
GO
ALTER TABLE [dbo].[SC_Coupons]  WITH CHECK ADD  CONSTRAINT [FK_SC_Coupons_SC_Sections] FOREIGN KEY([SectionID])
REFERENCES [dbo].[SC_Sections] ([SectionID])
GO
ALTER TABLE [dbo].[SC_Coupons] CHECK CONSTRAINT [FK_SC_Coupons_SC_Sections]
GO
ALTER TABLE [dbo].[SC_Coupons]  WITH CHECK ADD  CONSTRAINT [FK_SC_Coupons_SC_SubCategories] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[SC_SubCategories] ([SubCategoryID])
GO
ALTER TABLE [dbo].[SC_Coupons] CHECK CONSTRAINT [FK_SC_Coupons_SC_SubCategories]
GO
ALTER TABLE [dbo].[SC_DiscountRanges]  WITH CHECK ADD  CONSTRAINT [FK_SC_DiscountRanges_SC_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[SC_Products] ([ProductID])
GO
ALTER TABLE [dbo].[SC_DiscountRanges] CHECK CONSTRAINT [FK_SC_DiscountRanges_SC_Products]
GO
ALTER TABLE [dbo].[SC_DiscountRules]  WITH CHECK ADD  CONSTRAINT [FK_SC_DiscountRules_SC_Brands] FOREIGN KEY([DiscountOnBrandID])
REFERENCES [dbo].[SC_Brands] ([BrandID])
GO
ALTER TABLE [dbo].[SC_DiscountRules] CHECK CONSTRAINT [FK_SC_DiscountRules_SC_Brands]
GO
ALTER TABLE [dbo].[SC_DiscountRules]  WITH CHECK ADD  CONSTRAINT [FK_SC_DiscountRules_SC_Categories] FOREIGN KEY([DiscountOnCategoryID])
REFERENCES [dbo].[SC_Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[SC_DiscountRules] CHECK CONSTRAINT [FK_SC_DiscountRules_SC_Categories]
GO
ALTER TABLE [dbo].[SC_DiscountRules]  WITH CHECK ADD  CONSTRAINT [FK_SC_DiscountRules_SC_Products] FOREIGN KEY([ProductQuantityOnToShipFreeProductID])
REFERENCES [dbo].[SC_Products] ([ProductID])
GO
ALTER TABLE [dbo].[SC_DiscountRules] CHECK CONSTRAINT [FK_SC_DiscountRules_SC_Products]
GO
ALTER TABLE [dbo].[SC_DiscountRules]  WITH CHECK ADD  CONSTRAINT [FK_SC_DiscountRules_SC_Sections] FOREIGN KEY([DiscountOnSectionID])
REFERENCES [dbo].[SC_Sections] ([SectionID])
GO
ALTER TABLE [dbo].[SC_DiscountRules] CHECK CONSTRAINT [FK_SC_DiscountRules_SC_Sections]
GO
ALTER TABLE [dbo].[SC_DiscountRules]  WITH CHECK ADD  CONSTRAINT [FK_SC_DiscountRules_SC_SubCategories] FOREIGN KEY([DiscountOnSubCategoryID])
REFERENCES [dbo].[SC_SubCategories] ([SubCategoryID])
GO
ALTER TABLE [dbo].[SC_DiscountRules] CHECK CONSTRAINT [FK_SC_DiscountRules_SC_SubCategories]
GO
ALTER TABLE [dbo].[SC_GuestOrders]  WITH CHECK ADD  CONSTRAINT [FK_SC_GuestOrders_SC_Orders] FOREIGN KEY([OrderNumber])
REFERENCES [dbo].[SC_Orders] ([OrderNumber])
GO
ALTER TABLE [dbo].[SC_GuestOrders] CHECK CONSTRAINT [FK_SC_GuestOrders_SC_Orders]
GO
ALTER TABLE [dbo].[SC_Highlights]  WITH CHECK ADD  CONSTRAINT [FK_SC_Highlights_SC_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[SC_Products] ([ProductID])
GO
ALTER TABLE [dbo].[SC_Highlights] CHECK CONSTRAINT [FK_SC_Highlights_SC_Products]
GO
ALTER TABLE [dbo].[SC_OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_SC_OrderDetails_SC_Orders] FOREIGN KEY([OrderNumber])
REFERENCES [dbo].[SC_Orders] ([OrderNumber])
GO
ALTER TABLE [dbo].[SC_OrderDetails] CHECK CONSTRAINT [FK_SC_OrderDetails_SC_Orders]
GO
ALTER TABLE [dbo].[SC_OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_SC_OrderDetails_SC_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[SC_Products] ([ProductID])
GO
ALTER TABLE [dbo].[SC_OrderDetails] CHECK CONSTRAINT [FK_SC_OrderDetails_SC_Products]
GO
ALTER TABLE [dbo].[SC_OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_SC_OrderDetails_SC_ShipmentCompanies] FOREIGN KEY([ShipmentCompanyID])
REFERENCES [dbo].[SC_ShipmentCompanies] ([ShipmentCompanyID])
GO
ALTER TABLE [dbo].[SC_OrderDetails] CHECK CONSTRAINT [FK_SC_OrderDetails_SC_ShipmentCompanies]
GO
ALTER TABLE [dbo].[SC_OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_SC_OrderDetails_SC_Trackings] FOREIGN KEY([TrackingID])
REFERENCES [dbo].[SC_Trackings] ([TrackingID])
GO
ALTER TABLE [dbo].[SC_OrderDetails] CHECK CONSTRAINT [FK_SC_OrderDetails_SC_Trackings]
GO
ALTER TABLE [dbo].[SC_Orders]  WITH CHECK ADD  CONSTRAINT [FK_SC_Orders_SC_ShipmentTypes] FOREIGN KEY([ShipmentTypeID])
REFERENCES [dbo].[SC_ShipmentTypes] ([ShipmentTypeID])
GO
ALTER TABLE [dbo].[SC_Orders] CHECK CONSTRAINT [FK_SC_Orders_SC_ShipmentTypes]
GO
ALTER TABLE [dbo].[SC_ProductDownloads]  WITH CHECK ADD  CONSTRAINT [FK_SC_ProductDownloads_SC_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[SC_Products] ([ProductID])
GO
ALTER TABLE [dbo].[SC_ProductDownloads] CHECK CONSTRAINT [FK_SC_ProductDownloads_SC_Products]
GO
ALTER TABLE [dbo].[SC_ProductIcons]  WITH CHECK ADD  CONSTRAINT [FK_SC_ProductIcons_SC_Icons] FOREIGN KEY([IconID])
REFERENCES [dbo].[SC_Icons] ([IconID])
GO
ALTER TABLE [dbo].[SC_ProductIcons] CHECK CONSTRAINT [FK_SC_ProductIcons_SC_Icons]
GO
ALTER TABLE [dbo].[SC_ProductIcons]  WITH CHECK ADD  CONSTRAINT [FK_SC_ProductIcons_SC_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[SC_Products] ([ProductID])
GO
ALTER TABLE [dbo].[SC_ProductIcons] CHECK CONSTRAINT [FK_SC_ProductIcons_SC_Products]
GO
ALTER TABLE [dbo].[SC_ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_SC_ProductImages_SC_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[SC_Products] ([ProductID])
GO
ALTER TABLE [dbo].[SC_ProductImages] CHECK CONSTRAINT [FK_SC_ProductImages_SC_Products]
GO
ALTER TABLE [dbo].[SC_ProductLocks]  WITH CHECK ADD  CONSTRAINT [FK_SC_ProductLocks_SC_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[SC_Products] ([ProductID])
GO
ALTER TABLE [dbo].[SC_ProductLocks] CHECK CONSTRAINT [FK_SC_ProductLocks_SC_Products]
GO
ALTER TABLE [dbo].[SC_ProductModels]  WITH CHECK ADD  CONSTRAINT [FK_SC_ProductModels_SC_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[SC_Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[SC_ProductModels] CHECK CONSTRAINT [FK_SC_ProductModels_SC_Categories]
GO
ALTER TABLE [dbo].[SC_ProductModels]  WITH CHECK ADD  CONSTRAINT [FK_SC_ProductModels_SC_Sections] FOREIGN KEY([SectionID])
REFERENCES [dbo].[SC_Sections] ([SectionID])
GO
ALTER TABLE [dbo].[SC_ProductModels] CHECK CONSTRAINT [FK_SC_ProductModels_SC_Sections]
GO
ALTER TABLE [dbo].[SC_ProductModels]  WITH CHECK ADD  CONSTRAINT [FK_SC_ProductModels_SC_SubCategories] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[SC_SubCategories] ([SubCategoryID])
GO
ALTER TABLE [dbo].[SC_ProductModels] CHECK CONSTRAINT [FK_SC_ProductModels_SC_SubCategories]
GO
ALTER TABLE [dbo].[SC_Products]  WITH CHECK ADD  CONSTRAINT [FK_SC_Products_SC_AvailabilityTypes] FOREIGN KEY([AvailabilityTypeID])
REFERENCES [dbo].[SC_AvailabilityTypes] ([AvailabilityTypeID])
GO
ALTER TABLE [dbo].[SC_Products] CHECK CONSTRAINT [FK_SC_Products_SC_AvailabilityTypes]
GO
ALTER TABLE [dbo].[SC_Products]  WITH CHECK ADD  CONSTRAINT [FK_SC_Products_SC_Brands] FOREIGN KEY([BrandID])
REFERENCES [dbo].[SC_Brands] ([BrandID])
GO
ALTER TABLE [dbo].[SC_Products] CHECK CONSTRAINT [FK_SC_Products_SC_Brands]
GO
ALTER TABLE [dbo].[SC_Products]  WITH CHECK ADD  CONSTRAINT [FK_SC_Products_SC_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[SC_Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[SC_Products] CHECK CONSTRAINT [FK_SC_Products_SC_Categories]
GO
ALTER TABLE [dbo].[SC_Products]  WITH CHECK ADD  CONSTRAINT [FK_SC_Products_SC_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[SC_Colors] ([ColorID])
GO
ALTER TABLE [dbo].[SC_Products] CHECK CONSTRAINT [FK_SC_Products_SC_Colors]
GO
ALTER TABLE [dbo].[SC_Products]  WITH CHECK ADD  CONSTRAINT [FK_SC_Products_SC_ProductModels] FOREIGN KEY([ProductModelID])
REFERENCES [dbo].[SC_ProductModels] ([ProductModelID])
GO
ALTER TABLE [dbo].[SC_Products] CHECK CONSTRAINT [FK_SC_Products_SC_ProductModels]
GO
ALTER TABLE [dbo].[SC_Products]  WITH CHECK ADD  CONSTRAINT [FK_SC_Products_SC_ProductTypes] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[SC_ProductTypes] ([ProductTypeID])
GO
ALTER TABLE [dbo].[SC_Products] CHECK CONSTRAINT [FK_SC_Products_SC_ProductTypes]
GO
ALTER TABLE [dbo].[SC_Products]  WITH CHECK ADD  CONSTRAINT [FK_SC_Products_SC_Sections] FOREIGN KEY([SectionID])
REFERENCES [dbo].[SC_Sections] ([SectionID])
GO
ALTER TABLE [dbo].[SC_Products] CHECK CONSTRAINT [FK_SC_Products_SC_Sections]
GO
ALTER TABLE [dbo].[SC_Products]  WITH CHECK ADD  CONSTRAINT [FK_SC_Products_SC_Sizes] FOREIGN KEY([SizeID])
REFERENCES [dbo].[SC_Sizes] ([SizeID])
GO
ALTER TABLE [dbo].[SC_Products] CHECK CONSTRAINT [FK_SC_Products_SC_Sizes]
GO
ALTER TABLE [dbo].[SC_Products]  WITH CHECK ADD  CONSTRAINT [FK_SC_Products_SC_SubCategories] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[SC_SubCategories] ([SubCategoryID])
GO
ALTER TABLE [dbo].[SC_Products] CHECK CONSTRAINT [FK_SC_Products_SC_SubCategories]
GO
ALTER TABLE [dbo].[SC_Products]  WITH CHECK ADD  CONSTRAINT [FK_SC_Products_SC_Units] FOREIGN KEY([UnitID])
REFERENCES [dbo].[SC_Units] ([UnitID])
GO
ALTER TABLE [dbo].[SC_Products] CHECK CONSTRAINT [FK_SC_Products_SC_Units]
GO
ALTER TABLE [dbo].[SC_ProductTypes]  WITH CHECK ADD  CONSTRAINT [FK_SC_ProductTypes_SC_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[SC_Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[SC_ProductTypes] CHECK CONSTRAINT [FK_SC_ProductTypes_SC_Categories]
GO
ALTER TABLE [dbo].[SC_ProductTypes]  WITH CHECK ADD  CONSTRAINT [FK_SC_ProductTypes_SC_Sections] FOREIGN KEY([SectionID])
REFERENCES [dbo].[SC_Sections] ([SectionID])
GO
ALTER TABLE [dbo].[SC_ProductTypes] CHECK CONSTRAINT [FK_SC_ProductTypes_SC_Sections]
GO
ALTER TABLE [dbo].[SC_ProductTypes]  WITH CHECK ADD  CONSTRAINT [FK_SC_ProductTypes_SC_SubCategories] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[SC_SubCategories] ([SubCategoryID])
GO
ALTER TABLE [dbo].[SC_ProductTypes] CHECK CONSTRAINT [FK_SC_ProductTypes_SC_SubCategories]
GO
ALTER TABLE [dbo].[SC_ProductVideos]  WITH CHECK ADD  CONSTRAINT [FK_SC_ProductVideos_SC_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[SC_Products] ([ProductID])
GO
ALTER TABLE [dbo].[SC_ProductVideos] CHECK CONSTRAINT [FK_SC_ProductVideos_SC_Products]
GO
ALTER TABLE [dbo].[SC_Ratings]  WITH CHECK ADD  CONSTRAINT [FK_SC_Ratings_SC_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[SC_Products] ([ProductID])
GO
ALTER TABLE [dbo].[SC_Ratings] CHECK CONSTRAINT [FK_SC_Ratings_SC_Products]
GO
ALTER TABLE [dbo].[SC_Reviews]  WITH CHECK ADD  CONSTRAINT [FK_SC_Reviews_SC_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[SC_Products] ([ProductID])
GO
ALTER TABLE [dbo].[SC_Reviews] CHECK CONSTRAINT [FK_SC_Reviews_SC_Products]
GO
ALTER TABLE [dbo].[SC_Reviews]  WITH CHECK ADD  CONSTRAINT [FK_SC_Reviews_SC_Ratings] FOREIGN KEY([RatingID])
REFERENCES [dbo].[SC_Ratings] ([RatingID])
GO
ALTER TABLE [dbo].[SC_Reviews] CHECK CONSTRAINT [FK_SC_Reviews_SC_Ratings]
GO
ALTER TABLE [dbo].[SC_Reviews]  WITH CHECK ADD  CONSTRAINT [FK_SC_Reviews_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[MS_Users] ([Username])
GO
ALTER TABLE [dbo].[SC_Reviews] CHECK CONSTRAINT [FK_SC_Reviews_Users]
GO
ALTER TABLE [dbo].[SC_Sizes]  WITH CHECK ADD  CONSTRAINT [FK_SC_Sizes_SC_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[SC_Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[SC_Sizes] CHECK CONSTRAINT [FK_SC_Sizes_SC_Categories]
GO
ALTER TABLE [dbo].[SC_Sizes]  WITH CHECK ADD  CONSTRAINT [FK_SC_Sizes_SC_Sections] FOREIGN KEY([SectionID])
REFERENCES [dbo].[SC_Sections] ([SectionID])
GO
ALTER TABLE [dbo].[SC_Sizes] CHECK CONSTRAINT [FK_SC_Sizes_SC_Sections]
GO
ALTER TABLE [dbo].[SC_Sizes]  WITH CHECK ADD  CONSTRAINT [FK_SC_Sizes_SC_SubCategories] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[SC_SubCategories] ([SubCategoryID])
GO
ALTER TABLE [dbo].[SC_Sizes] CHECK CONSTRAINT [FK_SC_Sizes_SC_SubCategories]
GO
ALTER TABLE [dbo].[SC_SubCategories]  WITH CHECK ADD  CONSTRAINT [FK_SC_SubCategories_SC_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[SC_Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[SC_SubCategories] CHECK CONSTRAINT [FK_SC_SubCategories_SC_Categories]
GO
ALTER TABLE [dbo].[SC_TempCart]  WITH CHECK ADD  CONSTRAINT [FK_SC_TempCart_SC_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[SC_Products] ([ProductID])
GO
ALTER TABLE [dbo].[SC_TempCart] CHECK CONSTRAINT [FK_SC_TempCart_SC_Products]
GO
ALTER TABLE [dbo].[SC_Units]  WITH CHECK ADD  CONSTRAINT [FK_SC_Units_SC_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[SC_Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[SC_Units] CHECK CONSTRAINT [FK_SC_Units_SC_Categories]
GO
ALTER TABLE [dbo].[SC_Units]  WITH CHECK ADD  CONSTRAINT [FK_SC_Units_SC_Sections] FOREIGN KEY([SectionID])
REFERENCES [dbo].[SC_Sections] ([SectionID])
GO
ALTER TABLE [dbo].[SC_Units] CHECK CONSTRAINT [FK_SC_Units_SC_Sections]
GO
ALTER TABLE [dbo].[SC_Units]  WITH CHECK ADD  CONSTRAINT [FK_SC_Units_SC_SubCategories] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[SC_SubCategories] ([SubCategoryID])
GO
ALTER TABLE [dbo].[SC_Units] CHECK CONSTRAINT [FK_SC_Units_SC_SubCategories]
GO
ALTER TABLE [dbo].[SC_UserCardDetails]  WITH CHECK ADD  CONSTRAINT [FK_SC_UserCardDetails_SC_CardTypes] FOREIGN KEY([CardTypeID])
REFERENCES [dbo].[SC_CardTypes] ([CardTypeID])
GO
ALTER TABLE [dbo].[SC_UserCardDetails] CHECK CONSTRAINT [FK_SC_UserCardDetails_SC_CardTypes]
GO
ALTER TABLE [dbo].[SC_UserCardDetails]  WITH CHECK ADD  CONSTRAINT [FK_SC_UserCardDetails_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[MS_Users] ([Username])
GO
ALTER TABLE [dbo].[SC_UserCardDetails] CHECK CONSTRAINT [FK_SC_UserCardDetails_Users]
GO
ALTER TABLE [dbo].[SC_UserCart]  WITH CHECK ADD  CONSTRAINT [FK_SC_UserCart_SC_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[SC_Products] ([ProductID])
GO
ALTER TABLE [dbo].[SC_UserCart] CHECK CONSTRAINT [FK_SC_UserCart_SC_Products]
GO
ALTER TABLE [dbo].[SC_UserCart]  WITH CHECK ADD  CONSTRAINT [FK_SC_UserCart_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[MS_Users] ([Username])
GO
ALTER TABLE [dbo].[SC_UserCart] CHECK CONSTRAINT [FK_SC_UserCart_Users]
GO
ALTER TABLE [dbo].[SC_UserOrders]  WITH CHECK ADD  CONSTRAINT [FK_SC_UserOrders_SC_Orders] FOREIGN KEY([OrderNumber])
REFERENCES [dbo].[SC_Orders] ([OrderNumber])
GO
ALTER TABLE [dbo].[SC_UserOrders] CHECK CONSTRAINT [FK_SC_UserOrders_SC_Orders]
GO
ALTER TABLE [dbo].[SC_UserOrders]  WITH CHECK ADD  CONSTRAINT [FK_SC_UserOrders_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[MS_Users] ([Username])
GO
ALTER TABLE [dbo].[SC_UserOrders] CHECK CONSTRAINT [FK_SC_UserOrders_Users]
GO
