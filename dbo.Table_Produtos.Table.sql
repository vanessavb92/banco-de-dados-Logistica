USE [BDLogistica]
GO
/****** Object:  Table [dbo].[Table_Produtos]    Script Date: 16/04/2023 19:53:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Produtos](
	[CodigoDoProduto] [int] NOT NULL,
	[NomeDoProduto] [varchar](50) NOT NULL,
	[CodigoDoFornecedor] [int] NOT NULL,
	[CodigoDaCategoria] [int] NOT NULL,
	[QuantidadePorUnidade] [char](30) NULL,
	[PrecoUnitario] [money] NULL,
	[UnidadeEmEstoque] [int] NULL,
	[UnidadesPedidas] [int] NULL,
	[NivelDeReposicao] [int] NULL,
	[Descontinuado] [int] NULL,
 CONSTRAINT [PK_Table_Produtos] PRIMARY KEY CLUSTERED 
(
	[CodigoDoProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
