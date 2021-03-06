USE [master]
GO
/****** Object:  Database [brugael]    Script Date: 18/05/2020 17:13:32 ******/
CREATE DATABASE [brugael]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'brugael', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\brugael.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'brugael_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\brugael_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [brugael] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [brugael].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [brugael] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [brugael] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [brugael] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [brugael] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [brugael] SET ARITHABORT OFF 
GO
ALTER DATABASE [brugael] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [brugael] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [brugael] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [brugael] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [brugael] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [brugael] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [brugael] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [brugael] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [brugael] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [brugael] SET  DISABLE_BROKER 
GO
ALTER DATABASE [brugael] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [brugael] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [brugael] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [brugael] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [brugael] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [brugael] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [brugael] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [brugael] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [brugael] SET  MULTI_USER 
GO
ALTER DATABASE [brugael] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [brugael] SET DB_CHAINING OFF 
GO
ALTER DATABASE [brugael] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [brugael] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [brugael] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [brugael] SET QUERY_STORE = OFF
GO
USE [brugael]
GO
/****** Object:  Table [dbo].[administradores]    Script Date: 18/05/2020 17:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[administradores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[login] [varchar](30) NOT NULL,
	[senha] [varchar](30) NOT NULL,
	[telefone] [varchar](20) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[cpf] [varchar](20) NOT NULL,
 CONSTRAINT [PK_administradores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 18/05/2020 17:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](30) NOT NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 18/05/2020 17:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](60) NOT NULL,
	[cpf] [varchar](17) NOT NULL,
	[login] [varchar](30) NOT NULL,
	[senha] [varchar](40) NOT NULL,
	[telefone] [varchar](20) NOT NULL,
	[rua] [varchar](60) NOT NULL,
	[numero] [varchar](5) NOT NULL,
	[complemento] [varchar](10) NULL,
	[bairro] [varchar](20) NOT NULL,
	[cidade] [varchar](25) NOT NULL,
 CONSTRAINT [PK_clientes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[funcionarios]    Script Date: 18/05/2020 17:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[funcionarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[login] [varchar](30) NOT NULL,
	[senha] [varchar](30) NOT NULL,
	[telefone] [varchar](20) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[cpf] [varchar](17) NOT NULL,
 CONSTRAINT [PK_funcionarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedidos]    Script Date: 18/05/2020 17:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedidos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_produto] [int] NULL,
	[id_dono] [int] NOT NULL,
	[quantidade] [int] NOT NULL,
 CONSTRAINT [PK_pedidos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[produtos]    Script Date: 18/05/2020 17:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[produtos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[descricao] [varchar](max) NULL,
	[preco] [float] NOT NULL,
	[id_categoria] [int] NOT NULL,
 CONSTRAINT [PK_produtos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[administradores] ON 

INSERT [dbo].[administradores] ([id], [nome], [login], [senha], [telefone], [email], [cpf]) VALUES (1, N'BruGaEl', N'brugael', N'site123', N'47999000000', N'brugael@gmail.com', N'00000000000')
SET IDENTITY_INSERT [dbo].[administradores] OFF
SET IDENTITY_INSERT [dbo].[categoria] ON 

INSERT [dbo].[categoria] ([id], [nome]) VALUES (1, N'Pães')
INSERT [dbo].[categoria] ([id], [nome]) VALUES (2, N'Salgados')
INSERT [dbo].[categoria] ([id], [nome]) VALUES (3, N'Doces')
INSERT [dbo].[categoria] ([id], [nome]) VALUES (4, N'Bebidas')
SET IDENTITY_INSERT [dbo].[categoria] OFF
SET IDENTITY_INSERT [dbo].[clientes] ON 

INSERT [dbo].[clientes] ([id], [nome], [cpf], [login], [senha], [telefone], [rua], [numero], [complemento], [bairro], [cidade]) VALUES (1, N'Leticia Almeida', N'22233399956', N'leticiaalmeida@hotmail.com', N'987123', N'47996584267', N'alfredo machado', N'28', NULL, N'velha', N'blumenau')
INSERT [dbo].[clientes] ([id], [nome], [cpf], [login], [senha], [telefone], [rua], [numero], [complemento], [bairro], [cidade]) VALUES (3, N'Alberto Alfredo', N'88844466675', N'albertoalfredo@gmail.com', N'123987', N'47995254552', N'general osorio', N'85', N'320', N'velha', N'blumenau')
SET IDENTITY_INSERT [dbo].[clientes] OFF
SET IDENTITY_INSERT [dbo].[funcionarios] ON 

INSERT [dbo].[funcionarios] ([id], [nome], [login], [senha], [telefone], [email], [cpf]) VALUES (1, N'Bruna Lauschner', N'brunalauschner', N'13052003', N'47999999999', N'brunalauschner@gmail.com', N'00000000000')
INSERT [dbo].[funcionarios] ([id], [nome], [login], [senha], [telefone], [email], [cpf]) VALUES (2, N'Gabrielly Mulhmann', N'gabymulhmann', N'20082002', N'47988888888', N'gabriellymulhmann@gmail.com', N'11111111111')
INSERT [dbo].[funcionarios] ([id], [nome], [login], [senha], [telefone], [email], [cpf]) VALUES (3, N'Gabriel Cadore', N'gabrielcadore', N'14092002', N'47977777777', N'gabrielcadore@gmail.com', N'22222222222')
SET IDENTITY_INSERT [dbo].[funcionarios] OFF
SET IDENTITY_INSERT [dbo].[pedidos] ON 

INSERT [dbo].[pedidos] ([id], [id_produto], [id_dono], [quantidade]) VALUES (1, 1, 1, 6)
INSERT [dbo].[pedidos] ([id], [id_produto], [id_dono], [quantidade]) VALUES (2, 4, 1, 1)
SET IDENTITY_INSERT [dbo].[pedidos] OFF
SET IDENTITY_INSERT [dbo].[produtos] ON 

INSERT [dbo].[produtos] ([id], [nome], [descricao], [preco], [id_categoria]) VALUES (1, N'Pão Francês', N'Feito com receita italiana', 0.6, 1)
INSERT [dbo].[produtos] ([id], [nome], [descricao], [preco], [id_categoria]) VALUES (2, N'Coxinha de frango', N'Massa de batata sovada com amor e recheada de frango desfiado com requeijão', 1.5, 2)
INSERT [dbo].[produtos] ([id], [nome], [descricao], [preco], [id_categoria]) VALUES (3, N'Brigadeiro', N'Delicioso doce feito com leite condesado e achocolatado e um toque especial', 1, 3)
INSERT [dbo].[produtos] ([id], [nome], [descricao], [preco], [id_categoria]) VALUES (4, N'Vitamina de banana', N'Suco batido de banana com leite e especiarias', 3.75, 4)
SET IDENTITY_INSERT [dbo].[produtos] OFF
ALTER TABLE [dbo].[pedidos]  WITH CHECK ADD  CONSTRAINT [FK_pedidos_clientes] FOREIGN KEY([id_dono])
REFERENCES [dbo].[clientes] ([id])
GO
ALTER TABLE [dbo].[pedidos] CHECK CONSTRAINT [FK_pedidos_clientes]
GO
ALTER TABLE [dbo].[pedidos]  WITH CHECK ADD  CONSTRAINT [FK_pedidos_produtos] FOREIGN KEY([id_produto])
REFERENCES [dbo].[produtos] ([id])
GO
ALTER TABLE [dbo].[pedidos] CHECK CONSTRAINT [FK_pedidos_produtos]
GO
ALTER TABLE [dbo].[produtos]  WITH CHECK ADD  CONSTRAINT [FK_produtos_categoria] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[categoria] ([id])
GO
ALTER TABLE [dbo].[produtos] CHECK CONSTRAINT [FK_produtos_categoria]
GO
USE [master]
GO
ALTER DATABASE [brugael] SET  READ_WRITE 
GO
