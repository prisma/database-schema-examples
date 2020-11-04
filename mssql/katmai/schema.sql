USE [katmai]
GO
ALTER DATABASE [katmai] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [katmai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [katmai] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [katmai] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [katmai] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [katmai] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [katmai] SET ARITHABORT OFF 
GO

ALTER DATABASE [katmai] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [katmai] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [katmai] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [katmai] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [katmai] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [katmai] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [katmai] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [katmai] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [katmai] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [katmai] SET RECURSIVE_TRIGGERS OFF 
GO

-- ALTER DATABASE [katmai] SET  DISABLE_BROKER 
-- GO

ALTER DATABASE [katmai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

-- ALTER DATABASE [katmai] SET DATE_CORRELATION_OPTIMIZATION OFF 
-- GO

ALTER DATABASE [katmai] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [katmai] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [katmai] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [katmai] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [katmai] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [katmai] SET  READ_WRITE 
GO

ALTER DATABASE [katmai] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [katmai] SET  MULTI_USER 
GO

ALTER DATABASE [katmai] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [katmai] SET DB_CHAINING OFF 
GO

USE [katmai]
GO

/****** Object:  Table [dbo].[ParkBoundaries]    Script Date: 05/26/2009 07:24:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ParkBoundaries](
	[ID] [int] NOT NULL PRIMARY KEY,
	[Name] [nvarchar](255) NULL,
        [BoundaryType] [nvarchar](255) NULL,
	[geom] [geometry] NULL
)

GO