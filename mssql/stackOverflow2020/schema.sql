USE stackOverflow2020

create table Badges
(
	Id int identity
		constraint PK_Badges__Id
			primary key,
	Name nvarchar(40) not null,
	UserId int not null,
	Date datetime not null
)
go

create table Comments
(
	Id int identity
		constraint PK_Comments__Id
			primary key,
	CreationDate datetime not null,
	PostId int not null,
	Score int,
	Text nvarchar(700) not null,
	UserId int
)
go

create table LinkTypes
(
	Id int identity
		constraint PK_LinkTypes__Id
			primary key,
	Type varchar(50) not null
)
go

create table PostHistory
(
	Id int identity
		constraint PK_PostHistory__Id
			primary key,
	PostHistoryTypeId int not null,
	PostId int not null,
	RevisionGUID uniqueidentifier,
	CreationDate datetime not null,
	UserId int,
	UserDisplayName nvarchar(40),
	Comment nvarchar(max),
	Text nvarchar(max)
)
go

create table PostHistoryTypes
(
	Id int identity
		constraint PK_PostHistoryTypes__Id
			primary key,
	Type nvarchar(50) not null
)
go

create table PostLinks
(
	Id int identity
		constraint PK_PostLinks__Id
			primary key,
	CreationDate datetime not null,
	PostId int not null,
	RelatedPostId int not null,
	LinkTypeId int not null
)
go

create table PostTypes
(
	Id int identity
		constraint PK_PostTypes__Id
			primary key,
	Type nvarchar(50) not null
)
go

create table Posts
(
	Id int identity
		constraint PK_Posts__Id
			primary key,
	AcceptedAnswerId int,
	AnswerCount int,
	Body nvarchar(max) not null,
	ClosedDate datetime,
	CommentCount int,
	CommunityOwnedDate datetime,
	CreationDate datetime not null,
	FavoriteCount int,
	LastActivityDate datetime not null,
	LastEditDate datetime,
	LastEditorDisplayName nvarchar(40),
	LastEditorUserId int,
	OwnerUserId int,
	ParentId int,
	PostTypeId int not null,
	Score int not null,
	Tags nvarchar(150),
	Title nvarchar(250),
	ViewCount int not null
)
go

create table Tags
(
	Id int identity
		constraint PK_Tags__Id
			primary key,
	TagName nvarchar(150) not null,
	Count int not null,
	ExcerptPostId int not null,
	WikiPostId int not null
)
go

create table Users
(
	Id int identity
		constraint PK_Users_Id
			primary key,
	AboutMe nvarchar(max),
	Age int,
	CreationDate datetime not null,
	DisplayName nvarchar(40) not null,
	DownVotes int not null,
	EmailHash nvarchar(40),
	LastAccessDate datetime not null,
	Location nvarchar(100),
	Reputation int not null,
	UpVotes int not null,
	Views int not null,
	WebsiteUrl nvarchar(200),
	AccountId int
)
go

create table VoteTypes
(
	Id int identity
		constraint PK_VoteType__Id
			primary key,
	Name varchar(50) not null
)
go

create table Votes
(
	Id int identity
		constraint PK_Votes__Id
			primary key,
	PostId int not null,
	UserId int,
	BountyAmount int,
	VoteTypeId int not null,
	CreationDate datetime not null
)
go

CREATE PROCEDURE [dbo].[DropIndexes]
  @SchemaName NVARCHAR(255) = 'dbo',
  @TableName NVARCHAR(255) = NULL,
  @WhatToDrop VARCHAR(10) = 'Everything'
  AS
BEGIN
SET NOCOUNT ON;

CREATE TABLE #commands (ID INT IDENTITY(1,1) PRIMARY KEY CLUSTERED, Command NVARCHAR(2000));

DECLARE @CurrentCommand NVARCHAR(2000);

IF ( UPPER(@WhatToDrop) LIKE 'C%'
     OR UPPER(@WhatToDrop) LIKE 'E%' )
BEGIN
INSERT INTO #commands (Command)
SELECT   N'ALTER TABLE '
       + QUOTENAME(SCHEMA_NAME(o.schema_id))
       + N'.'
       + QUOTENAME(OBJECT_NAME(o.parent_object_id))
       + N' DROP CONSTRAINT '
       + QUOTENAME(o.name)
       + N';'
FROM sys.objects AS o
WHERE o.type IN ('C', 'F', 'UQ')
AND SCHEMA_NAME(o.schema_id) = COALESCE(@SchemaName, SCHEMA_NAME(o.schema_id))
AND OBJECT_NAME(o.parent_object_id) = COALESCE(@TableName,  OBJECT_NAME(o.parent_object_id))
END;

IF ( UPPER(@WhatToDrop) LIKE 'I%'
     OR UPPER(@WhatToDrop) LIKE 'E%' )
BEGIN
INSERT INTO #commands (Command)
SELECT 'DROP INDEX '
       + QUOTENAME(i.name)
       + ' ON '
       + QUOTENAME(SCHEMA_NAME(t.schema_id))
       + '.'
       + t.name
       + ';'
FROM sys.tables t
INNER JOIN sys.indexes i ON t.object_id = i.object_id
WHERE i.type = 2
AND SCHEMA_NAME(t.schema_id) = COALESCE(@SchemaName, SCHEMA_NAME(t.schema_id))
AND t.name = COALESCE(@TableName, t.name)

INSERT INTO #commands (Command)
SELECT 'DROP STATISTICS '
       + QUOTENAME(SCHEMA_NAME(t.schema_id))
       + '.'
       + QUOTENAME(OBJECT_NAME(s.object_id))
       + '.'
       + QUOTENAME(s.name)
       + ';'
FROM sys.stats AS s
INNER JOIN sys.tables AS t ON s.object_id = t.object_id
WHERE NOT EXISTS (SELECT * FROM sys.indexes AS i WHERE i.name = s.name)
AND SCHEMA_NAME(t.schema_id) = COALESCE(@SchemaName, SCHEMA_NAME(t.schema_id))
AND t.name = COALESCE(@TableName, t.name)
AND OBJECT_NAME(s.object_id) NOT LIKE 'sys%';
END;


DECLARE result_cursor CURSOR FOR
SELECT Command FROM #commands;

OPEN result_cursor;
FETCH NEXT FROM result_cursor INTO @CurrentCommand;
WHILE @@FETCH_STATUS = 0
BEGIN

    PRINT @CurrentCommand;
	EXEC(@CurrentCommand);

FETCH NEXT FROM result_cursor INTO @CurrentCommand;
END;
--end loop

--clean up
CLOSE result_cursor;
DEALLOCATE result_cursor;
END;
go
