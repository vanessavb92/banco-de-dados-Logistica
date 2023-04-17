USE [BDLogistica]
GO
/****** Object:  Table [dbo].[Table_Categorias]    Script Date: 16/04/2023 17:00:45 ******/
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
/****** Object:  Table [dbo].[Table_clientes]    Script Date: 16/04/2023 17:00:45 ******/
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
/****** Object:  Table [dbo].[Table_fornecedores]    Script Date: 16/04/2023 17:00:45 ******/
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
/****** Object:  Table [dbo].[Table_funcionarios]    Script Date: 16/04/2023 17:00:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_funcionarios](
	[CodigoDoFuncionario] [int] NOT NULL,
	[Sobrenome] [varchar](30) NULL,
	[Nome] [varchar](30) NOT NULL,
	[Cargo] [varchar](40) NULL,
	[Tratamento] [char](10) NULL,
	[DataDeNascimento] [date] NULL,
	[DataDeContratacao] [date] NULL,
	[Endereco] [varchar](50) NULL,
	[Cidade] [varchar](25) NULL,
	[Regiao] [nchar](25) NULL,
	[Cep] [char](15) NULL,
	[Pais] [nchar](25) NULL,
	[TelefoneResidencial] [char](20) NULL,
	[Ramal] [char](5) NULL,
	[Observacoes] [varchar](200) NULL,
 CONSTRAINT [PK_Table_funcionarios] PRIMARY KEY CLUSTERED 
(
	[CodigoDoFuncionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Pedidos]    Script Date: 16/04/2023 17:00:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Pedidos](
	[NumeroDoPedido] [int] NOT NULL,
	[CodigoDoCliente] [char](10) NOT NULL,
	[CodigoDoFuncionario] [int] NOT NULL,
	[DataDoPedido] [date] NULL,
	[DataDeEntrega] [date] NULL,
	[DataDeEnvio] [date] NULL,
	[CodigoDaTransportadora] [int] NOT NULL,
	[Frete] [money] NULL,
	[NomeDoDestinatario] [varchar](50) NULL,
	[EnderecoDoDestinatario] [varchar](50) NULL,
	[CepDoDestino] [char](15) NULL,
	[PaisDeDestino] [varchar](25) NULL,
	[CidadeDeDestino] [varchar](25) NULL,
	[RegiaoDeDestino] [varchar](25) NULL,
 CONSTRAINT [PK_Table_Pedidos] PRIMARY KEY CLUSTERED 
(
	[NumeroDoPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Produtos]    Script Date: 16/04/2023 17:00:45 ******/
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
/****** Object:  Table [dbo].[TableTransportadora]    Script Date: 16/04/2023 17:00:45 ******/
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
