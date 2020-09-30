DROP TABLE IF EXISTS `Untitled`;

CREATE TABLE `Untitled` (

);

DROP TABLE IF EXISTS `Untitled4`;

CREATE TABLE `Untitled4` (

);

DROP TABLE IF EXISTS `Untitled3`;

CREATE TABLE `Untitled3` (

);

DROP TABLE IF EXISTS `DB_ServerDisckInfo`;

CREATE TABLE `DB_ServerDisckInfo` (
	`drive`	nvarchar(2)	NOT NULL,
	`serverNo`	int(1,1)	NOT NULL,
	`platfomNO`	int(1,1)	NOT NULL,
	`size`	float	NULL	DEFAULT DF__DB_ServerDisckInfo__size,
	`used`	float	NULL	DEFAULT DF__DB_ServerDisckInfo__usedSize,
	`freeSize`	float	NULL	DEFAULT DF__DB_ServerDisckInfo__freeSize,
	`diskInfo`	nvarchar(200)	NULL
);

DROP TABLE IF EXISTS `GameDB_ConInfo_Mapping`;

CREATE TABLE `GameDB_ConInfo_Mapping` (
	`serverNo`	int(1,1)	NOT NULL,
	`gameNo`	int(1,1)	NOT NULL,
	`platfomNO`	int(1,1)	NOT NULL,
	`rdbms_No`	int(1,1)	NOT NULL
);

DROP TABLE IF EXISTS `GameList`;

CREATE TABLE `GameList` (
	`gameNo`	int(1,1)	NOT NULL,
	`gameName`	nvarchar(50)	NULL
);

DROP TABLE IF EXISTS `ServerConAccountList`;

CREATE TABLE `ServerConAccountList` (
	`serverAccount`	nvarchar(50)	NOT NULL,
	`serverNo`	int(1,1)	NOT NULL,
	`platfomNO`	int(1,1)	NOT NULL,
	`password`	nvarchar(100)	NULL
);

DROP TABLE IF EXISTS `Untitled6`;

CREATE TABLE `Untitled6` (

);

DROP TABLE IF EXISTS `DB_InstanceList`;

CREATE TABLE `DB_InstanceList` (
	`gameNo`	int(1,1)	NOT NULL,
	`serverNo`	int(1,1)	NOT NULL,
	`platfomNO`	int(1,1)	NOT NULL,
	`rdbms_No`	int(1,1)	NOT NULL,
	`dbName`	nvarchar(200)	NULL,
	`dbPort`	int	NULL
);

DROP TABLE IF EXISTS `Untitled5`;

CREATE TABLE `Untitled5` (

);

DROP TABLE IF EXISTS `Game_Server_Mapping`;

CREATE TABLE `Game_Server_Mapping` (
	`gameNo`	int(1,1)	NOT NULL,
	`serverNo`	int(1,1)	NOT NULL,
	`platfomNO`	int(1,1)	NOT NULL
);

DROP TABLE IF EXISTS `DB_ServerInfo`;

CREATE TABLE `DB_ServerInfo` (
	`serverNo`	int(1,1)	NOT NULL,
	`platfomNO`	int(1,1)	NOT NULL,
	`serverType`	tinyint	NULL,
	`serverIP`	varchar(15)	NULL,
	`port`	int	NULL	COMMENT '서버 타입 
0 : 일반 터미널
1 : 원격 서버',
	`serverNo2`	int	NOT NULL
);

DROP TABLE IF EXISTS `CountryCode`;

CREATE TABLE `CountryCode` (
	`countryCode`	char(5)	NOT NULL,
	`countryName`	nvarchar(50)	NULL
);

DROP TABLE IF EXISTS `Service_Platform`;

CREATE TABLE `Service_Platform` (
	`platfomNO`	int(1,1)	NOT NULL,
	`platFormName`	nvarchar(50)	NULL
);

DROP TABLE IF EXISTS `DB_PhysicalFileInfo`;

CREATE TABLE `DB_PhysicalFileInfo` (
	`gameNo`	int(1,1)	NOT NULL,
	`serverNo`	int(1,1)	NOT NULL,
	`platfomNO`	int(1,1)	NOT NULL,
	`rdbms_No`	int(1,1)	NOT NULL,
	`dbName`	nvarchar(200)	NULL,
	`l_dbName`	nvarchar(200)	NULL,
	`p_dbName`	nvarchar(200)	NULL,
	`dbFileType`	nvarchar(50)	NULL,
	`dbFileGroupName`	nvarchar(200)	NULL,
	`fileSize`	int	NULL,
	`mdTotalExtents`	int	NULL,
	`curFileSize`	float	NULL,
	`mdUsedExtents`	int	NULL,
	`curUsedSize`	float	NULL,
	`curUsedRate`	float	NULL,
	`physical_URL`	nvarchar(200)	NULL,
	`lastUpdateDate`	datetime	NULL
);

DROP TABLE IF EXISTS `GmToolUserInfo`;

CREATE TABLE `GmToolUserInfo` (
	`userNo`	int(1,1)	NOT NULL,
	`userID`	nvarchar(50)	NOT NULL,
	`pass`	nvarchar(255)	NULL,
	`userName`	nvarchar(50)	NULL,
	`email`	nvarchar(100)	NULL,
	`phoneNum`	nvarchar(20)	NULL,
	`createDate`	datetime	NULL,
	`lastLoginDate`	datetime	NULL,
	`userState`	tinyint	NULL
);

DROP TABLE IF EXISTS `Untitled2`;

CREATE TABLE `Untitled2` (

);

DROP TABLE IF EXISTS `Use_DataBaseInfo`;

CREATE TABLE `Use_DataBaseInfo` (
	`rdbms_No`	int(1,1)	NOT NULL,
	`rdbms_Name`	nvarchar(200)	NULL,
	`present`	nvarchar(200)	NULL,
	`OS`	nvarchar(50)	NULL,
	`version`	nvarchar(200)	NULL
);

DROP TABLE IF EXISTS `UsedTableList`;

CREATE TABLE `UsedTableList` (
	`gameNo`	int(1,1)	NOT NULL,
	`serverNo`	int(1,1)	NOT NULL,
	`platfomNO`	int(1,1)	NOT NULL,
	`rdbms_No`	int(1,1)	NOT NULL,
	`tableName`	nvarchar(200)	NULL,
	`user_seeks`	int	NULL,
	`user_scans`	int	NULL,
	`user_lookups`	int	NULL,
	`user_updates`	int	NULL
);

ALTER TABLE `DB_ServerDisckInfo` ADD CONSTRAINT `PK_DB_SERVERDISCKINFO` PRIMARY KEY (
	`drive`,
	`serverNo`,
	`platfomNO`
);

ALTER TABLE `GameDB_ConInfo_Mapping` ADD CONSTRAINT `PK_GAMEDB_CONINFO_MAPPING` PRIMARY KEY (
	`serverNo`,
	`gameNo`,
	`platfomNO`,
	`rdbms_No`
);

ALTER TABLE `GameList` ADD CONSTRAINT `PK_GAMELIST` PRIMARY KEY (
	`gameNo`
);

ALTER TABLE `ServerConAccountList` ADD CONSTRAINT `PK_SERVERCONACCOUNTLIST` PRIMARY KEY (
	`serverAccount`,
	`serverNo`,
	`platfomNO`
);

ALTER TABLE `DB_InstanceList` ADD CONSTRAINT `PK_DB_INSTANCELIST` PRIMARY KEY (
	`gameNo`,
	`serverNo`,
	`platfomNO`,
	`rdbms_No`
);

ALTER TABLE `Game_Server_Mapping` ADD CONSTRAINT `PK_GAME_SERVER_MAPPING` PRIMARY KEY (
	`gameNo`,
	`serverNo`,
	`platfomNO`
);

ALTER TABLE `DB_ServerInfo` ADD CONSTRAINT `PK_DB_SERVERINFO` PRIMARY KEY (
	`serverNo`,
	`platfomNO`
);

ALTER TABLE `CountryCode` ADD CONSTRAINT `PK_COUNTRYCODE` PRIMARY KEY (
	`countryCode`
);

ALTER TABLE `Service_Platform` ADD CONSTRAINT `PK_SERVICE_PLATFORM` PRIMARY KEY (
	`platfomNO`
);

ALTER TABLE `DB_PhysicalFileInfo` ADD CONSTRAINT `PK_DB_PHYSICALFILEINFO` PRIMARY KEY (
	`gameNo`,
	`serverNo`,
	`platfomNO`,
	`rdbms_No`
);

ALTER TABLE `GmToolUserInfo` ADD CONSTRAINT `PK_GMTOOLUSERINFO` PRIMARY KEY (
	`userNo`,
	`userID`
);

ALTER TABLE `Use_DataBaseInfo` ADD CONSTRAINT `PK_USE_DATABASEINFO` PRIMARY KEY (
	`rdbms_No`
);

ALTER TABLE `UsedTableList` ADD CONSTRAINT `PK_USEDTABLELIST` PRIMARY KEY (
	`gameNo`,
	`serverNo`,
	`platfomNO`,
	`rdbms_No`
);

ALTER TABLE `DB_ServerDisckInfo` ADD CONSTRAINT `FK_DB_ServerInfo_TO_DB_ServerDisckInfo_1` FOREIGN KEY (
	`serverNo`
)
REFERENCES `DB_ServerInfo` (
	`serverNo`
);

ALTER TABLE `DB_ServerDisckInfo` ADD CONSTRAINT `FK_DB_ServerInfo_TO_DB_ServerDisckInfo_2` FOREIGN KEY (
	`platfomNO`
)
REFERENCES `DB_ServerInfo` (
	`platfomNO`
);

ALTER TABLE `GameDB_ConInfo_Mapping` ADD CONSTRAINT `FK_DB_InstanceList_TO_GameDB_ConInfo_Mapping_1` FOREIGN KEY (
	`serverNo`
)
REFERENCES `DB_InstanceList` (
	`serverNo`
);

ALTER TABLE `GameDB_ConInfo_Mapping` ADD CONSTRAINT `FK_DB_InstanceList_TO_GameDB_ConInfo_Mapping_2` FOREIGN KEY (
	`gameNo`
)
REFERENCES `DB_InstanceList` (
	`gameNo`
);

ALTER TABLE `GameDB_ConInfo_Mapping` ADD CONSTRAINT `FK_DB_InstanceList_TO_GameDB_ConInfo_Mapping_3` FOREIGN KEY (
	`platfomNO`
)
REFERENCES `DB_InstanceList` (
	`platfomNO`
);

ALTER TABLE `GameDB_ConInfo_Mapping` ADD CONSTRAINT `FK_DB_InstanceList_TO_GameDB_ConInfo_Mapping_4` FOREIGN KEY (
	`rdbms_No`
)
REFERENCES `DB_InstanceList` (
	`rdbms_No`
);

ALTER TABLE `ServerConAccountList` ADD CONSTRAINT `FK_DB_ServerInfo_TO_ServerConAccountList_1` FOREIGN KEY (
	`serverNo`
)
REFERENCES `DB_ServerInfo` (
	`serverNo`
);

ALTER TABLE `ServerConAccountList` ADD CONSTRAINT `FK_DB_ServerInfo_TO_ServerConAccountList_2` FOREIGN KEY (
	`platfomNO`
)
REFERENCES `DB_ServerInfo` (
	`platfomNO`
);

ALTER TABLE `DB_InstanceList` ADD CONSTRAINT `FK_GameList_TO_DB_InstanceList_1` FOREIGN KEY (
	`gameNo`
)
REFERENCES `GameList` (
	`gameNo`
);

ALTER TABLE `DB_InstanceList` ADD CONSTRAINT `FK_DB_ServerInfo_TO_DB_InstanceList_1` FOREIGN KEY (
	`serverNo`
)
REFERENCES `DB_ServerInfo` (
	`serverNo`
);

ALTER TABLE `DB_InstanceList` ADD CONSTRAINT `FK_DB_ServerInfo_TO_DB_InstanceList_2` FOREIGN KEY (
	`platfomNO`
)
REFERENCES `DB_ServerInfo` (
	`platfomNO`
);

ALTER TABLE `DB_InstanceList` ADD CONSTRAINT `FK_Use_DataBaseInfo_TO_DB_InstanceList_1` FOREIGN KEY (
	`rdbms_No`
)
REFERENCES `Use_DataBaseInfo` (
	`rdbms_No`
);

ALTER TABLE `Game_Server_Mapping` ADD CONSTRAINT `FK_GameList_TO_Game_Server_Mapping_1` FOREIGN KEY (
	`gameNo`
)
REFERENCES `GameList` (
	`gameNo`
);

ALTER TABLE `Game_Server_Mapping` ADD CONSTRAINT `FK_DB_ServerInfo_TO_Game_Server_Mapping_1` FOREIGN KEY (
	`serverNo`
)
REFERENCES `DB_ServerInfo` (
	`serverNo`
);

ALTER TABLE `Game_Server_Mapping` ADD CONSTRAINT `FK_DB_ServerInfo_TO_Game_Server_Mapping_2` FOREIGN KEY (
	`platfomNO`
)
REFERENCES `DB_ServerInfo` (
	`platfomNO`
);

ALTER TABLE `DB_ServerInfo` ADD CONSTRAINT `FK_Service_Platform_TO_DB_ServerInfo_1` FOREIGN KEY (
	`platfomNO`
)
REFERENCES `Service_Platform` (
	`platfomNO`
);

ALTER TABLE `DB_ServerInfo` ADD CONSTRAINT `FK_DB_ServerInfo_TO_DB_ServerInfo_1` FOREIGN KEY (
	`serverNo2`
)
REFERENCES `DB_ServerInfo` (
	`serverNo`
);

ALTER TABLE `DB_PhysicalFileInfo` ADD CONSTRAINT `FK_DB_InstanceList_TO_DB_PhysicalFileInfo_1` FOREIGN KEY (
	`gameNo`
)
REFERENCES `DB_InstanceList` (
	`gameNo`
);

ALTER TABLE `DB_PhysicalFileInfo` ADD CONSTRAINT `FK_DB_InstanceList_TO_DB_PhysicalFileInfo_2` FOREIGN KEY (
	`serverNo`
)
REFERENCES `DB_InstanceList` (
	`serverNo`
);

ALTER TABLE `DB_PhysicalFileInfo` ADD CONSTRAINT `FK_DB_InstanceList_TO_DB_PhysicalFileInfo_3` FOREIGN KEY (
	`platfomNO`
)
REFERENCES `DB_InstanceList` (
	`platfomNO`
);

ALTER TABLE `DB_PhysicalFileInfo` ADD CONSTRAINT `FK_DB_InstanceList_TO_DB_PhysicalFileInfo_4` FOREIGN KEY (
	`rdbms_No`
)
REFERENCES `DB_InstanceList` (
	`rdbms_No`
);

ALTER TABLE `UsedTableList` ADD CONSTRAINT `FK_DB_InstanceList_TO_UsedTableList_1` FOREIGN KEY (
	`gameNo`
)
REFERENCES `DB_InstanceList` (
	`gameNo`
);

ALTER TABLE `UsedTableList` ADD CONSTRAINT `FK_DB_InstanceList_TO_UsedTableList_2` FOREIGN KEY (
	`serverNo`
)
REFERENCES `DB_InstanceList` (
	`serverNo`
);

ALTER TABLE `UsedTableList` ADD CONSTRAINT `FK_DB_InstanceList_TO_UsedTableList_3` FOREIGN KEY (
	`platfomNO`
)
REFERENCES `DB_InstanceList` (
	`platfomNO`
);

ALTER TABLE `UsedTableList` ADD CONSTRAINT `FK_DB_InstanceList_TO_UsedTableList_4` FOREIGN KEY (
	`rdbms_No`
)
REFERENCES `DB_InstanceList` (
	`rdbms_No`
);