USE [FudbalskiKlub]
GO
/****** Object:  Schema [m2ss]    Script Date: 7/31/2017 2:08:13 PM ******/
CREATE SCHEMA [m2ss]
GO
/****** Object:  Schema [projekatbp_fk]    Script Date: 7/31/2017 2:08:13 PM ******/
CREATE SCHEMA [projekatbp_fk]
GO
/****** Object:  Table [projekatbp_fk].[igraci]    Script Date: 7/31/2017 2:08:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [projekatbp_fk].[igraci](
	[Clanovi_BrCK] [int] NOT NULL,
	[Status] [nvarchar](15) NOT NULL,
	[Pozicija] [nvarchar](45) NOT NULL,
	[BrojDresa] [int] NOT NULL,
	[Noga] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_igraci_Clanovi_BrCK] PRIMARY KEY CLUSTERED 
(
	[Clanovi_BrCK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [projekatbp_fk].[ucestvuju]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [projekatbp_fk].[ucestvuju](
	[Igraci_Clanovi_BrCK] [int] NOT NULL,
	[Takmicenja_RBr] [int] NOT NULL,
	[Datum] [datetime] NOT NULL,
 CONSTRAINT [PK_ucestvuju_Igraci_Clanovi_BrCK] PRIMARY KEY CLUSTERED 
(
	[Igraci_Clanovi_BrCK] ASC,
	[Takmicenja_RBr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [projekatbp_fk].[clanovi]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [projekatbp_fk].[clanovi](
	[BrCK] [int] IDENTITY(1,1) NOT NULL,
	[JMBG] [char](13) NOT NULL,
	[Prezime] [nvarchar](45) NOT NULL,
	[ImeRoditelja] [nvarchar](45) NULL,
	[Ime] [nvarchar](45) NOT NULL,
	[Adresa] [nvarchar](45) NULL,
	[Telefon] [nvarchar](45) NULL,
	[Godiste] [int] NOT NULL,
	[PosStatus] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_clanovi_BrCK] PRIMARY KEY CLUSTERED 
(
	[BrCK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [projekatbp_fk].[takmicenja]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [projekatbp_fk].[takmicenja](
	[RBr] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](45) NOT NULL,
	[Mesto] [nvarchar](45) NOT NULL,
	[Tip] [nvarchar](45) NOT NULL,
	[Podloga] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_takmicenja_RBr] PRIMARY KEY CLUSTERED 
(
	[RBr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[PrikazUcestvovanja]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PrikazUcestvovanja]
AS
SELECT        projekatbp_fk.clanovi.BrCK, projekatbp_fk.clanovi.Ime, projekatbp_fk.clanovi.Prezime, projekatbp_fk.igraci.Pozicija, projekatbp_fk.igraci.BrojDresa, projekatbp_fk.igraci.Noga, projekatbp_fk.takmicenja.Naziv, 
                         projekatbp_fk.takmicenja.Mesto, projekatbp_fk.takmicenja.Tip, projekatbp_fk.takmicenja.Podloga, projekatbp_fk.ucestvuju.Datum
FROM            projekatbp_fk.clanovi INNER JOIN
                         projekatbp_fk.igraci ON projekatbp_fk.clanovi.BrCK = projekatbp_fk.igraci.Clanovi_BrCK INNER JOIN
                         projekatbp_fk.ucestvuju ON projekatbp_fk.igraci.Clanovi_BrCK = projekatbp_fk.ucestvuju.Igraci_Clanovi_BrCK INNER JOIN
                         projekatbp_fk.takmicenja ON projekatbp_fk.ucestvuju.Takmicenja_RBr = projekatbp_fk.takmicenja.RBr

GO
/****** Object:  Table [projekatbp_fk].[clanarine]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [projekatbp_fk].[clanarine](
	[Clanovi_BrCK] [int] NOT NULL,
	[BrojUplatnice] [nvarchar](45) NOT NULL,
	[DatumPlacanja] [datetime] NOT NULL,
	[Iznos] [int] NOT NULL,
	[Mesec] [nvarchar](45) NOT NULL,
	[Godina] [int] NOT NULL,
 CONSTRAINT [PK_clanarine_Clanovi_BrCK] PRIMARY KEY CLUSTERED 
(
	[Clanovi_BrCK] ASC,
	[BrojUplatnice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [projekatbp_fk].[dobavljaci]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [projekatbp_fk].[dobavljaci](
	[SifDobavljaca] [int] IDENTITY(1,1) NOT NULL,
	[PIB] [int] NOT NULL,
	[Naziv] [nvarchar](45) NOT NULL,
	[Delatnost] [nvarchar](45) NULL,
	[Adresa] [nvarchar](45) NULL,
	[Telefon] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_dobavljaci_SifDobavljaca] PRIMARY KEY CLUSTERED 
(
	[SifDobavljaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [projekatbp_fk].[nabavlja]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [projekatbp_fk].[nabavlja](
	[Oprema_SifOpreme] [int] NOT NULL,
	[Dobavljaci_SifDobavljaca] [int] NOT NULL,
	[Datum] [datetime] NOT NULL,
	[Kolicina] [int] NOT NULL,
 CONSTRAINT [PK_nabavlja_Oprema_SifOpreme] PRIMARY KEY CLUSTERED 
(
	[Oprema_SifOpreme] ASC,
	[Dobavljaci_SifDobavljaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [projekatbp_fk].[oprema]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [projekatbp_fk].[oprema](
	[SifOpreme] [int] IDENTITY(1,1) NOT NULL,
	[Tip] [nvarchar](45) NOT NULL,
	[Proizvodjac] [nvarchar](45) NULL,
	[Broj] [int] NULL,
	[Boja] [nvarchar](45) NULL,
 CONSTRAINT [PK_oprema_SifOpreme] PRIMARY KEY CLUSTERED 
(
	[SifOpreme] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [projekatbp_fk].[revers]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [projekatbp_fk].[revers](
	[IdBr] [int] IDENTITY(1,1) NOT NULL,
	[Kolicina] [int] NOT NULL,
	[OpremuIzdao] [nvarchar](45) NULL,
 CONSTRAINT [PK_revers_IdBr] PRIMARY KEY CLUSTERED 
(
	[IdBr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [projekatbp_fk].[sudije]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [projekatbp_fk].[sudije](
	[Clanovi_BrCK] [int] NOT NULL,
	[DatumPolaganja] [datetime] NOT NULL,
	[Rang] [nvarchar](45) NOT NULL,
	[Tip] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_sudije_Clanovi_BrCK] PRIMARY KEY CLUSTERED 
(
	[Clanovi_BrCK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [projekatbp_fk].[titule]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [projekatbp_fk].[titule](
	[Ucestvuju_Igraci_Clanovi_BrCK] [int] NOT NULL,
	[Ucestvuju_Takmicenja_RBr] [int] NOT NULL,
	[SifTitule] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](45) NOT NULL,
	[Dodelio] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_titule_Ucestvuju_Igraci_Clanovi_BrCK] PRIMARY KEY CLUSTERED 
(
	[Ucestvuju_Igraci_Clanovi_BrCK] ASC,
	[Ucestvuju_Takmicenja_RBr] ASC,
	[SifTitule] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [projekatbp_fk].[treneri]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [projekatbp_fk].[treneri](
	[Clanovi_BrCK] [int] NOT NULL,
	[DatumPolaganja] [nvarchar](45) NOT NULL,
	[Tip] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_treneri_Clanovi_BrCK] PRIMARY KEY CLUSTERED 
(
	[Clanovi_BrCK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [projekatbp_fk].[zaduzuju]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [projekatbp_fk].[zaduzuju](
	[ZaduzujuId] [int] IDENTITY(1,1) NOT NULL,
	[Clanovi_BrCK] [int] NOT NULL,
	[Oprema_SifOpreme] [int] NOT NULL,
	[Kolicinu] [int] NOT NULL,
	[Datum] [datetime] NOT NULL,
 CONSTRAINT [PK_zaduzuju] PRIMARY KEY CLUSTERED 
(
	[Clanovi_BrCK] ASC,
	[Oprema_SifOpreme] ASC,
	[ZaduzujuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1, N'3535353', CAST(N'2017-07-21T00:00:00.000' AS DateTime), 345354, N'Mart', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (2, N'123-456-78/2017', CAST(N'2017-07-27T00:00:00.000' AS DateTime), 3000, N'April', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (2, N'2312312312', CAST(N'2017-07-21T00:00:00.000' AS DateTime), 56448, N'Mart', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1001, N'14-569-785/2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 3000, N'Septembar', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1002, N'45-65-4578/2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 3000, N'Decembar', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1003, N'55-69-27/2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 3000, N'Oktobar', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1004, N'85-69-2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 3000, N'April', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1005, N'75-85-2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 3000, N'Februar', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1006, N'36-38/2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 3000, N'Decembar', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1007, N'25-95/2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 3000, N'Novembar', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1008, N'25-65/2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 3000, N'Septembar', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1009, N'4565/2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 3000, N'Decembar', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1010, N'25-65/2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 3000, N'Avgust', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1011, N'35-95/2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 3000, N'April', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1012, N'25-65/2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 3000, N'Februar', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1013, N'36-69/2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 3000, N'Decembar', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1014, N'25-68/2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 3000, N'April', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1015, N'38-95/2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 3000, N'Mart', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1016, N'25-65/2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 3000, N'Maj', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1017, N'25-65/2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 3000, N'Februar', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1018, N'25-64/2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 3000, N'April', 2017)
INSERT [projekatbp_fk].[clanarine] ([Clanovi_BrCK], [BrojUplatnice], [DatumPlacanja], [Iznos], [Mesec], [Godina]) VALUES (1019, N'25-65/2017', CAST(N'2017-07-30T00:00:00.000' AS DateTime), 2017, N'Novembar', 2017)
SET IDENTITY_INSERT [projekatbp_fk].[clanovi] ON 

INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1, N'9856874521478', N'Petrovic', N'sfsfd', N'Petar', N'Zemunksa 12', N'069/123-456-789', 2424, N'Igrac')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (2, N'1587954785236', N'Mirkovic', N'gdfgdg', N'Mirko', N'Glavna 5', N'069/125-658-874', 4444, N'Trener')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1001, N'1458789658745', N'Maric', N'Dragan', N'Stefan', N'Kralja Aleksandra 5', N'061/457-568', 1992, N'Igrac')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1002, N'1584596587453', N'Radovanovic', N'Marko', N'Stefan', N'Beogradska 15', N'062/145-674', 1990, N'Igrac')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1003, N'6854123578458', N'Mirkovic', N'Damir', N'Mirko', N'Brace Jerkovica 6', N'061/658-987', 1993, N'Igrac')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1004, N'1640996777022', N'Colic', N'Milan', N'Jovan', N'Kralja Milutina 55', N'061/26888-99', 1988, N'Igrac')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1005, N'1809889222356', N'Gavric', N'Nenad', N'Marko', N'Takovska 26', N'065/5699941', 1989, N'Igrac')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1006, N'0708993555365', N'Avramovic', N'Nikola', N'Zoran', N'Jurija Gagarina 228', N'063/66-555-88', 1985, N'Igrac')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1007, N'0306991888253', N'Gavrilovic', N'Zdravko', N'Slobodan', N'Nikole Tesle 2', N'062/596-65-85', 1992, N'Igrac')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1008, N'2506996555854', N'Pavic', N'Milorad', N'Nedeljko', N'Glavna 8', N'065/25-65-555', 1995, N'Igrac')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1009, N'0912994222575', N'Vukasinovic', N'Nenad', N'Nikola', N'Katice Cacic 58', N'064/52-65-997', 1994, N'Igrac')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1010, N'6354992875935', N'Kovacevic', N'Zoran', N'Marinko', N'Kralja Petra Prvog 75', N'065/22-648-63', 1992, N'Igrac')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1011, N'2105993222845', N'Pasic', N'Djordje', N'Stefan', N'Nehruova 45', N'062/58-65-881', 1992, N'Igrac')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1012, N'1409991558935', N'Kojic', N'Nemanja', N'Aleksandar', N'Diljska 85', N'061/52-65-917', 1991, N'Igrac')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1013, N'0209975568428', N'Markovic', N'Krunic', N'Vojislav', N'Proleterska 85', N'062/65-68-274', 1975, N'Trener')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1014, N'2576975365243', N'Masic', N'Drezgic', N'Nikola', N'Nikole Pasica', N'065/675-6258', 1975, N'Trener')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1015, N'2805199354783', N'Krstonosic', N'Slobodan', N'Slaven', N'Marka Popadic 54', N'062/58-648-52', 1984, N'Trener')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1016, N'1435954258751', N'Nigic', N'Misko', N'Igor', N'Svemisrka 25', N'062/56-92-648', 1974, N'Trener')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1017, N'0805992368592', N'Knezevic', N'Filip', N'Danijel', N'Kralja Aleksandra 52', N'065/625-68-85', 1978, N'Sudija')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1018, N'0803968258952', N'Colic', N'Milorad', N'Stefan', N'Takovska 85', N'063/526-6542', 1968, N'Sudija')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1019, N'2912969254938', N'Penic', N'Jovan', N'Dragan', N'Kralja Aleksandra 63', N'062/2577-585', 1975, N'Sudija')
INSERT [projekatbp_fk].[clanovi] ([BrCK], [JMBG], [Prezime], [ImeRoditelja], [Ime], [Adresa], [Telefon], [Godiste], [PosStatus]) VALUES (1020, N'2811972257952', N'Djurkovic', N'Milan', N'Dusan', N'Topolska 14', N'063/582-645', 1972, N'Sudija')
SET IDENTITY_INSERT [projekatbp_fk].[clanovi] OFF
SET IDENTITY_INSERT [projekatbp_fk].[dobavljaci] ON 

INSERT [projekatbp_fk].[dobavljaci] ([SifDobavljaca], [PIB], [Naziv], [Delatnost], [Adresa], [Telefon]) VALUES (5, 100039229, N'Djaksport', N'1790', N'Milana Rešetara 5', N'0113107808')
INSERT [projekatbp_fk].[dobavljaci] ([SifDobavljaca], [PIB], [Naziv], [Delatnost], [Adresa], [Telefon]) VALUES (6, 100139481, N'Sport Vision', N'4642', N'Milentija Popovića 5V', N'+ 381 11 311 1996')
INSERT [projekatbp_fk].[dobavljaci] ([SifDobavljaca], [PIB], [Naziv], [Delatnost], [Adresa], [Telefon]) VALUES (7, 108540397, N'Planeta Sport', N'4771', N'Bulevar Arsenija Čarnojevića 69 đ', N'011/655-57-50')
SET IDENTITY_INSERT [projekatbp_fk].[dobavljaci] OFF
INSERT [projekatbp_fk].[nabavlja] ([Oprema_SifOpreme], [Dobavljaci_SifDobavljaca], [Datum], [Kolicina]) VALUES (9, 5, CAST(N'2017-07-11T00:00:00.000' AS DateTime), 12)
INSERT [projekatbp_fk].[nabavlja] ([Oprema_SifOpreme], [Dobavljaci_SifDobavljaca], [Datum], [Kolicina]) VALUES (10, 6, CAST(N'2017-07-21T00:00:00.000' AS DateTime), 12)
INSERT [projekatbp_fk].[nabavlja] ([Oprema_SifOpreme], [Dobavljaci_SifDobavljaca], [Datum], [Kolicina]) VALUES (12, 7, CAST(N'2017-07-11T00:00:00.000' AS DateTime), 10)
INSERT [projekatbp_fk].[nabavlja] ([Oprema_SifOpreme], [Dobavljaci_SifDobavljaca], [Datum], [Kolicina]) VALUES (13, 6, CAST(N'2017-07-11T00:00:00.000' AS DateTime), 5)
SET IDENTITY_INSERT [projekatbp_fk].[oprema] ON 

INSERT [projekatbp_fk].[oprema] ([SifOpreme], [Tip], [Proizvodjac], [Broj], [Boja]) VALUES (7, N'Kopacke', N'Nike', 40, N'Plava')
INSERT [projekatbp_fk].[oprema] ([SifOpreme], [Tip], [Proizvodjac], [Broj], [Boja]) VALUES (8, N'Kopacke', N'Adidas', 42, N'Crvena')
INSERT [projekatbp_fk].[oprema] ([SifOpreme], [Tip], [Proizvodjac], [Broj], [Boja]) VALUES (9, N'Stucne', N'Adidas', 40, N'Plava')
INSERT [projekatbp_fk].[oprema] ([SifOpreme], [Tip], [Proizvodjac], [Broj], [Boja]) VALUES (10, N'Stucne', N'Nike', 42, N'Crvena')
INSERT [projekatbp_fk].[oprema] ([SifOpreme], [Tip], [Proizvodjac], [Broj], [Boja]) VALUES (12, N'Dres', N'Nike', 40, N'Plava')
INSERT [projekatbp_fk].[oprema] ([SifOpreme], [Tip], [Proizvodjac], [Broj], [Boja]) VALUES (13, N'Dres', N'Adidas', 40, N'Zuta')
SET IDENTITY_INSERT [projekatbp_fk].[oprema] OFF
SET IDENTITY_INSERT [projekatbp_fk].[takmicenja] ON 

INSERT [projekatbp_fk].[takmicenja] ([RBr], [Naziv], [Mesto], [Tip], [Podloga]) VALUES (1012, N'Budi Fer Pokreni Igru', N'Beograd', N'Nacionalno', N'Vestacka trava')
INSERT [projekatbp_fk].[takmicenja] ([RBr], [Naziv], [Mesto], [Tip], [Podloga]) VALUES (1013, N'Ultra fresh', N'Novi Sad', N'Lokalno', N'Beton')
INSERT [projekatbp_fk].[takmicenja] ([RBr], [Naziv], [Mesto], [Tip], [Podloga]) VALUES (1014, N'Dunavske čarolije', N'Beograd', N'Lokalno', N'Sljaka')
INSERT [projekatbp_fk].[takmicenja] ([RBr], [Naziv], [Mesto], [Tip], [Podloga]) VALUES (1015, N'Super lige Srbije', N'Beograd', N'Lokalno', N'Trava')
SET IDENTITY_INSERT [projekatbp_fk].[takmicenja] OFF
ALTER TABLE [projekatbp_fk].[clanovi] ADD  CONSTRAINT [DF__clanovi__ImeRodi__3A81B327]  DEFAULT (NULL) FOR [ImeRoditelja]
GO
ALTER TABLE [projekatbp_fk].[clanovi] ADD  CONSTRAINT [DF__clanovi__Adresa__3B75D760]  DEFAULT (NULL) FOR [Adresa]
GO
ALTER TABLE [projekatbp_fk].[clanovi] ADD  CONSTRAINT [DF__clanovi__Telefon__3C69FB99]  DEFAULT (NULL) FOR [Telefon]
GO
ALTER TABLE [projekatbp_fk].[dobavljaci] ADD  CONSTRAINT [DF__dobavljac__Delat__3D5E1FD2]  DEFAULT (NULL) FOR [Delatnost]
GO
ALTER TABLE [projekatbp_fk].[dobavljaci] ADD  CONSTRAINT [DF__dobavljac__Adres__3E52440B]  DEFAULT (NULL) FOR [Adresa]
GO
ALTER TABLE [projekatbp_fk].[oprema] ADD  CONSTRAINT [DF__oprema__Proizvod__3F466844]  DEFAULT (NULL) FOR [Proizvodjac]
GO
ALTER TABLE [projekatbp_fk].[oprema] ADD  CONSTRAINT [DF__oprema__Boja__403A8C7D]  DEFAULT (NULL) FOR [Boja]
GO
ALTER TABLE [projekatbp_fk].[clanarine]  WITH NOCHECK ADD  CONSTRAINT [clanarine$fk_Clanarine_Clanovi1] FOREIGN KEY([Clanovi_BrCK])
REFERENCES [projekatbp_fk].[clanovi] ([BrCK])
GO
ALTER TABLE [projekatbp_fk].[clanarine] CHECK CONSTRAINT [clanarine$fk_Clanarine_Clanovi1]
GO
ALTER TABLE [projekatbp_fk].[igraci]  WITH NOCHECK ADD  CONSTRAINT [igraci$fk_Igraci_Clanovi1] FOREIGN KEY([Clanovi_BrCK])
REFERENCES [projekatbp_fk].[clanovi] ([BrCK])
GO
ALTER TABLE [projekatbp_fk].[igraci] CHECK CONSTRAINT [igraci$fk_Igraci_Clanovi1]
GO
ALTER TABLE [projekatbp_fk].[nabavlja]  WITH NOCHECK ADD  CONSTRAINT [nabavlja$fk_Oprema_has_Dobavljaci_Dobavljaci1] FOREIGN KEY([Dobavljaci_SifDobavljaca])
REFERENCES [projekatbp_fk].[dobavljaci] ([SifDobavljaca])
GO
ALTER TABLE [projekatbp_fk].[nabavlja] CHECK CONSTRAINT [nabavlja$fk_Oprema_has_Dobavljaci_Dobavljaci1]
GO
ALTER TABLE [projekatbp_fk].[nabavlja]  WITH NOCHECK ADD  CONSTRAINT [nabavlja$fk_Oprema_has_Dobavljaci_Oprema1] FOREIGN KEY([Oprema_SifOpreme])
REFERENCES [projekatbp_fk].[oprema] ([SifOpreme])
GO
ALTER TABLE [projekatbp_fk].[nabavlja] CHECK CONSTRAINT [nabavlja$fk_Oprema_has_Dobavljaci_Oprema1]
GO
ALTER TABLE [projekatbp_fk].[sudije]  WITH NOCHECK ADD  CONSTRAINT [sudije$fk_Sudije_Clanovi1] FOREIGN KEY([Clanovi_BrCK])
REFERENCES [projekatbp_fk].[clanovi] ([BrCK])
GO
ALTER TABLE [projekatbp_fk].[sudije] CHECK CONSTRAINT [sudije$fk_Sudije_Clanovi1]
GO
ALTER TABLE [projekatbp_fk].[titule]  WITH NOCHECK ADD  CONSTRAINT [titule$fk_Titule_Ucestvuju1] FOREIGN KEY([Ucestvuju_Igraci_Clanovi_BrCK], [Ucestvuju_Takmicenja_RBr])
REFERENCES [projekatbp_fk].[ucestvuju] ([Igraci_Clanovi_BrCK], [Takmicenja_RBr])
GO
ALTER TABLE [projekatbp_fk].[titule] CHECK CONSTRAINT [titule$fk_Titule_Ucestvuju1]
GO
ALTER TABLE [projekatbp_fk].[treneri]  WITH CHECK ADD  CONSTRAINT [FK_treneri_clanovi] FOREIGN KEY([Clanovi_BrCK])
REFERENCES [projekatbp_fk].[clanovi] ([BrCK])
GO
ALTER TABLE [projekatbp_fk].[treneri] CHECK CONSTRAINT [FK_treneri_clanovi]
GO
ALTER TABLE [projekatbp_fk].[ucestvuju]  WITH NOCHECK ADD  CONSTRAINT [ucestvuju$fk_Igraci_has_Takmicenja_Igraci1] FOREIGN KEY([Igraci_Clanovi_BrCK])
REFERENCES [projekatbp_fk].[igraci] ([Clanovi_BrCK])
GO
ALTER TABLE [projekatbp_fk].[ucestvuju] CHECK CONSTRAINT [ucestvuju$fk_Igraci_has_Takmicenja_Igraci1]
GO
ALTER TABLE [projekatbp_fk].[ucestvuju]  WITH NOCHECK ADD  CONSTRAINT [ucestvuju$fk_Igraci_has_Takmicenja_Takmicenja1] FOREIGN KEY([Takmicenja_RBr])
REFERENCES [projekatbp_fk].[takmicenja] ([RBr])
GO
ALTER TABLE [projekatbp_fk].[ucestvuju] CHECK CONSTRAINT [ucestvuju$fk_Igraci_has_Takmicenja_Takmicenja1]
GO
ALTER TABLE [projekatbp_fk].[zaduzuju]  WITH NOCHECK ADD  CONSTRAINT [zaduzuju$fk_Clanovi_has_Oprema_Clanovi] FOREIGN KEY([Clanovi_BrCK])
REFERENCES [projekatbp_fk].[clanovi] ([BrCK])
GO
ALTER TABLE [projekatbp_fk].[zaduzuju] CHECK CONSTRAINT [zaduzuju$fk_Clanovi_has_Oprema_Clanovi]
GO
ALTER TABLE [projekatbp_fk].[zaduzuju]  WITH NOCHECK ADD  CONSTRAINT [zaduzuju$fk_Clanovi_has_Oprema_Oprema1] FOREIGN KEY([Oprema_SifOpreme])
REFERENCES [projekatbp_fk].[oprema] ([SifOpreme])
GO
ALTER TABLE [projekatbp_fk].[zaduzuju] CHECK CONSTRAINT [zaduzuju$fk_Clanovi_has_Oprema_Oprema1]
GO
/****** Object:  StoredProcedure [dbo].[DodajDobavljaca]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[DodajDobavljaca]
(
@PIB int,
@Naziv nvarchar(45),
@Delatnost nvarchar(45),
@Adresa nvarchar(45),
@Telefon nvarchar(45)
)

AS

Insert into projekatbp_fk.dobavljaci VALUES(@PIB,@Naziv,@Delatnost,@Adresa,@Telefon)
GO
/****** Object:  StoredProcedure [dbo].[DodajOpremu]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[DodajOpremu]
(
@Tip nvarchar(45),
@Proizvodjac nvarchar(45),
@Broj int,
@Boja nvarchar(45)
)
AS
INSERT INTO projekatbp_fk.oprema VALUES(@Tip,@Proizvodjac,@Broj,@Boja)
GO
/****** Object:  StoredProcedure [dbo].[DodajTakmicenja]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DodajTakmicenja]
(
@Naziv nvarchar(50),
@Mesto nvarchar(50),
@Tip nvarchar(50),
@Podloga nvarchar(50)
)

AS

INSERT into projekatbp_fk.takmicenja VALUES(@Naziv,@Mesto,@Tip,@Podloga)
GO
/****** Object:  StoredProcedure [dbo].[DodajTitulu]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DodajTitulu]
(
@Ucestvuju_Igraci_Clanovi_BrCK int,
@Ucestvuju_Takmicenja_RBr int,
@Naziv nvarchar(45),
@Dodelio nvarchar(45)
)
AS INSERT INTO projekatbp_fk.titule VALUES(@Ucestvuju_Igraci_Clanovi_BrCK,@Ucestvuju_Takmicenja_RBr,@Naziv,@Dodelio)
GO
/****** Object:  StoredProcedure [dbo].[DodajUcestvovanja]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DodajUcestvovanja]
(
@Igraci_Clanovi_BrCK int,
@Takmicenja_RBr int,
@Datum datetime
)

AS INSERT INTO projekatbp_fk.ucestvuju VALUES(@Igraci_Clanovi_BrCK,@Takmicenja_RBr,@Datum)
GO
/****** Object:  StoredProcedure [dbo].[NaruciOpremu]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[NaruciOpremu]
(
@Oprema_SifOpreme int,
@Dobavljaci_SifDobavljaca int,
@Datum datetime,
@Kolicina int
)
AS
INSERT INTO projekatbp_fk.nabavlja VALUES(@Oprema_SifOpreme	,@Dobavljaci_SifDobavljaca,@Datum,@Kolicina)
GO
/****** Object:  StoredProcedure [dbo].[ObrisiClana]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ObrisiClana]
(
@BrCK int
)
AS  DELETE FROM projekatbp_fk.clanovi WHERE BrCK = @BrCK 
GO
/****** Object:  StoredProcedure [dbo].[ObrisiClanarinu]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[ObrisiClanarinu]
(
@Clanovi_BrCK int
)

AS Delete FROM projekatbp_fk.clanarine WHERE Clanovi_BrCK = @Clanovi_BrCK
GO
/****** Object:  StoredProcedure [dbo].[ObrisiDobavljaca]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ObrisiDobavljaca]
(
@SifDobavljaca int
)

AS

Delete from projekatbp_fk.dobavljaci Where SifDobavljaca = @SifDobavljaca
GO
/****** Object:  StoredProcedure [dbo].[ObrisiIgracaTitulu]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ObrisiIgracaTitulu]
(
@Ucestvuju_Igraci_Clanovi_BrCK int
)
AS
Delete from projekatbp_fk.titule WHERE Ucestvuju_Igraci_Clanovi_BrCK = @Ucestvuju_Igraci_Clanovi_BrCK
GO
/****** Object:  StoredProcedure [dbo].[ObrisiIgracaUc]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[ObrisiIgracaUc]
(
@Igraci_Clanovi_BrCK int
)
AS
Delete FROM projekatbp_fk.ucestvuju WHERE Igraci_Clanovi_BrCK = @Igraci_Clanovi_BrCK
GO
/****** Object:  StoredProcedure [dbo].[ObrisiTakmicenja]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ObrisiTakmicenja]
(
@RBr int
)
AS
Delete FROM projekatbp_fk.takmicenja WHERE RBr = @RBr
GO
/****** Object:  StoredProcedure [dbo].[PromeniTakmicenja]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PromeniTakmicenja]
(
@RBr int,
@Naziv nvarchar(50),
@Mesto nvarchar(50),
@Tip nvarchar(50),
@Podloga nvarchar(50)
)
AS Update projekatbp_fk.takmicenja SET Naziv = @Naziv  WHERE RBr = @RBr
 Update projekatbp_fk.takmicenja SET Mesto = @Mesto  WHERE RBr = @RBr
 Update projekatbp_fk.takmicenja SET Tip = @Tip  WHERE RBr = @RBr
 Update projekatbp_fk.takmicenja SET Podloga = @Podloga  WHERE RBr = @RBr
GO
/****** Object:  StoredProcedure [dbo].[UbaciClana]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[UbaciClana]
(
@JMBG char(13),
@Prezime nvarchar(45),
@ImeRoditelja nvarchar(45),
@Ime nvarchar(45),
@Adresa nvarchar(45),
@Telefon nvarchar(45),
@Godiste int,
@PosStatus nvarchar(45)
)
AS
INSERT INTO projekatbp_fk.clanovi VALUES(@JMBG,@Prezime,@ImeRoditelja,@Ime,@Adresa,@Telefon,@Godiste,@PosStatus)
GO
/****** Object:  StoredProcedure [dbo].[UbaciClanarinu]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UbaciClanarinu]
(
@Clanovi_BrCK int,
@BrojUplatnice nvarchar(45),
@DatumPlacanja datetime,
@Iznos int,
@Mesec nvarchar(45),
@Godina int
)

AS

Insert into projekatbp_fk.clanarine Values(@Clanovi_BrCK,@BrojUplatnice,@DatumPlacanja,@Iznos,@Mesec,@Godina)
GO
/****** Object:  StoredProcedure [dbo].[UbaciIgraca]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UbaciIgraca]
(
@Clanovi_BrCK int,
@Status nvarchar(45),
@Pozicija nvarchar(45),
@BrojDresa int,
@Noga nvarchar(45)
)

AS

Insert into projekatbp_fk.igraci Values(@Clanovi_BrCK,@Status,@Pozicija,@BrojDresa,@Noga)
GO
/****** Object:  StoredProcedure [dbo].[UbaciSudiju]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UbaciSudiju]
(
@Clanovi_BrCK int,
@DatumPolaganja datetime,
@Rang nvarchar(45),
@Tip nvarchar(45)
)
AS
INSERT INTO projekatbp_fk.sudije VALUES(@Clanovi_BrCK,@DatumPolaganja,@Rang,@Tip);
GO
/****** Object:  StoredProcedure [dbo].[UbaciTrenera]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UbaciTrenera]
(
@Clanovi_BrCK int,
@DatumPolaganja datetime,
@Tip nvarchar(45)
)
AS
INSERT INTO projekatbp_fk.treneri VALUES(@Clanovi_BrCK,@DatumPolaganja,@Tip)
GO
/****** Object:  StoredProcedure [dbo].[ZaduziOpremu]    Script Date: 7/31/2017 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ZaduziOpremu]
(
@Clanovi_BrCK int,
@Oprema_SifOpreme int,
@Kolicinu int,
@Datum date
)
as
INSERT INTO projekatbp_fk.zaduzuju VALUES(@Clanovi_BrCK,@Oprema_SifOpreme,@Kolicinu,@Datum)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'projekatbp_fk.clanarine' , @level0type=N'SCHEMA',@level0name=N'projekatbp_fk', @level1type=N'TABLE',@level1name=N'clanarine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'projekatbp_fk.clanovi' , @level0type=N'SCHEMA',@level0name=N'projekatbp_fk', @level1type=N'TABLE',@level1name=N'clanovi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'projekatbp_fk.dobavljaci' , @level0type=N'SCHEMA',@level0name=N'projekatbp_fk', @level1type=N'TABLE',@level1name=N'dobavljaci'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'projekatbp_fk.igraci' , @level0type=N'SCHEMA',@level0name=N'projekatbp_fk', @level1type=N'TABLE',@level1name=N'igraci'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'projekatbp_fk.nabavlja' , @level0type=N'SCHEMA',@level0name=N'projekatbp_fk', @level1type=N'TABLE',@level1name=N'nabavlja'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'projekatbp_fk.oprema' , @level0type=N'SCHEMA',@level0name=N'projekatbp_fk', @level1type=N'TABLE',@level1name=N'oprema'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'projekatbp_fk.revers' , @level0type=N'SCHEMA',@level0name=N'projekatbp_fk', @level1type=N'TABLE',@level1name=N'revers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'projekatbp_fk.sudije' , @level0type=N'SCHEMA',@level0name=N'projekatbp_fk', @level1type=N'TABLE',@level1name=N'sudije'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'projekatbp_fk.takmicenja' , @level0type=N'SCHEMA',@level0name=N'projekatbp_fk', @level1type=N'TABLE',@level1name=N'takmicenja'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'projekatbp_fk.titule' , @level0type=N'SCHEMA',@level0name=N'projekatbp_fk', @level1type=N'TABLE',@level1name=N'titule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'projekatbp_fk.treneri' , @level0type=N'SCHEMA',@level0name=N'projekatbp_fk', @level1type=N'TABLE',@level1name=N'treneri'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'projekatbp_fk.ucestvuju' , @level0type=N'SCHEMA',@level0name=N'projekatbp_fk', @level1type=N'TABLE',@level1name=N'ucestvuju'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'projekatbp_fk.zaduzuju' , @level0type=N'SCHEMA',@level0name=N'projekatbp_fk', @level1type=N'TABLE',@level1name=N'zaduzuju'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "clanovi (projekatbp_fk)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "igraci (projekatbp_fk)"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "takmicenja (projekatbp_fk)"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 169
               Right = 628
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ucestvuju (projekatbp_fk)"
            Begin Extent = 
               Top = 6
               Left = 662
               Bottom = 119
               Right = 856
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrikazUcestvovanja'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'rder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrikazUcestvovanja'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrikazUcestvovanja'
GO
