USE [BDLogistica]
GO
/****** Object:  Table [dbo].[Table_clientes]    Script Date: 16/04/2023 19:53:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_clientes](
	[CodigoDoCliente] [char](10) NOT NULL,
	[NomeDaEmpresa] [varchar](70) NOT NULL,
	[Nome DoContato] [varchar](70) NOT NULL,
	[CargoDoContato] [varchar](40) NOT NULL,
	[Endereco] [nchar](50) NULL,
	[Cidade] [varbinary](max) NOT NULL,
	[Regiao] [varchar](25) NOT NULL,
	[Cep] [char](15) NOT NULL,
	[Pais] [varchar](25) NOT NULL,
	[Telefone] [char](20) NOT NULL,
	[Fax] [char](20) NOT NULL,
 CONSTRAINT [PK_Table_clientes] PRIMARY KEY CLUSTERED 
(
	[CodigoDoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
