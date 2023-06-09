USE [BDLogistica]
GO
/****** Object:  Table [dbo].[Table_Pedidos]    Script Date: 16/04/2023 19:53:40 ******/
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
