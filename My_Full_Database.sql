USE [BibleStudyGuide]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 19/03/2019 4:52:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 19/03/2019 4:52:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 19/03/2019 4:52:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 19/03/2019 4:52:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 19/03/2019 4:52:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 19/03/2019 4:52:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 19/03/2019 4:52:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[AuthorID] [int] NOT NULL,
	[AuthorName] [varchar](500) NULL,
	[Description] [varchar](5000) NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 19/03/2019 4:52:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BookID] [int] NOT NULL,
	[BookName] [varchar](500) NULL,
	[AuthorID] [int] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 19/03/2019 4:52:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[VerseID] [int] NULL,
	[AuthorID] [int] NULL,
	[AuthorName] [varchar](50) NULL,
	[BookName] [varchar](50) NULL,
	[ChapterNumber] [int] NULL,
	[VerseNumber] [int] NULL,
	[VerseContent] [varchar](500) NULL,
	[Category] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chapters]    Script Date: 19/03/2019 4:52:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chapters](
	[ChapterID] [int] NOT NULL,
	[AuthorID] [int] NULL,
	[ChapterNumber] [int] NULL,
 CONSTRAINT [PK_Chapters] PRIMARY KEY CLUSTERED 
(
	[ChapterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 19/03/2019 4:52:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [varchar](50) NULL,
	[BookName] [varchar](50) NULL,
	[ChapterNumber] [int] NULL,
	[Date] [varchar](50) NULL,
	[Message] [varchar](500) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Verses]    Script Date: 19/03/2019 4:52:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Verses](
	[VerseID] [int] NOT NULL,
	[AuthorID] [int] NULL,
	[BookName] [varchar](50) NULL,
	[ChapterNumber] [int] NULL,
	[VerseNumber] [int] NULL,
	[VerseContent] [varchar](500) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Verses] PRIMARY KEY CLUSTERED 
(
	[VerseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201903191439311_InitialCreate', N'BibleStudyGuide.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E3FC0F90F829ECE3948AD5CCE2EB681BD45D649DAE06C2E586717E76D414BB443AC44A912952628FACBFAD09FD4BFD0A144C9122FBAD88AED140B2C2C72F8CD70382487C361FEFCFD8FF10F4F816F3DE23821219DD847A343DBC2D40D3D4297133B658BEFDED93FBCFFE73FC6175EF0647D29E84E381DB4A4C9C47E602C3A759CC47DC0014A460171E33009176CE4868183BCD0393E3CFCDE393A723040D8806559E34F296524C0D9077C4E43EAE288A5C8BF0E3DEC27A21C6A6619AA7583029C44C8C513FB0399FB78C652EFF9C794787894B7B0AD339F20906686FD856D214A438618C87AFA3901EA38A4CB590405C8BF7F8E30D02D909F60D187D31579D7EE1C1EF3EE38AB8605949B262C0C7A021E9D08FD3872F3B5B46C97FA030D5E80A6D933EF75A6C5897DE5E1ACE853E883026486A7533FE6C413FBBA6471964437988D8A86A31CF23206B85FC2F8DBA88A7860756E7750DAD3F1E890FF3BB0A6A9CFD2184F284E598CFC03EB2E9DFBC4FD1F7EBE0FBF613A39399A2F4EDEBD798BBC93B7FFC5276FAA3D85BE025DAD008AEEE230C231C8861765FF6DCBA9B773E48665B34A9B5C2B604B30356CEB1A3D7DC474C91E60D21CBFB3AD4BF284BDA24418D7674A6026412316A7F07993FA3E02E32DEB9D469EFCFF06AEC76FDE0EC2F5063D926536F4127F983831CCAB4FD8CF6A930712E5D3AB36DE5F05D9651C06FCBB6E5F79EDD75998C62EEF4C6824B947F112B3BA74636765BC9D4C9A430D6FD605EAFE9B369754356F2D29EFD03A33A160B1EDD950C8FBB27C3B5BDC5914C1E065A6C535D26470FA0D6B24211C5812DDCA848EBA9A1085AEFD9D57C48B00117F8025B10317F04816240E70D9CB0F211820A2BD65BE4349022B82F7134A1E1A44879F03883EC36E1A83A1CE180AA217E776F710527C9306736EFFDBE335D8D0DCFF125E229785F105E5AD36C6FB18BADFC2945D50EF1C31FC99B90520FFBC2741778041C439735D9C249760CCD89B86E070178057949D1CF786E38BD4AE5D92A98F48A0F749A4E5F46B41BAF24BF4148A6F6220D3F9274DA27E0C97847613B520358B9A53B48A2AC8FA8ACAC1BA492A28CD826604AD72E65483797CD9080DEFF265B0FBEFF36DB6799BD6828A1A67B042E21F31C5312C63DE1D620CC77435025DD68D5D380BD9F071A62FBE37659CBE203F1D9AD55AB3215B04869F0D19ECFECF864C4C287E040F3AEE74102A8801BE13BDFE8CD53EE724C9B63D1D6ADDDC36F3EDAC01A6E9729624A14BB259A009818900465D7EF0E1ACF66846DE1B3922021D0343277CCB8312E89B2D1BD52D3DC73E66D83A73F310E114252EF254354287BC1E82153BAA46B05564A42EDC7F149E60E938E68D103F042530530965EAB420D42511F25BB524B5ECB885F1BE973CE49A731C61CA19B66AA20B737D20840B50F29106A54D4363A76271CD8668F05A4D63DEE6C2AEC65D894F6CC5265B7C67835D0AFFED450CB359635B30CE66957411C018D4DB85818AB34A5703900F2EFB66A0D289C960A0C2A5DA8A81D635B60303ADABE4D519687E44ED3AFED27975DFCCB37E50DEFEB6DEA8AE1DD8664D1F7B669AB9EF096D18B4C0B16A9EE7735E899F98E67006728AF359225C5DD94438F80CB37AC866E5EF6AFD50A7194436A226C095A1B5808AEB40054899503D842B62798DD2092FA2076C11776B84156BBF045BB10115BB7A2D5A21345F9ECAC6D9E9F451F6ACB406C5C83B1D162A381A839017AF7AC73B28C514975515D3C517EEE30D573A2606A341412D9EAB4149456706D752619AED5AD239647D5CB28DB424B94F062D159D195C4BC246DB95A4710A7AB8051BA9A8BE850F34D98A4847B9DB94756327CF98120563C7905A35BE465144E8B2926A254AAC599E6735FD6ED63FF928C8311C37D1E42095D2969C5818A325966A8135487A49E2849D2386E688C779A65EA09069F756C3F25FB0AC6E9FEA2016FB4041CD7FE72D0C97F8B5FD56754804CE25F432E05E4D164AD7D880BEB9C5D3DF908F624DF47E1AFA6940CD4E96B9757E87576D9F97A8086347925F71A2148D29AE6E5DFD9D06479D18030E54E9C7AC3F58660893CA0B2FB4AA7493676A46290255551453F06A67836772687A0F98EC2FF61FAF568497995F2249A50A208A7A6254F21C14B04A5D77D47A2A4A15B35ED31D51CA37A9424A553DA4AC6695D484AC56AC8567D0A89EA23B07358FA48AAED67647D6649454A135D56B606B6496EBBAA36A924EAAC09AEAEED8AB0C147921DDE31DCC788AD9680BCB0FBB9BED61068C97591587D9022B77FA55A04A714F2C716BAF8089F2BDB428E3896F238BCAE31C9B599401C3BC02D56EC4EB0B50E335BE19B376CD5D5BE49BAEF9CD78FDECF645AD4339F4C92425F7F2F0271DF2C6E2C0D5FEC8463981E524B655A81136F8E784E160C40946B39FFDA94F305FCE0B826B44C902272C4FEDB08F0F8F8EA5373AFBF35EC64912CFD71C584D8F66EA63B6852C2DFA8862F701C56ACEC4066F4A56A04A38FA8A7AF86962FF9AB53ACD221BFC57567C605D259F29F939858AFB38C5D66F6A0EE83039F61D5E759482FEF62A9E4B7457F9D5FFBFE64D0FACDB18A6D3A97528297A9DE1AF3FA2E8254DDE740369D67E5AF17A675BEDBD8216559A2DEB3F4F981336C8D38442CA7F05E8E9DF7D45D33E3FD80851F3C46028BC4154687A42B00E96F1F980079F2C7B3ED0AFB3FAE704EB88667C4A40687F30F92141F765A868B9C37D487368DAC69294E9B935117BA3ACCC5DEF4D4ABEF646135DCDC9EE013768DEF5662ECA2BCB671E6CEBD4A42B0F86BD4BBB7FF11CE57D494B5E39EDBBCD46DE660272C3E5D2DF2AEF780F32E534993FBBCF2EDEB6AD99A2C07B9EA2D92F8778CF8C4D6CF3BBCF14DEB6B19902C47B6E6CBDF281F7CCD676B57FEED8D23A6FA13BCFEE5513950CB739BA28725BF66E1E7287E3FF3C0423C83DCAFCD1A53E5DAC29D5B585E18AC4CCD49CA7263356268EC257A16866DBAFAF62C36FECACA069666BC8EE6CE22DD6FF46DE82A699B72167721779C7DAAC455D2E78CB3AD6944AF59AF28C6B3D69496B6FF3591BAFE65F535AF1204AA9CD1EC3EDF2EBC9221E4425434E9D1E59C3EA4531EC9D95BFD908FB7742962B08FE171C29766BBB664973451761B1794B1215245284E61A33E4C1967A1633B2402E836A1E80CE5E8D67413D7E0D32C7DE15BD4D599432E8320EE67E2DE0C59D8026FE596A745DE6F16DC4BF9221BA0062121EB8BFA51F52E27BA5DC979A989001827B1722DCCBC792F1B0EFF2B944BA09694720A1BED229BAC741E40358724B67E811AF231B98DF47BC44EEF32A026802691F88BADAC7E7042D6314240263D51E3EC186BDE0E9FD5F66A44063BA540000, N'6.2.0-61023')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Google', N'109232334253164131484', N'ca36aa9e-7a21-4536-8b3f-50d592ff742f')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'02737899-82d6-4295-a8fe-fe59ec46c18b', N'rich@gc.ca', 0, N'ANmJfxAbk+kh0G/E+DHjrup5CUdGQ5n9EWlk9sy3NRCfoJO/w7gUNufN3iPGgWdHEA==', N'59e18841-6026-458d-a81f-9457fa2fcbe3', NULL, 0, 0, NULL, 1, 0, N'rich@gc.ca')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ca36aa9e-7a21-4536-8b3f-50d592ff742f', N'danteftc@yahoo.com.br', 0, NULL, N'6f474c4f-eda5-4214-b56f-c05aafc981ff', NULL, 0, 0, NULL, 1, 0, N'danteftc@yahoo.com.br')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [Description]) VALUES (1, N'Matthew', N'"Matthew is one of the 12 apostles of Jesus, and one of the four evangelists who wrote down Jesus’s story. When we meet Matthew, he’s a tax collector for Rome. Tax collectors weren’t very popular in Israel, because they collected money from fellow Jews to pay a heathen king. But when Jesus calls Matthew to follow him, Matthew closes his booth down to serve the true King of the Jews. Then he brings Jesus over for dinner (Mt 9:9–10).

Matthew is called Levi in the other gospels, which may indicate that he’s from the tribe of Levi—we’re not sure (Mk 2:14–15; Lk 5:27–29)."
')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [Description]) VALUES (2, N'Mark', N'"Mark’s an interesting character in the background of the New Testament. We first meet Mark in the book of Acts. When Peter miraculously escapes from prison, he goes to Mark’s mother’s house (Ac 12:12). Later, Paul and Barnabas bring Mark along on their missionary journey as a helper, but he leaves them and goes back to Jerusalem (13:5, 13). When Paul and Barnabas prepare for their second journey, Barnabas suggests bringing John Mark again, but Paul won’t hear it (15:37–38). Paul and Barnabas disagree so sharply that they split up: Barnabas takes Mark to Cyprus, and Paul starts a new missionary team (15:39–40).

Mark matures, though. Decades later, Mark is considered useful to Paul (2 Ti 4:11) and a son to Peter (1 Pe 5:13). According to tradition, Mark is the one who writes down Peter’s stories of Jesus—which is how we got the Gospel of Mark."
')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [Description]) VALUES (3, N'Luke', N'"Luke is a physician who accompanies Paul through thick and thin (Co 4:14; 2 Ti 4:11). His skills probably come in handy, because Paul takes a lot of beatings (2 Co 24ff).

But Luke’s greatest legacy is his contribution to the New Testament. Luke write more of the NT than anyone else (yes, even more than Paul). Luke’s a meticulous journalist who sets out to record the life and ministry of Jesus in consecutive order (Lk 1:1–4), and later records the history of the early church (Ac 1:1–2). He composes these accounts on behalf of a mysterious Christian named Theophilus, who wants to learn more about his Christian faith."
')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [Description]) VALUES (4, N'John', N'"He’s another member of the 12 apostles, a former fisherman from Galilee who follows Jesus (Mk 1:19–20). The Lord gives John and his brother James the nickname “Sons of Thunder” (Mk 3:17). The Bible doesn’t say how he earned this nickname, but John does seem to have a stormy personality at times (Lk 9:51–56).

After the resurrection, John becomes a pillar of the early church (Ga 2:9). He writes a persuasive account of Jesus’ earthly ministry, death, and resurrection, and then writes four letters (the last one, Revelation, includes many apocalyptic visions). According to tradition, John becomes an elder at the church at Ephesus. He is eventually exiled to the Isle of Patmos (Rev 1:9).

Fun fact: of all the epistles in the New Testament, John writes the longest (Revelation) and the shortest (3 John). In fact, 3 John is the shortest book of the Bible."
')
INSERT [dbo].[Books] ([BookID], [BookName], [AuthorID]) VALUES (1, N'Matthew', 1)
INSERT [dbo].[Books] ([BookID], [BookName], [AuthorID]) VALUES (2, N'Mark', 2)
INSERT [dbo].[Books] ([BookID], [BookName], [AuthorID]) VALUES (3, N'Luke', 3)
INSERT [dbo].[Books] ([BookID], [BookName], [AuthorID]) VALUES (4, N'John', 4)
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [VerseID], [AuthorID], [AuthorName], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Category], [Date], [Status]) VALUES (1, NULL, 2, N'Mark', N'Mark', 3, 1, N'Another time Jesus went into the synagogue, and a man with a shriveled hand was there.', N'Command', N'03/19/2019', N'true')
INSERT [dbo].[Category] ([CategoryID], [VerseID], [AuthorID], [AuthorName], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Category], [Date], [Status]) VALUES (2, NULL, 2, N'Mark', N'Mark', 3, 2, N'Some of them were looking for a reason to accuse Jesus, so they watched him closely to see if he would heal him on the Sabbath.', N'Promise', N'03/19/2019', N'true')
INSERT [dbo].[Category] ([CategoryID], [VerseID], [AuthorID], [AuthorName], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Category], [Date], [Status]) VALUES (8, NULL, 3, N'Luke', N'Luke', 3, 1, N'In the fifteenth year of the reign of Tiberius Caesar—when Pontius Pilate was governor of Judea, Herod tetrarch of Galilee, his brother Philip tetrarch of Iturea and Traconitis, and Lysanias tetrarch of Abilene—', N'Command', N'03/19/2019', N'true')
INSERT [dbo].[Category] ([CategoryID], [VerseID], [AuthorID], [AuthorName], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Category], [Date], [Status]) VALUES (9, NULL, 3, N'Luke', N'Luke', 3, 2, N'during the high-priesthood of Annas and Caiaphas, the word of God came to John son of Zechariah in the wilderness.', N'Principle', N'03/19/2019', N'true')
INSERT [dbo].[Category] ([CategoryID], [VerseID], [AuthorID], [AuthorName], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Category], [Date], [Status]) VALUES (10, NULL, 3, N'Luke', N'Luke', 3, 3, N'He went into all the country around the Jordan, preaching a baptism of repentance for the forgiveness of sins.', N'Promise', N'03/19/2019', N'true')
INSERT [dbo].[Category] ([CategoryID], [VerseID], [AuthorID], [AuthorName], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Category], [Date], [Status]) VALUES (11, NULL, 3, N'Luke', N'Luke', 3, 4, N'As it is written in the book of the words of Isaiah the prophet: “A voice of one calling in the wilderness, ‘Prepare the way for the Lord, make straight paths for him.', N'N/A', N'03/19/2019', N'true')
INSERT [dbo].[Category] ([CategoryID], [VerseID], [AuthorID], [AuthorName], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Category], [Date], [Status]) VALUES (12, NULL, 4, N'John', N'John', 2, 1, N'On the third day a wedding took place at Cana in Galilee. Jesus’ mother was there,', N'Command', N'03/19/2019', N'true')
SET IDENTITY_INSERT [dbo].[Category] OFF
INSERT [dbo].[Chapters] ([ChapterID], [AuthorID], [ChapterNumber]) VALUES (1, 1, 1)
INSERT [dbo].[Chapters] ([ChapterID], [AuthorID], [ChapterNumber]) VALUES (2, 1, 2)
INSERT [dbo].[Chapters] ([ChapterID], [AuthorID], [ChapterNumber]) VALUES (3, 1, 3)
INSERT [dbo].[Chapters] ([ChapterID], [AuthorID], [ChapterNumber]) VALUES (4, 2, 1)
INSERT [dbo].[Chapters] ([ChapterID], [AuthorID], [ChapterNumber]) VALUES (5, 2, 2)
INSERT [dbo].[Chapters] ([ChapterID], [AuthorID], [ChapterNumber]) VALUES (6, 2, 3)
INSERT [dbo].[Chapters] ([ChapterID], [AuthorID], [ChapterNumber]) VALUES (7, 2, 4)
INSERT [dbo].[Chapters] ([ChapterID], [AuthorID], [ChapterNumber]) VALUES (8, 3, 1)
INSERT [dbo].[Chapters] ([ChapterID], [AuthorID], [ChapterNumber]) VALUES (9, 3, 2)
INSERT [dbo].[Chapters] ([ChapterID], [AuthorID], [ChapterNumber]) VALUES (10, 3, 3)
INSERT [dbo].[Chapters] ([ChapterID], [AuthorID], [ChapterNumber]) VALUES (11, 4, 1)
INSERT [dbo].[Chapters] ([ChapterID], [AuthorID], [ChapterNumber]) VALUES (12, 4, 2)
INSERT [dbo].[Chapters] ([ChapterID], [AuthorID], [ChapterNumber]) VALUES (13, 4, 3)
INSERT [dbo].[Chapters] ([ChapterID], [AuthorID], [ChapterNumber]) VALUES (14, 4, 4)
INSERT [dbo].[Chapters] ([ChapterID], [AuthorID], [ChapterNumber]) VALUES (15, 4, 5)
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([MessageID], [AuthorName], [BookName], [ChapterNumber], [Date], [Message], [Status]) VALUES (3, N'John', N'John', 1, N'03/19/2019', N'Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney''s organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.', NULL)
INSERT [dbo].[Message] ([MessageID], [AuthorName], [BookName], [ChapterNumber], [Date], [Message], [Status]) VALUES (4, N'Luke', N'Luke', 2, N'03/19/2019', N'Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.', NULL)
INSERT [dbo].[Message] ([MessageID], [AuthorName], [BookName], [ChapterNumber], [Date], [Message], [Status]) VALUES (5, N'Mark', N'Mark', 2, N'03/19/2019', N'Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.', NULL)
INSERT [dbo].[Message] ([MessageID], [AuthorName], [BookName], [ChapterNumber], [Date], [Message], [Status]) VALUES (6, N'Matthew', N'Matthew', 3, N'03/19/2019', N'Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.', NULL)
SET IDENTITY_INSERT [dbo].[Message] OFF
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (1, 1, N'Matthew', 1, 1, N'This is the genealogy of Jesus the Messiah the son of David, the son of Abraham:', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (2, 1, N'Matthew', 1, 2, N'Abraham was the father of Isaac, Isaac the father of Jacob, Jacob the father of Judah and his brothers,', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (3, 1, N'Matthew', 1, 3, N'Judah the father of Perez and Zerah, whose mother was Tamar, Perez the father of Hezron, Hezron the father of Ram,', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (4, 1, N'Matthew', 1, 4, N'Ram the father of Amminadab, Amminadab the father of Nahshon, Nahshon the father of Salmon,', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (5, 1, N'Matthew', 1, 5, N'Salmon the father of Boaz, whose mother was Rahab, Boaz the father of Obed, whose mother was Ruth, Obed the father of Jesse,', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (6, 1, N'Matthew', 1, 6, N'and Jesse the father of King David. David was the father of Solomon, whose mother had been Uriah’s wife,', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (7, 1, N'Matthew', 2, 1, N'After Jesus was born in Bethlehem in Judea, during the time of King Herod, Magi from the east came to Jerusalem', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (8, 1, N'Matthew', 2, 2, N'and asked, “Where is the one who has been born king of the Jews? We saw his star when it rose and have come to worship him.”', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (9, 1, N'Matthew', 2, 3, N'When King Herod heard this he was disturbed, and all Jerusalem with him.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (10, 1, N'Matthew', 3, 1, N'In those days John the Baptist came, preaching in the wilderness of Judea', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (11, 1, N'Matthew', 3, 2, N'and saying, “Repent, for the kingdom of heaven has come near.”', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (12, 1, N'Matthew', 3, 3, N'This is he who was spoken of through the prophet Isaiah: “A voice of one calling in the wilderness, ‘Prepare the way for the Lord, make straight paths for him.’ ”', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (13, 1, N'Matthew', 3, 4, N'John’s clothes were made of camel’s hair, and he had a leather belt around his waist. His food was locusts and wild honey.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (14, 2, N'Mark', 1, 1, N'The beginning of the good news about Jesus the Messiah, the Son of God,', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (15, 2, N'Mark', 1, 2, N's it is written in Isaiah the prophet: “I will send my messenger ahead of you, who will prepare your way” —', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (16, 2, N'Mark', 1, 3, N'“a voice of one calling in the wilderness, ‘Prepare the way for the Lord, make straight paths for him.’ ”', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (17, 2, N'Mark', 1, 4, N'And so John the Baptist appeared in the wilderness, preaching a baptism of repentance for the forgiveness of sins.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (18, 2, N'Mark', 2, 1, N'A few days later, when Jesus again entered Capernaum, the people heard that he had come home.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (19, 2, N'Mark', 2, 2, N'They gathered in such large numbers that there was no room left, not even outside the door, and he preached the word to them.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (20, 2, N'Mark', 2, 3, N'Some men came, bringing to him a paralyzed man, carried by four of them.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (21, 2, N'Mark', 2, 4, N'Since they could not get him to Jesus because of the crowd, they made an opening in the roof above Jesus by digging through it and then lowered the mat the man was lying on.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (22, 2, N'Mark', 3, 1, N'Another time Jesus went into the synagogue, and a man with a shriveled hand was there.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (23, 2, N'Mark', 3, 2, N'Some of them were looking for a reason to accuse Jesus, so they watched him closely to see if he would heal him on the Sabbath.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (24, 2, N'Mark', 4, 1, N'Again Jesus began to teach by the lake. The crowd that gathered around him was so large that he got into a boat and sat in it out on the lake, while all the people were along the shore at the water’s edge.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (25, 2, N'Mark', 4, 2, N'He taught them many things by parables, and in his teaching said:', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (26, 2, N'Mark', 4, 3, N'“Listen! A farmer went out to sow his seed.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (27, 2, N'Mark', 4, 4, N'As he was scattering the seed, some fell along the path, and the birds came and ate it up.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (28, 2, N'Mark', 4, 5, N'Some fell on rocky places, where it did not have much soil. It sprang up quickly, because the soil was shallow.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (29, 2, N'Mark', 4, 6, N'But when the sun came up, the plants were scorched, and they withered because they had no root.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (30, 2, N'Mark', 4, 7, N'Other seed fell among thorns, which grew up and choked the plants, so that they did not bear grain.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (31, 2, N'Mark', 4, 8, N'Still other seed fell on good soil. It came up, grew and produced a crop, some multiplying thirty, some sixty, some a hundred times.”', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (32, 3, N'Luke', 1, 1, N'Many have undertaken to draw up an account of the things that have been fulfilled among us,', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (33, 3, N'Luke', 1, 2, N'just as they were handed down to us by those who from the first were eyewitnesses and servants of the word.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (34, 3, N'Luke', 1, 3, N'With this in mind, since I myself have carefully investigated everything from the beginning, I too decided to write an orderly account for you, most excellent Theophilus,', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (35, 3, N'Luke', 2, 1, N'In those days Caesar Augustus issued a decree that a census should be taken of the entire Roman world.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (36, 3, N'Luke', 2, 2, N'(This was the first census that took place while Quirinius was governor of Syria.)', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (37, 3, N'Luke', 3, 1, N'In the fifteenth year of the reign of Tiberius Caesar—when Pontius Pilate was governor of Judea, Herod tetrarch of Galilee, his brother Philip tetrarch of Iturea and Traconitis, and Lysanias tetrarch of Abilene—', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (38, 3, N'Luke', 3, 2, N'during the high-priesthood of Annas and Caiaphas, the word of God came to John son of Zechariah in the wilderness.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (39, 3, N'Luke', 3, 3, N'He went into all the country around the Jordan, preaching a baptism of repentance for the forgiveness of sins.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (40, 3, N'Luke', 3, 4, N'As it is written in the book of the words of Isaiah the prophet: “A voice of one calling in the wilderness, ‘Prepare the way for the Lord, make straight paths for him.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (41, 4, N'John', 1, 1, N'In the beginning was the Word, and the Word was with God, and the Word was God.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (42, 4, N'John', 1, 2, N'He was with God in the beginning.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (43, 4, N'John', 1, 3, N'Through him all things were made; without him nothing was made that has been made.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (44, 4, N'John', 1, 4, N'In him was life, and that life was the light of all mankind.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (45, 4, N'John', 2, 1, N'On the third day a wedding took place at Cana in Galilee. Jesus’ mother was there,', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (46, 4, N'John', 2, 2, N'and Jesus and his disciples had also been invited to the wedding.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (47, 4, N'John', 3, 1, N'Now there was a Pharisee, a man named Nicodemus who was a member of the Jewish ruling council.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (48, 4, N'John', 3, 2, N'He came to Jesus at night and said, “Rabbi, we know that you are a teacher who has come from God. For no one could perform the signs you are doing if God were not with him.”', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (49, 4, N'John', 3, 3, N'Jesus replied, “Very truly I tell you, no one can see the kingdom of God unless they are born again.”', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (50, 4, N'John', 4, 1, N'Now Jesus learned that the Pharisees had heard that he was gaining and baptizing more disciples than John—', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (51, 4, N'John', 4, 2, N'although in fact it was not Jesus who baptized, but his disciples.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (52, 4, N'John', 5, 1, N'Some time later, Jesus went up to Jerusalem for one of the Jewish festivals.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (53, 4, N'John', 5, 2, N'Now there is in Jerusalem near the Sheep Gate a pool, which in Aramaic is called Bethesda and which is surrounded by five covered colonnades.', NULL)
INSERT [dbo].[Verses] ([VerseID], [AuthorID], [BookName], [ChapterNumber], [VerseNumber], [VerseContent], [Status]) VALUES (54, 4, N'John', 5, 3, N'Here a great number of disabled people used to lie—the blind, the lame, the paralyzed.', NULL)
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
