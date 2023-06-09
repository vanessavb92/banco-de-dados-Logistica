USE [BDLogistica]
GO
/****** Object:  Table [dbo].[TableTransportadora]    Script Date: 16/04/2023 19:53:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableTransportadora](
	[CodigoDaTransportadora] [int] NOT NULL,
	[NomeDaEmpresa] [varchar](30) NOT NULL,
	[Telefone] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoDaTransportadora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
