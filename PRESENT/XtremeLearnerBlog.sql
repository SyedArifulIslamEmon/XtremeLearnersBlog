USE [master]
GO
/****** Object:  Database [XtremeLearnerBlog]    Script Date: 06/14/2015 08:42:33 ******/
CREATE DATABASE [XtremeLearnerBlog] ON  PRIMARY 
( NAME = N'XtremeLearnerBlog', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\XtremeLearnerBlog.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'XtremeLearnerBlog_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\XtremeLearnerBlog_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [XtremeLearnerBlog] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [XtremeLearnerBlog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [XtremeLearnerBlog] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [XtremeLearnerBlog] SET ANSI_NULLS OFF
GO
ALTER DATABASE [XtremeLearnerBlog] SET ANSI_PADDING OFF
GO
ALTER DATABASE [XtremeLearnerBlog] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [XtremeLearnerBlog] SET ARITHABORT OFF
GO
ALTER DATABASE [XtremeLearnerBlog] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [XtremeLearnerBlog] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [XtremeLearnerBlog] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [XtremeLearnerBlog] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [XtremeLearnerBlog] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [XtremeLearnerBlog] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [XtremeLearnerBlog] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [XtremeLearnerBlog] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [XtremeLearnerBlog] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [XtremeLearnerBlog] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [XtremeLearnerBlog] SET  DISABLE_BROKER
GO
ALTER DATABASE [XtremeLearnerBlog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [XtremeLearnerBlog] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [XtremeLearnerBlog] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [XtremeLearnerBlog] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [XtremeLearnerBlog] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [XtremeLearnerBlog] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [XtremeLearnerBlog] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [XtremeLearnerBlog] SET  READ_WRITE
GO
ALTER DATABASE [XtremeLearnerBlog] SET RECOVERY FULL
GO
ALTER DATABASE [XtremeLearnerBlog] SET  MULTI_USER
GO
ALTER DATABASE [XtremeLearnerBlog] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [XtremeLearnerBlog] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'XtremeLearnerBlog', N'ON'
GO
USE [XtremeLearnerBlog]
GO
/****** Object:  User [myaxo]    Script Date: 06/14/2015 08:42:33 ******/
CREATE USER [myaxo] FOR LOGIN [myaxo] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[tbl_users]    Script Date: 06/14/2015 08:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_users] ON
INSERT [dbo].[tbl_users] ([user_id], [name], [email], [password]) VALUES (1, N'Miraj', N'mirajhossaincse@gmail.com', N'miraj123')
SET IDENTITY_INSERT [dbo].[tbl_users] OFF
/****** Object:  Table [dbo].[tbl_post]    Script Date: 06/14/2015 08:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_post](
	[post_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](500) NOT NULL,
	[date_time] [varchar](100) NOT NULL,
	[content] [varchar](max) NOT NULL,
	[viewCounter] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[post_status] [varchar](30) NOT NULL,
 CONSTRAINT [PK_tbl_post] PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_post] ON
INSERT [dbo].[tbl_post] ([post_id], [title], [date_time], [content], [viewCounter], [user_id], [post_status]) VALUES (1, N'Gas output faces setback', N'6/14/2015 2:46:43 AM', N'<!--StartFragment--><p>The gas production of Chevron Bangladesh at Bibiyana gas field alone dropped 350mmcfd against its capacity of 1200mmcfd.</p><p>&nbsp;</p><p>Last Friday, Petrobangla asked the US energy giant to keep the production between 700mmcfd and 800mmcfd until the condensation crisis goes.</p><p>&nbsp;</p><p>Sate Minister for Power and Energy Nasrul Hamid on Saturday sat with officials of energy and mineral resources division, Petrobangla and Chevron to this end.</p><p>&nbsp;</p><p>During the meeting, Chevron President Kevin Lyon said his company has come down with its production to 850mmcfd of gas against the 1200mmcfd capacity.</p><p>&nbsp;</p><p>He said Bibiyana has a storage capacity of 72,000 barrels of condensate but it now rises to 73,400 barrels, hampering gas production seriously.</p><p>&nbsp;</p><p>Talking to daily sun, Lyon said they have sought permission to export 5000 barrels of condensate as it creates a problem to produce gas. m hopeful the government will consider our offer and take a step in this regard.</p><p>&nbsp;</p><p>Due to a shortfall in gas production, power generation is getting dented and industrial production being hampered.</p><p>&nbsp;</p><p>Sheikh Jahidur Rahman, manager (communications) of Chevron, this correspondent on Sunday that production from Bibiyana has decreased due to a high inventory of produced condensate.</p><p>&nbsp;</p><p>Chevron is working closely with Petrobangla to address this matter so that normal production can resume as soon as possible.</p><p>&nbsp;</p><p>Petrobangla has directed Chevron to keep 80 percent or 72,000 barrels of condensate storage at the maximum operation level for nine days.</p><p>&nbsp;</p><p>It pushes for 850mmcfd gas production against the capacity of 1200mmcfd. Besides, condensate production also dropped to 3,400 barrels per day against the 4,800 barrels capacity at the gas field.</p><p>&nbsp;</p><p>About the crisis, Petrobangla Chairman Istiaque Ahmed told daily sun that gas production at Bibiyana has dropped but it is gradually improving.</p><p>&nbsp;</p><p>Titas Gas Transmission and Distribution Company Ltd managing director Nawshad Islam also said the company has a shortfall of some 350mmcfd gas.</p><p>&nbsp;</p><p>“Industrial units as well as households are suffering immensely because of this nagging problem of gas scarcity. But we’ve continued our supplies to power stations.”</p><p>&nbsp;</p><p>A senior official of Bangladesh Power Development Board said they have reduced electricity generation from gas-fired power plants to 4,200MW from 6,000MW in the last two days.</p><p>&nbsp;</p><p>He, however, said production at the costly oil-fired plants has increased to around 2700MW to meet the demand for power. “We’re keeping lower the demand of liquid at fuel-fired power plants due to rainfall in April.”</p><p>&nbsp;</p><p>About a huge stockpile of condensate, a Petrobangla official said Bangladesh Petroleum Corporation has stopped to procure condensate from gas fields.</p><p>&nbsp;</p><p>Talking to BPC authorities about a halt to procure condensate, a senior official said they already have a huge stock of petroleum fuels for BPDB.</p><p>&nbsp;</p><p>BPC procures condensates from gas fields to convert it into petroleum fuels.</p><p>&nbsp;</p><p>But BPC compelled to stop the job as BPDB dropped to consume furnace oil for electricity generation due to favourable weather in March, April and May.</p><p>&nbsp;</p><p>Besides, Eastern Refinery Limited of BPC regularly refines 1300-1500 tonnes of furnace oil through crude oil, a major part of which comes from condensate. But ERL remained shut for 14 days last month due to low consumption of fuel.</p><p>&nbsp;</p><p>The refinery now faces low-feed problem of petroleum fuel as its fuel stockpile is 60,000 tonnes and other fuel companies together have 63,364 tonnes that may force ERL to shut anytime, BPC officials observed.</p><p>&nbsp;</p><p>In a letter to EMRD last month, BPC Chairman AM Badruddoza said BDPB furnace oil consumption dropped to 57,150 tonnes in March and 55,280 tonnes in April against the demand for 96,098 tonnes and 92,999 tonnes respectively.</p><p>&nbsp;</p><p>Besides, the demand for fuel use by BPDB also dropped by 75 percent between May 1-18. Power plants were supposed to consume 96,098 tonnes in May.</p><p>&nbsp;</p><p>Now, the government has allowed 26 out of 40 oil-fired plants to import their own fuel. The plants have the current capacity to generate 3100MW of power.</p><p>&nbsp;</p><p>Besides, 14 plants that depend on BPC also dropped their consumption around 50 percent, forcing huge stockpile of fuels in BPC.</p><p>&nbsp;</p><p>Hamid said favourable weather and required rainfall have created the trouble.</p><!--EndFragment-->', 0, 1, N'Published')
INSERT [dbo].[tbl_post] ([post_id], [title], [date_time], [content], [viewCounter], [user_id], [post_status]) VALUES (3, N'Gun attack at Dallas police headquarters', N'6/14/2015 3:06:07 AM', N'<!--StartFragment--><p>DALLAS: Snipers shot and presumably killed a suspect in a standoff by the Dallas police headquarters in Texas, officials said Saturday, adding there were no known links to terrorism.</p><p>A bomb disposal robot was inspecting an armored van after SWAT team snipers shot through the front of the windshield of the vehicle and struck the suspect, Police Chief David Brown told reporters.</p><p>Because the suspect during negotiations expressed that the van he was traveling in was rigged with explosives, our officers are not approaching that vehicle, but instead our bomb technicians are deploying the robot and plan to detonate specific areas around the van to ensure that it’s not rigged to explode, he told reporters.</p><p>So we have a planned detonation occurring at that van,” Brown added, noting that the FBI was assisting his department.</p><p>But he noted that the suspect, who gave his name to police, does not have links to terrorism and acted alone. We have been, from the very beginnings, coordinating with the FBI to ensure that if there were a terrorism nexus, that we’d get that information quickly,<img class="fr-fin fr-dib" alt="Fantastic" src="http://www.daily-sun.com/assets/news_images/w23.jpg" width="300" title="Fantastic"> Brown said.</p><p>As of right now, we don’t have any nexus to terrorism with this individual.</p><p>Police had earlier suggested there may have been up to four suspects, but Brown said police now believed that only one suspect shot from different angles and positions.</p><p>Earlier, the suspect had shot up police headquarters and placed pipe bombs at the building.</p><p>I believe we’re blessed that our officers survived this ordeal, Brown said.</p><p>There are bullet holes in squad cars where officers were sitting. There are bullet holes in the front lobby where staff was sitting. “Looking at the front parts of headquarters, there are bullets—a police helicopter inside as a museum piece. It’s shot up. The second floor has bullet holes in it. The information desk has bullet holes throughout. &nbsp; &nbsp;—AFP/BBC</p><!--EndFragment-->', 1, 1, N'Published')
INSERT [dbo].[tbl_post] ([post_id], [title], [date_time], [content], [viewCounter], [user_id], [post_status]) VALUES (4, N'Kerry released from hospital after broken leg surgery', N'6/14/2015 3:11:24 AM', N'<p><img class="fr-fin fr-dib" alt="Image title" src="http://www.daily-sun.com/assets/news_images/w33.jpg" width="300"></p><p><!--StartFragment-->WASHINGTON: US Secretary of State John Kerry—upon his release from hospital after breaking his leg—insisted Friday he would soon head to Vienna as the deadline to finalize an Iran nuclear deal approaches.<br>“I talked to our team in Vienna. I will be absolutely fully and totally engaged in those talks.<br>I am now. I haven’t missed a tick,” Kerry—on crutches—told reporters as he left Massachusetts General Hospital in Boston.<br>“I will be traveling over there at the appropriate moment in the next days in order to press forward at this critical moment of the negotiations,” said the visibly tired Kerry.<br>The 71-year-old Kerry broke his right femur on May 31 in a fall on his bicycle in the French Alps during a working visit to Geneva for talks with his Iranian counterpart Mohammad Javad Zarif on Tehran’s nuclear program.<br>He was flown home and underwent surgery in Boston on June 2. &nbsp;&nbsp; &nbsp;—AFP<!--EndFragment--></p>', 17, 1, N'Published')
INSERT [dbo].[tbl_post] ([post_id], [title], [date_time], [content], [viewCounter], [user_id], [post_status]) VALUES (5, N'News of the day', N'6/14/2015 3:57:41 AM', N'<p><img class="fr-fil fr-dii" alt="Image title" src="http://www.daily-sun.com/assets/news_images/a11.jpg" width="300"><!--StartFragment-->United Nations General Secretary Ban Ki-moon on Saturday warned of a worsening rights situation across Central Asia, as he ended a visit to energy-rich Central Asia in ex-Soviet Turkmenistan. Ban said he “heard concerns about the deterioration of some<br>aspects of human rights—a shrinking of democratic space”, during his first trip to the region in five years.<!--EndFragment--></p><p><br></p>', 0, 1, N'Published')
INSERT [dbo].[tbl_post] ([post_id], [title], [date_time], [content], [viewCounter], [user_id], [post_status]) VALUES (6, N'Violence against women treated as lesser crime : Angelina Jolie', N'6/14/2015 4:00:47 AM', N'<p><img class="fr-fil fr-dib" alt="Image title" src="http://www.daily-sun.com/assets/news_images/c-10.jpg" width="300"><!--StartFragment-->Actress-filmmaker Angelina Jolie, addressing the African Union summit, has called for more global support to end violence against women around the world.<br>Jolie (40), who is the special envoy to the United Nations High Commission for Refugees, sat on a panel of foreign leaders to deliver a speech at the biannual event, held here and Pretoria, South Africa, this year.<br>She lamented that crimes against women, both in conflict zones and "within societies at peace", are given lesser attention than needed, reported People magazine.<br>"There is a global epidemic of violence against women ? both within conflict zones and within societies at peace ? and it is still treated as a lesser crime and lower priority," the actress-director told the crowded ballroom.<br>"The near-total impunity that exists worldwide for crimes against women, in conflict zones in particular, means that we are seeing more and more armed groups turn it into their weapon of choice.<br>"Women and girls are bearing the brunt of extremists that revel in treating them barbarically. This is inextricably linked to our overall failure to prevent and end conflicts worldwide, which is causing human suffering on an unprecedented level."<br>The "Unbroken" director, wearing a dark gray Michael Kors dress and beige heels, paid tribute to African victims for their "extraordinary resilience, dignity and strength in the face of trials that would break any of us."<br>"They are some of the most formidable and impressive people I have ever met and they deserve better than to be left alone to suffer," Jolie said. She concluded her speech by stating that the solution needs to be tailored to, and pioneered by, women themselves.<br>"We need policies for long-term security that are designed by women, focused on women, executed by women ? not at the expense of men, or instead of men, but alongside and with men," she said.<br>"There is no greater pillar of stability than a strong, free and educated woman, and there is no more inspiring role model than a man who respects and cherishes women and champions their leadership."<!--EndFragment--></p><p><br></p>', 3, 1, N'Published')
INSERT [dbo].[tbl_post] ([post_id], [title], [date_time], [content], [viewCounter], [user_id], [post_status]) VALUES (7, N'City events', N'6/14/2015 4:07:04 AM', N'<p><img class="fr-fil fr-dii" alt="Image title" src="http://www.daily-sun.com/assets/news_images/city25.jpg" width="300" title="Image title"></p><!--StartFragment--><p>Solo art exhibition<br>Title: ‘Colour, Rhapsody and Memories of Time’<br>By:&nbsp; artist Tahera Khanam<br>Date: from June 5 to 25<br>Time: from 12.00pm to 08.00pm<br>At: Bengal Gallery of Fine Arts, Dhanmondi</p><p>&nbsp;</p><!--EndFragment--><p><br></p>', 3, 1, N'Published')
INSERT [dbo].[tbl_post] ([post_id], [title], [date_time], [content], [viewCounter], [user_id], [post_status]) VALUES (8, N'Photo exhibition on yoga at IGCC', N'6/14/2015 4:36:45 AM', N'<p><img alt="Image title" class="fr-fil fr-dib fr-image-move" src="http://www.daily-sun.com/assets/news_images/c-21.jpg" title="Image title" width="300"><!--StartFragment-->Actress-filmmaker Angelina Jolie, addressing the African Union summit, has called for more global support to end violence against women around the world.<br>Jolie (40), who is the special envoy to the United Nations High Commission for Refugees, sat on a panel of foreign leaders to deliver a speech at the biannual event, held here and Pretoria, South Africa, this year.<br>She lamented that crimes against women, both in conflict zones and "within societies at peace", are given lesser attention than needed, reported People magazine.<br>"There is a global epidemic of violence against women ? both within conflict zones and within societies at peace ? and it is still treated as a lesser crime and lower priority," the actress-director told the crowded ballroom.<br>"The near-total impunity that exists worldwide for crimes against women, in conflict zones in particular, means that we are seeing more and more armed groups turn it into their weapon of choice.<br>"Women and girls are bearing the brunt of extremists that revel in treating them barbarically. This is inextricably linked to our overall failure to prevent and end conflicts worldwide, which is causing human suffering on an unprecedented level."<br>The "Unbroken" director, wearing a dark gray Michael Kors dress and beige heels, paid tribute to African victims for their "extraordinary resilience, dignity and strength in the face of trials that would break any of us."<br>"They are some of the most formidable and impressive people I have ever met and they deserve better than to be left alone to suffer," Jolie said. She concluded her speech by stating that the solution needs to be tailored to, and pioneered by, women themselves.<br>"We need policies for long-term security that are designed by women, focused on women, executed by women ? not at the expense of men, or instead of men, but alongside and with men," she said.<br>"There is no greater pillar of stability than a strong, free and educated woman, and there is no more inspiring role model than a man who respects and cherishes women and champions their leadership."<!--EndFragment--><!--StartFragment--></p><p><br></p>', 0, 1, N'Saved')
SET IDENTITY_INSERT [dbo].[tbl_post] OFF
/****** Object:  View [dbo].[UserPostView]    Script Date: 06/14/2015 08:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[UserPostView]
AS
SELECT tbl_post.post_id,tbl_post.title,tbl_post.date_time,tbl_post.content,tbl_post.post_status,tbl_users.user_id,tbl_users.name FROM tbl_post INNER JOIN tbl_users
ON tbl_post.user_id=tbl_users.user_id
GO
/****** Object:  Table [dbo].[tbl_coment]    Script Date: 06/14/2015 08:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_coment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](max) NULL,
	[date_time] [varchar](50) NULL,
	[post_id] [int] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_tbl_coment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_coment] ON
INSERT [dbo].[tbl_coment] ([Id], [description], [date_time], [post_id], [user_id]) VALUES (1, N'Very sad!', N'6/14/2015 3:41:24 AM', 4, 1)
SET IDENTITY_INSERT [dbo].[tbl_coment] OFF
/****** Object:  ForeignKey [FK_tbl_coment_tbl_post]    Script Date: 06/14/2015 08:42:38 ******/
ALTER TABLE [dbo].[tbl_coment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_coment_tbl_post] FOREIGN KEY([post_id])
REFERENCES [dbo].[tbl_post] ([post_id])
GO
ALTER TABLE [dbo].[tbl_coment] CHECK CONSTRAINT [FK_tbl_coment_tbl_post]
GO
/****** Object:  ForeignKey [FK_tbl_coment_tbl_users]    Script Date: 06/14/2015 08:42:38 ******/
ALTER TABLE [dbo].[tbl_coment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_coment_tbl_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[tbl_users] ([user_id])
GO
ALTER TABLE [dbo].[tbl_coment] CHECK CONSTRAINT [FK_tbl_coment_tbl_users]
GO
