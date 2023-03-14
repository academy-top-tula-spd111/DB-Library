USE [Library]
GO

/****** Object:  Table [dbo].[Publisher]    Script Date: 14.03.2023 17:42:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Publisher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[country_id] [int] NULL,
	[city_id] [int] NULL,
 CONSTRAINT [PK_Publisher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Publisher]  WITH CHECK ADD  CONSTRAINT [FK_Publisher_City] FOREIGN KEY([city_id])
REFERENCES [dbo].[City] ([id])
GO

ALTER TABLE [dbo].[Publisher] CHECK CONSTRAINT [FK_Publisher_City]
GO

ALTER TABLE [dbo].[Publisher]  WITH CHECK ADD  CONSTRAINT [FK_Publisher_Country] FOREIGN KEY([country_id])
REFERENCES [dbo].[Country] ([id])
GO

ALTER TABLE [dbo].[Publisher] CHECK CONSTRAINT [FK_Publisher_Country]
GO


