USE [WeddingDB]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 08/05/2016 18:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserRoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserRoles] ON
INSERT [dbo].[UserRoles] ([UserRoleID], [RoleName]) VALUES (1, N'SuperAdmin')
INSERT [dbo].[UserRoles] ([UserRoleID], [RoleName]) VALUES (2, N'Users')
INSERT [dbo].[UserRoles] ([UserRoleID], [RoleName]) VALUES (3, N'Blocked')
SET IDENTITY_INSERT [dbo].[UserRoles] OFF
/****** Object:  Table [dbo].[Section]    Script Date: 08/05/2016 18:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Section](
	[SectionID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Section] ON
INSERT [dbo].[Section] ([SectionID], [Name]) VALUES (1, N'Our Memories')
INSERT [dbo].[Section] ([SectionID], [Name]) VALUES (2, N'Our Events')
INSERT [dbo].[Section] ([SectionID], [Name]) VALUES (3, N'Our LoveStory')
INSERT [dbo].[Section] ([SectionID], [Name]) VALUES (4, N'Bridesmaids')
INSERT [dbo].[Section] ([SectionID], [Name]) VALUES (5, N'Groomsmens')
INSERT [dbo].[Section] ([SectionID], [Name]) VALUES (6, N'MainSlide')
SET IDENTITY_INSERT [dbo].[Section] OFF
/****** Object:  Table [dbo].[OurLoveStory]    Script Date: 08/05/2016 18:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OurLoveStory](
	[OurStoryID] [int] IDENTITY(1,1) NOT NULL,
	[Title1] [varchar](256) NULL,
	[Title2] [varchar](256) NULL,
	[PublishDate] [varchar](100) NULL,
	[Content] [varchar](max) NULL,
	[SpecialComment] [varchar](552) NULL,
	[CommentBy] [varchar](256) NULL,
	[TemplateId] [int] NULL,
 CONSTRAINT [PK__OurLoveS__4C3CAE083D4E0AD6] PRIMARY KEY CLUSTERED 
(
	[OurStoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[OurLoveStory] ON
INSERT [dbo].[OurLoveStory] ([OurStoryID], [Title1], [Title2], [PublishDate], [Content], [SpecialComment], [CommentBy], [TemplateId]) VALUES (1, N'He Saw', N'Her', N'Apr 03, 2015', N'Andrew and Merry crossed paths multiple times in college, but it wasnt until after Mark graduated that they met through mutual friends from Oregon State University. The first night they officially met was at Kells Irish Pub, downtown Portland. Andrew spotted Merry and asked their mutual friend Tom about her. At the end of the night, Tom insisted that Andrew and Merry talk on the phone, so he called Merry, handed Andrew the phone, and the rest is history....', N'"You were so cute and funny for me, I never had a same feeling for someone before"', N'Merry Rohdes', 1)
INSERT [dbo].[OurLoveStory] ([OurStoryID], [Title1], [Title2], [PublishDate], [Content], [SpecialComment], [CommentBy], [TemplateId]) VALUES (2, N'Our First', N'Date', N'Aug 10, 2015', N'After dinner and drinks, they decided to walk the docks on the Portland Waterfront, but Merry couldnt even imagine what awaited her. Andrew had also planned a romantic boat trip that turned out to be one of the most fun and unforgettable moments of their lives.', N'"Why not Andrew, I love to come with you. A dinner is a perfect idea for me"', N'Merry Rohdes', 2)
INSERT [dbo].[OurLoveStory] ([OurStoryID], [Title1], [Title2], [PublishDate], [Content], [SpecialComment], [CommentBy], [TemplateId]) VALUES (3, N'The First', N'Vacation', N'Jan 20, 2016', N'They had taken overnight trips before, but this was their first huge vacations outside the USA. Merry and Andrew travelled to the Baltic region and visited a number of countries including Iceland, Finland, Denmark, Russia, Poland and Germany . It was a 24 day fabulous trip! It was super intense but so rewarding for both. ', NULL, NULL, 1)
INSERT [dbo].[OurLoveStory] ([OurStoryID], [Title1], [Title2], [PublishDate], [Content], [SpecialComment], [CommentBy], [TemplateId]) VALUES (4, N'They moved', N'Together', N'May 07, 2016', N'Due to Merrys work, which required some schedule flexibility, it began to be increasingly difficult for them to be with one another. It was at this momment that both realized they needed (more than ever), the support and comfort that only they could give each other.', NULL, NULL, 2)
INSERT [dbo].[OurLoveStory] ([OurStoryID], [Title1], [Title2], [PublishDate], [Content], [SpecialComment], [CommentBy], [TemplateId]) VALUES (5, N'She said', N'Yes', N'Sep 15, 2016', N' So how did Andrew pop the question? On a Cruise ... off the shore ... of the Cayman Islands! (YES!) On their way down to dinner with the Ships Captain, Andrews nerves got the best of him and he pulled Merry back to the room and straight onto the balcony for the best proposal a girl could ask for!. ', N'"Will You Marry Me?"', N'Andrew Johnson', 1)
INSERT [dbo].[OurLoveStory] ([OurStoryID], [Title1], [Title2], [PublishDate], [Content], [SpecialComment], [CommentBy], [TemplateId]) VALUES (6, N'The Adventure', N'Begins', N'Dec 10, 2016', N'This type of guessing game went on for about a month until one day I finally had enough of myself! I decided there would be no more of the "when is he going to propose" guessing game it would happen when it happened and that was that!', N'"I Do..., I Do Too...!"', N'Juzar and Sakina', 2)
SET IDENTITY_INSERT [dbo].[OurLoveStory] OFF
/****** Object:  Table [dbo].[OurEvents]    Script Date: 08/05/2016 18:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OurEvents](
	[OurEventID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](256) NULL,
	[EventLocation] [varchar](256) NULL,
	[EventContent] [varchar](2000) NULL,
	[TemplateID] [int] NULL,
 CONSTRAINT [PK__OurEvent__896B306C44E52CB7] PRIMARY KEY CLUSTERED 
(
	[OurEventID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[OurEvents] ON
INSERT [dbo].[OurEvents] ([OurEventID], [Title], [EventLocation], [EventContent], [TemplateID]) VALUES (1, N'Engagement in', N'Hawaii', N' In late August, on a family vacation to Oahu, Hannah and Andrew decided to take themselves off the market. The Long family attempted to show Andrew everything they experienced in their ten years of living there. Somewhere along the way, Andrew decided he wanted to be a part of the family. A mai tai, a talk with Longo, and a few less intimidating adventures later he took Hannah to Sandys Beach for sunrise and proposed.', 3)
INSERT [dbo].[OurEvents] ([OurEventID], [Title], [EventLocation], [EventContent], [TemplateID]) VALUES (2, N'Elopement in', N'Arizona', N' Across the country born and raised Hannah and Andrew wanted to fly away, taking all of you with them for one amazing day. In the end, nothing is ever as simple as the fairytales. So short and sweet and very small we met this Christmas to have it all. One thing was missing and that was you! Lots of questions, Im sure there are… but most importantly lets be clear, we love you through and through.', 2)
INSERT [dbo].[OurEvents] ([OurEventID], [Title], [EventLocation], [EventContent], [TemplateID]) VALUES (3, N'Honeymoon', N'Switzerland', N' One ring to rule them all&mdash. If they havent already told you enough, Hannah and Andrew love all things Tolkien. In Summer 2015, the newly-weds will "fly you fools" to the land of Middle-Earth. "One does not simply walk into Mordor"&mdash;so check back in June for photos from our adventure.', NULL)
SET IDENTITY_INSERT [dbo].[OurEvents] OFF
/****** Object:  Table [dbo].[ContactUs]    Script Date: 08/05/2016 18:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactUs](
	[Name] [varchar](256) NULL,
	[EmailID] [varchar](256) NULL,
	[PhoneNo] [int] NULL,
	[Msg] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommonInfo]    Script Date: 08/05/2016 18:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommonInfo](
	[CommonInfoID] [int] IDENTITY(1,1) NOT NULL,
	[WeddingDate] [datetime] NULL,
	[CouplePictureUrl] [varchar](1024) NULL,
	[CoupleInfo] [varchar](1024) NULL,
	[BrideFullName] [varchar](256) NULL,
	[GroomFullName] [varchar](256) NULL,
	[GiftRegistryContent] [varchar](256) NULL,
	[Address] [varchar](256) NULL,
	[ContactInfo] [varchar](256) NULL,
	[GuestCount] [int] NULL,
	[AttendCount] [int] NULL,
	[BridesmaidCount] [int] NULL,
	[GroomsmenCount] [int] NULL,
	[AboutUs] [varchar](552) NULL,
	[BridemaidsContent] [varchar](max) NULL,
	[GroomsmenContent] [varchar](max) NULL,
	[GiftRegistryImageUrl] [varchar](1024) NULL,
	[GoogleMapAddress] [varchar](556) NULL,
PRIMARY KEY CLUSTERED 
(
	[CommonInfoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CommonInfo] ON
INSERT [dbo].[CommonInfo] ([CommonInfoID], [WeddingDate], [CouplePictureUrl], [CoupleInfo], [BrideFullName], [GroomFullName], [GiftRegistryContent], [Address], [ContactInfo], [GuestCount], [AttendCount], [BridesmaidCount], [GroomsmenCount], [AboutUs], [BridemaidsContent], [GroomsmenContent], [GiftRegistryImageUrl], [GoogleMapAddress]) VALUES (1, CAST(0x0000A73B00000000 AS DateTime), N'/FileUpload/16d1f817-5b7b-416d-8521-811da0dd9feb.jpg', N'leo and kate are the best pal the world can ever see', N'leonardo Di caprio', N'Kate winslate', N'There were various gifts exchanged between the 2', N'Tiny Bear <br> 118 Santa Monica <br> 999877 los Angeles, USA', N'Gulshan Hall, 60 Grant Ave. Carteret NJ 0708 (732) 803-01 03, (732) 806-01 04 <br> info@emailname.com', 1200, 900, 17, 20, N'It has been indeed a lovely experience and we are thankful to all the friends for their awesome support.', N'kate and friends are awesome in the movie', N'Leo and friends are so invincible', N'images/gift_registries.jpg', N'Mazyad Mall - Mohammed Bin Zayed City - Abu Dhabi')
SET IDENTITY_INSERT [dbo].[CommonInfo] OFF
/****** Object:  Table [dbo].[Comments]    Script Date: 08/05/2016 18:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[ParentCommentID] [int] NULL,
	[UserName] [varchar](256) NULL,
	[Content] [varchar](max) NULL,
	[ProfileImageUrl] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON
INSERT [dbo].[Comments] ([CommentID], [ParentCommentID], [UserName], [Content], [ProfileImageUrl]) VALUES (1, NULL, N'Juzar Jakyudin', N'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.', NULL)
INSERT [dbo].[Comments] ([CommentID], [ParentCommentID], [UserName], [Content], [ProfileImageUrl]) VALUES (2, 1, N'RAHUL', N'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.', NULL)
INSERT [dbo].[Comments] ([CommentID], [ParentCommentID], [UserName], [Content], [ProfileImageUrl]) VALUES (3, 1, N'Gautam', N'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.', NULL)
INSERT [dbo].[Comments] ([CommentID], [ParentCommentID], [UserName], [Content], [ProfileImageUrl]) VALUES (4, NULL, N'Bill Gates', N'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.', NULL)
SET IDENTITY_INSERT [dbo].[Comments] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 08/05/2016 18:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](500) NULL,
	[Password] [varchar](500) NULL,
	[Fullname] [varchar](500) NULL,
	[CreatedOn] [datetime] NULL,
	[UserRoleID] [int] NULL,
	[ProfilePictureUrl] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EntityImages]    Script Date: 08/05/2016 18:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EntityImages](
	[EntityImageID] [int] IDENTITY(1,1) NOT NULL,
	[SectionID] [int] NULL,
	[Url] [varchar](1024) NULL,
	[thumbnail] [varchar](1024) NULL,
	[EntityID] [int] NULL,
	[SequenceNo] [int] NULL,
	[Name] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[EntityImageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EntityImages] ON
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (12, 1, N'images/gallery_9.jpg', N'images/sm_gallery_9.jpg', NULL, 1, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (13, 1, N'images/gallery_10.jpg', N'images/sm_gallery_10.jpg', NULL, 10, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (14, 4, NULL, N'images/gallery_sm_1.jpg', NULL, 1, N'Ameena Dekosta')
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (15, 4, NULL, N'images/gallery_sm_2.jpg', NULL, 2, N'Sara Jones')
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (16, 4, NULL, N'images/gallery_sm_3.jpg', NULL, 3, N'Stenly Charlskus')
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (17, 4, NULL, N'images/gallery_sm_4.jpg', NULL, 4, N'Allena Disoza')
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (18, 4, NULL, N'images/gallery_sm_5.jpg', NULL, 5, N'Kevleen Josef')
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (19, 4, NULL, N'images/gallery_sm_6.jpg', NULL, 6, N'Strea Henry')
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (20, 4, NULL, N'images/gallery_sm_7.jpg', NULL, 7, N'Anjelina Kulwesia')
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (21, 5, NULL, N'images/gallery_sm_8.jpg', NULL, 1, N'Mark Henry')
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (23, 5, NULL, N'images/gallery_sm_9.jpg', NULL, 1, N'Jeemy Jones')
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (24, 5, NULL, N'images/gallery_sm_10.jpg', NULL, 1, N'Steav Charls')
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (25, 5, NULL, N'images/gallery_sm_11.jpg', NULL, 1, N'Steav Charls')
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (26, 5, NULL, N'images/gallery_sm_12.jpg', NULL, 1, N'Keween Patrik')
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (27, 5, NULL, N'images/gallery_sm_13.jpg', NULL, 1, N'Austin Mark')
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (28, 5, NULL, N'images/gallery_sm_14.jpg', NULL, 1, N'Stivan Parker')
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (29, 3, N'images/timeline_1.jpg', NULL, 1, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (30, 3, N'images/timeline_2.jpg', NULL, 2, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (31, 3, N'images/timeline_3.jpg', NULL, 3, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (32, 3, N'images/timeline_4.jpg', NULL, 4, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (33, 3, N'images/timeline_5.jpg', NULL, 5, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (34, 3, N'images/timeline_6.jpg', NULL, 6, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (35, 2, N'images/engagement_1.jpg', NULL, 1, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (36, 2, N'images/engagement_2.jpg', NULL, 1, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (37, 2, N'images/engagement_3.jpg', NULL, 1, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (38, 2, N'images/engagement_4.jpg', NULL, 1, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (39, 2, N'images/engagement_5.jpg', NULL, 1, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (40, 2, N'images/elopement_1.jpg', NULL, 2, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (41, 2, N'images/elopement_2.jpg', NULL, 2, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (42, 2, N'images/elopement_3.jpg', NULL, 2, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (43, 2, N'images/elopement_4.jpg', NULL, 2, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (44, 2, N'images/elopement_5.jpg', NULL, 2, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (45, 2, N'images/honeymoon_1.jpg', NULL, 3, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (46, 2, N'images/honeymoon_2.jpg', NULL, 3, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (47, 2, N'images/honeymoon_3.jpg', NULL, 3, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (48, 2, N'images/honeymoon_4.jpg', NULL, 3, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (49, 2, N'images/honeymoon_5.jpg', NULL, 3, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (50, 6, N'/FileUpload/81a2adbf-8871-4734-bd6f-2ab5e66e7685.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (51, 6, N'/FileUpload/67e2aea7-db7d-463d-8254-97883a296e24.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (53, 6, N'/FileUpload/3f280319-a922-481b-85d6-0494f7fded42.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (54, 1, N'/FileUpload/ee8537eb-f45a-472a-9b5c-b7d73ec2ef96.jpg', N'/FileUpload/ee8537eb-f45a-472a-9b5c-b7d73ec2ef96.jpg', NULL, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (55, 1, N'/FileUpload/ff5714bf-cfcd-4f02-8842-c319adf54932.jpg', N'/FileUpload/ff5714bf-cfcd-4f02-8842-c319adf54932.jpg', NULL, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (56, 1, N'/FileUpload/6124f553-afd9-4769-b4f7-4c714c008f87.jpg', N'/FileUpload/6124f553-afd9-4769-b4f7-4c714c008f87.jpg', NULL, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (57, 1, N'/FileUpload/b7bedde7-d914-477f-877e-805431b6656b.jpg', N'/FileUpload/b7bedde7-d914-477f-877e-805431b6656b.jpg', NULL, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (58, 4, NULL, N'/FileUpload/abc0b70e-a1ad-453f-845e-3a94d420e41d.jpg', NULL, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (59, 4, NULL, N'/FileUpload/c2db8e92-dd09-45da-981d-b7b99fc599b1.jpg', NULL, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (60, 5, NULL, N'/FileUpload/4efd1393-473e-4576-a3d7-75a5f4469152.jpg', NULL, NULL, NULL)
INSERT [dbo].[EntityImages] ([EntityImageID], [SectionID], [Url], [thumbnail], [EntityID], [SequenceNo], [Name]) VALUES (61, 5, NULL, N'/FileUpload/b89c9350-704b-48b5-8738-26b5d18022b1.jpg', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[EntityImages] OFF
/****** Object:  ForeignKey [fk_entityimages_section]    Script Date: 08/05/2016 18:19:38 ******/
ALTER TABLE [dbo].[EntityImages]  WITH CHECK ADD  CONSTRAINT [fk_entityimages_section] FOREIGN KEY([SectionID])
REFERENCES [dbo].[Section] ([SectionID])
GO
ALTER TABLE [dbo].[EntityImages] CHECK CONSTRAINT [fk_entityimages_section]
GO
/****** Object:  ForeignKey [fk_users_userroles]    Script Date: 08/05/2016 18:19:38 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [fk_users_userroles] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[UserRoles] ([UserRoleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [fk_users_userroles]
GO
