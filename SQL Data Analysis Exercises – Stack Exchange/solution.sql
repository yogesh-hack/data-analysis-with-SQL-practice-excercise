CREATE DATABASE [data_analysis_stack_exchange_movies]

USE [data_analysis_stack_exchange_movies]

CREATE TABLE [dbo].[Comments](
	[Id] [int] PRIMARY KEY,
	[PostId] [int] NULL,
	[Text] [nvarchar](max) NULL,
	[CreationDate] [datetime] NULL,
	[UserId] [int] NULL)

CREATE TABLE [dbo].[posts](
	[Id] [int] IDENTITY(1,1) PRIMARY KEY,
	[CreationDate] [datetime] NULL,
	[Score] [int] NULL,
	[ViewCount] [int] NULL,
	[Body] [nvarchar](max) NULL,
	[OwnerUserId] [int] NULL,
	[LastEditorUserId] [int] NULL,
	[LastEditDate] [datetime] NULL,
	[LastActivityDate] [datetime] NULL,
	[Title] [nvarchar](250) NULL,
	[Tags] [nvarchar](150) NULL,
	[ClosedDate] [datetime] NULL)

CREATE TABLE [dbo].[Users](
	[Id] [int] PRIMARY KEY,
	[Reputation] [int] NULL,
	[CreationDate] [datetime] NULL,
	[DisplayName] [nvarchar](40) NULL,
	[LastAccessDate] [datetime] NULL,
	[WebsiteUrl] [nvarchar](200) NULL,
	[Location] [nvarchar](100) NULL,
	[Age] [int] NULL,
	[AboutMe] [nvarchar](max) NULL,
	[Views] [int] NULL,
	[UpVotes] [int] NULL,
	[DownVotes] [int] NULL)

CREATE TABLE [dbo].[Votes](
	[Id] [int] PRIMARY KEY,
	[PostId] [int] NULL,
	[CreationDate] [datetime] NULL,
	[UserId] [int] NULL)

-- How many post were made each year ?
SELECT count(*) number_of_posts, YEAR(CreationDate) creationYear
FROM posts
GROUP BY YEAR(creationDate);

-- How many votes were made in each day of the week (Sunday, Monday, Tuesday, etc.) ?
SELECT count(*) AS 'number of posts', DATENAME(DW, CreationDate) AS 'day of a weeks'  -- days 
FROM Votes
GROUP BY DATENAME(DW, CreationDate);

-- List all comments created on 2012-12-19
SELECT * FROM comments
WHERE creationDate AS Date IS '2012-12-19';  -- or CAST(creationDate AS DATE) = '2012-12-19' -- OR -- DATEDIFF(DAY, CreationDate, '2012-12-19') = 0

-- List all users under the age of 33, living in London
SELECT * FROM users
WHERE age < 33 and location == 'London'; -- OR location LIKE '%London%'

-- Advanced Analytics
-- 1. Display the number of votes for each post title 
SELECT pst.Title COUNT(*)  number_of|_votes 
FROM posts as pst JOIN votes vt
ON pst.ID == vt.postID
GROUP BY pst.Title
ORDER BY Count(*) DESC;


