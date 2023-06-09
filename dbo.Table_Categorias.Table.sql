USE [BDLogistica]
GO
/****** Object:  Table [dbo].[Table_Categorias]    Script Date: 16/04/2023 19:53:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Categorias](
	[CodigoDaCategoria] [int] NOT NULL,
	[NomeDaCategoria] [varchar](70) NOT NULL,
	[Descricao] [varchar](100) NULL,
 CONSTRAINT [PK_Table_Categorias] PRIMARY KEY CLUSTERED 
(
	[CodigoDaCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
