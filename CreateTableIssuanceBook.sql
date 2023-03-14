USE [Library]
GO

/****** Object:  Table [dbo].[Issuance_book]    Script Date: 14.03.2023 17:42:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Issuance_book](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[book_id] [int] NOT NULL,
	[reader_id] [int] NOT NULL,
	[date_begin] [date] NOT NULL,
	[date_end] [date] NULL,
 CONSTRAINT [PK_Issuance_book] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Issuance_book]  WITH CHECK ADD  CONSTRAINT [FK_Issuance_book_Book] FOREIGN KEY([book_id])
REFERENCES [dbo].[Book] ([id])
GO

ALTER TABLE [dbo].[Issuance_book] CHECK CONSTRAINT [FK_Issuance_book_Book]
GO

ALTER TABLE [dbo].[Issuance_book]  WITH CHECK ADD  CONSTRAINT [FK_Issuance_book_Reader] FOREIGN KEY([reader_id])
REFERENCES [dbo].[Reader] ([id])
GO

ALTER TABLE [dbo].[Issuance_book] CHECK CONSTRAINT [FK_Issuance_book_Reader]
GO


