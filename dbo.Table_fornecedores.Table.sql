USE [BDLogistica]
GO
/****** Object:  Table [dbo].[Table_fornecedores]    Script Date: 16/04/2023 19:53:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_fornecedores](
	[CodigoDoFornecedor] [int] NOT NULL,
	[NomeDaEmpresa] [varchar](70) NOT NULL,
	[NomeDoContato] [varchar](70) NOT NULL,
	[CargoDoContato] [varchar](40) NULL,
	[Endereco] [varchar](50) NULL,
	[Cidade] [varchar](25) NULL,
	[Regiao] [varchar](25) NULL,
	[Cep] [char](15) NULL,
	[Pais] [varchar](25) NULL,
	[Telefone] [char](20) NULL,
	[Fax] [char](20) NULL,
 CONSTRAINT [PK_Table_fornecedores] PRIMARY KEY CLUSTERED 
(
	[CodigoDoFornecedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
