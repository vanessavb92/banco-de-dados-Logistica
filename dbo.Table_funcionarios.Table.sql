USE [BDLogistica]
GO
/****** Object:  Table [dbo].[Table_funcionarios]    Script Date: 16/04/2023 19:53:40 ******/
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
