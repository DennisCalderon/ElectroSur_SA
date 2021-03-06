USE [ActivosFijos]
GO
/****** Object:  Table [dbo].[acfACFp_Activo_Fijo]    Script Date: 06/04/2017 10:30:46  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfACFp_Activo_Fijo](
	[ACFid] [int] NOT NULL,
	[BUKRS] [char](4) NULL,
	[SEGMENT] [char](10) NULL,
	[ANLKL] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[CSTid] [char](4) NULL,
	[MVMid] [char](2) NULL,
	[ACFfmovimiento] [datetime] NULL,
	[VNRid] [char](7) NULL,
	[ACFdescripcion] [char](254) NULL,
	[ACFfincorporacion] [datetime] NULL,
	[ACFfcapitalizacion] [datetime] NULL,
	[ACFvutiltribanio] [int] NULL,
	[ACFvutiltribdia] [int] NULL,
	[ACFvalortrib] [decimal](18, 2) NULL,
	[ACFvutilniifanio] [int] NULL,
	[ACFvutilniifdia] [int] NULL,
	[ACFvalorniif] [decimal](18, 2) NULL,
	[ACFdepacutrib] [char](18) NULL,
	[ACFdepacuniif] [decimal](18, 2) NULL,
	[ACFobra] [char](10) NULL,
	[ACFord41] [char](4) NULL,
	[ACFord42] [char](4) NULL,
	[ACFord43] [char](4) NULL,
	[ACFord44] [char](4) NULL,
	[ACFanlue] [char](12) NULL,
	[ACFfactortrib] [decimal](18, 6) NULL,
	[ACFfactorniif] [decimal](18, 6) NULL,
	[ACFcuenta] [char](18) NULL,
	[ACFcuentadep] [char](18) NULL,
	[CMPid] [char](15) NULL,
	[ACFobservacion] [varchar](250) NULL,
	[LIFNR] [char](10) NULL,
	[ACFnotaingreso] [char](18) NULL,
	[ACFfechanotaingreso] [char](18) NULL,
	[ACFordencompra] [char](18) NULL,
	[ACFfechaordencompra] [datetime] NULL,
	[BLART] [char](2) NULL,
	[ACFcomprobante] [char](18) NULL,
	[KOSTL] [char](10) NULL,
	[AMBid] [int] NULL,
	[UBEid] [int] NOT NULL,
	[ACFfechacomprobante] [datetime] NULL,
	[V_T087U_ANLUE] [char](12) NOT NULL,
 CONSTRAINT [XPKacfACFp_Activo_Fijo] PRIMARY KEY CLUSTERED 
(
	[ACFid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfACTt_Actividad]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfACTt_Actividad](
	[ACTid] [char](2) NOT NULL,
	[ACTactividad] [varchar](60) NULL,
 CONSTRAINT [XPKacfACTt_Actividad] PRIMARY KEY CLUSTERED 
(
	[ACTid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfAMBt_Ambiente]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfAMBt_Ambiente](
	[LOCid] [int] NULL,
	[AMBid] [int] NOT NULL,
	[AMBambiente] [varchar](100) NULL,
 CONSTRAINT [XPKacfAMBt_Ambiente] PRIMARY KEY CLUSTERED 
(
	[AMBid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfCMPt_Componente]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfCMPt_Componente](
	[CMPid] [char](15) NOT NULL,
	[CMPcomponente] [varchar](100) NULL,
	[CMPusoestimado] [decimal](18, 2) NULL,
	[CMPconservacion] [decimal](18, 2) NULL,
	[CMPobsolecencia] [decimal](18, 2) NULL,
	[CMPlimitelegal] [decimal](18, 2) NULL,
	[CMPtotalfactores] [decimal](18, 2) NULL,
	[CMPfactorusoestimado] [decimal](18, 2) NULL,
	[CMPvutilanio] [int] NULL,
	[CMPvutildia] [int] NULL,
 CONSTRAINT [XPKacfCMPt_componente] PRIMARY KEY CLUSTERED 
(
	[CMPid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfCRSt_Caracteristicas]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfCRSt_Caracteristicas](
	[ACFid] [int] NOT NULL,
	[MARid] [int] NULL,
	[ESTid] [int] NULL,
	[CRSserie] [varchar](30) NULL,
	[CRSmodelo] [varchar](35) NULL,
	[CRScolor] [varchar](35) NULL,
	[MATid] [int] NULL,
	[CRStipo] [char](1) NULL,
	[UNMid] [int] NULL,
	[CRScantidad] [decimal](18, 2) NULL,
	[CRSvehplaca] [varchar](15) NULL,
	[CRSvehexpediente] [varchar](15) NULL,
	[CRSvehinscripcion] [datetime] NULL,
	[CRSvehclase] [varchar](35) NULL,
	[CRSvehcombustible] [varchar](35) NULL,
	[CRSvehejes] [int] NULL,
	[CRSvehpasajeros] [int] NULL,
	[CRSvehasientos] [int] NULL,
	[CRSvehpesoseco] [decimal](18, 2) NULL,
	[CRSvehcargautil] [decimal](18, 2) NULL,
	[CRSaltura] [decimal](18, 2) NULL,
	[CRSancho] [decimal](18, 2) NULL,
	[CRSvelocidad] [varchar](20) NULL,
	[CRSresolucion] [varchar](20) NULL,
	[CRScapacidad] [varchar](20) NULL,
	[CRSpotencia] [varchar](20) NULL,
	[CRSvnominal] [varchar](20) NULL,
	[CRSventrada] [varchar](20) NULL,
	[CRSvsalida] [varchar](20) NULL,
	[CRSfrecuencia] [varchar](20) NULL,
	[CRStemperatura] [varchar](20) NULL,
	[CRSprocesador] [varchar](100) NULL,
	[CRSpuertos] [varchar](100) NULL,
	[CRSutmx] [decimal](18, 2) NULL,
	[CRSutmy] [decimal](18, 2) NULL,
	[CRSesfuerzopunta] [varchar](20) NULL,
	[CRScajaderivadora] [varchar](20) NULL,
	[CRSalquilacable] [char](1) NULL,
	[CRScentropoblado] [varchar](60) NULL,
	[CRSurbanizacion] [varchar](60) NULL,
	[CRScalle] [varchar](60) NULL,
	[CRSlote] [varchar](10) NULL,
	[CRSnumeropredio] [varchar](20) NULL,
	[CRSdepartamento] [varchar](10) NULL,
	[CRSinterior] [varchar](10) NULL,
	[CRScarretera] [varchar](50) NULL,
	[CRSkilometro] [decimal](18, 2) NULL,
	[CRSnombrepredio] [varchar](60) NULL,
	[CRSpisospredio] [int] NULL,
	[CRSpartidapredio] [varchar](15) NULL,
	[CRStomopredio] [varchar](15) NULL,
	[CRSfolioinipredio] [varchar](10) NULL,
	[CRSfoliofinpredio] [varchar](10) NULL,
	[CRSasientopredio] [varchar](15) NULL,
	[CRSfinscpredio] [datetime] NULL,
	[CRSficharegistral] [varchar](20) NULL,
	[CRSareaconstruida] [decimal](18, 2) NULL,
	[CRSperimetro] [decimal](18, 2) NULL,
	[CRSusopredio] [varchar](60) NULL,
	[CRSvalorautovaluo] [decimal](18, 2) NULL,
	[CRScodigoluz] [varchar](20) NULL,
	[CRScodigoagua] [varchar](20) NULL,
	[CRSfadqpredio] [datetime] NULL,
	[CRSobservacion] [varchar](254) NULL,
 CONSTRAINT [XPKacfCRSt_Caracteristicas] PRIMARY KEY CLUSTERED 
(
	[ACFid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfCSTt_Costo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfCSTt_Costo](
	[CSTid] [char](4) NOT NULL,
	[CSTdescripcion] [char](35) NULL,
	[CSTdetalle] [char](70) NULL,
	[CSTabreviado] [char](15) NULL,
	[ACTid] [char](2) NOT NULL,
	[CSTid_costo] [char](2) NULL,
 CONSTRAINT [XPKacfCSTt_Costo] PRIMARY KEY CLUSTERED 
(
	[CSTid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfDDFt_detalledediferido]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfDDFt_detalledediferido](
	[ACFcuenta] [char](18) NULL,
	[INVZU] [char](100) NULL,
	[TXT50] [char](100) NULL,
	[ACFvalorniif] [decimal](12, 2) NULL,
	[ACFdepniif] [decimal](12, 2) NULL,
	[ACFPPENiif] [decimal](12, 2) NULL,
	[ACFvalortrib] [decimal](12, 2) NULL,
	[ACFDepTrib] [decimal](12, 2) NULL,
	[ACFpplir] [decimal](12, 2) NULL,
	[ACFdeducible] [decimal](12, 2) NULL,
	[ACFimponible] [decimal](12, 2) NULL,
	[ACFirda] [decimal](12, 2) NULL,
	[ACFirdp] [decimal](12, 2) NULL,
	[ACFculdep] [decimal](12, 2) NULL,
	[ACFrecper1] [decimal](12, 2) NULL,
	[ACFrecper2] [decimal](12, 2) NULL,
	[ACFrecper3] [decimal](12, 2) NULL,
	[ACFrecper4] [decimal](12, 2) NULL,
	[ACFtotales] [decimal](12, 2) NULL,
	[ACFirdaA] [decimal](12, 2) NULL,
	[ACFirdpA] [decimal](12, 2) NULL,
	[ACFirdaF] [decimal](12, 2) NULL,
	[ACFirdpF] [decimal](12, 2) NULL,
	[PDFcodigo] [int] NOT NULL,
 CONSTRAINT [XPKacfDDFt_detalledediferido] PRIMARY KEY CLUSTERED 
(
	[PDFcodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfDRTt_detallereparotributario]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfDRTt_detallereparotributario](
	[RTRcodigo] [int] NOT NULL,
	[ACFcuenta] [char](18) NULL,
	[INVZU] [char](100) NULL,
	[TXT50] [char](100) NULL,
	[ACFfactorniif] [decimal](12, 2) NULL,
	[ACFvutilniif] [decimal](12, 2) NULL,
	[ACFfactorTrib] [decimal](12, 2) NULL,
	[ACFvutiltrib] [decimal](12, 2) NULL,
	[ACFvalorniif] [decimal](12, 2) NULL,
	[ACFdepAcuniif] [decimal](12, 2) NULL,
	[ACFNiifNeto] [decimal](12, 2) NULL,
	[ACFDepNiifPer] [decimal](12, 2) NULL,
	[ACFvalortrib] [decimal](12, 2) NULL,
	[ACFdepacutrib] [decimal](12, 2) NULL,
	[ACFlirneto] [decimal](12, 2) NULL,
	[ACFdeptlirper] [decimal](12, 2) NULL,
	[ACFadiciones] [decimal](12, 2) NULL,
	[ACFdeducciones] [decimal](12, 2) NULL,
	[ACFneto] [decimal](12, 2) NULL,
 CONSTRAINT [XPKacfDRTt_detallereparotributario] PRIMARY KEY CLUSTERED 
(
	[RTRcodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfEDIt_edificaciondetalle]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfEDIt_edificaciondetalle](
	[ACFid] [int] NULL,
	[EDIzona] [char](18) NULL,
	[EDIdescripicion] [char](100) NULL,
	[EDIfactorasignado] [decimal](12, 2) NULL,
	[ACFValorIR] [decimal](12, 2) NULL,
	[ACFTC] [decimal](12, 2) NULL,
	[ACFCRC] [decimal](12, 2) NULL,
	[ACFDEPCRC] [decimal](12, 2) NULL,
	[ACFNETOCRC] [decimal](12, 2) NULL,
	[ACFvalorniif] [decimal](12, 2) NULL,
	[ACFdepacuniif] [decimal](12, 2) NULL,
	[ACFNETOPCGA] [decimal](12, 2) NULL,
	[ACFDIFCosto] [decimal](12, 2) NULL,
	[ACFINCCosto] [decimal](12, 2) NULL,
	[ACFDISCosto] [decimal](12, 2) NULL,
	[ACFDIFDEP] [decimal](12, 2) NULL,
	[ACFINCDep] [decimal](12, 2) NULL,
	[ACFDISDep] [decimal](12, 2) NULL,
	[ACFDIFNeta] [decimal](12, 2) NULL,
	[ACFSumDifDed] [decimal](12, 2) NULL,
	[ACFSumDifGra] [decimal](12, 2) NULL,
	[ACFSumACTDif] [decimal](12, 2) NULL,
	[ACFSumPasDif] [decimal](12, 2) NULL,
	[ACFcuenta] [char](18) NULL,
	[LOClocal] [char](18) NULL,
	[RVAcodigo] [char](18) NOT NULL,
 CONSTRAINT [XPKacfEDIt_edificaciondetalle] PRIMARY KEY CLUSTERED 
(
	[RVAcodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfESTt_Estado]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfESTt_Estado](
	[ESTid] [int] NOT NULL,
	[ESTestado] [varchar](20) NULL,
 CONSTRAINT [XPKacfESTt_Estado] PRIMARY KEY CLUSTERED 
(
	[ESTid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfICRt_Inventariocaracteristicas]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfICRt_Inventariocaracteristicas](
	[MARid] [int] NOT NULL,
	[ESTid] [int] NOT NULL,
	[CRSserie] [varchar](30) NULL,
	[CRSmodelo] [varchar](35) NULL,
	[CRScolor] [varchar](35) NULL,
	[MATid] [int] NOT NULL,
	[CRStipo] [char](1) NULL,
	[UNMid] [int] NOT NULL,
	[CRScantidad] [decimal](18, 2) NULL,
	[CRSvehplaca] [varchar](15) NULL,
	[CRSvehexpediente] [varchar](15) NULL,
	[CRSvehinscripcion] [datetime] NULL,
	[CRSvehclase] [varchar](35) NULL,
	[CRSvehcombustible] [varchar](35) NULL,
	[CRSvehejes] [int] NULL,
	[CRSvehpasajeros] [int] NULL,
	[CRSvehasientos] [int] NULL,
	[CRSvehpesoseco] [decimal](18, 2) NULL,
	[CRSvehcargautil] [decimal](18, 2) NULL,
	[CRSaltura] [decimal](18, 2) NULL,
	[CRSancho] [decimal](18, 2) NULL,
	[CRSvelocidad] [varchar](20) NULL,
	[CRSresolucion] [varchar](20) NULL,
	[CRScapacidad] [varchar](20) NULL,
	[CRSpotencia] [varchar](20) NULL,
	[CRSvnominal] [varchar](20) NULL,
	[CRSventrada] [varchar](20) NULL,
	[CRSvsalida] [varchar](20) NULL,
	[CRSfrecuencia] [varchar](20) NULL,
	[CRStemperatura] [varchar](20) NULL,
	[CRSprocesador] [varchar](100) NULL,
	[CRSpuertos] [varchar](100) NULL,
	[CRSutmx] [decimal](18, 2) NULL,
	[CRSutmy] [decimal](18, 2) NULL,
	[CRSesfuerzopunta] [varchar](20) NULL,
	[CRScajaderivadora] [varchar](20) NULL,
	[CRSalquilacable] [char](1) NULL,
	[CRScentropoblado] [varchar](60) NULL,
	[CRSurbanizacion] [varchar](60) NULL,
	[CRScalle] [varchar](60) NULL,
	[CRSlote] [varchar](10) NULL,
	[CRSnumeropredio] [varchar](20) NULL,
	[CRSdepartamento] [varchar](10) NULL,
	[CRSinterior] [varchar](10) NULL,
	[CRScarretera] [varchar](50) NULL,
	[CRSkilometro] [decimal](18, 2) NULL,
	[CRSnombrepredio] [varchar](60) NULL,
	[CRSpisospredio] [int] NULL,
	[CRSpartidapredio] [varchar](15) NULL,
	[CRStomopredio] [varchar](15) NULL,
	[CRSfolioinipredio] [varchar](10) NULL,
	[CRSfoliofinpredio] [varchar](10) NULL,
	[CRSasientopredio] [varchar](15) NULL,
	[CRSfinscpredio] [datetime] NULL,
	[CRSficharegistral] [varchar](20) NULL,
	[CRSareaconstruida] [decimal](18, 2) NULL,
	[CRSperimetro] [decimal](18, 2) NULL,
	[CRSusopredio] [varchar](60) NULL,
	[CRSvalorautovaluo] [decimal](18, 2) NULL,
	[CRScodigoluz] [varchar](20) NULL,
	[CRScodigoagua] [varchar](20) NULL,
	[CRSfadqpredio] [datetime] NULL,
	[CRSobservacion] [varchar](254) NULL,
	[INVid] [int] NOT NULL,
	[ACFid] [int] NOT NULL,
 CONSTRAINT [XPKacfICRt_Inventariocaracteristicas] PRIMARY KEY CLUSTERED 
(
	[INVid] ASC,
	[ACFid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfINBt_Inventariobienes]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfINBt_Inventariobienes](
	[INVid] [int] NOT NULL,
	[ACFid] [int] NOT NULL,
	[ACFactivo] [varchar](100) NULL,
	[BUKRS] [char](4) NOT NULL,
	[SEGMENT] [char](10) NOT NULL,
	[KOSTL] [char](10) NOT NULL,
	[ANLKL] [char](8) NOT NULL,
	[PERNR] [char](8) NOT NULL,
	[ACTid] [char](2) NOT NULL,
	[CSTid] [char](4) NOT NULL,
	[VNRid] [char](7) NOT NULL,
	[ACFfincorporacion] [datetime] NULL,
	[ACFfcapitalizacion] [datetime] NULL,
	[ACFvutiltribanio] [int] NULL,
	[ACFvutiltribdia] [int] NULL,
	[ACFvalortrib] [decimal](18, 2) NULL,
	[ACFfactortrib] [decimal](18, 6) NULL,
	[ACFdepacutrib] [decimal](18, 2) NULL,
	[ACfvutilniifanio] [int] NULL,
	[ACFvutilniifdia] [int] NULL,
	[ACFvalorniif] [decimal](18, 2) NULL,
	[ACFfactorniif] [decimal](18, 6) NULL,
	[ACFdepacuniif] [decimal](18, 2) NULL,
	[ACFobra] [char](10) NULL,
	[ACFord41] [char](4) NULL,
	[ACFord42] [char](4) NULL,
	[ACFord43] [char](4) NULL,
	[ACFord44] [char](4) NULL,
	[ACFanlue] [char](12) NULL,
	[ACFcuenta] [char](18) NULL,
	[ACFcuentadep] [char](18) NULL,
	[LIFNR] [char](10) NOT NULL,
	[BLART] [char](2) NOT NULL,
	[ACFcomprobante] [char](18) NULL,
	[ACFnotaingreso] [char](18) NULL,
	[ACFfechanotaingreso] [datetime] NULL,
	[ACFordencompra] [char](18) NULL,
	[ACFobservacion] [varchar](254) NULL,
	[AMBid] [int] NOT NULL,
	[UBEid] [int] NOT NULL,
	[ACFfechacomprobante] [datetime] NULL,
	[ACFfechaordencompra] [datetime] NULL,
 CONSTRAINT [XPKacfINBt_Inventariobienes] PRIMARY KEY CLUSTERED 
(
	[INVid] ASC,
	[ACFid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfINVp_Inventario]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfINVp_Inventario](
	[INVid] [int] NOT NULL,
	[INVdetalle] [varchar](100) NULL,
	[INVinicio] [datetime] NULL,
	[INVcierre] [datetime] NULL,
	[INVactivo] [bit] NULL,
 CONSTRAINT [XPKacfINVt_Inventario] PRIMARY KEY CLUSTERED 
(
	[INVid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfLOCt_Local]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfLOCt_Local](
	[LOCid] [int] NOT NULL,
	[LOClocal] [varchar](100) NULL,
	[LOCdireccion] [varchar](100) NULL,
	[SEGMENT] [char](10) NULL,
 CONSTRAINT [XPKacfLOCt_Local] PRIMARY KEY CLUSTERED 
(
	[LOCid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfMARt_Marca]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfMARt_Marca](
	[MARid] [int] NOT NULL,
	[MARmarca] [varchar](60) NULL,
 CONSTRAINT [XPKacfMARt_Marca] PRIMARY KEY CLUSTERED 
(
	[MARid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfMATt_Material]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfMATt_Material](
	[MATid] [int] NOT NULL,
	[MATmaterial] [char](60) NULL,
	[MATabreviado] [char](10) NULL,
 CONSTRAINT [XPKacfMATt_Material] PRIMARY KEY CLUSTERED 
(
	[MATid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfMEQt_maquinariaequipo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfMEQt_maquinariaequipo](
	[MEQvnrtot] [decimal](12, 2) NULL,
	[MEQcantidad] [decimal](12, 2) NULL,
	[MEQaccffecinc] [decimal](12, 2) NULL,
	[MEQabreviatura] [char](18) NULL,
	[MEQopiniontecnica] [char](18) NULL,
	[MEQctacontable] [decimal](12, 2) NULL,
	[MEQniif] [decimal](12, 2) NULL,
	[MEQvrident] [decimal](12, 2) NULL,
	[MEQprovdes] [decimal](12, 2) NULL,
	[MEQcostorepcor] [decimal](12, 2) NULL,
	[MEQfactorinst] [decimal](12, 2) NULL,
	[MEQvalorresi] [decimal](12, 2) NULL,
	[MEQedadact] [decimal](12, 2) NULL,
	[MEQdeptas] [decimal](12, 2) NULL,
	[MEQvalorref] [decimal](12, 2) NULL,
	[MEQvalref2] [decimal](12, 2) NULL,
	[MEQvsm] [decimal](12, 2) NULL,
	[MEQestado] [decimal](12, 2) NULL,
	[MEQvidautil] [decimal](12, 2) NULL,
	[MEQvidautmax] [decimal](12, 2) NULL,
	[MEQedadtec] [decimal](12, 2) NULL,
	[MEQdepreciacion] [decimal](12, 2) NULL,
	[MEQdep2012] [decimal](12, 2) NULL,
	[MEQcostocorr] [decimal](12, 2) NULL,
	[MEQvaloractivo] [decimal](12, 2) NULL,
	[MEQdepre] [decimal](12, 2) NULL,
	[MEQtasair] [decimal](12, 2) NULL,
	[MEQimpdife] [decimal](12, 2) NULL,
	[MEQdifneta] [decimal](12, 2) NULL,
	[MEQvalorneto] [decimal](12, 2) NULL,
	[MEQvalact] [decimal](12, 2) NULL,
	[MEQcostotcorr] [decimal](12, 2) NULL,
	[MEQdepacuniif] [decimal](12, 2) NULL,
	[MEQcrcnet] [decimal](12, 2) NULL,
	[MEQvalnet] [decimal](12, 2) NULL,
	[MEQdiferenneta] [decimal](12, 2) NULL,
	[MEQvalornetolib] [decimal](12, 2) NULL,
	[MEQdepacumtrib] [decimal](12, 2) NULL,
	[MEQcostohistorico] [decimal](12, 2) NULL,
	[RVAcodigo] [char](18) NOT NULL,
 CONSTRAINT [XPKacfMEQt_maquinariaequipo] PRIMARY KEY CLUSTERED 
(
	[RVAcodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfMVAt_MovimientoActivo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfMVAt_MovimientoActivo](
	[MVAid] [int] NOT NULL,
	[ACFid] [int] NOT NULL,
	[ACFactivo] [varchar](254) NULL,
	[BUKRS] [char](4) NOT NULL,
	[SEGMENT] [char](10) NOT NULL,
	[KOSTL] [char](10) NULL,
	[ANLKL] [char](8) NULL,
	[PERNR] [char](8) NOT NULL,
	[CSTid] [char](4) NOT NULL,
	[TMVid] [char](2) NOT NULL,
	[MVMid] [char](2) NOT NULL,
	[ACFfmovimiento] [datetime] NULL,
	[VNRid] [char](7) NOT NULL,
	[ACFfincorporacion] [datetime] NULL,
	[ACFfcapitalizacion] [datetime] NULL,
	[ACFvutiltribanio] [int] NULL,
	[ACFvutiltribdia] [int] NULL,
	[ACFvalortrib] [decimal](18, 2) NULL,
	[ACFfactortrib] [decimal](18, 6) NULL,
	[ACFdepacutrib] [decimal](18, 2) NULL,
	[ACFvutilniifanio] [int] NULL,
	[ACFvutilniifdia] [int] NULL,
	[ACFvalorniif] [decimal](18, 2) NULL,
	[ACFfactorniif] [decimal](18, 6) NULL,
	[ACFdepacuniif] [decimal](18, 2) NULL,
	[ACFobra] [char](10) NULL,
	[ACFord41] [char](4) NULL,
	[ACFord42] [char](4) NULL,
	[ACFord43] [char](4) NULL,
	[ACFord44] [char](4) NULL,
	[ACFanlue] [char](12) NULL,
	[ACFcuenta] [char](18) NULL,
	[ACFcuentadep] [char](18) NULL,
	[ACFcomprobante] [char](18) NULL,
	[ACFnotaingreso] [char](18) NULL,
	[ACFfechanotaingreso] [datetime] NULL,
	[ACFordencompra] [char](18) NULL,
	[ACFfechaordencompra] [datetime] NULL,
	[ACFobservacion] [char](254) NULL,
	[LIFNR] [char](10) NOT NULL,
	[BLART] [char](2) NOT NULL,
	[AMBid] [int] NOT NULL,
	[CMPid] [char](15) NOT NULL,
	[UBEid] [int] NOT NULL,
 CONSTRAINT [XPKacfMVAt_MovimientoActivo] PRIMARY KEY CLUSTERED 
(
	[MVAid] ASC,
	[ACFid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfMVMt_MotivoMovimiento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfMVMt_MotivoMovimiento](
	[TMVid] [char](2) NOT NULL,
	[MVMid] [char](2) NOT NULL,
	[MVMmotivomovimiento] [char](60) NULL,
	[MVMjustificacion] [smallint] NULL,
 CONSTRAINT [XPKacfMVMt_MotivoMovimiento] PRIMARY KEY CLUSTERED 
(
	[MVMid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfPDFt_procesodiferido]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfPDFt_procesodiferido](
	[PDFcodigo] [int] NOT NULL,
	[PDFperiodo] [char](18) NULL,
	[PDFfecha] [datetime] NULL,
	[PDFreponsable] [char](100) NULL,
	[PDFestado] [bit] NULL,
 CONSTRAINT [XPKacfPDIt_procesodiferido] PRIMARY KEY CLUSTERED 
(
	[PDFcodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfRTRt_Reparotributario]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfRTRt_Reparotributario](
	[RTRperiodo] [char](6) NULL,
	[RTRfecha] [datetime] NULL,
	[RTRresponsable] [char](50) NULL,
	[RTRestado] [bit] NULL,
	[RTRcodigo] [int] NOT NULL,
 CONSTRAINT [XPKacfRTRt_Reparotributario] PRIMARY KEY CLUSTERED 
(
	[RTRcodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfRVAt_registrovaluacion]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfRVAt_registrovaluacion](
	[RVAcodigo] [char](18) NOT NULL,
	[RVAperiodo] [char](18) NULL,
	[RVAfecha] [char](18) NULL,
	[RVAresponsable] [char](18) NULL,
	[RVRestado] [char](18) NULL,
 CONSTRAINT [XPKacf_RVAt_registrovaluacion] PRIMARY KEY CLUSTERED 
(
	[RVAcodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfSELt_SistemaElectrico]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfSELt_SistemaElectrico](
	[SELid] [char](6) NOT NULL,
	[SELsistemaelectrico] [varchar](25) NULL,
	[SEGMENT] [char](10) NULL,
 CONSTRAINT [XPKacfSELt_SistemaElectrico] PRIMARY KEY CLUSTERED 
(
	[SELid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfSPNt_Supranumero]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfSPNt_Supranumero](
	[V_T087U_ANLUE] [char](12) NOT NULL,
	[V_T087U_ANLUE_TXT] [char](100) NULL,
 CONSTRAINT [XPKacfSPNt_Supranumero] PRIMARY KEY CLUSTERED 
(
	[V_T087U_ANLUE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfTMVt_TipoMovimiento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfTMVt_TipoMovimiento](
	[TMVid] [char](2) NOT NULL,
	[TMVtipomovimiento] [char](60) NULL,
 CONSTRAINT [XPKacfTMVt_TipoMovimiento] PRIMARY KEY CLUSTERED 
(
	[TMVid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfTRNt_terrenodetalle]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfTRNt_terrenodetalle](
	[CRSnombrepredio] [char](18) NULL,
	[CRScentropoblado] [char](18) NULL,
	[CRSdepartamento] [char](18) NULL,
	[CRSinterior] [char](18) NULL,
	[CRScarretera] [char](18) NULL,
	[CRSkilometro] [char](18) NULL,
	[ACFArea] [char](18) NULL,
	[ACFvalor] [char](18) NULL,
	[ACFtc] [char](18) NULL,
	[ACFvalorSoles] [char](18) NULL,
	[ACFValorDolar] [char](18) NULL,
	[ACFValorAnt0] [char](18) NULL,
	[ACFVutilniff] [char](18) NULL,
	[ACFNetopcga] [char](18) NULL,
	[ACFvalorATri] [char](18) NULL,
	[ACFid] [char](18) NULL,
	[ACFdiferencia] [char](18) NULL,
	[ACFDifTemDedu] [char](18) NULL,
	[ACFDifTemGrav] [char](18) NULL,
	[ACFTasaIR] [char](18) NULL,
	[ACFSaldoDeducible] [char](18) NULL,
	[ACFSaldoGravable] [char](18) NULL,
	[RVAcodigo] [char](18) NOT NULL,
 CONSTRAINT [XPKacfTR] PRIMARY KEY CLUSTERED 
(
	[RVAcodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfUBEt_UbicacionElectrica]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfUBEt_UbicacionElectrica](
	[UBEcodigogis] [bigint] NULL,
	[UBEobra] [char](10) NULL,
	[KOSTL] [char](10) NOT NULL,
	[VNRid] [char](7) NOT NULL,
	[SELid] [char](6) NULL,
	[UBEset] [bigint] NULL,
	[UBEsetetq] [varchar](30) NULL,
	[UBEalimentador] [bigint] NULL,
	[UBEalimentadoretq] [varchar](10) NULL,
	[UBEsed] [bigint] NULL,
	[UBEsedetq] [varchar](10) NULL,
	[UBEcircuito] [bigint] NULL,
	[UBEcircuitoetq] [varchar](10) NULL,
	[UBEpuntoi] [bigint] NULL,
	[UBEpuntoietq] [varchar](10) NULL,
	[UBEpuntof] [bigint] NULL,
	[UBEpuntofetq] [varchar](10) NULL,
	[UBEid] [int] NOT NULL,
	[ACFid] [int] NULL,
 CONSTRAINT [XPKacfUBEt_UbicacionElectrica] PRIMARY KEY CLUSTERED 
(
	[UBEid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfUNMt_Unimed]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfUNMt_Unimed](
	[UNMid] [int] NOT NULL,
	[UNMunidad] [char](3) NULL,
	[UNMdetalle] [char](20) NULL,
 CONSTRAINT [XPKacfUNMt_Unimed] PRIMARY KEY CLUSTERED 
(
	[UNMid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acfVNRt_VNR]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acfVNRt_VNR](
	[VNRid] [char](7) NOT NULL,
	[VNRvnr] [char](150) NULL,
	[VNRcuenta] [char](20) NULL,
	[VNRcuentadep] [char](20) NULL,
 CONSTRAINT [XPKacfVNRt_VNR] PRIMARY KEY CLUSTERED 
(
	[VNRid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bdiCAFpClaseDeActivoFijo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bdiCAFpClaseDeActivoFijo](
	[ANLKL] [char](8) NOT NULL,
	[TXK50] [char](50) NULL,
 CONSTRAINT [XPKbdiCAFpClaseDeActivoFijo] PRIMARY KEY CLUSTERED 
(
	[ANLKL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bdiCDDpClasesDeDocumento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bdiCDDpClasesDeDocumento](
	[BLART] [char](2) NOT NULL,
	[LTEXT] [char](100) NULL,
	[DETdoctipo] [char](2) NULL,
 CONSTRAINT [XPKbdiCDDpClasesDeDocumento] PRIMARY KEY CLUSTERED 
(
	[BLART] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bdiPRVpProveedor]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bdiPRVpProveedor](
	[LIFNR] [char](10) NOT NULL,
	[Name1] [char](35) NULL,
	[Stras] [char](35) NULL,
	[STCD1] [char](16) NULL,
 CONSTRAINT [XPKbdiPRVpProveedor] PRIMARY KEY CLUSTERED 
(
	[LIFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bdiSEGpSegmento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bdiSEGpSegmento](
	[SEGMENT] [char](10) NOT NULL,
	[NAME] [char](50) NULL,
	[id_zona] [varchar](1) NULL,
 CONSTRAINT [XPKbdiSEGpSegmento] PRIMARY KEY CLUSTERED 
(
	[SEGMENT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bdiSOCpSociedades]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bdiSOCpSociedades](
	[BUKRS] [char](4) NOT NULL,
	[BUTXT] [char](80) NULL,
 CONSTRAINT [XPKbdiSOCpSociedades] PRIMARY KEY CLUSTERED 
(
	[BUKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bdiXCCpExtraccionSAP_CentroCosto]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bdiXCCpExtraccionSAP_CentroCosto](
	[KOSTL] [char](10) NOT NULL,
	[KTEXT] [char](20) NULL,
	[KLTXT] [char](40) NULL,
	[MCDS3] [char](20) NULL,
 CONSTRAINT [XPKbdiXCCpExtraccionSAP_CentroCosto] PRIMARY KEY CLUSTERED 
(
	[KOSTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bdiXPEpExtraccionSAP_Personal]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bdiXPEpExtraccionSAP_Personal](
	[PERNR] [char](8) NOT NULL,
	[Nachn] [char](40) NULL,
	[Name2] [char](40) NULL,
	[Vorna] [char](40) NULL,
	[DNI] [char](30) NULL,
	[WERKS] [char](4) NULL,
	[Persg] [char](1) NULL,
	[KOSTL] [char](10) NOT NULL,
 CONSTRAINT [XPKbdiXPEpExtraccionSAP_Personal] PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[acfACFp_Activo_Fijo] ([ACFid], [BUKRS], [SEGMENT], [ANLKL], [PERNR], [CSTid], [MVMid], [ACFfmovimiento], [VNRid], [ACFdescripcion], [ACFfincorporacion], [ACFfcapitalizacion], [ACFvutiltribanio], [ACFvutiltribdia], [ACFvalortrib], [ACFvutilniifanio], [ACFvutilniifdia], [ACFvalorniif], [ACFdepacutrib], [ACFdepacuniif], [ACFobra], [ACFord41], [ACFord42], [ACFord43], [ACFord44], [ACFanlue], [ACFfactortrib], [ACFfactorniif], [ACFcuenta], [ACFcuentadep], [CMPid], [ACFobservacion], [LIFNR], [ACFnotaingreso], [ACFfechanotaingreso], [ACFordencompra], [ACFfechaordencompra], [BLART], [ACFcomprobante], [KOSTL], [AMBid], [UBEid], [ACFfechacomprobante], [V_T087U_ANLUE]) VALUES (1, N'1   ', N'1         ', N'1       ', N'1       ', N'1   ', N'2 ', CAST(N'2017-03-31 12:00:00.000' AS DateTime), N'1      ', N'Por Fin xxxxx                                                                                                                                                                                                                                                 ', CAST(N'2017-03-31 12:00:00.000' AS DateTime), CAST(N'2017-03-31 12:00:00.000' AS DateTime), 0, 0, CAST(0.00 AS Decimal(18, 2)), 0, 0, CAST(0.00 AS Decimal(18, 2)), N'                  ', CAST(0.00 AS Decimal(18, 2)), N'          ', N'    ', N'    ', N'    ', N'    ', N'            ', CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), N'                  ', N'                  ', N'1              ', N'', N'1         ', N'                  ', N'                  ', N'                  ', CAST(N'2017-03-31 12:00:00.000' AS DateTime), N'1 ', N'                  ', N'1         ', 1, 1, CAST(N'2017-03-31 12:00:00.000' AS DateTime), N'1           ')
INSERT [dbo].[acfACFp_Activo_Fijo] ([ACFid], [BUKRS], [SEGMENT], [ANLKL], [PERNR], [CSTid], [MVMid], [ACFfmovimiento], [VNRid], [ACFdescripcion], [ACFfincorporacion], [ACFfcapitalizacion], [ACFvutiltribanio], [ACFvutiltribdia], [ACFvalortrib], [ACFvutilniifanio], [ACFvutilniifdia], [ACFvalorniif], [ACFdepacutrib], [ACFdepacuniif], [ACFobra], [ACFord41], [ACFord42], [ACFord43], [ACFord44], [ACFanlue], [ACFfactortrib], [ACFfactorniif], [ACFcuenta], [ACFcuentadep], [CMPid], [ACFobservacion], [LIFNR], [ACFnotaingreso], [ACFfechanotaingreso], [ACFordencompra], [ACFfechaordencompra], [BLART], [ACFcomprobante], [KOSTL], [AMBid], [UBEid], [ACFfechacomprobante], [V_T087U_ANLUE]) VALUES (2, N'1   ', N'1         ', N'1       ', N'1       ', N'1   ', N'2 ', CAST(N'2017-03-30 12:00:00.000' AS DateTime), N'1      ', N'aaaaaaaaaaa                                                                                                                                                                                                                                                   ', CAST(N'2017-03-30 12:00:00.000' AS DateTime), CAST(N'2017-03-30 12:00:00.000' AS DateTime), 0, 0, CAST(0.00 AS Decimal(18, 2)), 0, 0, CAST(0.00 AS Decimal(18, 2)), N'                  ', CAST(0.00 AS Decimal(18, 2)), N'          ', N'    ', N'    ', N'    ', N'    ', N'            ', CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), N'                  ', N'                  ', N'1              ', N'', N'1         ', N'                  ', N'                  ', N'                  ', CAST(N'2017-03-30 12:00:00.000' AS DateTime), N'1 ', N'                  ', N'1         ', 1, 1, CAST(N'2017-03-30 12:00:00.000' AS DateTime), N'1           ')
INSERT [dbo].[acfACFp_Activo_Fijo] ([ACFid], [BUKRS], [SEGMENT], [ANLKL], [PERNR], [CSTid], [MVMid], [ACFfmovimiento], [VNRid], [ACFdescripcion], [ACFfincorporacion], [ACFfcapitalizacion], [ACFvutiltribanio], [ACFvutiltribdia], [ACFvalortrib], [ACFvutilniifanio], [ACFvutilniifdia], [ACFvalorniif], [ACFdepacutrib], [ACFdepacuniif], [ACFobra], [ACFord41], [ACFord42], [ACFord43], [ACFord44], [ACFanlue], [ACFfactortrib], [ACFfactorniif], [ACFcuenta], [ACFcuentadep], [CMPid], [ACFobservacion], [LIFNR], [ACFnotaingreso], [ACFfechanotaingreso], [ACFordencompra], [ACFfechaordencompra], [BLART], [ACFcomprobante], [KOSTL], [AMBid], [UBEid], [ACFfechacomprobante], [V_T087U_ANLUE]) VALUES (3, N'1   ', N'1         ', N'1       ', N'1       ', N'1   ', N'2 ', CAST(N'2017-03-30 12:00:00.000' AS DateTime), N'1      ', N'Por Fin                                                                                                                                                                                                                                                       ', CAST(N'2017-03-30 12:00:00.000' AS DateTime), CAST(N'2017-03-30 12:00:00.000' AS DateTime), 0, 0, CAST(0.00 AS Decimal(18, 2)), 0, 0, CAST(0.00 AS Decimal(18, 2)), N'                  ', CAST(0.00 AS Decimal(18, 2)), N'          ', N'    ', N'    ', N'    ', N'    ', N'            ', CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), N'                  ', N'                  ', N'1              ', N'', N'1         ', N'                  ', N'                  ', N'                  ', CAST(N'2017-03-30 12:00:00.000' AS DateTime), N'1 ', N'                  ', N'1         ', 1, 1, CAST(N'2017-03-30 12:00:00.000' AS DateTime), N'1           ')
INSERT [dbo].[acfACFp_Activo_Fijo] ([ACFid], [BUKRS], [SEGMENT], [ANLKL], [PERNR], [CSTid], [MVMid], [ACFfmovimiento], [VNRid], [ACFdescripcion], [ACFfincorporacion], [ACFfcapitalizacion], [ACFvutiltribanio], [ACFvutiltribdia], [ACFvalortrib], [ACFvutilniifanio], [ACFvutilniifdia], [ACFvalorniif], [ACFdepacutrib], [ACFdepacuniif], [ACFobra], [ACFord41], [ACFord42], [ACFord43], [ACFord44], [ACFanlue], [ACFfactortrib], [ACFfactorniif], [ACFcuenta], [ACFcuentadep], [CMPid], [ACFobservacion], [LIFNR], [ACFnotaingreso], [ACFfechanotaingreso], [ACFordencompra], [ACFfechaordencompra], [BLART], [ACFcomprobante], [KOSTL], [AMBid], [UBEid], [ACFfechacomprobante], [V_T087U_ANLUE]) VALUES (4, N'1   ', N'1         ', N'1       ', N'1       ', N'1   ', N'2 ', CAST(N'2017-03-30 12:00:00.000' AS DateTime), N'1      ', N'zxsafdafafafsasf                                                                                                                                                                                                                                              ', CAST(N'2017-03-30 12:00:00.000' AS DateTime), CAST(N'2017-03-30 12:00:00.000' AS DateTime), 0, 0, CAST(0.00 AS Decimal(18, 2)), 0, 0, CAST(0.00 AS Decimal(18, 2)), N'                  ', CAST(0.00 AS Decimal(18, 2)), N'          ', N'    ', N'    ', N'    ', N'    ', N'            ', CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), N'                  ', N'                  ', N'1              ', N'', N'1         ', N'                  ', N'                  ', N'                  ', CAST(N'2017-03-30 12:00:00.000' AS DateTime), N'1 ', N'                  ', N'1         ', 1, 1, CAST(N'2017-03-30 12:00:00.000' AS DateTime), N'1           ')
INSERT [dbo].[acfACTt_Actividad] ([ACTid], [ACTactividad]) VALUES (N'01', N'DISTRIBUCION DE ENERGIA       ')
INSERT [dbo].[acfACTt_Actividad] ([ACTid], [ACTactividad]) VALUES (N'02', N'TRANSMISION DE ENERGIA        ')
INSERT [dbo].[acfACTt_Actividad] ([ACTid], [ACTactividad]) VALUES (N'03', N'GENERACION DE ENERGIA         ')
INSERT [dbo].[acfACTt_Actividad] ([ACTid], [ACTactividad]) VALUES (N'1 ', N'Uno')
INSERT [dbo].[acfACTt_Actividad] ([ACTid], [ACTactividad]) VALUES (N'2 ', N'dos')
INSERT [dbo].[acfACTt_Actividad] ([ACTid], [ACTactividad]) VALUES (N'3 ', N'tres')
INSERT [dbo].[acfACTt_Actividad] ([ACTid], [ACTactividad]) VALUES (N'4 ', N'cambio')
INSERT [dbo].[acfAMBt_Ambiente] ([LOCid], [AMBid], [AMBambiente]) VALUES (1, 1, N'TAcna')
INSERT [dbo].[acfCMPt_Componente] ([CMPid], [CMPcomponente], [CMPusoestimado], [CMPconservacion], [CMPobsolecencia], [CMPlimitelegal], [CMPtotalfactores], [CMPfactorusoestimado], [CMPvutilanio], [CMPvutildia]) VALUES (N'1              ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[acfCSTt_Costo] ([CSTid], [CSTdescripcion], [CSTdetalle], [CSTabreviado], [ACTid], [CSTid_costo]) VALUES (N'1   ', NULL, NULL, NULL, N'1 ', NULL)
INSERT [dbo].[acfESTt_Estado] ([ESTid], [ESTestado]) VALUES (1, N'Bueno')
INSERT [dbo].[acfESTt_Estado] ([ESTid], [ESTestado]) VALUES (2, N'Malo')
INSERT [dbo].[acfESTt_Estado] ([ESTid], [ESTestado]) VALUES (3, N'Regular')
INSERT [dbo].[acfESTt_Estado] ([ESTid], [ESTestado]) VALUES (4, N'Excelente')
INSERT [dbo].[acfLOCt_Local] ([LOCid], [LOClocal], [LOCdireccion], [SEGMENT]) VALUES (1, N'1', N'1', NULL)
INSERT [dbo].[acfMARt_Marca] ([MARid], [MARmarca]) VALUES (1, N'SDFSFD')
INSERT [dbo].[acfMVMt_MotivoMovimiento] ([TMVid], [MVMid], [MVMmotivomovimiento], [MVMjustificacion]) VALUES (N'da', N'2 ', N'Empresas importantes                                        ', 12)
INSERT [dbo].[acfSELt_SistemaElectrico] ([SELid], [SELsistemaelectrico], [SEGMENT]) VALUES (N'1     ', NULL, NULL)
INSERT [dbo].[acfSPNt_Supranumero] ([V_T087U_ANLUE], [V_T087U_ANLUE_TXT]) VALUES (N'1           ', N'1                                                                                                   ')
INSERT [dbo].[acfTMVt_TipoMovimiento] ([TMVid], [TMVtipomovimiento]) VALUES (N'da', N'da                                                          ')
INSERT [dbo].[acfUBEt_UbicacionElectrica] ([UBEcodigogis], [UBEobra], [KOSTL], [VNRid], [SELid], [UBEset], [UBEsetetq], [UBEalimentador], [UBEalimentadoretq], [UBEsed], [UBEsedetq], [UBEcircuito], [UBEcircuitoetq], [UBEpuntoi], [UBEpuntoietq], [UBEpuntof], [UBEpuntofetq], [UBEid], [ACFid]) VALUES (1, NULL, N'1         ', N'1      ', N'1     ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[acfUNMt_Unimed] ([UNMid], [UNMunidad], [UNMdetalle]) VALUES (1, N'RWR', N'WERWRWE             ')
INSERT [dbo].[acfVNRt_VNR] ([VNRid], [VNRvnr], [VNRcuenta], [VNRcuentadep]) VALUES (N'1      ', NULL, NULL, NULL)
INSERT [dbo].[bdiCAFpClaseDeActivoFijo] ([ANLKL], [TXK50]) VALUES (N'1       ', NULL)
INSERT [dbo].[bdiCDDpClasesDeDocumento] ([BLART], [LTEXT], [DETdoctipo]) VALUES (N'1 ', NULL, NULL)
INSERT [dbo].[bdiPRVpProveedor] ([LIFNR], [Name1], [Stras], [STCD1]) VALUES (N'1         ', NULL, NULL, NULL)
INSERT [dbo].[bdiSEGpSegmento] ([SEGMENT], [NAME], [id_zona]) VALUES (N'1         ', NULL, NULL)
INSERT [dbo].[bdiSOCpSociedades] ([BUKRS], [BUTXT]) VALUES (N'1   ', NULL)
INSERT [dbo].[bdiXCCpExtraccionSAP_CentroCosto] ([KOSTL], [KTEXT], [KLTXT], [MCDS3]) VALUES (N'1         ', NULL, NULL, NULL)
INSERT [dbo].[bdiXPEpExtraccionSAP_Personal] ([PERNR], [Nachn], [Name2], [Vorna], [DNI], [WERKS], [Persg], [KOSTL]) VALUES (N'1       ', NULL, NULL, NULL, NULL, NULL, NULL, N'1         ')
ALTER TABLE [dbo].[acfACFp_Activo_Fijo]  WITH CHECK ADD FOREIGN KEY([AMBid])
REFERENCES [dbo].[acfAMBt_Ambiente] ([AMBid])
GO
ALTER TABLE [dbo].[acfACFp_Activo_Fijo]  WITH CHECK ADD FOREIGN KEY([ANLKL])
REFERENCES [dbo].[bdiCAFpClaseDeActivoFijo] ([ANLKL])
GO
ALTER TABLE [dbo].[acfACFp_Activo_Fijo]  WITH CHECK ADD FOREIGN KEY([BLART])
REFERENCES [dbo].[bdiCDDpClasesDeDocumento] ([BLART])
GO
ALTER TABLE [dbo].[acfACFp_Activo_Fijo]  WITH CHECK ADD FOREIGN KEY([BUKRS])
REFERENCES [dbo].[bdiSOCpSociedades] ([BUKRS])
GO
ALTER TABLE [dbo].[acfACFp_Activo_Fijo]  WITH CHECK ADD FOREIGN KEY([CMPid])
REFERENCES [dbo].[acfCMPt_Componente] ([CMPid])
GO
ALTER TABLE [dbo].[acfACFp_Activo_Fijo]  WITH CHECK ADD FOREIGN KEY([CSTid])
REFERENCES [dbo].[acfCSTt_Costo] ([CSTid])
GO
ALTER TABLE [dbo].[acfACFp_Activo_Fijo]  WITH CHECK ADD FOREIGN KEY([KOSTL])
REFERENCES [dbo].[bdiXCCpExtraccionSAP_CentroCosto] ([KOSTL])
GO
ALTER TABLE [dbo].[acfACFp_Activo_Fijo]  WITH CHECK ADD FOREIGN KEY([LIFNR])
REFERENCES [dbo].[bdiPRVpProveedor] ([LIFNR])
GO
ALTER TABLE [dbo].[acfACFp_Activo_Fijo]  WITH CHECK ADD FOREIGN KEY([MVMid])
REFERENCES [dbo].[acfMVMt_MotivoMovimiento] ([MVMid])
GO
ALTER TABLE [dbo].[acfACFp_Activo_Fijo]  WITH CHECK ADD FOREIGN KEY([PERNR])
REFERENCES [dbo].[bdiXPEpExtraccionSAP_Personal] ([PERNR])
GO
ALTER TABLE [dbo].[acfACFp_Activo_Fijo]  WITH CHECK ADD FOREIGN KEY([SEGMENT])
REFERENCES [dbo].[bdiSEGpSegmento] ([SEGMENT])
GO
ALTER TABLE [dbo].[acfACFp_Activo_Fijo]  WITH CHECK ADD FOREIGN KEY([VNRid])
REFERENCES [dbo].[acfVNRt_VNR] ([VNRid])
GO
ALTER TABLE [dbo].[acfACFp_Activo_Fijo]  WITH CHECK ADD  CONSTRAINT [R_62] FOREIGN KEY([UBEid])
REFERENCES [dbo].[acfUBEt_UbicacionElectrica] ([UBEid])
GO
ALTER TABLE [dbo].[acfACFp_Activo_Fijo] CHECK CONSTRAINT [R_62]
GO
ALTER TABLE [dbo].[acfACFp_Activo_Fijo]  WITH CHECK ADD  CONSTRAINT [R_82] FOREIGN KEY([V_T087U_ANLUE])
REFERENCES [dbo].[acfSPNt_Supranumero] ([V_T087U_ANLUE])
GO
ALTER TABLE [dbo].[acfACFp_Activo_Fijo] CHECK CONSTRAINT [R_82]
GO
ALTER TABLE [dbo].[acfAMBt_Ambiente]  WITH CHECK ADD FOREIGN KEY([LOCid])
REFERENCES [dbo].[acfLOCt_Local] ([LOCid])
GO
ALTER TABLE [dbo].[acfCRSt_Caracteristicas]  WITH CHECK ADD FOREIGN KEY([ACFid])
REFERENCES [dbo].[acfACFp_Activo_Fijo] ([ACFid])
GO
ALTER TABLE [dbo].[acfCRSt_Caracteristicas]  WITH CHECK ADD FOREIGN KEY([ESTid])
REFERENCES [dbo].[acfESTt_Estado] ([ESTid])
GO
ALTER TABLE [dbo].[acfCRSt_Caracteristicas]  WITH CHECK ADD FOREIGN KEY([MARid])
REFERENCES [dbo].[acfMARt_Marca] ([MARid])
GO
ALTER TABLE [dbo].[acfCRSt_Caracteristicas]  WITH CHECK ADD FOREIGN KEY([MATid])
REFERENCES [dbo].[acfMATt_Material] ([MATid])
GO
ALTER TABLE [dbo].[acfCRSt_Caracteristicas]  WITH CHECK ADD FOREIGN KEY([UNMid])
REFERENCES [dbo].[acfUNMt_Unimed] ([UNMid])
GO
ALTER TABLE [dbo].[acfCSTt_Costo]  WITH CHECK ADD FOREIGN KEY([ACTid])
REFERENCES [dbo].[acfACTt_Actividad] ([ACTid])
GO
ALTER TABLE [dbo].[acfDDFt_detalledediferido]  WITH CHECK ADD FOREIGN KEY([PDFcodigo])
REFERENCES [dbo].[acfPDFt_procesodiferido] ([PDFcodigo])
GO
ALTER TABLE [dbo].[acfDRTt_detallereparotributario]  WITH CHECK ADD FOREIGN KEY([RTRcodigo])
REFERENCES [dbo].[acfRTRt_Reparotributario] ([RTRcodigo])
GO
ALTER TABLE [dbo].[acfEDIt_edificaciondetalle]  WITH CHECK ADD FOREIGN KEY([RVAcodigo])
REFERENCES [dbo].[acfRVAt_registrovaluacion] ([RVAcodigo])
GO
ALTER TABLE [dbo].[acfEDIt_edificaciondetalle]  WITH CHECK ADD  CONSTRAINT [R_90] FOREIGN KEY([ACFid])
REFERENCES [dbo].[acfACFp_Activo_Fijo] ([ACFid])
GO
ALTER TABLE [dbo].[acfEDIt_edificaciondetalle] CHECK CONSTRAINT [R_90]
GO
ALTER TABLE [dbo].[acfICRt_Inventariocaracteristicas]  WITH CHECK ADD FOREIGN KEY([MARid])
REFERENCES [dbo].[acfMARt_Marca] ([MARid])
GO
ALTER TABLE [dbo].[acfICRt_Inventariocaracteristicas]  WITH CHECK ADD FOREIGN KEY([MATid])
REFERENCES [dbo].[acfMATt_Material] ([MATid])
GO
ALTER TABLE [dbo].[acfICRt_Inventariocaracteristicas]  WITH CHECK ADD FOREIGN KEY([UNMid])
REFERENCES [dbo].[acfUNMt_Unimed] ([UNMid])
GO
ALTER TABLE [dbo].[acfICRt_Inventariocaracteristicas]  WITH CHECK ADD FOREIGN KEY([INVid], [ACFid])
REFERENCES [dbo].[acfINBt_Inventariobienes] ([INVid], [ACFid])
GO
ALTER TABLE [dbo].[acfICRt_Inventariocaracteristicas]  WITH CHECK ADD  CONSTRAINT [R_79] FOREIGN KEY([ESTid])
REFERENCES [dbo].[acfESTt_Estado] ([ESTid])
GO
ALTER TABLE [dbo].[acfICRt_Inventariocaracteristicas] CHECK CONSTRAINT [R_79]
GO
ALTER TABLE [dbo].[acfINBt_Inventariobienes]  WITH CHECK ADD FOREIGN KEY([ACFid])
REFERENCES [dbo].[acfACFp_Activo_Fijo] ([ACFid])
GO
ALTER TABLE [dbo].[acfINBt_Inventariobienes]  WITH CHECK ADD FOREIGN KEY([ACTid])
REFERENCES [dbo].[acfACTt_Actividad] ([ACTid])
GO
ALTER TABLE [dbo].[acfINBt_Inventariobienes]  WITH CHECK ADD FOREIGN KEY([AMBid])
REFERENCES [dbo].[acfAMBt_Ambiente] ([AMBid])
GO
ALTER TABLE [dbo].[acfINBt_Inventariobienes]  WITH CHECK ADD FOREIGN KEY([ANLKL])
REFERENCES [dbo].[bdiCAFpClaseDeActivoFijo] ([ANLKL])
GO
ALTER TABLE [dbo].[acfINBt_Inventariobienes]  WITH CHECK ADD FOREIGN KEY([BLART])
REFERENCES [dbo].[bdiCDDpClasesDeDocumento] ([BLART])
GO
ALTER TABLE [dbo].[acfINBt_Inventariobienes]  WITH CHECK ADD FOREIGN KEY([BUKRS])
REFERENCES [dbo].[bdiSOCpSociedades] ([BUKRS])
GO
ALTER TABLE [dbo].[acfINBt_Inventariobienes]  WITH CHECK ADD FOREIGN KEY([CSTid])
REFERENCES [dbo].[acfCSTt_Costo] ([CSTid])
GO
ALTER TABLE [dbo].[acfINBt_Inventariobienes]  WITH CHECK ADD FOREIGN KEY([INVid])
REFERENCES [dbo].[acfINVp_Inventario] ([INVid])
GO
ALTER TABLE [dbo].[acfINBt_Inventariobienes]  WITH CHECK ADD FOREIGN KEY([KOSTL])
REFERENCES [dbo].[bdiXCCpExtraccionSAP_CentroCosto] ([KOSTL])
GO
ALTER TABLE [dbo].[acfINBt_Inventariobienes]  WITH CHECK ADD FOREIGN KEY([LIFNR])
REFERENCES [dbo].[bdiPRVpProveedor] ([LIFNR])
GO
ALTER TABLE [dbo].[acfINBt_Inventariobienes]  WITH CHECK ADD FOREIGN KEY([PERNR])
REFERENCES [dbo].[bdiXPEpExtraccionSAP_Personal] ([PERNR])
GO
ALTER TABLE [dbo].[acfINBt_Inventariobienes]  WITH CHECK ADD FOREIGN KEY([SEGMENT])
REFERENCES [dbo].[bdiSEGpSegmento] ([SEGMENT])
GO
ALTER TABLE [dbo].[acfINBt_Inventariobienes]  WITH CHECK ADD FOREIGN KEY([UBEid])
REFERENCES [dbo].[acfUBEt_UbicacionElectrica] ([UBEid])
GO
ALTER TABLE [dbo].[acfINBt_Inventariobienes]  WITH CHECK ADD FOREIGN KEY([VNRid])
REFERENCES [dbo].[acfVNRt_VNR] ([VNRid])
GO
ALTER TABLE [dbo].[acfLOCt_Local]  WITH CHECK ADD FOREIGN KEY([SEGMENT])
REFERENCES [dbo].[bdiSEGpSegmento] ([SEGMENT])
GO
ALTER TABLE [dbo].[acfMEQt_maquinariaequipo]  WITH CHECK ADD FOREIGN KEY([RVAcodigo])
REFERENCES [dbo].[acfRVAt_registrovaluacion] ([RVAcodigo])
GO
ALTER TABLE [dbo].[acfMVAt_MovimientoActivo]  WITH CHECK ADD FOREIGN KEY([ACFid])
REFERENCES [dbo].[acfACFp_Activo_Fijo] ([ACFid])
GO
ALTER TABLE [dbo].[acfMVAt_MovimientoActivo]  WITH CHECK ADD FOREIGN KEY([AMBid])
REFERENCES [dbo].[acfAMBt_Ambiente] ([AMBid])
GO
ALTER TABLE [dbo].[acfMVAt_MovimientoActivo]  WITH CHECK ADD FOREIGN KEY([ANLKL])
REFERENCES [dbo].[bdiCAFpClaseDeActivoFijo] ([ANLKL])
GO
ALTER TABLE [dbo].[acfMVAt_MovimientoActivo]  WITH CHECK ADD FOREIGN KEY([BLART])
REFERENCES [dbo].[bdiCDDpClasesDeDocumento] ([BLART])
GO
ALTER TABLE [dbo].[acfMVAt_MovimientoActivo]  WITH CHECK ADD FOREIGN KEY([BUKRS])
REFERENCES [dbo].[bdiSOCpSociedades] ([BUKRS])
GO
ALTER TABLE [dbo].[acfMVAt_MovimientoActivo]  WITH CHECK ADD FOREIGN KEY([CSTid])
REFERENCES [dbo].[acfCSTt_Costo] ([CSTid])
GO
ALTER TABLE [dbo].[acfMVAt_MovimientoActivo]  WITH CHECK ADD FOREIGN KEY([KOSTL])
REFERENCES [dbo].[bdiXCCpExtraccionSAP_CentroCosto] ([KOSTL])
GO
ALTER TABLE [dbo].[acfMVAt_MovimientoActivo]  WITH CHECK ADD FOREIGN KEY([LIFNR])
REFERENCES [dbo].[bdiPRVpProveedor] ([LIFNR])
GO
ALTER TABLE [dbo].[acfMVAt_MovimientoActivo]  WITH CHECK ADD FOREIGN KEY([MVMid])
REFERENCES [dbo].[acfMVMt_MotivoMovimiento] ([MVMid])
GO
ALTER TABLE [dbo].[acfMVAt_MovimientoActivo]  WITH CHECK ADD FOREIGN KEY([PERNR])
REFERENCES [dbo].[bdiXPEpExtraccionSAP_Personal] ([PERNR])
GO
ALTER TABLE [dbo].[acfMVAt_MovimientoActivo]  WITH CHECK ADD FOREIGN KEY([SEGMENT])
REFERENCES [dbo].[bdiSEGpSegmento] ([SEGMENT])
GO
ALTER TABLE [dbo].[acfMVAt_MovimientoActivo]  WITH CHECK ADD FOREIGN KEY([TMVid])
REFERENCES [dbo].[acfTMVt_TipoMovimiento] ([TMVid])
GO
ALTER TABLE [dbo].[acfMVAt_MovimientoActivo]  WITH CHECK ADD FOREIGN KEY([UBEid])
REFERENCES [dbo].[acfUBEt_UbicacionElectrica] ([UBEid])
GO
ALTER TABLE [dbo].[acfMVAt_MovimientoActivo]  WITH CHECK ADD FOREIGN KEY([VNRid])
REFERENCES [dbo].[acfVNRt_VNR] ([VNRid])
GO
ALTER TABLE [dbo].[acfMVAt_MovimientoActivo]  WITH CHECK ADD  CONSTRAINT [R_52] FOREIGN KEY([CMPid])
REFERENCES [dbo].[acfCMPt_Componente] ([CMPid])
GO
ALTER TABLE [dbo].[acfMVAt_MovimientoActivo] CHECK CONSTRAINT [R_52]
GO
ALTER TABLE [dbo].[acfMVMt_MotivoMovimiento]  WITH CHECK ADD FOREIGN KEY([TMVid])
REFERENCES [dbo].[acfTMVt_TipoMovimiento] ([TMVid])
GO
ALTER TABLE [dbo].[acfSELt_SistemaElectrico]  WITH CHECK ADD FOREIGN KEY([SEGMENT])
REFERENCES [dbo].[bdiSEGpSegmento] ([SEGMENT])
GO
ALTER TABLE [dbo].[acfTRNt_terrenodetalle]  WITH CHECK ADD FOREIGN KEY([RVAcodigo])
REFERENCES [dbo].[acfRVAt_registrovaluacion] ([RVAcodigo])
GO
ALTER TABLE [dbo].[acfUBEt_UbicacionElectrica]  WITH CHECK ADD FOREIGN KEY([KOSTL])
REFERENCES [dbo].[bdiXCCpExtraccionSAP_CentroCosto] ([KOSTL])
GO
ALTER TABLE [dbo].[acfUBEt_UbicacionElectrica]  WITH CHECK ADD FOREIGN KEY([SELid])
REFERENCES [dbo].[acfSELt_SistemaElectrico] ([SELid])
GO
ALTER TABLE [dbo].[acfUBEt_UbicacionElectrica]  WITH CHECK ADD FOREIGN KEY([VNRid])
REFERENCES [dbo].[acfVNRt_VNR] ([VNRid])
GO
ALTER TABLE [dbo].[acfUBEt_UbicacionElectrica]  WITH CHECK ADD  CONSTRAINT [R_85] FOREIGN KEY([ACFid])
REFERENCES [dbo].[acfACFp_Activo_Fijo] ([ACFid])
GO
ALTER TABLE [dbo].[acfUBEt_UbicacionElectrica] CHECK CONSTRAINT [R_85]
GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfACFp_Activo_Fijo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfACFp_Activo_Fijo]
@iACFid int
AS
-- selects all rows from the table
SELECT 
[ACFid]
,[BUKRS]
,[SEGMENT]
,[ANLKL]
,[PERNR]
,[CSTid]
,[MVMid]
,[ACFfmovimiento]
,[VNRid]
,[ACFdescripcion]
,[ACFfincorporacion]
,[ACFfcapitalizacion]
,[ACFvutiltribanio]
,[ACFvutiltribdia]
,[ACFvalortrib]
,[ACFvutilniifanio]
,[ACFvutilniifdia]
,[ACFvalorniif]
,[ACFdepacutrib]
,[ACFdepacuniif]
,[ACFobra]
,[ACFord41]
,[ACFord42]
,[ACFord43]
,[ACFord44]
,[ACFanlue]
,[ACFfactortrib]
,[ACFfactorniif]
,[ACFcuenta]
,[ACFcuentadep]
,[CMPid]
,[ACFobservacion]
,[LIFNR]
,[ACFnotaingreso]
,[ACFfechanotaingreso]
,[ACFordencompra]
,[ACFfechaordencompra]
,[BLART]
,[ACFcomprobante]
,[KOSTL]
,[AMBid]
,[UBEid]
,[ACFfechacomprobante]
,[V_T087U_ANLUE]
FROM [dbo].[acfACFp_Activo_Fijo]
WHERE 
[ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfACTt_Actividad]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfACTt_Actividad]
@sACTid char(2)
AS
-- selects all rows from the table
SELECT 
[ACTid]
,[ACTactividad]
FROM [dbo].[acfACTt_Actividad]
WHERE 
[ACTid] = @sACTid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfAMBt_Ambiente]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////

-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfAMBt_Ambiente]
@iAMBid int
AS
-- selects all rows from the table
SELECT 
[LOCid]
,[AMBid]
,[AMBambiente]
FROM [dbo].[acfAMBt_Ambiente]
WHERE 
[AMBid] = @iAMBid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfCMPt_Componente]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////

-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfCMPt_Componente]
@sCMPid char(15)
AS
-- selects all rows from the table
SELECT 
[CMPid]
,[CMPcomponente]
,[CMPusoestimado]
,[CMPconservacion]
,[CMPobsolecencia]
,[CMPlimitelegal]
,[CMPtotalfactores]
,[CMPfactorusoestimado]
,[CMPvutilanio]
,[CMPvutildia]
FROM [dbo].[acfCMPt_Componente]
WHERE 
[CMPid] = @sCMPid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfCRSt_Caracteristicas]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfCRSt_Caracteristicas]
@iACFid int
AS
-- selects all rows from the table
SELECT 
[ACFid]
,[MARid]
,[ESTid]
,[CRSserie]
,[CRSmodelo]
,[CRScolor]
,[MATid]
,[CRStipo]
,[UNMid]
,[CRScantidad]
,[CRSvehplaca]
,[CRSvehexpediente]
,[CRSvehinscripcion]
,[CRSvehclase]
,[CRSvehcombustible]
,[CRSvehejes]
,[CRSvehpasajeros]
,[CRSvehasientos]
,[CRSvehpesoseco]
,[CRSvehcargautil]
,[CRSaltura]
,[CRSancho]
,[CRSvelocidad]
,[CRSresolucion]
,[CRScapacidad]
,[CRSpotencia]
,[CRSvnominal]
,[CRSventrada]
,[CRSvsalida]
,[CRSfrecuencia]
,[CRStemperatura]
,[CRSprocesador]
,[CRSpuertos]
,[CRSutmx]
,[CRSutmy]
,[CRSesfuerzopunta]
,[CRScajaderivadora]
,[CRSalquilacable]
,[CRScentropoblado]
,[CRSurbanizacion]
,[CRScalle]
,[CRSlote]
,[CRSnumeropredio]
,[CRSdepartamento]
,[CRSinterior]
,[CRScarretera]
,[CRSkilometro]
,[CRSnombrepredio]
,[CRSpisospredio]
,[CRSpartidapredio]
,[CRStomopredio]
,[CRSfolioinipredio]
,[CRSfoliofinpredio]
,[CRSasientopredio]
,[CRSfinscpredio]
,[CRSficharegistral]
,[CRSareaconstruida]
,[CRSperimetro]
,[CRSusopredio]
,[CRSvalorautovaluo]
,[CRScodigoluz]
,[CRScodigoagua]
,[CRSfadqpredio]
,[CRSobservacion]
FROM [dbo].[acfCRSt_Caracteristicas]
WHERE 
[ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfCSTt_Costo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfCSTt_Costo]
@sCSTid char(4)
AS
-- selects all rows from the table
SELECT 
[CSTid]
,[CSTdescripcion]
,[CSTdetalle]
,[CSTabreviado]
,[ACTid]
,[CSTid_costo]
FROM [dbo].[acfCSTt_Costo]
WHERE 
[CSTid] = @sCSTid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfDDFt_detalledediferido]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfDDFt_detalledediferido]
@iPDFcodigo int
AS
-- selects all rows from the table
SELECT 
[ACFcuenta]
,[INVZU]
,[TXT50]
,[ACFvalorniif]
,[ACFdepniif]
,[ACFPPENiif]
,[ACFvalortrib]
,[ACFDepTrib]
,[ACFpplir]
,[ACFdeducible]
,[ACFimponible]
,[ACFirda]
,[ACFirdp]
,[ACFculdep]
,[ACFrecper1]
,[ACFrecper2]
,[ACFrecper3]
,[ACFrecper4]
,[ACFtotales]
,[ACFirdaA]
,[ACFirdpA]
,[ACFirdaF]
,[ACFirdpF]
,[PDFcodigo]
FROM [dbo].[acfDDFt_detalledediferido]
WHERE 
[PDFcodigo] = @iPDFcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfDRTt_detallereparotributario]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////

-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfDRTt_detallereparotributario]
@iRTRcodigo int
AS
-- selects all rows from the table
SELECT 
[RTRcodigo]
,[ACFcuenta]
,[INVZU]
,[TXT50]
,[ACFfactorniif]
,[ACFvutilniif]
,[ACFfactorTrib]
,[ACFvutiltrib]
,[ACFvalorniif]
,[ACFdepAcuniif]
,[ACFNiifNeto]
,[ACFDepNiifPer]
,[ACFvalortrib]
,[ACFdepacutrib]
,[ACFlirneto]
,[ACFdeptlirper]
,[ACFadiciones]
,[ACFdeducciones]
,[ACFneto]
FROM [dbo].[acfDRTt_detallereparotributario]
WHERE 
[RTRcodigo] = @iRTRcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfEDIt_edificaciondetalle]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////

-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfEDIt_edificaciondetalle]
@sRVAcodigo char(18)
AS
-- selects all rows from the table
SELECT 
[ACFid]
,[EDIzona]
,[EDIdescripicion]
,[EDIfactorasignado]
,[ACFValorIR]
,[ACFTC]
,[ACFCRC]
,[ACFDEPCRC]
,[ACFNETOCRC]
,[ACFvalorniif]
,[ACFdepacuniif]
,[ACFNETOPCGA]
,[ACFDIFCosto]
,[ACFINCCosto]
,[ACFDISCosto]
,[ACFDIFDEP]
,[ACFINCDep]
,[ACFDISDep]
,[ACFDIFNeta]
,[ACFSumDifDed]
,[ACFSumDifGra]
,[ACFSumACTDif]
,[ACFSumPasDif]
,[ACFcuenta]
,[LOClocal]
,[RVAcodigo]
FROM [dbo].[acfEDIt_edificaciondetalle]
WHERE 
[RVAcodigo] = @sRVAcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfESTt_Estado]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////



-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfESTt_Estado]
@iESTid int
AS
-- selects all rows from the table
SELECT 
[ESTid]
,[ESTestado]
FROM [dbo].[acfESTt_Estado]
WHERE 
[ESTid] = @iESTid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfICRt_Inventariocaracteristicas]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////



-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfICRt_Inventariocaracteristicas]
@iINVid int
, @iACFid int
AS
-- selects all rows from the table
SELECT 
[MARid]
,[ESTid]
,[CRSserie]
,[CRSmodelo]
,[CRScolor]
,[MATid]
,[CRStipo]
,[UNMid]
,[CRScantidad]
,[CRSvehplaca]
,[CRSvehexpediente]
,[CRSvehinscripcion]
,[CRSvehclase]
,[CRSvehcombustible]
,[CRSvehejes]
,[CRSvehpasajeros]
,[CRSvehasientos]
,[CRSvehpesoseco]
,[CRSvehcargautil]
,[CRSaltura]
,[CRSancho]
,[CRSvelocidad]
,[CRSresolucion]
,[CRScapacidad]
,[CRSpotencia]
,[CRSvnominal]
,[CRSventrada]
,[CRSvsalida]
,[CRSfrecuencia]
,[CRStemperatura]
,[CRSprocesador]
,[CRSpuertos]
,[CRSutmx]
,[CRSutmy]
,[CRSesfuerzopunta]
,[CRScajaderivadora]
,[CRSalquilacable]
,[CRScentropoblado]
,[CRSurbanizacion]
,[CRScalle]
,[CRSlote]
,[CRSnumeropredio]
,[CRSdepartamento]
,[CRSinterior]
,[CRScarretera]
,[CRSkilometro]
,[CRSnombrepredio]
,[CRSpisospredio]
,[CRSpartidapredio]
,[CRStomopredio]
,[CRSfolioinipredio]
,[CRSfoliofinpredio]
,[CRSasientopredio]
,[CRSfinscpredio]
,[CRSficharegistral]
,[CRSareaconstruida]
,[CRSperimetro]
,[CRSusopredio]
,[CRSvalorautovaluo]
,[CRScodigoluz]
,[CRScodigoagua]
,[CRSfadqpredio]
,[CRSobservacion]
,[INVid]
,[ACFid]
FROM [dbo].[acfICRt_Inventariocaracteristicas]
WHERE 
[INVid] = @iINVid
AND [ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfINBt_Inventariobienes]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfINBt_Inventariobienes]
@iINVid int
, @iACFid int
AS
-- selects all rows from the table
SELECT 
[INVid]
,[ACFid]
,[ACFactivo]
,[BUKRS]
,[SEGMENT]
,[KOSTL]
,[ANLKL]
,[PERNR]
,[ACTid]
,[CSTid]
,[VNRid]
,[ACFfincorporacion]
,[ACFfcapitalizacion]
,[ACFvutiltribanio]
,[ACFvutiltribdia]
,[ACFvalortrib]
,[ACFfactortrib]
,[ACFdepacutrib]
,[ACfvutilniifanio]
,[ACFvutilniifdia]
,[ACFvalorniif]
,[ACFfactorniif]
,[ACFdepacuniif]
,[ACFobra]
,[ACFord41]
,[ACFord42]
,[ACFord43]
,[ACFord44]
,[ACFanlue]
,[ACFcuenta]
,[ACFcuentadep]
,[LIFNR]
,[BLART]
,[ACFcomprobante]
,[ACFnotaingreso]
,[ACFfechanotaingreso]
,[ACFordencompra]
,[ACFobservacion]
,[AMBid]
,[UBEid]
,[ACFfechacomprobante]
,[ACFfechaordencompra]
FROM [dbo].[acfINBt_Inventariobienes]
WHERE 
[INVid] = @iINVid
AND [ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfINVp_Inventario]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfINVp_Inventario]
@iINVid int
AS
-- selects all rows from the table
SELECT 
[INVid]
,[INVdetalle]
,[INVinicio]
,[INVcierre]
,[INVactivo]
FROM [dbo].[acfINVp_Inventario]
WHERE 
[INVid] = @iINVid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfLOCt_Local]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfLOCt_Local]
@iLOCid int
AS
-- selects all rows from the table
SELECT 
[LOCid]
,[LOClocal]
,[LOCdireccion]
,[SEGMENT]
FROM [dbo].[acfLOCt_Local]
WHERE 
[LOCid] = @iLOCid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfMARt_Marca]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////

-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfMARt_Marca]
@iMARid int
AS
-- selects all rows from the table
SELECT 
[MARid]
,[MARmarca]
FROM [dbo].[acfMARt_Marca]
WHERE 
[MARid] = @iMARid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfMATt_Material]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfMATt_Material]
@iMATid int
AS
-- selects all rows from the table
SELECT 
[MATid]
,[MATmaterial]
,[MATabreviado]
FROM [dbo].[acfMATt_Material]
WHERE 
[MATid] = @iMATid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfMEQt_maquinariaequipo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfMEQt_maquinariaequipo]
@sRVAcodigo char(18)
AS
-- selects all rows from the table
SELECT 
[MEQvnrtot]
,[MEQcantidad]
,[MEQaccffecinc]
,[MEQabreviatura]
,[MEQopiniontecnica]
,[MEQctacontable]
,[MEQniif]
,[MEQvrident]
,[MEQprovdes]
,[MEQcostorepcor]
,[MEQfactorinst]
,[MEQvalorresi]
,[MEQedadact]
,[MEQdeptas]
,[MEQvalorref]
,[MEQvalref2]
,[MEQvsm]
,[MEQestado]
,[MEQvidautil]
,[MEQvidautmax]
,[MEQedadtec]
,[MEQdepreciacion]
,[MEQdep2012]
,[MEQcostocorr]
,[MEQvaloractivo]
,[MEQdepre]
,[MEQtasair]
,[MEQimpdife]
,[MEQdifneta]
,[MEQvalorneto]
,[MEQvalact]
,[MEQcostotcorr]
,[MEQdepacuniif]
,[MEQcrcnet]
,[MEQvalnet]
,[MEQdiferenneta]
,[MEQvalornetolib]
,[MEQdepacumtrib]
,[MEQcostohistorico]
,[RVAcodigo]
FROM [dbo].[acfMEQt_maquinariaequipo]
WHERE 
[RVAcodigo] = @sRVAcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfMVAt_MovimientoActivo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////




-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfMVAt_MovimientoActivo]
@iMVAid int
, @iACFid int
AS
-- selects all rows from the table
SELECT 
[MVAid]
,[ACFid]
,[ACFactivo]
,[BUKRS]
,[SEGMENT]
,[KOSTL]
,[ANLKL]
,[PERNR]
,[CSTid]
,[TMVid]
,[MVMid]
,[ACFfmovimiento]
,[VNRid]
,[ACFfincorporacion]
,[ACFfcapitalizacion]
,[ACFvutiltribanio]
,[ACFvutiltribdia]
,[ACFvalortrib]
,[ACFfactortrib]
,[ACFdepacutrib]
,[ACFvutilniifanio]
,[ACFvutilniifdia]
,[ACFvalorniif]
,[ACFfactorniif]
,[ACFdepacuniif]
,[ACFobra]
,[ACFord41]
,[ACFord42]
,[ACFord43]
,[ACFord44]
,[ACFanlue]
,[ACFcuenta]
,[ACFcuentadep]
,[ACFcomprobante]
,[ACFnotaingreso]
,[ACFfechanotaingreso]
,[ACFordencompra]
,[ACFfechaordencompra]
,[ACFobservacion]
,[LIFNR]
,[BLART]
,[AMBid]
,[CMPid]
,[UBEid]
FROM [dbo].[acfMVAt_MovimientoActivo]
WHERE 
[MVAid] = @iMVAid
AND [ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfMVMt_MotivoMovimiento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////

-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfMVMt_MotivoMovimiento]
@sMVMid char(2)
AS
-- selects all rows from the table
SELECT 
[TMVid]
,[MVMid]
,[MVMmotivomovimiento]
,[MVMjustificacion]
FROM [dbo].[acfMVMt_MotivoMovimiento]
WHERE 
[MVMid] = @sMVMid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfPDFt_procesodiferido]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfPDFt_procesodiferido]
@iPDFcodigo int
AS
-- selects all rows from the table
SELECT 
[PDFcodigo]
,[PDFperiodo]
,[PDFfecha]
,[PDFreponsable]
,[PDFestado]
FROM [dbo].[acfPDFt_procesodiferido]
WHERE 
[PDFcodigo] = @iPDFcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfRTRt_Reparotributario]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////



-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfRTRt_Reparotributario]
@iRTRcodigo int
AS
-- selects all rows from the table
SELECT 
[RTRperiodo]
,[RTRfecha]
,[RTRresponsable]
,[RTRestado]
,[RTRcodigo]
FROM [dbo].[acfRTRt_Reparotributario]
WHERE 
[RTRcodigo] = @iRTRcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfRVAt_registrovaluacion]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////



-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfRVAt_registrovaluacion]
@sRVAcodigo char(18)
AS
-- selects all rows from the table
SELECT 
[RVAcodigo]
,[RVAperiodo]
,[RVAfecha]
,[RVAresponsable]
,[RVRestado]
FROM [dbo].[acfRVAt_registrovaluacion]
WHERE 
[RVAcodigo] = @sRVAcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfSELt_SistemaElectrico]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfSELt_SistemaElectrico]
@sSELid char(6)
AS
-- selects all rows from the table
SELECT 
[SELid]
,[SELsistemaelectrico]
,[SEGMENT]
FROM [dbo].[acfSELt_SistemaElectrico]
WHERE 
[SELid] = @sSELid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfSPNt_Supranumero]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////



-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfSPNt_Supranumero]
@sV_T087U_ANLUE char(12)
AS
-- selects all rows from the table
SELECT 
[V_T087U_ANLUE]
,[V_T087U_ANLUE_TXT]
FROM [dbo].[acfSPNt_Supranumero]
WHERE 
[V_T087U_ANLUE] = @sV_T087U_ANLUE

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfTMVt_TipoMovimiento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfTMVt_TipoMovimiento]
@sTMVid char(2)
AS
-- selects all rows from the table
SELECT 
[TMVid]
,[TMVtipomovimiento]
FROM [dbo].[acfTMVt_TipoMovimiento]
WHERE 
[TMVid] = @sTMVid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfTRNt_terrenodetalle]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfTRNt_terrenodetalle]
@sRVAcodigo char(18)
AS
-- selects all rows from the table
SELECT 
[CRSnombrepredio]
,[CRScentropoblado]
,[CRSdepartamento]
,[CRSinterior]
,[CRScarretera]
,[CRSkilometro]
,[ACFArea]
,[ACFvalor]
,[ACFtc]
,[ACFvalorSoles]
,[ACFValorDolar]
,[ACFValorAnt0]
,[ACFVutilniff]
,[ACFNetopcga]
,[ACFvalorATri]
,[ACFid]
,[ACFdiferencia]
,[ACFDifTemDedu]
,[ACFDifTemGrav]
,[ACFTasaIR]
,[ACFSaldoDeducible]
,[ACFSaldoGravable]
,[RVAcodigo]
FROM [dbo].[acfTRNt_terrenodetalle]
WHERE 
[RVAcodigo] = @sRVAcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfUBEt_UbicacionElectrica]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfUBEt_UbicacionElectrica]
@iUBEid int
AS
-- selects all rows from the table
SELECT 
[UBEcodigogis]
,[UBEobra]
,[KOSTL]
,[VNRid]
,[SELid]
,[UBEset]
,[UBEsetetq]
,[UBEalimentador]
,[UBEalimentadoretq]
,[UBEsed]
,[UBEsedetq]
,[UBEcircuito]
,[UBEcircuitoetq]
,[UBEpuntoi]
,[UBEpuntoietq]
,[UBEpuntof]
,[UBEpuntofetq]
,[UBEid]
,[ACFid]
FROM [dbo].[acfUBEt_UbicacionElectrica]
WHERE 
[UBEid] = @iUBEid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfUNMt_Unimed]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////



-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfUNMt_Unimed]
@iUNMid int
AS
-- selects all rows from the table
SELECT 
[UNMid]
,[UNMunidad]
,[UNMdetalle]
FROM [dbo].[acfUNMt_Unimed]
WHERE 
[UNMid] = @iUNMid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfVNRt_VNR]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_acfVNRt_VNR]
@sVNRid char(7)
AS
-- selects all rows from the table
SELECT 
[VNRid]
,[VNRvnr]
,[VNRcuenta]
,[VNRcuentadep]
FROM [dbo].[acfVNRt_VNR]
WHERE 
[VNRid] = @sVNRid

GO
/****** Object:  StoredProcedure [dbo].[usp_B_bdiCAFpClaseDeActivoFijo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_bdiCAFpClaseDeActivoFijo]
@sANLKL char(8)
AS
-- selects all rows from the table
SELECT 
[ANLKL]
,[TXK50]
FROM [dbo].[bdiCAFpClaseDeActivoFijo]
WHERE 
[ANLKL] = @sANLKL

GO
/****** Object:  StoredProcedure [dbo].[usp_B_bdiCDDpClasesDeDocumento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////



-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_bdiCDDpClasesDeDocumento]
@sBLART char(2)
AS
-- selects all rows from the table
SELECT 
[BLART]
,[LTEXT]
,[DETdoctipo]
FROM [dbo].[bdiCDDpClasesDeDocumento]
WHERE 
[BLART] = @sBLART

GO
/****** Object:  StoredProcedure [dbo].[usp_B_bdiPRVpProveedor]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////



-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_bdiPRVpProveedor]
@sLIFNR char(10)
AS
-- selects all rows from the table
SELECT 
[LIFNR]
,[Name1]
,[Stras]
,[STCD1]
FROM [dbo].[bdiPRVpProveedor]
WHERE 
[LIFNR] = @sLIFNR

GO
/****** Object:  StoredProcedure [dbo].[usp_B_bdiSEGpSegmento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////



-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_bdiSEGpSegmento]
@sSEGMENT char(10)
AS
-- selects all rows from the table
SELECT 
[SEGMENT]
,[NAME]
,[id_zona]
FROM [dbo].[bdiSEGpSegmento]
WHERE 
[SEGMENT] = @sSEGMENT

GO
/****** Object:  StoredProcedure [dbo].[usp_B_bdiSOCpSociedades]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////




-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_bdiSOCpSociedades]
@sBUKRS char(4)
AS
-- selects all rows from the table
SELECT 
[BUKRS]
,[BUTXT]
FROM [dbo].[bdiSOCpSociedades]
WHERE 
[BUKRS] = @sBUKRS

GO
/****** Object:  StoredProcedure [dbo].[usp_B_bdiXCCpExtraccionSAP_CentroCosto]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////




-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_bdiXCCpExtraccionSAP_CentroCosto]
@sKOSTL char(10)
AS
-- selects all rows from the table
SELECT 
[KOSTL]
,[KTEXT]
,[KLTXT]
,[MCDS3]
FROM [dbo].[bdiXCCpExtraccionSAP_CentroCosto]
WHERE 
[KOSTL] = @sKOSTL

GO
/****** Object:  StoredProcedure [dbo].[usp_B_bdiXPEpExtraccionSAP_Personal]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_B_bdiXPEpExtraccionSAP_Personal]
@sPERNR char(8)
AS
-- selects all rows from the table
SELECT 
[PERNR]
,[Nachn]
,[Name2]
,[Vorna]
,[DNI]
,[WERKS]
,[Persg]
,[KOSTL]
FROM [dbo].[bdiXPEpExtraccionSAP_Personal]
WHERE 
[PERNR] = @sPERNR

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfACFp_Activo_Fijo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfACFp_Activo_Fijo]
@iACFid int
AS
-- delete all matching from the table
DELETE [dbo].[acfACFp_Activo_Fijo]
WHERE 
[ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfACTt_Actividad]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfACTt_Actividad]
@sACTid char(2)
AS
-- delete all matching from the table
DELETE [dbo].[acfACTt_Actividad]
WHERE 
[ACTid] = @sACTid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfAMBt_Ambiente]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfAMBt_Ambiente]
@iAMBid int
AS
-- delete all matching from the table
DELETE [dbo].[acfAMBt_Ambiente]
WHERE 
[AMBid] = @iAMBid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfCMPt_Componente]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfCMPt_Componente]
@sCMPid char(15)
AS
-- delete all matching from the table
DELETE [dbo].[acfCMPt_Componente]
WHERE 
[CMPid] = @sCMPid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfCRSt_Caracteristicas]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfCRSt_Caracteristicas]
@iACFid int
AS
-- delete all matching from the table
DELETE [dbo].[acfCRSt_Caracteristicas]
WHERE 
[ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfCSTt_Costo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfCSTt_Costo]
@sCSTid char(4)
AS
-- delete all matching from the table
DELETE [dbo].[acfCSTt_Costo]
WHERE 
[CSTid] = @sCSTid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfDDFt_detalledediferido]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfDDFt_detalledediferido]
@iPDFcodigo int
AS
-- delete all matching from the table
DELETE [dbo].[acfDDFt_detalledediferido]
WHERE 
[PDFcodigo] = @iPDFcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfDRTt_detallereparotributario]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfDRTt_detallereparotributario]
@iRTRcodigo int
AS
-- delete all matching from the table
DELETE [dbo].[acfDRTt_detallereparotributario]
WHERE 
[RTRcodigo] = @iRTRcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfEDIt_edificaciondetalle]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfEDIt_edificaciondetalle]
@sRVAcodigo char(18)
AS
-- delete all matching from the table
DELETE [dbo].[acfEDIt_edificaciondetalle]
WHERE 
[RVAcodigo] = @sRVAcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfESTt_Estado]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfESTt_Estado]
@iESTid int
AS
-- delete all matching from the table
DELETE [dbo].[acfESTt_Estado]
WHERE 
[ESTid] = @iESTid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfICRt_Inventariocaracteristicas]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfICRt_Inventariocaracteristicas]
@iINVid int
, @iACFid int
AS
-- delete all matching from the table
DELETE [dbo].[acfICRt_Inventariocaracteristicas]
WHERE 
[INVid] = @iINVid
AND [ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfINBt_Inventariobienes]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfINBt_Inventariobienes]
@iINVid int
, @iACFid int
AS
-- delete all matching from the table
DELETE [dbo].[acfINBt_Inventariobienes]
WHERE 
[INVid] = @iINVid
AND [ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfINVp_Inventario]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfINVp_Inventario]
@iINVid int
AS
-- delete all matching from the table
DELETE [dbo].[acfINVp_Inventario]
WHERE 
[INVid] = @iINVid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfLOCt_Local]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfLOCt_Local]
@iLOCid int
AS
-- delete all matching from the table
DELETE [dbo].[acfLOCt_Local]
WHERE 
[LOCid] = @iLOCid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfMARt_Marca]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfMARt_Marca]
@iMARid int
AS
-- delete all matching from the table
DELETE [dbo].[acfMARt_Marca]
WHERE 
[MARid] = @iMARid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfMATt_Material]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfMATt_Material]
@iMATid int
AS
-- delete all matching from the table
DELETE [dbo].[acfMATt_Material]
WHERE 
[MATid] = @iMATid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfMEQt_maquinariaequipo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfMEQt_maquinariaequipo]
@sRVAcodigo char(18)
AS
-- delete all matching from the table
DELETE [dbo].[acfMEQt_maquinariaequipo]
WHERE 
[RVAcodigo] = @sRVAcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfMVAt_MovimientoActivo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfMVAt_MovimientoActivo]
@iMVAid int
, @iACFid int
AS
-- delete all matching from the table
DELETE [dbo].[acfMVAt_MovimientoActivo]
WHERE 
[MVAid] = @iMVAid
AND [ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfMVMt_MotivoMovimiento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfMVMt_MotivoMovimiento]
@sMVMid char(2)
AS
-- delete all matching from the table
DELETE [dbo].[acfMVMt_MotivoMovimiento]
WHERE 
[MVMid] = @sMVMid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfPDFt_procesodiferido]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfPDFt_procesodiferido]
@iPDFcodigo int
AS
-- delete all matching from the table
DELETE [dbo].[acfPDFt_procesodiferido]
WHERE 
[PDFcodigo] = @iPDFcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfRTRt_Reparotributario]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfRTRt_Reparotributario]
@iRTRcodigo int
AS
-- delete all matching from the table
DELETE [dbo].[acfRTRt_Reparotributario]
WHERE 
[RTRcodigo] = @iRTRcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfRVAt_registrovaluacion]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfRVAt_registrovaluacion]
@sRVAcodigo char(18)
AS
-- delete all matching from the table
DELETE [dbo].[acfRVAt_registrovaluacion]
WHERE 
[RVAcodigo] = @sRVAcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfSELt_SistemaElectrico]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfSELt_SistemaElectrico]
@sSELid char(6)
AS
-- delete all matching from the table
DELETE [dbo].[acfSELt_SistemaElectrico]
WHERE 
[SELid] = @sSELid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfSPNt_Supranumero]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfSPNt_Supranumero]
@sV_T087U_ANLUE char(12)
AS
-- delete all matching from the table
DELETE [dbo].[acfSPNt_Supranumero]
WHERE 
[V_T087U_ANLUE] = @sV_T087U_ANLUE

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfTMVt_TipoMovimiento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfTMVt_TipoMovimiento]
@sTMVid char(2)
AS
-- delete all matching from the table
DELETE [dbo].[acfTMVt_TipoMovimiento]
WHERE 
[TMVid] = @sTMVid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfTRNt_terrenodetalle]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfTRNt_terrenodetalle]
@sRVAcodigo char(18)
AS
-- delete all matching from the table
DELETE [dbo].[acfTRNt_terrenodetalle]
WHERE 
[RVAcodigo] = @sRVAcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfUBEt_UbicacionElectrica]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfUBEt_UbicacionElectrica]
@iUBEid int
AS
-- delete all matching from the table
DELETE [dbo].[acfUBEt_UbicacionElectrica]
WHERE 
[UBEid] = @iUBEid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfUNMt_Unimed]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfUNMt_Unimed]
@iUNMid int
AS
-- delete all matching from the table
DELETE [dbo].[acfUNMt_Unimed]
WHERE 
[UNMid] = @iUNMid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_acfVNRt_VNR]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_acfVNRt_VNR]
@sVNRid char(7)
AS
-- delete all matching from the table
DELETE [dbo].[acfVNRt_VNR]
WHERE 
[VNRid] = @sVNRid

GO
/****** Object:  StoredProcedure [dbo].[usp_D_bdiCAFpClaseDeActivoFijo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_bdiCAFpClaseDeActivoFijo]
@sANLKL char(8)
AS
-- delete all matching from the table
DELETE [dbo].[bdiCAFpClaseDeActivoFijo]
WHERE 
[ANLKL] = @sANLKL

GO
/****** Object:  StoredProcedure [dbo].[usp_D_bdiCDDpClasesDeDocumento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_bdiCDDpClasesDeDocumento]
@sBLART char(2)
AS
-- delete all matching from the table
DELETE [dbo].[bdiCDDpClasesDeDocumento]
WHERE 
[BLART] = @sBLART

GO
/****** Object:  StoredProcedure [dbo].[usp_D_bdiPRVpProveedor]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_bdiPRVpProveedor]
@sLIFNR char(10)
AS
-- delete all matching from the table
DELETE [dbo].[bdiPRVpProveedor]
WHERE 
[LIFNR] = @sLIFNR

GO
/****** Object:  StoredProcedure [dbo].[usp_D_bdiSEGpSegmento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_bdiSEGpSegmento]
@sSEGMENT char(10)
AS
-- delete all matching from the table
DELETE [dbo].[bdiSEGpSegmento]
WHERE 
[SEGMENT] = @sSEGMENT

GO
/****** Object:  StoredProcedure [dbo].[usp_D_bdiSOCpSociedades]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_bdiSOCpSociedades]
@sBUKRS char(4)
AS
-- delete all matching from the table
DELETE [dbo].[bdiSOCpSociedades]
WHERE 
[BUKRS] = @sBUKRS

GO
/****** Object:  StoredProcedure [dbo].[usp_D_bdiXCCpExtraccionSAP_CentroCosto]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_bdiXCCpExtraccionSAP_CentroCosto]
@sKOSTL char(10)
AS
-- delete all matching from the table
DELETE [dbo].[bdiXCCpExtraccionSAP_CentroCosto]
WHERE 
[KOSTL] = @sKOSTL

GO
/****** Object:  StoredProcedure [dbo].[usp_D_bdiXPEpExtraccionSAP_Personal]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_D_bdiXPEpExtraccionSAP_Personal]
@sPERNR char(8)
AS
-- delete all matching from the table
DELETE [dbo].[bdiXPEpExtraccionSAP_Personal]
WHERE 
[PERNR] = @sPERNR

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfACFp_Activo_Fijo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfACFp_Activo_Fijo]
@iACFid int OUTPUT
, @sBUKRS char(4) OUTPUT
, @sSEGMENT char(10) OUTPUT
, @sANLKL char(8) OUTPUT
, @sPERNR char(8) OUTPUT
, @sCSTid char(4) OUTPUT
, @sMVMid char(2) OUTPUT
, @dtACFfmovimiento datetime OUTPUT
, @sVNRid char(7) OUTPUT
, @sACFdescripcion char(254) OUTPUT
, @dtACFfincorporacion datetime OUTPUT
, @dtACFfcapitalizacion datetime OUTPUT
, @iACFvutiltribanio int OUTPUT
, @iACFvutiltribdia int OUTPUT
, @decACFvalortrib decimal(18, 2) OUTPUT
, @iACFvutilniifanio int OUTPUT
, @iACFvutilniifdia int OUTPUT
, @decACFvalorniif decimal(18, 2) OUTPUT
, @sACFdepacutrib char(18) OUTPUT
, @decACFdepacuniif decimal(18, 2) OUTPUT
, @sACFobra char(10) OUTPUT
, @sACFord41 char(4) OUTPUT
, @sACFord42 char(4) OUTPUT
, @sACFord43 char(4) OUTPUT
, @sACFord44 char(4) OUTPUT
, @sACFanlue char(12) OUTPUT
, @decACFfactortrib decimal(18, 6) OUTPUT
, @decACFfactorniif decimal(18, 6) OUTPUT
, @sACFcuenta char(18) OUTPUT
, @sACFcuentadep char(18) OUTPUT
, @sCMPid char(15) OUTPUT
, @sACFobservacion varchar(250) OUTPUT
, @sLIFNR char(10) OUTPUT
, @sACFnotaingreso char(18) OUTPUT
, @sACFfechanotaingreso char(18) OUTPUT
, @sACFordencompra char(18) OUTPUT
, @dtACFfechaordencompra datetime OUTPUT
, @sBLART char(2) OUTPUT
, @sACFcomprobante char(18) OUTPUT
, @sKOSTL char(10) OUTPUT
, @iAMBid int OUTPUT
, @iUBEid int OUTPUT
, @dtACFfechacomprobante datetime OUTPUT
, @sV_T087U_ANLUE char(12) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfACFp_Activo_Fijo]
(
[ACFid]
,[BUKRS]
,[SEGMENT]
,[ANLKL]
,[PERNR]
,[CSTid]
,[MVMid]
,[ACFfmovimiento]
,[VNRid]
,[ACFdescripcion]
,[ACFfincorporacion]
,[ACFfcapitalizacion]
,[ACFvutiltribanio]
,[ACFvutiltribdia]
,[ACFvalortrib]
,[ACFvutilniifanio]
,[ACFvutilniifdia]
,[ACFvalorniif]
,[ACFdepacutrib]
,[ACFdepacuniif]
,[ACFobra]
,[ACFord41]
,[ACFord42]
,[ACFord43]
,[ACFord44]
,[ACFanlue]
,[ACFfactortrib]
,[ACFfactorniif]
,[ACFcuenta]
,[ACFcuentadep]
,[CMPid]
,[ACFobservacion]
,[LIFNR]
,[ACFnotaingreso]
,[ACFfechanotaingreso]
,[ACFordencompra]
,[ACFfechaordencompra]
,[BLART]
,[ACFcomprobante]
,[KOSTL]
,[AMBid]
,[UBEid]
,[ACFfechacomprobante]
,[V_T087U_ANLUE]
)
VALUES
(
@iACFid
,@sBUKRS
,@sSEGMENT
,@sANLKL
,@sPERNR
,@sCSTid
,@sMVMid
,@dtACFfmovimiento
,@sVNRid
,@sACFdescripcion
,@dtACFfincorporacion
,@dtACFfcapitalizacion
,@iACFvutiltribanio
,@iACFvutiltribdia
,@decACFvalortrib
,@iACFvutilniifanio
,@iACFvutilniifdia
,@decACFvalorniif
,@sACFdepacutrib
,@decACFdepacuniif
,@sACFobra
,@sACFord41
,@sACFord42
,@sACFord43
,@sACFord44
,@sACFanlue
,@decACFfactortrib
,@decACFfactorniif
,@sACFcuenta
,@sACFcuentadep
,@sCMPid
,@sACFobservacion
,@sLIFNR
,@sACFnotaingreso
,@sACFfechanotaingreso
,@sACFordencompra
,@dtACFfechaordencompra
,@sBLART
,@sACFcomprobante
,@sKOSTL
,@iAMBid
,@iUBEid
,@dtACFfechacomprobante
,@sV_T087U_ANLUE
)
SELECT 
@iACFid = [ACFid]
,@sBUKRS = [BUKRS]
,@sSEGMENT = [SEGMENT]
,@sANLKL = [ANLKL]
,@sPERNR = [PERNR]
,@sCSTid = [CSTid]
,@sMVMid = [MVMid]
,@dtACFfmovimiento = [ACFfmovimiento]
,@sVNRid = [VNRid]
,@sACFdescripcion = [ACFdescripcion]
,@dtACFfincorporacion = [ACFfincorporacion]
,@dtACFfcapitalizacion = [ACFfcapitalizacion]
,@iACFvutiltribanio = [ACFvutiltribanio]
,@iACFvutiltribdia = [ACFvutiltribdia]
,@decACFvalortrib = [ACFvalortrib]
,@iACFvutilniifanio = [ACFvutilniifanio]
,@iACFvutilniifdia = [ACFvutilniifdia]
,@decACFvalorniif = [ACFvalorniif]
,@sACFdepacutrib = [ACFdepacutrib]
,@decACFdepacuniif = [ACFdepacuniif]
,@sACFobra = [ACFobra]
,@sACFord41 = [ACFord41]
,@sACFord42 = [ACFord42]
,@sACFord43 = [ACFord43]
,@sACFord44 = [ACFord44]
,@sACFanlue = [ACFanlue]
,@decACFfactortrib = [ACFfactortrib]
,@decACFfactorniif = [ACFfactorniif]
,@sACFcuenta = [ACFcuenta]
,@sACFcuentadep = [ACFcuentadep]
,@sCMPid = [CMPid]
,@sACFobservacion = [ACFobservacion]
,@sLIFNR = [LIFNR]
,@sACFnotaingreso = [ACFnotaingreso]
,@sACFfechanotaingreso = [ACFfechanotaingreso]
,@sACFordencompra = [ACFordencompra]
,@dtACFfechaordencompra = [ACFfechaordencompra]
,@sBLART = [BLART]
,@sACFcomprobante = [ACFcomprobante]
,@sKOSTL = [KOSTL]
,@iAMBid = [AMBid]
,@iUBEid = [UBEid]
,@dtACFfechacomprobante = [ACFfechacomprobante]
,@sV_T087U_ANLUE = [V_T087U_ANLUE]
FROM [dbo].[acfACFp_Activo_Fijo]
WHERE 
[ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfACTt_Actividad]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfACTt_Actividad]
@sACTid char(2) OUTPUT
, @sACTactividad varchar(60) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfACTt_Actividad]
(
[ACTid]
,[ACTactividad]
)
VALUES
(
@sACTid
,@sACTactividad
)
SELECT 
@sACTid = [ACTid]
,@sACTactividad = [ACTactividad]
FROM [dbo].[acfACTt_Actividad]
WHERE 
[ACTid] = @sACTid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfAMBt_Ambiente]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfAMBt_Ambiente]
@iLOCid int OUTPUT
, @iAMBid int OUTPUT
, @sAMBambiente varchar(100) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfAMBt_Ambiente]
(
[LOCid]
,[AMBid]
,[AMBambiente]
)
VALUES
(
@iLOCid
,@iAMBid
,@sAMBambiente
)
SELECT 
@iLOCid = [LOCid]
,@iAMBid = [AMBid]
,@sAMBambiente = [AMBambiente]
FROM [dbo].[acfAMBt_Ambiente]
WHERE 
[AMBid] = @iAMBid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfCMPt_Componente]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfCMPt_Componente]
@sCMPid char(15) OUTPUT
, @sCMPcomponente varchar(100) OUTPUT
, @decCMPusoestimado decimal(18, 2) OUTPUT
, @decCMPconservacion decimal(18, 2) OUTPUT
, @decCMPobsolecencia decimal(18, 2) OUTPUT
, @decCMPlimitelegal decimal(18, 2) OUTPUT
, @decCMPtotalfactores decimal(18, 2) OUTPUT
, @decCMPfactorusoestimado decimal(18, 2) OUTPUT
, @iCMPvutilanio int OUTPUT
, @iCMPvutildia int OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfCMPt_Componente]
(
[CMPid]
,[CMPcomponente]
,[CMPusoestimado]
,[CMPconservacion]
,[CMPobsolecencia]
,[CMPlimitelegal]
,[CMPtotalfactores]
,[CMPfactorusoestimado]
,[CMPvutilanio]
,[CMPvutildia]
)
VALUES
(
@sCMPid
,@sCMPcomponente
,@decCMPusoestimado
,@decCMPconservacion
,@decCMPobsolecencia
,@decCMPlimitelegal
,@decCMPtotalfactores
,@decCMPfactorusoestimado
,@iCMPvutilanio
,@iCMPvutildia
)
SELECT 
@sCMPid = [CMPid]
,@sCMPcomponente = [CMPcomponente]
,@decCMPusoestimado = [CMPusoestimado]
,@decCMPconservacion = [CMPconservacion]
,@decCMPobsolecencia = [CMPobsolecencia]
,@decCMPlimitelegal = [CMPlimitelegal]
,@decCMPtotalfactores = [CMPtotalfactores]
,@decCMPfactorusoestimado = [CMPfactorusoestimado]
,@iCMPvutilanio = [CMPvutilanio]
,@iCMPvutildia = [CMPvutildia]
FROM [dbo].[acfCMPt_Componente]
WHERE 
[CMPid] = @sCMPid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfCRSt_Caracteristicas]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfCRSt_Caracteristicas]
@iACFid int OUTPUT
, @iMARid int OUTPUT
, @iESTid int OUTPUT
, @sCRSserie varchar(30) OUTPUT
, @sCRSmodelo varchar(35) OUTPUT
, @sCRScolor varchar(35) OUTPUT
, @iMATid int OUTPUT
, @sCRStipo char(1) OUTPUT
, @iUNMid int OUTPUT
, @decCRScantidad decimal(18, 2) OUTPUT
, @sCRSvehplaca varchar(15) OUTPUT
, @sCRSvehexpediente varchar(15) OUTPUT
, @dtCRSvehinscripcion datetime OUTPUT
, @sCRSvehclase varchar(35) OUTPUT
, @sCRSvehcombustible varchar(35) OUTPUT
, @iCRSvehejes int OUTPUT
, @iCRSvehpasajeros int OUTPUT
, @iCRSvehasientos int OUTPUT
, @decCRSvehpesoseco decimal(18, 2) OUTPUT
, @decCRSvehcargautil decimal(18, 2) OUTPUT
, @decCRSaltura decimal(18, 2) OUTPUT
, @decCRSancho decimal(18, 2) OUTPUT
, @sCRSvelocidad varchar(20) OUTPUT
, @sCRSresolucion varchar(20) OUTPUT
, @sCRScapacidad varchar(20) OUTPUT
, @sCRSpotencia varchar(20) OUTPUT
, @sCRSvnominal varchar(20) OUTPUT
, @sCRSventrada varchar(20) OUTPUT
, @sCRSvsalida varchar(20) OUTPUT
, @sCRSfrecuencia varchar(20) OUTPUT
, @sCRStemperatura varchar(20) OUTPUT
, @sCRSprocesador varchar(100) OUTPUT
, @sCRSpuertos varchar(100) OUTPUT
, @decCRSutmx decimal(18, 2) OUTPUT
, @decCRSutmy decimal(18, 2) OUTPUT
, @sCRSesfuerzopunta varchar(20) OUTPUT
, @sCRScajaderivadora varchar(20) OUTPUT
, @sCRSalquilacable char(1) OUTPUT
, @sCRScentropoblado varchar(60) OUTPUT
, @sCRSurbanizacion varchar(60) OUTPUT
, @sCRScalle varchar(60) OUTPUT
, @sCRSlote varchar(10) OUTPUT
, @sCRSnumeropredio varchar(20) OUTPUT
, @sCRSdepartamento varchar(10) OUTPUT
, @sCRSinterior varchar(10) OUTPUT
, @sCRScarretera varchar(50) OUTPUT
, @decCRSkilometro decimal(18, 2) OUTPUT
, @sCRSnombrepredio varchar(60) OUTPUT
, @iCRSpisospredio int OUTPUT
, @sCRSpartidapredio varchar(15) OUTPUT
, @sCRStomopredio varchar(15) OUTPUT
, @sCRSfolioinipredio varchar(10) OUTPUT
, @sCRSfoliofinpredio varchar(10) OUTPUT
, @sCRSasientopredio varchar(15) OUTPUT
, @dtCRSfinscpredio datetime OUTPUT
, @sCRSficharegistral varchar(20) OUTPUT
, @decCRSareaconstruida decimal(18, 2) OUTPUT
, @decCRSperimetro decimal(18, 2) OUTPUT
, @sCRSusopredio varchar(60) OUTPUT
, @decCRSvalorautovaluo decimal(18, 2) OUTPUT
, @sCRScodigoluz varchar(20) OUTPUT
, @sCRScodigoagua varchar(20) OUTPUT
, @dtCRSfadqpredio datetime OUTPUT
, @sCRSobservacion varchar(254) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfCRSt_Caracteristicas]
(
[ACFid]
,[MARid]
,[ESTid]
,[CRSserie]
,[CRSmodelo]
,[CRScolor]
,[MATid]
,[CRStipo]
,[UNMid]
,[CRScantidad]
,[CRSvehplaca]
,[CRSvehexpediente]
,[CRSvehinscripcion]
,[CRSvehclase]
,[CRSvehcombustible]
,[CRSvehejes]
,[CRSvehpasajeros]
,[CRSvehasientos]
,[CRSvehpesoseco]
,[CRSvehcargautil]
,[CRSaltura]
,[CRSancho]
,[CRSvelocidad]
,[CRSresolucion]
,[CRScapacidad]
,[CRSpotencia]
,[CRSvnominal]
,[CRSventrada]
,[CRSvsalida]
,[CRSfrecuencia]
,[CRStemperatura]
,[CRSprocesador]
,[CRSpuertos]
,[CRSutmx]
,[CRSutmy]
,[CRSesfuerzopunta]
,[CRScajaderivadora]
,[CRSalquilacable]
,[CRScentropoblado]
,[CRSurbanizacion]
,[CRScalle]
,[CRSlote]
,[CRSnumeropredio]
,[CRSdepartamento]
,[CRSinterior]
,[CRScarretera]
,[CRSkilometro]
,[CRSnombrepredio]
,[CRSpisospredio]
,[CRSpartidapredio]
,[CRStomopredio]
,[CRSfolioinipredio]
,[CRSfoliofinpredio]
,[CRSasientopredio]
,[CRSfinscpredio]
,[CRSficharegistral]
,[CRSareaconstruida]
,[CRSperimetro]
,[CRSusopredio]
,[CRSvalorautovaluo]
,[CRScodigoluz]
,[CRScodigoagua]
,[CRSfadqpredio]
,[CRSobservacion]
)
VALUES
(
@iACFid
,@iMARid
,@iESTid
,@sCRSserie
,@sCRSmodelo
,@sCRScolor
,@iMATid
,@sCRStipo
,@iUNMid
,@decCRScantidad
,@sCRSvehplaca
,@sCRSvehexpediente
,@dtCRSvehinscripcion
,@sCRSvehclase
,@sCRSvehcombustible
,@iCRSvehejes
,@iCRSvehpasajeros
,@iCRSvehasientos
,@decCRSvehpesoseco
,@decCRSvehcargautil
,@decCRSaltura
,@decCRSancho
,@sCRSvelocidad
,@sCRSresolucion
,@sCRScapacidad
,@sCRSpotencia
,@sCRSvnominal
,@sCRSventrada
,@sCRSvsalida
,@sCRSfrecuencia
,@sCRStemperatura
,@sCRSprocesador
,@sCRSpuertos
,@decCRSutmx
,@decCRSutmy
,@sCRSesfuerzopunta
,@sCRScajaderivadora
,@sCRSalquilacable
,@sCRScentropoblado
,@sCRSurbanizacion
,@sCRScalle
,@sCRSlote
,@sCRSnumeropredio
,@sCRSdepartamento
,@sCRSinterior
,@sCRScarretera
,@decCRSkilometro
,@sCRSnombrepredio
,@iCRSpisospredio
,@sCRSpartidapredio
,@sCRStomopredio
,@sCRSfolioinipredio
,@sCRSfoliofinpredio
,@sCRSasientopredio
,@dtCRSfinscpredio
,@sCRSficharegistral
,@decCRSareaconstruida
,@decCRSperimetro
,@sCRSusopredio
,@decCRSvalorautovaluo
,@sCRScodigoluz
,@sCRScodigoagua
,@dtCRSfadqpredio
,@sCRSobservacion
)
SELECT 
@iACFid = [ACFid]
,@iMARid = [MARid]
,@iESTid = [ESTid]
,@sCRSserie = [CRSserie]
,@sCRSmodelo = [CRSmodelo]
,@sCRScolor = [CRScolor]
,@iMATid = [MATid]
,@sCRStipo = [CRStipo]
,@iUNMid = [UNMid]
,@decCRScantidad = [CRScantidad]
,@sCRSvehplaca = [CRSvehplaca]
,@sCRSvehexpediente = [CRSvehexpediente]
,@dtCRSvehinscripcion = [CRSvehinscripcion]
,@sCRSvehclase = [CRSvehclase]
,@sCRSvehcombustible = [CRSvehcombustible]
,@iCRSvehejes = [CRSvehejes]
,@iCRSvehpasajeros = [CRSvehpasajeros]
,@iCRSvehasientos = [CRSvehasientos]
,@decCRSvehpesoseco = [CRSvehpesoseco]
,@decCRSvehcargautil = [CRSvehcargautil]
,@decCRSaltura = [CRSaltura]
,@decCRSancho = [CRSancho]
,@sCRSvelocidad = [CRSvelocidad]
,@sCRSresolucion = [CRSresolucion]
,@sCRScapacidad = [CRScapacidad]
,@sCRSpotencia = [CRSpotencia]
,@sCRSvnominal = [CRSvnominal]
,@sCRSventrada = [CRSventrada]
,@sCRSvsalida = [CRSvsalida]
,@sCRSfrecuencia = [CRSfrecuencia]
,@sCRStemperatura = [CRStemperatura]
,@sCRSprocesador = [CRSprocesador]
,@sCRSpuertos = [CRSpuertos]
,@decCRSutmx = [CRSutmx]
,@decCRSutmy = [CRSutmy]
,@sCRSesfuerzopunta = [CRSesfuerzopunta]
,@sCRScajaderivadora = [CRScajaderivadora]
,@sCRSalquilacable = [CRSalquilacable]
,@sCRScentropoblado = [CRScentropoblado]
,@sCRSurbanizacion = [CRSurbanizacion]
,@sCRScalle = [CRScalle]
,@sCRSlote = [CRSlote]
,@sCRSnumeropredio = [CRSnumeropredio]
,@sCRSdepartamento = [CRSdepartamento]
,@sCRSinterior = [CRSinterior]
,@sCRScarretera = [CRScarretera]
,@decCRSkilometro = [CRSkilometro]
,@sCRSnombrepredio = [CRSnombrepredio]
,@iCRSpisospredio = [CRSpisospredio]
,@sCRSpartidapredio = [CRSpartidapredio]
,@sCRStomopredio = [CRStomopredio]
,@sCRSfolioinipredio = [CRSfolioinipredio]
,@sCRSfoliofinpredio = [CRSfoliofinpredio]
,@sCRSasientopredio = [CRSasientopredio]
,@dtCRSfinscpredio = [CRSfinscpredio]
,@sCRSficharegistral = [CRSficharegistral]
,@decCRSareaconstruida = [CRSareaconstruida]
,@decCRSperimetro = [CRSperimetro]
,@sCRSusopredio = [CRSusopredio]
,@decCRSvalorautovaluo = [CRSvalorautovaluo]
,@sCRScodigoluz = [CRScodigoluz]
,@sCRScodigoagua = [CRScodigoagua]
,@dtCRSfadqpredio = [CRSfadqpredio]
,@sCRSobservacion = [CRSobservacion]
FROM [dbo].[acfCRSt_Caracteristicas]
WHERE 
[ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfCSTt_Costo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfCSTt_Costo]
@sCSTid char(4) OUTPUT
, @sCSTdescripcion char(35) OUTPUT
, @sCSTdetalle char(70) OUTPUT
, @sCSTabreviado char(15) OUTPUT
, @sACTid char(2) OUTPUT
, @sCSTid_costo char(2) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfCSTt_Costo]
(
[CSTid]
,[CSTdescripcion]
,[CSTdetalle]
,[CSTabreviado]
,[ACTid]
,[CSTid_costo]
)
VALUES
(
@sCSTid
,@sCSTdescripcion
,@sCSTdetalle
,@sCSTabreviado
,@sACTid
,@sCSTid_costo
)
SELECT 
@sCSTid = [CSTid]
,@sCSTdescripcion = [CSTdescripcion]
,@sCSTdetalle = [CSTdetalle]
,@sCSTabreviado = [CSTabreviado]
,@sACTid = [ACTid]
,@sCSTid_costo = [CSTid_costo]
FROM [dbo].[acfCSTt_Costo]
WHERE 
[CSTid] = @sCSTid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfDDFt_detalledediferido]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfDDFt_detalledediferido]
@sACFcuenta char(18) OUTPUT
, @sINVZU char(100) OUTPUT
, @sTXT50 char(100) OUTPUT
, @decACFvalorniif decimal(12, 2) OUTPUT
, @decACFdepniif decimal(12, 2) OUTPUT
, @decACFPPENiif decimal(12, 2) OUTPUT
, @decACFvalortrib decimal(12, 2) OUTPUT
, @decACFDepTrib decimal(12, 2) OUTPUT
, @decACFpplir decimal(12, 2) OUTPUT
, @decACFdeducible decimal(12, 2) OUTPUT
, @decACFimponible decimal(12, 2) OUTPUT
, @decACFirda decimal(12, 2) OUTPUT
, @decACFirdp decimal(12, 2) OUTPUT
, @decACFculdep decimal(12, 2) OUTPUT
, @decACFrecper1 decimal(12, 2) OUTPUT
, @decACFrecper2 decimal(12, 2) OUTPUT
, @decACFrecper3 decimal(12, 2) OUTPUT
, @decACFrecper4 decimal(12, 2) OUTPUT
, @decACFtotales decimal(12, 2) OUTPUT
, @decACFirdaA decimal(12, 2) OUTPUT
, @decACFirdpA decimal(12, 2) OUTPUT
, @decACFirdaF decimal(12, 2) OUTPUT
, @decACFirdpF decimal(12, 2) OUTPUT
, @iPDFcodigo int OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfDDFt_detalledediferido]
(
[ACFcuenta]
,[INVZU]
,[TXT50]
,[ACFvalorniif]
,[ACFdepniif]
,[ACFPPENiif]
,[ACFvalortrib]
,[ACFDepTrib]
,[ACFpplir]
,[ACFdeducible]
,[ACFimponible]
,[ACFirda]
,[ACFirdp]
,[ACFculdep]
,[ACFrecper1]
,[ACFrecper2]
,[ACFrecper3]
,[ACFrecper4]
,[ACFtotales]
,[ACFirdaA]
,[ACFirdpA]
,[ACFirdaF]
,[ACFirdpF]
,[PDFcodigo]
)
VALUES
(
@sACFcuenta
,@sINVZU
,@sTXT50
,@decACFvalorniif
,@decACFdepniif
,@decACFPPENiif
,@decACFvalortrib
,@decACFDepTrib
,@decACFpplir
,@decACFdeducible
,@decACFimponible
,@decACFirda
,@decACFirdp
,@decACFculdep
,@decACFrecper1
,@decACFrecper2
,@decACFrecper3
,@decACFrecper4
,@decACFtotales
,@decACFirdaA
,@decACFirdpA
,@decACFirdaF
,@decACFirdpF
,@iPDFcodigo
)
SELECT 
@sACFcuenta = [ACFcuenta]
,@sINVZU = [INVZU]
,@sTXT50 = [TXT50]
,@decACFvalorniif = [ACFvalorniif]
,@decACFdepniif = [ACFdepniif]
,@decACFPPENiif = [ACFPPENiif]
,@decACFvalortrib = [ACFvalortrib]
,@decACFDepTrib = [ACFDepTrib]
,@decACFpplir = [ACFpplir]
,@decACFdeducible = [ACFdeducible]
,@decACFimponible = [ACFimponible]
,@decACFirda = [ACFirda]
,@decACFirdp = [ACFirdp]
,@decACFculdep = [ACFculdep]
,@decACFrecper1 = [ACFrecper1]
,@decACFrecper2 = [ACFrecper2]
,@decACFrecper3 = [ACFrecper3]
,@decACFrecper4 = [ACFrecper4]
,@decACFtotales = [ACFtotales]
,@decACFirdaA = [ACFirdaA]
,@decACFirdpA = [ACFirdpA]
,@decACFirdaF = [ACFirdaF]
,@decACFirdpF = [ACFirdpF]
,@iPDFcodigo = [PDFcodigo]
FROM [dbo].[acfDDFt_detalledediferido]
WHERE 
[PDFcodigo] = @iPDFcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfDRTt_detallereparotributario]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfDRTt_detallereparotributario]
@iRTRcodigo int OUTPUT
, @sACFcuenta char(18) OUTPUT
, @sINVZU char(100) OUTPUT
, @sTXT50 char(100) OUTPUT
, @decACFfactorniif decimal(12, 2) OUTPUT
, @decACFvutilniif decimal(12, 2) OUTPUT
, @decACFfactorTrib decimal(12, 2) OUTPUT
, @decACFvutiltrib decimal(12, 2) OUTPUT
, @decACFvalorniif decimal(12, 2) OUTPUT
, @decACFdepAcuniif decimal(12, 2) OUTPUT
, @decACFNiifNeto decimal(12, 2) OUTPUT
, @decACFDepNiifPer decimal(12, 2) OUTPUT
, @decACFvalortrib decimal(12, 2) OUTPUT
, @decACFdepacutrib decimal(12, 2) OUTPUT
, @decACFlirneto decimal(12, 2) OUTPUT
, @decACFdeptlirper decimal(12, 2) OUTPUT
, @decACFadiciones decimal(12, 2) OUTPUT
, @decACFdeducciones decimal(12, 2) OUTPUT
, @decACFneto decimal(12, 2) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfDRTt_detallereparotributario]
(
[RTRcodigo]
,[ACFcuenta]
,[INVZU]
,[TXT50]
,[ACFfactorniif]
,[ACFvutilniif]
,[ACFfactorTrib]
,[ACFvutiltrib]
,[ACFvalorniif]
,[ACFdepAcuniif]
,[ACFNiifNeto]
,[ACFDepNiifPer]
,[ACFvalortrib]
,[ACFdepacutrib]
,[ACFlirneto]
,[ACFdeptlirper]
,[ACFadiciones]
,[ACFdeducciones]
,[ACFneto]
)
VALUES
(
@iRTRcodigo
,@sACFcuenta
,@sINVZU
,@sTXT50
,@decACFfactorniif
,@decACFvutilniif
,@decACFfactorTrib
,@decACFvutiltrib
,@decACFvalorniif
,@decACFdepAcuniif
,@decACFNiifNeto
,@decACFDepNiifPer
,@decACFvalortrib
,@decACFdepacutrib
,@decACFlirneto
,@decACFdeptlirper
,@decACFadiciones
,@decACFdeducciones
,@decACFneto
)
SELECT 
@iRTRcodigo = [RTRcodigo]
,@sACFcuenta = [ACFcuenta]
,@sINVZU = [INVZU]
,@sTXT50 = [TXT50]
,@decACFfactorniif = [ACFfactorniif]
,@decACFvutilniif = [ACFvutilniif]
,@decACFfactorTrib = [ACFfactorTrib]
,@decACFvutiltrib = [ACFvutiltrib]
,@decACFvalorniif = [ACFvalorniif]
,@decACFdepAcuniif = [ACFdepAcuniif]
,@decACFNiifNeto = [ACFNiifNeto]
,@decACFDepNiifPer = [ACFDepNiifPer]
,@decACFvalortrib = [ACFvalortrib]
,@decACFdepacutrib = [ACFdepacutrib]
,@decACFlirneto = [ACFlirneto]
,@decACFdeptlirper = [ACFdeptlirper]
,@decACFadiciones = [ACFadiciones]
,@decACFdeducciones = [ACFdeducciones]
,@decACFneto = [ACFneto]
FROM [dbo].[acfDRTt_detallereparotributario]
WHERE 
[RTRcodigo] = @iRTRcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfEDIt_edificaciondetalle]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfEDIt_edificaciondetalle]
@iACFid int OUTPUT
, @sEDIzona char(18) OUTPUT
, @sEDIdescripicion char(100) OUTPUT
, @decEDIfactorasignado decimal(12, 2) OUTPUT
, @decACFValorIR decimal(12, 2) OUTPUT
, @decACFTC decimal(12, 2) OUTPUT
, @decACFCRC decimal(12, 2) OUTPUT
, @decACFDEPCRC decimal(12, 2) OUTPUT
, @decACFNETOCRC decimal(12, 2) OUTPUT
, @decACFvalorniif decimal(12, 2) OUTPUT
, @decACFdepacuniif decimal(12, 2) OUTPUT
, @decACFNETOPCGA decimal(12, 2) OUTPUT
, @decACFDIFCosto decimal(12, 2) OUTPUT
, @decACFINCCosto decimal(12, 2) OUTPUT
, @decACFDISCosto decimal(12, 2) OUTPUT
, @decACFDIFDEP decimal(12, 2) OUTPUT
, @decACFINCDep decimal(12, 2) OUTPUT
, @decACFDISDep decimal(12, 2) OUTPUT
, @decACFDIFNeta decimal(12, 2) OUTPUT
, @decACFSumDifDed decimal(12, 2) OUTPUT
, @decACFSumDifGra decimal(12, 2) OUTPUT
, @decACFSumACTDif decimal(12, 2) OUTPUT
, @decACFSumPasDif decimal(12, 2) OUTPUT
, @sACFcuenta char(18) OUTPUT
, @sLOClocal char(18) OUTPUT
, @sRVAcodigo char(18) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfEDIt_edificaciondetalle]
(
[ACFid]
,[EDIzona]
,[EDIdescripicion]
,[EDIfactorasignado]
,[ACFValorIR]
,[ACFTC]
,[ACFCRC]
,[ACFDEPCRC]
,[ACFNETOCRC]
,[ACFvalorniif]
,[ACFdepacuniif]
,[ACFNETOPCGA]
,[ACFDIFCosto]
,[ACFINCCosto]
,[ACFDISCosto]
,[ACFDIFDEP]
,[ACFINCDep]
,[ACFDISDep]
,[ACFDIFNeta]
,[ACFSumDifDed]
,[ACFSumDifGra]
,[ACFSumACTDif]
,[ACFSumPasDif]
,[ACFcuenta]
,[LOClocal]
,[RVAcodigo]
)
VALUES
(
@iACFid
,@sEDIzona
,@sEDIdescripicion
,@decEDIfactorasignado
,@decACFValorIR
,@decACFTC
,@decACFCRC
,@decACFDEPCRC
,@decACFNETOCRC
,@decACFvalorniif
,@decACFdepacuniif
,@decACFNETOPCGA
,@decACFDIFCosto
,@decACFINCCosto
,@decACFDISCosto
,@decACFDIFDEP
,@decACFINCDep
,@decACFDISDep
,@decACFDIFNeta
,@decACFSumDifDed
,@decACFSumDifGra
,@decACFSumACTDif
,@decACFSumPasDif
,@sACFcuenta
,@sLOClocal
,@sRVAcodigo
)
SELECT 
@iACFid = [ACFid]
,@sEDIzona = [EDIzona]
,@sEDIdescripicion = [EDIdescripicion]
,@decEDIfactorasignado = [EDIfactorasignado]
,@decACFValorIR = [ACFValorIR]
,@decACFTC = [ACFTC]
,@decACFCRC = [ACFCRC]
,@decACFDEPCRC = [ACFDEPCRC]
,@decACFNETOCRC = [ACFNETOCRC]
,@decACFvalorniif = [ACFvalorniif]
,@decACFdepacuniif = [ACFdepacuniif]
,@decACFNETOPCGA = [ACFNETOPCGA]
,@decACFDIFCosto = [ACFDIFCosto]
,@decACFINCCosto = [ACFINCCosto]
,@decACFDISCosto = [ACFDISCosto]
,@decACFDIFDEP = [ACFDIFDEP]
,@decACFINCDep = [ACFINCDep]
,@decACFDISDep = [ACFDISDep]
,@decACFDIFNeta = [ACFDIFNeta]
,@decACFSumDifDed = [ACFSumDifDed]
,@decACFSumDifGra = [ACFSumDifGra]
,@decACFSumACTDif = [ACFSumACTDif]
,@decACFSumPasDif = [ACFSumPasDif]
,@sACFcuenta = [ACFcuenta]
,@sLOClocal = [LOClocal]
,@sRVAcodigo = [RVAcodigo]
FROM [dbo].[acfEDIt_edificaciondetalle]
WHERE 
[RVAcodigo] = @sRVAcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfESTt_Estado]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfESTt_Estado]
@iESTid int OUTPUT
, @sESTestado varchar(20) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfESTt_Estado]
(
[ESTid]
,[ESTestado]
)
VALUES
(
@iESTid
,@sESTestado
)
SELECT 
@iESTid = [ESTid]
,@sESTestado = [ESTestado]
FROM [dbo].[acfESTt_Estado]
WHERE 
[ESTid] = @iESTid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfICRt_Inventariocaracteristicas]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfICRt_Inventariocaracteristicas]
@iMARid int OUTPUT
, @iESTid int OUTPUT
, @sCRSserie varchar(30) OUTPUT
, @sCRSmodelo varchar(35) OUTPUT
, @sCRScolor varchar(35) OUTPUT
, @iMATid int OUTPUT
, @sCRStipo char(1) OUTPUT
, @iUNMid int OUTPUT
, @decCRScantidad decimal(18, 2) OUTPUT
, @sCRSvehplaca varchar(15) OUTPUT
, @sCRSvehexpediente varchar(15) OUTPUT
, @dtCRSvehinscripcion datetime OUTPUT
, @sCRSvehclase varchar(35) OUTPUT
, @sCRSvehcombustible varchar(35) OUTPUT
, @iCRSvehejes int OUTPUT
, @iCRSvehpasajeros int OUTPUT
, @iCRSvehasientos int OUTPUT
, @decCRSvehpesoseco decimal(18, 2) OUTPUT
, @decCRSvehcargautil decimal(18, 2) OUTPUT
, @decCRSaltura decimal(18, 2) OUTPUT
, @decCRSancho decimal(18, 2) OUTPUT
, @sCRSvelocidad varchar(20) OUTPUT
, @sCRSresolucion varchar(20) OUTPUT
, @sCRScapacidad varchar(20) OUTPUT
, @sCRSpotencia varchar(20) OUTPUT
, @sCRSvnominal varchar(20) OUTPUT
, @sCRSventrada varchar(20) OUTPUT
, @sCRSvsalida varchar(20) OUTPUT
, @sCRSfrecuencia varchar(20) OUTPUT
, @sCRStemperatura varchar(20) OUTPUT
, @sCRSprocesador varchar(100) OUTPUT
, @sCRSpuertos varchar(100) OUTPUT
, @decCRSutmx decimal(18, 2) OUTPUT
, @decCRSutmy decimal(18, 2) OUTPUT
, @sCRSesfuerzopunta varchar(20) OUTPUT
, @sCRScajaderivadora varchar(20) OUTPUT
, @sCRSalquilacable char(1) OUTPUT
, @sCRScentropoblado varchar(60) OUTPUT
, @sCRSurbanizacion varchar(60) OUTPUT
, @sCRScalle varchar(60) OUTPUT
, @sCRSlote varchar(10) OUTPUT
, @sCRSnumeropredio varchar(20) OUTPUT
, @sCRSdepartamento varchar(10) OUTPUT
, @sCRSinterior varchar(10) OUTPUT
, @sCRScarretera varchar(50) OUTPUT
, @decCRSkilometro decimal(18, 2) OUTPUT
, @sCRSnombrepredio varchar(60) OUTPUT
, @iCRSpisospredio int OUTPUT
, @sCRSpartidapredio varchar(15) OUTPUT
, @sCRStomopredio varchar(15) OUTPUT
, @sCRSfolioinipredio varchar(10) OUTPUT
, @sCRSfoliofinpredio varchar(10) OUTPUT
, @sCRSasientopredio varchar(15) OUTPUT
, @dtCRSfinscpredio datetime OUTPUT
, @sCRSficharegistral varchar(20) OUTPUT
, @decCRSareaconstruida decimal(18, 2) OUTPUT
, @decCRSperimetro decimal(18, 2) OUTPUT
, @sCRSusopredio varchar(60) OUTPUT
, @decCRSvalorautovaluo decimal(18, 2) OUTPUT
, @sCRScodigoluz varchar(20) OUTPUT
, @sCRScodigoagua varchar(20) OUTPUT
, @dtCRSfadqpredio datetime OUTPUT
, @sCRSobservacion varchar(254) OUTPUT
, @iINVid int OUTPUT
, @iACFid int OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfICRt_Inventariocaracteristicas]
(
[MARid]
,[ESTid]
,[CRSserie]
,[CRSmodelo]
,[CRScolor]
,[MATid]
,[CRStipo]
,[UNMid]
,[CRScantidad]
,[CRSvehplaca]
,[CRSvehexpediente]
,[CRSvehinscripcion]
,[CRSvehclase]
,[CRSvehcombustible]
,[CRSvehejes]
,[CRSvehpasajeros]
,[CRSvehasientos]
,[CRSvehpesoseco]
,[CRSvehcargautil]
,[CRSaltura]
,[CRSancho]
,[CRSvelocidad]
,[CRSresolucion]
,[CRScapacidad]
,[CRSpotencia]
,[CRSvnominal]
,[CRSventrada]
,[CRSvsalida]
,[CRSfrecuencia]
,[CRStemperatura]
,[CRSprocesador]
,[CRSpuertos]
,[CRSutmx]
,[CRSutmy]
,[CRSesfuerzopunta]
,[CRScajaderivadora]
,[CRSalquilacable]
,[CRScentropoblado]
,[CRSurbanizacion]
,[CRScalle]
,[CRSlote]
,[CRSnumeropredio]
,[CRSdepartamento]
,[CRSinterior]
,[CRScarretera]
,[CRSkilometro]
,[CRSnombrepredio]
,[CRSpisospredio]
,[CRSpartidapredio]
,[CRStomopredio]
,[CRSfolioinipredio]
,[CRSfoliofinpredio]
,[CRSasientopredio]
,[CRSfinscpredio]
,[CRSficharegistral]
,[CRSareaconstruida]
,[CRSperimetro]
,[CRSusopredio]
,[CRSvalorautovaluo]
,[CRScodigoluz]
,[CRScodigoagua]
,[CRSfadqpredio]
,[CRSobservacion]
,[INVid]
,[ACFid]
)
VALUES
(
@iMARid
,@iESTid
,@sCRSserie
,@sCRSmodelo
,@sCRScolor
,@iMATid
,@sCRStipo
,@iUNMid
,@decCRScantidad
,@sCRSvehplaca
,@sCRSvehexpediente
,@dtCRSvehinscripcion
,@sCRSvehclase
,@sCRSvehcombustible
,@iCRSvehejes
,@iCRSvehpasajeros
,@iCRSvehasientos
,@decCRSvehpesoseco
,@decCRSvehcargautil
,@decCRSaltura
,@decCRSancho
,@sCRSvelocidad
,@sCRSresolucion
,@sCRScapacidad
,@sCRSpotencia
,@sCRSvnominal
,@sCRSventrada
,@sCRSvsalida
,@sCRSfrecuencia
,@sCRStemperatura
,@sCRSprocesador
,@sCRSpuertos
,@decCRSutmx
,@decCRSutmy
,@sCRSesfuerzopunta
,@sCRScajaderivadora
,@sCRSalquilacable
,@sCRScentropoblado
,@sCRSurbanizacion
,@sCRScalle
,@sCRSlote
,@sCRSnumeropredio
,@sCRSdepartamento
,@sCRSinterior
,@sCRScarretera
,@decCRSkilometro
,@sCRSnombrepredio
,@iCRSpisospredio
,@sCRSpartidapredio
,@sCRStomopredio
,@sCRSfolioinipredio
,@sCRSfoliofinpredio
,@sCRSasientopredio
,@dtCRSfinscpredio
,@sCRSficharegistral
,@decCRSareaconstruida
,@decCRSperimetro
,@sCRSusopredio
,@decCRSvalorautovaluo
,@sCRScodigoluz
,@sCRScodigoagua
,@dtCRSfadqpredio
,@sCRSobservacion
,@iINVid
,@iACFid
)
SELECT 
@iMARid = [MARid]
,@iESTid = [ESTid]
,@sCRSserie = [CRSserie]
,@sCRSmodelo = [CRSmodelo]
,@sCRScolor = [CRScolor]
,@iMATid = [MATid]
,@sCRStipo = [CRStipo]
,@iUNMid = [UNMid]
,@decCRScantidad = [CRScantidad]
,@sCRSvehplaca = [CRSvehplaca]
,@sCRSvehexpediente = [CRSvehexpediente]
,@dtCRSvehinscripcion = [CRSvehinscripcion]
,@sCRSvehclase = [CRSvehclase]
,@sCRSvehcombustible = [CRSvehcombustible]
,@iCRSvehejes = [CRSvehejes]
,@iCRSvehpasajeros = [CRSvehpasajeros]
,@iCRSvehasientos = [CRSvehasientos]
,@decCRSvehpesoseco = [CRSvehpesoseco]
,@decCRSvehcargautil = [CRSvehcargautil]
,@decCRSaltura = [CRSaltura]
,@decCRSancho = [CRSancho]
,@sCRSvelocidad = [CRSvelocidad]
,@sCRSresolucion = [CRSresolucion]
,@sCRScapacidad = [CRScapacidad]
,@sCRSpotencia = [CRSpotencia]
,@sCRSvnominal = [CRSvnominal]
,@sCRSventrada = [CRSventrada]
,@sCRSvsalida = [CRSvsalida]
,@sCRSfrecuencia = [CRSfrecuencia]
,@sCRStemperatura = [CRStemperatura]
,@sCRSprocesador = [CRSprocesador]
,@sCRSpuertos = [CRSpuertos]
,@decCRSutmx = [CRSutmx]
,@decCRSutmy = [CRSutmy]
,@sCRSesfuerzopunta = [CRSesfuerzopunta]
,@sCRScajaderivadora = [CRScajaderivadora]
,@sCRSalquilacable = [CRSalquilacable]
,@sCRScentropoblado = [CRScentropoblado]
,@sCRSurbanizacion = [CRSurbanizacion]
,@sCRScalle = [CRScalle]
,@sCRSlote = [CRSlote]
,@sCRSnumeropredio = [CRSnumeropredio]
,@sCRSdepartamento = [CRSdepartamento]
,@sCRSinterior = [CRSinterior]
,@sCRScarretera = [CRScarretera]
,@decCRSkilometro = [CRSkilometro]
,@sCRSnombrepredio = [CRSnombrepredio]
,@iCRSpisospredio = [CRSpisospredio]
,@sCRSpartidapredio = [CRSpartidapredio]
,@sCRStomopredio = [CRStomopredio]
,@sCRSfolioinipredio = [CRSfolioinipredio]
,@sCRSfoliofinpredio = [CRSfoliofinpredio]
,@sCRSasientopredio = [CRSasientopredio]
,@dtCRSfinscpredio = [CRSfinscpredio]
,@sCRSficharegistral = [CRSficharegistral]
,@decCRSareaconstruida = [CRSareaconstruida]
,@decCRSperimetro = [CRSperimetro]
,@sCRSusopredio = [CRSusopredio]
,@decCRSvalorautovaluo = [CRSvalorautovaluo]
,@sCRScodigoluz = [CRScodigoluz]
,@sCRScodigoagua = [CRScodigoagua]
,@dtCRSfadqpredio = [CRSfadqpredio]
,@sCRSobservacion = [CRSobservacion]
,@iINVid = [INVid]
,@iACFid = [ACFid]
FROM [dbo].[acfICRt_Inventariocaracteristicas]
WHERE 
[INVid] = @iINVid
AND [ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfINBt_Inventariobienes]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfINBt_Inventariobienes]
@iINVid int OUTPUT
, @iACFid int OUTPUT
, @sACFactivo varchar(100) OUTPUT
, @sBUKRS char(4) OUTPUT
, @sSEGMENT char(10) OUTPUT
, @sKOSTL char(10) OUTPUT
, @sANLKL char(8) OUTPUT
, @sPERNR char(8) OUTPUT
, @sACTid char(2) OUTPUT
, @sCSTid char(4) OUTPUT
, @sVNRid char(7) OUTPUT
, @dtACFfincorporacion datetime OUTPUT
, @dtACFfcapitalizacion datetime OUTPUT
, @iACFvutiltribanio int OUTPUT
, @iACFvutiltribdia int OUTPUT
, @decACFvalortrib decimal(18, 2) OUTPUT
, @decACFfactortrib decimal(18, 6) OUTPUT
, @decACFdepacutrib decimal(18, 2) OUTPUT
, @iACfvutilniifanio int OUTPUT
, @iACFvutilniifdia int OUTPUT
, @decACFvalorniif decimal(18, 2) OUTPUT
, @decACFfactorniif decimal(18, 6) OUTPUT
, @decACFdepacuniif decimal(18, 2) OUTPUT
, @sACFobra char(10) OUTPUT
, @sACFord41 char(4) OUTPUT
, @sACFord42 char(4) OUTPUT
, @sACFord43 char(4) OUTPUT
, @sACFord44 char(4) OUTPUT
, @sACFanlue char(12) OUTPUT
, @sACFcuenta char(18) OUTPUT
, @sACFcuentadep char(18) OUTPUT
, @sLIFNR char(10) OUTPUT
, @sBLART char(2) OUTPUT
, @sACFcomprobante char(18) OUTPUT
, @sACFnotaingreso char(18) OUTPUT
, @dtACFfechanotaingreso datetime OUTPUT
, @sACFordencompra char(18) OUTPUT
, @sACFobservacion varchar(254) OUTPUT
, @iAMBid int OUTPUT
, @iUBEid int OUTPUT
, @dtACFfechacomprobante datetime OUTPUT
, @dtACFfechaordencompra datetime OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfINBt_Inventariobienes]
(
[INVid]
,[ACFid]
,[ACFactivo]
,[BUKRS]
,[SEGMENT]
,[KOSTL]
,[ANLKL]
,[PERNR]
,[ACTid]
,[CSTid]
,[VNRid]
,[ACFfincorporacion]
,[ACFfcapitalizacion]
,[ACFvutiltribanio]
,[ACFvutiltribdia]
,[ACFvalortrib]
,[ACFfactortrib]
,[ACFdepacutrib]
,[ACfvutilniifanio]
,[ACFvutilniifdia]
,[ACFvalorniif]
,[ACFfactorniif]
,[ACFdepacuniif]
,[ACFobra]
,[ACFord41]
,[ACFord42]
,[ACFord43]
,[ACFord44]
,[ACFanlue]
,[ACFcuenta]
,[ACFcuentadep]
,[LIFNR]
,[BLART]
,[ACFcomprobante]
,[ACFnotaingreso]
,[ACFfechanotaingreso]
,[ACFordencompra]
,[ACFobservacion]
,[AMBid]
,[UBEid]
,[ACFfechacomprobante]
,[ACFfechaordencompra]
)
VALUES
(
@iINVid
,@iACFid
,@sACFactivo
,@sBUKRS
,@sSEGMENT
,@sKOSTL
,@sANLKL
,@sPERNR
,@sACTid
,@sCSTid
,@sVNRid
,@dtACFfincorporacion
,@dtACFfcapitalizacion
,@iACFvutiltribanio
,@iACFvutiltribdia
,@decACFvalortrib
,@decACFfactortrib
,@decACFdepacutrib
,@iACfvutilniifanio
,@iACFvutilniifdia
,@decACFvalorniif
,@decACFfactorniif
,@decACFdepacuniif
,@sACFobra
,@sACFord41
,@sACFord42
,@sACFord43
,@sACFord44
,@sACFanlue
,@sACFcuenta
,@sACFcuentadep
,@sLIFNR
,@sBLART
,@sACFcomprobante
,@sACFnotaingreso
,@dtACFfechanotaingreso
,@sACFordencompra
,@sACFobservacion
,@iAMBid
,@iUBEid
,@dtACFfechacomprobante
,@dtACFfechaordencompra
)
SELECT 
@iINVid = [INVid]
,@iACFid = [ACFid]
,@sACFactivo = [ACFactivo]
,@sBUKRS = [BUKRS]
,@sSEGMENT = [SEGMENT]
,@sKOSTL = [KOSTL]
,@sANLKL = [ANLKL]
,@sPERNR = [PERNR]
,@sACTid = [ACTid]
,@sCSTid = [CSTid]
,@sVNRid = [VNRid]
,@dtACFfincorporacion = [ACFfincorporacion]
,@dtACFfcapitalizacion = [ACFfcapitalizacion]
,@iACFvutiltribanio = [ACFvutiltribanio]
,@iACFvutiltribdia = [ACFvutiltribdia]
,@decACFvalortrib = [ACFvalortrib]
,@decACFfactortrib = [ACFfactortrib]
,@decACFdepacutrib = [ACFdepacutrib]
,@iACfvutilniifanio = [ACfvutilniifanio]
,@iACFvutilniifdia = [ACFvutilniifdia]
,@decACFvalorniif = [ACFvalorniif]
,@decACFfactorniif = [ACFfactorniif]
,@decACFdepacuniif = [ACFdepacuniif]
,@sACFobra = [ACFobra]
,@sACFord41 = [ACFord41]
,@sACFord42 = [ACFord42]
,@sACFord43 = [ACFord43]
,@sACFord44 = [ACFord44]
,@sACFanlue = [ACFanlue]
,@sACFcuenta = [ACFcuenta]
,@sACFcuentadep = [ACFcuentadep]
,@sLIFNR = [LIFNR]
,@sBLART = [BLART]
,@sACFcomprobante = [ACFcomprobante]
,@sACFnotaingreso = [ACFnotaingreso]
,@dtACFfechanotaingreso = [ACFfechanotaingreso]
,@sACFordencompra = [ACFordencompra]
,@sACFobservacion = [ACFobservacion]
,@iAMBid = [AMBid]
,@iUBEid = [UBEid]
,@dtACFfechacomprobante = [ACFfechacomprobante]
,@dtACFfechaordencompra = [ACFfechaordencompra]
FROM [dbo].[acfINBt_Inventariobienes]
WHERE 
[INVid] = @iINVid
AND [ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfINVp_Inventario]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfINVp_Inventario]
@iINVid int OUTPUT
, @sINVdetalle varchar(100) OUTPUT
, @dtINVinicio datetime OUTPUT
, @dtINVcierre datetime OUTPUT
, @bINVactivo bit OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfINVp_Inventario]
(
[INVid]
,[INVdetalle]
,[INVinicio]
,[INVcierre]
,[INVactivo]
)
VALUES
(
@iINVid
,@sINVdetalle
,@dtINVinicio
,@dtINVcierre
,@bINVactivo
)
SELECT 
@iINVid = [INVid]
,@sINVdetalle = [INVdetalle]
,@dtINVinicio = [INVinicio]
,@dtINVcierre = [INVcierre]
,@bINVactivo = [INVactivo]
FROM [dbo].[acfINVp_Inventario]
WHERE 
[INVid] = @iINVid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfLOCt_Local]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfLOCt_Local]
@iLOCid int OUTPUT
, @sLOClocal varchar(100) OUTPUT
, @sLOCdireccion varchar(100) OUTPUT
, @sSEGMENT char(10) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfLOCt_Local]
(
[LOCid]
,[LOClocal]
,[LOCdireccion]
,[SEGMENT]
)
VALUES
(
@iLOCid
,@sLOClocal
,@sLOCdireccion
,@sSEGMENT
)
SELECT 
@iLOCid = [LOCid]
,@sLOClocal = [LOClocal]
,@sLOCdireccion = [LOCdireccion]
,@sSEGMENT = [SEGMENT]
FROM [dbo].[acfLOCt_Local]
WHERE 
[LOCid] = @iLOCid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfMARt_Marca]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfMARt_Marca]
@iMARid int OUTPUT
, @sMARmarca varchar(60) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfMARt_Marca]
(
[MARid]
,[MARmarca]
)
VALUES
(
@iMARid
,@sMARmarca
)
SELECT 
@iMARid = [MARid]
,@sMARmarca = [MARmarca]
FROM [dbo].[acfMARt_Marca]
WHERE 
[MARid] = @iMARid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfMATt_Material]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfMATt_Material]
@iMATid int OUTPUT
, @sMATmaterial char(60) OUTPUT
, @sMATabreviado char(10) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfMATt_Material]
(
[MATid]
,[MATmaterial]
,[MATabreviado]
)
VALUES
(
@iMATid
,@sMATmaterial
,@sMATabreviado
)
SELECT 
@iMATid = [MATid]
,@sMATmaterial = [MATmaterial]
,@sMATabreviado = [MATabreviado]
FROM [dbo].[acfMATt_Material]
WHERE 
[MATid] = @iMATid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfMEQt_maquinariaequipo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfMEQt_maquinariaequipo]
@decMEQvnrtot decimal(12, 2) OUTPUT
, @decMEQcantidad decimal(12, 2) OUTPUT
, @decMEQaccffecinc decimal(12, 2) OUTPUT
, @sMEQabreviatura char(18) OUTPUT
, @sMEQopiniontecnica char(18) OUTPUT
, @decMEQctacontable decimal(12, 2) OUTPUT
, @decMEQniif decimal(12, 2) OUTPUT
, @decMEQvrident decimal(12, 2) OUTPUT
, @decMEQprovdes decimal(12, 2) OUTPUT
, @decMEQcostorepcor decimal(12, 2) OUTPUT
, @decMEQfactorinst decimal(12, 2) OUTPUT
, @decMEQvalorresi decimal(12, 2) OUTPUT
, @decMEQedadact decimal(12, 2) OUTPUT
, @decMEQdeptas decimal(12, 2) OUTPUT
, @decMEQvalorref decimal(12, 2) OUTPUT
, @decMEQvalref2 decimal(12, 2) OUTPUT
, @decMEQvsm decimal(12, 2) OUTPUT
, @decMEQestado decimal(12, 2) OUTPUT
, @decMEQvidautil decimal(12, 2) OUTPUT
, @decMEQvidautmax decimal(12, 2) OUTPUT
, @decMEQedadtec decimal(12, 2) OUTPUT
, @decMEQdepreciacion decimal(12, 2) OUTPUT
, @decMEQdep2012 decimal(12, 2) OUTPUT
, @decMEQcostocorr decimal(12, 2) OUTPUT
, @decMEQvaloractivo decimal(12, 2) OUTPUT
, @decMEQdepre decimal(12, 2) OUTPUT
, @decMEQtasair decimal(12, 2) OUTPUT
, @decMEQimpdife decimal(12, 2) OUTPUT
, @decMEQdifneta decimal(12, 2) OUTPUT
, @decMEQvalorneto decimal(12, 2) OUTPUT
, @decMEQvalact decimal(12, 2) OUTPUT
, @decMEQcostotcorr decimal(12, 2) OUTPUT
, @decMEQdepacuniif decimal(12, 2) OUTPUT
, @decMEQcrcnet decimal(12, 2) OUTPUT
, @decMEQvalnet decimal(12, 2) OUTPUT
, @decMEQdiferenneta decimal(12, 2) OUTPUT
, @decMEQvalornetolib decimal(12, 2) OUTPUT
, @decMEQdepacumtrib decimal(12, 2) OUTPUT
, @decMEQcostohistorico decimal(12, 2) OUTPUT
, @sRVAcodigo char(18) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfMEQt_maquinariaequipo]
(
[MEQvnrtot]
,[MEQcantidad]
,[MEQaccffecinc]
,[MEQabreviatura]
,[MEQopiniontecnica]
,[MEQctacontable]
,[MEQniif]
,[MEQvrident]
,[MEQprovdes]
,[MEQcostorepcor]
,[MEQfactorinst]
,[MEQvalorresi]
,[MEQedadact]
,[MEQdeptas]
,[MEQvalorref]
,[MEQvalref2]
,[MEQvsm]
,[MEQestado]
,[MEQvidautil]
,[MEQvidautmax]
,[MEQedadtec]
,[MEQdepreciacion]
,[MEQdep2012]
,[MEQcostocorr]
,[MEQvaloractivo]
,[MEQdepre]
,[MEQtasair]
,[MEQimpdife]
,[MEQdifneta]
,[MEQvalorneto]
,[MEQvalact]
,[MEQcostotcorr]
,[MEQdepacuniif]
,[MEQcrcnet]
,[MEQvalnet]
,[MEQdiferenneta]
,[MEQvalornetolib]
,[MEQdepacumtrib]
,[MEQcostohistorico]
,[RVAcodigo]
)
VALUES
(
@decMEQvnrtot
,@decMEQcantidad
,@decMEQaccffecinc
,@sMEQabreviatura
,@sMEQopiniontecnica
,@decMEQctacontable
,@decMEQniif
,@decMEQvrident
,@decMEQprovdes
,@decMEQcostorepcor
,@decMEQfactorinst
,@decMEQvalorresi
,@decMEQedadact
,@decMEQdeptas
,@decMEQvalorref
,@decMEQvalref2
,@decMEQvsm
,@decMEQestado
,@decMEQvidautil
,@decMEQvidautmax
,@decMEQedadtec
,@decMEQdepreciacion
,@decMEQdep2012
,@decMEQcostocorr
,@decMEQvaloractivo
,@decMEQdepre
,@decMEQtasair
,@decMEQimpdife
,@decMEQdifneta
,@decMEQvalorneto
,@decMEQvalact
,@decMEQcostotcorr
,@decMEQdepacuniif
,@decMEQcrcnet
,@decMEQvalnet
,@decMEQdiferenneta
,@decMEQvalornetolib
,@decMEQdepacumtrib
,@decMEQcostohistorico
,@sRVAcodigo
)
SELECT 
@decMEQvnrtot = [MEQvnrtot]
,@decMEQcantidad = [MEQcantidad]
,@decMEQaccffecinc = [MEQaccffecinc]
,@sMEQabreviatura = [MEQabreviatura]
,@sMEQopiniontecnica = [MEQopiniontecnica]
,@decMEQctacontable = [MEQctacontable]
,@decMEQniif = [MEQniif]
,@decMEQvrident = [MEQvrident]
,@decMEQprovdes = [MEQprovdes]
,@decMEQcostorepcor = [MEQcostorepcor]
,@decMEQfactorinst = [MEQfactorinst]
,@decMEQvalorresi = [MEQvalorresi]
,@decMEQedadact = [MEQedadact]
,@decMEQdeptas = [MEQdeptas]
,@decMEQvalorref = [MEQvalorref]
,@decMEQvalref2 = [MEQvalref2]
,@decMEQvsm = [MEQvsm]
,@decMEQestado = [MEQestado]
,@decMEQvidautil = [MEQvidautil]
,@decMEQvidautmax = [MEQvidautmax]
,@decMEQedadtec = [MEQedadtec]
,@decMEQdepreciacion = [MEQdepreciacion]
,@decMEQdep2012 = [MEQdep2012]
,@decMEQcostocorr = [MEQcostocorr]
,@decMEQvaloractivo = [MEQvaloractivo]
,@decMEQdepre = [MEQdepre]
,@decMEQtasair = [MEQtasair]
,@decMEQimpdife = [MEQimpdife]
,@decMEQdifneta = [MEQdifneta]
,@decMEQvalorneto = [MEQvalorneto]
,@decMEQvalact = [MEQvalact]
,@decMEQcostotcorr = [MEQcostotcorr]
,@decMEQdepacuniif = [MEQdepacuniif]
,@decMEQcrcnet = [MEQcrcnet]
,@decMEQvalnet = [MEQvalnet]
,@decMEQdiferenneta = [MEQdiferenneta]
,@decMEQvalornetolib = [MEQvalornetolib]
,@decMEQdepacumtrib = [MEQdepacumtrib]
,@decMEQcostohistorico = [MEQcostohistorico]
,@sRVAcodigo = [RVAcodigo]
FROM [dbo].[acfMEQt_maquinariaequipo]
WHERE 
[RVAcodigo] = @sRVAcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfMVAt_MovimientoActivo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfMVAt_MovimientoActivo]
@iMVAid int OUTPUT
, @iACFid int OUTPUT
, @sACFactivo varchar(254) OUTPUT
, @sBUKRS char(4) OUTPUT
, @sSEGMENT char(10) OUTPUT
, @sKOSTL char(10) OUTPUT
, @sANLKL char(8) OUTPUT
, @sPERNR char(8) OUTPUT
, @sCSTid char(4) OUTPUT
, @sTMVid char(2) OUTPUT
, @sMVMid char(2) OUTPUT
, @dtACFfmovimiento datetime OUTPUT
, @sVNRid char(7) OUTPUT
, @dtACFfincorporacion datetime OUTPUT
, @dtACFfcapitalizacion datetime OUTPUT
, @iACFvutiltribanio int OUTPUT
, @iACFvutiltribdia int OUTPUT
, @decACFvalortrib decimal(18, 2) OUTPUT
, @decACFfactortrib decimal(18, 6) OUTPUT
, @decACFdepacutrib decimal(18, 2) OUTPUT
, @iACFvutilniifanio int OUTPUT
, @iACFvutilniifdia int OUTPUT
, @decACFvalorniif decimal(18, 2) OUTPUT
, @decACFfactorniif decimal(18, 6) OUTPUT
, @decACFdepacuniif decimal(18, 2) OUTPUT
, @sACFobra char(10) OUTPUT
, @sACFord41 char(4) OUTPUT
, @sACFord42 char(4) OUTPUT
, @sACFord43 char(4) OUTPUT
, @sACFord44 char(4) OUTPUT
, @sACFanlue char(12) OUTPUT
, @sACFcuenta char(18) OUTPUT
, @sACFcuentadep char(18) OUTPUT
, @sACFcomprobante char(18) OUTPUT
, @sACFnotaingreso char(18) OUTPUT
, @dtACFfechanotaingreso datetime OUTPUT
, @sACFordencompra char(18) OUTPUT
, @dtACFfechaordencompra datetime OUTPUT
, @sACFobservacion char(254) OUTPUT
, @sLIFNR char(10) OUTPUT
, @sBLART char(2) OUTPUT
, @iAMBid int OUTPUT
, @sCMPid char(15) OUTPUT
, @iUBEid int OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfMVAt_MovimientoActivo]
(
[MVAid]
,[ACFid]
,[ACFactivo]
,[BUKRS]
,[SEGMENT]
,[KOSTL]
,[ANLKL]
,[PERNR]
,[CSTid]
,[TMVid]
,[MVMid]
,[ACFfmovimiento]
,[VNRid]
,[ACFfincorporacion]
,[ACFfcapitalizacion]
,[ACFvutiltribanio]
,[ACFvutiltribdia]
,[ACFvalortrib]
,[ACFfactortrib]
,[ACFdepacutrib]
,[ACFvutilniifanio]
,[ACFvutilniifdia]
,[ACFvalorniif]
,[ACFfactorniif]
,[ACFdepacuniif]
,[ACFobra]
,[ACFord41]
,[ACFord42]
,[ACFord43]
,[ACFord44]
,[ACFanlue]
,[ACFcuenta]
,[ACFcuentadep]
,[ACFcomprobante]
,[ACFnotaingreso]
,[ACFfechanotaingreso]
,[ACFordencompra]
,[ACFfechaordencompra]
,[ACFobservacion]
,[LIFNR]
,[BLART]
,[AMBid]
,[CMPid]
,[UBEid]
)
VALUES
(
@iMVAid
,@iACFid
,@sACFactivo
,@sBUKRS
,@sSEGMENT
,@sKOSTL
,@sANLKL
,@sPERNR
,@sCSTid
,@sTMVid
,@sMVMid
,@dtACFfmovimiento
,@sVNRid
,@dtACFfincorporacion
,@dtACFfcapitalizacion
,@iACFvutiltribanio
,@iACFvutiltribdia
,@decACFvalortrib
,@decACFfactortrib
,@decACFdepacutrib
,@iACFvutilniifanio
,@iACFvutilniifdia
,@decACFvalorniif
,@decACFfactorniif
,@decACFdepacuniif
,@sACFobra
,@sACFord41
,@sACFord42
,@sACFord43
,@sACFord44
,@sACFanlue
,@sACFcuenta
,@sACFcuentadep
,@sACFcomprobante
,@sACFnotaingreso
,@dtACFfechanotaingreso
,@sACFordencompra
,@dtACFfechaordencompra
,@sACFobservacion
,@sLIFNR
,@sBLART
,@iAMBid
,@sCMPid
,@iUBEid
)
SELECT 
@iMVAid = [MVAid]
,@iACFid = [ACFid]
,@sACFactivo = [ACFactivo]
,@sBUKRS = [BUKRS]
,@sSEGMENT = [SEGMENT]
,@sKOSTL = [KOSTL]
,@sANLKL = [ANLKL]
,@sPERNR = [PERNR]
,@sCSTid = [CSTid]
,@sTMVid = [TMVid]
,@sMVMid = [MVMid]
,@dtACFfmovimiento = [ACFfmovimiento]
,@sVNRid = [VNRid]
,@dtACFfincorporacion = [ACFfincorporacion]
,@dtACFfcapitalizacion = [ACFfcapitalizacion]
,@iACFvutiltribanio = [ACFvutiltribanio]
,@iACFvutiltribdia = [ACFvutiltribdia]
,@decACFvalortrib = [ACFvalortrib]
,@decACFfactortrib = [ACFfactortrib]
,@decACFdepacutrib = [ACFdepacutrib]
,@iACFvutilniifanio = [ACFvutilniifanio]
,@iACFvutilniifdia = [ACFvutilniifdia]
,@decACFvalorniif = [ACFvalorniif]
,@decACFfactorniif = [ACFfactorniif]
,@decACFdepacuniif = [ACFdepacuniif]
,@sACFobra = [ACFobra]
,@sACFord41 = [ACFord41]
,@sACFord42 = [ACFord42]
,@sACFord43 = [ACFord43]
,@sACFord44 = [ACFord44]
,@sACFanlue = [ACFanlue]
,@sACFcuenta = [ACFcuenta]
,@sACFcuentadep = [ACFcuentadep]
,@sACFcomprobante = [ACFcomprobante]
,@sACFnotaingreso = [ACFnotaingreso]
,@dtACFfechanotaingreso = [ACFfechanotaingreso]
,@sACFordencompra = [ACFordencompra]
,@dtACFfechaordencompra = [ACFfechaordencompra]
,@sACFobservacion = [ACFobservacion]
,@sLIFNR = [LIFNR]
,@sBLART = [BLART]
,@iAMBid = [AMBid]
,@sCMPid = [CMPid]
,@iUBEid = [UBEid]
FROM [dbo].[acfMVAt_MovimientoActivo]
WHERE 
[MVAid] = @iMVAid
AND [ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfMVMt_MotivoMovimiento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfMVMt_MotivoMovimiento]
@sTMVid char(2) OUTPUT
, @sMVMid char(2) OUTPUT
, @sMVMmotivomovimiento char(60) OUTPUT
, @iMVMjustificacion smallint OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfMVMt_MotivoMovimiento]
(
[TMVid]
,[MVMid]
,[MVMmotivomovimiento]
,[MVMjustificacion]
)
VALUES
(
@sTMVid
,@sMVMid
,@sMVMmotivomovimiento
,@iMVMjustificacion
)
SELECT 
@sTMVid = [TMVid]
,@sMVMid = [MVMid]
,@sMVMmotivomovimiento = [MVMmotivomovimiento]
,@iMVMjustificacion = [MVMjustificacion]
FROM [dbo].[acfMVMt_MotivoMovimiento]
WHERE 
[MVMid] = @sMVMid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfPDFt_procesodiferido]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfPDFt_procesodiferido]
@iPDFcodigo int OUTPUT
, @sPDFperiodo char(18) OUTPUT
, @dtPDFfecha datetime OUTPUT
, @sPDFreponsable char(100) OUTPUT
, @bPDFestado bit OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfPDFt_procesodiferido]
(
[PDFcodigo]
,[PDFperiodo]
,[PDFfecha]
,[PDFreponsable]
,[PDFestado]
)
VALUES
(
@iPDFcodigo
,@sPDFperiodo
,@dtPDFfecha
,@sPDFreponsable
,@bPDFestado
)
SELECT 
@iPDFcodigo = [PDFcodigo]
,@sPDFperiodo = [PDFperiodo]
,@dtPDFfecha = [PDFfecha]
,@sPDFreponsable = [PDFreponsable]
,@bPDFestado = [PDFestado]
FROM [dbo].[acfPDFt_procesodiferido]
WHERE 
[PDFcodigo] = @iPDFcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfRTRt_Reparotributario]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfRTRt_Reparotributario]
@sRTRperiodo char(6) OUTPUT
, @dtRTRfecha datetime OUTPUT
, @sRTRresponsable char(50) OUTPUT
, @bRTRestado bit OUTPUT
, @iRTRcodigo int OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfRTRt_Reparotributario]
(
[RTRperiodo]
,[RTRfecha]
,[RTRresponsable]
,[RTRestado]
,[RTRcodigo]
)
VALUES
(
@sRTRperiodo
,@dtRTRfecha
,@sRTRresponsable
,@bRTRestado
,@iRTRcodigo
)
SELECT 
@sRTRperiodo = [RTRperiodo]
,@dtRTRfecha = [RTRfecha]
,@sRTRresponsable = [RTRresponsable]
,@bRTRestado = [RTRestado]
,@iRTRcodigo = [RTRcodigo]
FROM [dbo].[acfRTRt_Reparotributario]
WHERE 
[RTRcodigo] = @iRTRcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfRVAt_registrovaluacion]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfRVAt_registrovaluacion]
@sRVAcodigo char(18) OUTPUT
, @sRVAperiodo char(18) OUTPUT
, @sRVAfecha char(18) OUTPUT
, @sRVAresponsable char(18) OUTPUT
, @sRVRestado char(18) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfRVAt_registrovaluacion]
(
[RVAcodigo]
,[RVAperiodo]
,[RVAfecha]
,[RVAresponsable]
,[RVRestado]
)
VALUES
(
@sRVAcodigo
,@sRVAperiodo
,@sRVAfecha
,@sRVAresponsable
,@sRVRestado
)
SELECT 
@sRVAcodigo = [RVAcodigo]
,@sRVAperiodo = [RVAperiodo]
,@sRVAfecha = [RVAfecha]
,@sRVAresponsable = [RVAresponsable]
,@sRVRestado = [RVRestado]
FROM [dbo].[acfRVAt_registrovaluacion]
WHERE 
[RVAcodigo] = @sRVAcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfSELt_SistemaElectrico]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfSELt_SistemaElectrico]
@sSELid char(6) OUTPUT
, @sSELsistemaelectrico varchar(25) OUTPUT
, @sSEGMENT char(10) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfSELt_SistemaElectrico]
(
[SELid]
,[SELsistemaelectrico]
,[SEGMENT]
)
VALUES
(
@sSELid
,@sSELsistemaelectrico
,@sSEGMENT
)
SELECT 
@sSELid = [SELid]
,@sSELsistemaelectrico = [SELsistemaelectrico]
,@sSEGMENT = [SEGMENT]
FROM [dbo].[acfSELt_SistemaElectrico]
WHERE 
[SELid] = @sSELid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfSPNt_Supranumero]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfSPNt_Supranumero]
@sV_T087U_ANLUE char(12) OUTPUT
, @sV_T087U_ANLUE_TXT char(100) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfSPNt_Supranumero]
(
[V_T087U_ANLUE]
,[V_T087U_ANLUE_TXT]
)
VALUES
(
@sV_T087U_ANLUE
,@sV_T087U_ANLUE_TXT
)
SELECT 
@sV_T087U_ANLUE = [V_T087U_ANLUE]
,@sV_T087U_ANLUE_TXT = [V_T087U_ANLUE_TXT]
FROM [dbo].[acfSPNt_Supranumero]
WHERE 
[V_T087U_ANLUE] = @sV_T087U_ANLUE

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfTMVt_TipoMovimiento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfTMVt_TipoMovimiento]
@sTMVid char(2) OUTPUT
, @sTMVtipomovimiento char(60) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfTMVt_TipoMovimiento]
(
[TMVid]
,[TMVtipomovimiento]
)
VALUES
(
@sTMVid
,@sTMVtipomovimiento
)
SELECT 
@sTMVid = [TMVid]
,@sTMVtipomovimiento = [TMVtipomovimiento]
FROM [dbo].[acfTMVt_TipoMovimiento]
WHERE 
[TMVid] = @sTMVid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfTRNt_terrenodetalle]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfTRNt_terrenodetalle]
@sCRSnombrepredio char(18) OUTPUT
, @sCRScentropoblado char(18) OUTPUT
, @sCRSdepartamento char(18) OUTPUT
, @sCRSinterior char(18) OUTPUT
, @sCRScarretera char(18) OUTPUT
, @sCRSkilometro char(18) OUTPUT
, @sACFArea char(18) OUTPUT
, @sACFvalor char(18) OUTPUT
, @sACFtc char(18) OUTPUT
, @sACFvalorSoles char(18) OUTPUT
, @sACFValorDolar char(18) OUTPUT
, @sACFValorAnt0 char(18) OUTPUT
, @sACFVutilniff char(18) OUTPUT
, @sACFNetopcga char(18) OUTPUT
, @sACFvalorATri char(18) OUTPUT
, @sACFid char(18) OUTPUT
, @sACFdiferencia char(18) OUTPUT
, @sACFDifTemDedu char(18) OUTPUT
, @sACFDifTemGrav char(18) OUTPUT
, @sACFTasaIR char(18) OUTPUT
, @sACFSaldoDeducible char(18) OUTPUT
, @sACFSaldoGravable char(18) OUTPUT
, @sRVAcodigo char(18) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfTRNt_terrenodetalle]
(
[CRSnombrepredio]
,[CRScentropoblado]
,[CRSdepartamento]
,[CRSinterior]
,[CRScarretera]
,[CRSkilometro]
,[ACFArea]
,[ACFvalor]
,[ACFtc]
,[ACFvalorSoles]
,[ACFValorDolar]
,[ACFValorAnt0]
,[ACFVutilniff]
,[ACFNetopcga]
,[ACFvalorATri]
,[ACFid]
,[ACFdiferencia]
,[ACFDifTemDedu]
,[ACFDifTemGrav]
,[ACFTasaIR]
,[ACFSaldoDeducible]
,[ACFSaldoGravable]
,[RVAcodigo]
)
VALUES
(
@sCRSnombrepredio
,@sCRScentropoblado
,@sCRSdepartamento
,@sCRSinterior
,@sCRScarretera
,@sCRSkilometro
,@sACFArea
,@sACFvalor
,@sACFtc
,@sACFvalorSoles
,@sACFValorDolar
,@sACFValorAnt0
,@sACFVutilniff
,@sACFNetopcga
,@sACFvalorATri
,@sACFid
,@sACFdiferencia
,@sACFDifTemDedu
,@sACFDifTemGrav
,@sACFTasaIR
,@sACFSaldoDeducible
,@sACFSaldoGravable
,@sRVAcodigo
)
SELECT 
@sCRSnombrepredio = [CRSnombrepredio]
,@sCRScentropoblado = [CRScentropoblado]
,@sCRSdepartamento = [CRSdepartamento]
,@sCRSinterior = [CRSinterior]
,@sCRScarretera = [CRScarretera]
,@sCRSkilometro = [CRSkilometro]
,@sACFArea = [ACFArea]
,@sACFvalor = [ACFvalor]
,@sACFtc = [ACFtc]
,@sACFvalorSoles = [ACFvalorSoles]
,@sACFValorDolar = [ACFValorDolar]
,@sACFValorAnt0 = [ACFValorAnt0]
,@sACFVutilniff = [ACFVutilniff]
,@sACFNetopcga = [ACFNetopcga]
,@sACFvalorATri = [ACFvalorATri]
,@sACFid = [ACFid]
,@sACFdiferencia = [ACFdiferencia]
,@sACFDifTemDedu = [ACFDifTemDedu]
,@sACFDifTemGrav = [ACFDifTemGrav]
,@sACFTasaIR = [ACFTasaIR]
,@sACFSaldoDeducible = [ACFSaldoDeducible]
,@sACFSaldoGravable = [ACFSaldoGravable]
,@sRVAcodigo = [RVAcodigo]
FROM [dbo].[acfTRNt_terrenodetalle]
WHERE 
[RVAcodigo] = @sRVAcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfUBEt_UbicacionElectrica]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfUBEt_UbicacionElectrica]
@iUBEcodigogis bigint OUTPUT
, @sUBEobra char(10) OUTPUT
, @sKOSTL char(10) OUTPUT
, @sVNRid char(7) OUTPUT
, @sSELid char(6) OUTPUT
, @iUBEset bigint OUTPUT
, @sUBEsetetq varchar(30) OUTPUT
, @iUBEalimentador bigint OUTPUT
, @sUBEalimentadoretq varchar(10) OUTPUT
, @iUBEsed bigint OUTPUT
, @sUBEsedetq varchar(10) OUTPUT
, @iUBEcircuito bigint OUTPUT
, @sUBEcircuitoetq varchar(10) OUTPUT
, @iUBEpuntoi bigint OUTPUT
, @sUBEpuntoietq varchar(10) OUTPUT
, @iUBEpuntof bigint OUTPUT
, @sUBEpuntofetq varchar(10) OUTPUT
, @iUBEid int OUTPUT
, @iACFid int OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfUBEt_UbicacionElectrica]
(
[UBEcodigogis]
,[UBEobra]
,[KOSTL]
,[VNRid]
,[SELid]
,[UBEset]
,[UBEsetetq]
,[UBEalimentador]
,[UBEalimentadoretq]
,[UBEsed]
,[UBEsedetq]
,[UBEcircuito]
,[UBEcircuitoetq]
,[UBEpuntoi]
,[UBEpuntoietq]
,[UBEpuntof]
,[UBEpuntofetq]
,[UBEid]
,[ACFid]
)
VALUES
(
@iUBEcodigogis
,@sUBEobra
,@sKOSTL
,@sVNRid
,@sSELid
,@iUBEset
,@sUBEsetetq
,@iUBEalimentador
,@sUBEalimentadoretq
,@iUBEsed
,@sUBEsedetq
,@iUBEcircuito
,@sUBEcircuitoetq
,@iUBEpuntoi
,@sUBEpuntoietq
,@iUBEpuntof
,@sUBEpuntofetq
,@iUBEid
,@iACFid
)
SELECT 
@iUBEcodigogis = [UBEcodigogis]
,@sUBEobra = [UBEobra]
,@sKOSTL = [KOSTL]
,@sVNRid = [VNRid]
,@sSELid = [SELid]
,@iUBEset = [UBEset]
,@sUBEsetetq = [UBEsetetq]
,@iUBEalimentador = [UBEalimentador]
,@sUBEalimentadoretq = [UBEalimentadoretq]
,@iUBEsed = [UBEsed]
,@sUBEsedetq = [UBEsedetq]
,@iUBEcircuito = [UBEcircuito]
,@sUBEcircuitoetq = [UBEcircuitoetq]
,@iUBEpuntoi = [UBEpuntoi]
,@sUBEpuntoietq = [UBEpuntoietq]
,@iUBEpuntof = [UBEpuntof]
,@sUBEpuntofetq = [UBEpuntofetq]
,@iUBEid = [UBEid]
,@iACFid = [ACFid]
FROM [dbo].[acfUBEt_UbicacionElectrica]
WHERE 
[UBEid] = @iUBEid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfUNMt_Unimed]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfUNMt_Unimed]
@iUNMid int OUTPUT
, @sUNMunidad char(3) OUTPUT
, @sUNMdetalle char(20) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfUNMt_Unimed]
(
[UNMid]
,[UNMunidad]
,[UNMdetalle]
)
VALUES
(
@iUNMid
,@sUNMunidad
,@sUNMdetalle
)
SELECT 
@iUNMid = [UNMid]
,@sUNMunidad = [UNMunidad]
,@sUNMdetalle = [UNMdetalle]
FROM [dbo].[acfUNMt_Unimed]
WHERE 
[UNMid] = @iUNMid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfVNRt_VNR]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_acfVNRt_VNR]
@sVNRid char(7) OUTPUT
, @sVNRvnr char(150) OUTPUT
, @sVNRcuenta char(20) OUTPUT
, @sVNRcuentadep char(20) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfVNRt_VNR]
(
[VNRid]
,[VNRvnr]
,[VNRcuenta]
,[VNRcuentadep]
)
VALUES
(
@sVNRid
,@sVNRvnr
,@sVNRcuenta
,@sVNRcuentadep
)
SELECT 
@sVNRid = [VNRid]
,@sVNRvnr = [VNRvnr]
,@sVNRcuenta = [VNRcuenta]
,@sVNRcuentadep = [VNRcuentadep]
FROM [dbo].[acfVNRt_VNR]
WHERE 
[VNRid] = @sVNRid

GO
/****** Object:  StoredProcedure [dbo].[usp_I_bdiCAFpClaseDeActivoFijo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_bdiCAFpClaseDeActivoFijo]
@sANLKL char(8) OUTPUT
, @sTXK50 char(50) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[bdiCAFpClaseDeActivoFijo]
(
[ANLKL]
,[TXK50]
)
VALUES
(
@sANLKL
,@sTXK50
)
SELECT 
@sANLKL = [ANLKL]
,@sTXK50 = [TXK50]
FROM [dbo].[bdiCAFpClaseDeActivoFijo]
WHERE 
[ANLKL] = @sANLKL

GO
/****** Object:  StoredProcedure [dbo].[usp_I_bdiCDDpClasesDeDocumento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_bdiCDDpClasesDeDocumento]
@sBLART char(2) OUTPUT
, @sLTEXT char(100) OUTPUT
, @sDETdoctipo char(2) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[bdiCDDpClasesDeDocumento]
(
[BLART]
,[LTEXT]
,[DETdoctipo]
)
VALUES
(
@sBLART
,@sLTEXT
,@sDETdoctipo
)
SELECT 
@sBLART = [BLART]
,@sLTEXT = [LTEXT]
,@sDETdoctipo = [DETdoctipo]
FROM [dbo].[bdiCDDpClasesDeDocumento]
WHERE 
[BLART] = @sBLART

GO
/****** Object:  StoredProcedure [dbo].[usp_I_bdiPRVpProveedor]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_bdiPRVpProveedor]
@sLIFNR char(10) OUTPUT
, @sName1 char(35) OUTPUT
, @sStras char(35) OUTPUT
, @sSTCD1 char(16) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[bdiPRVpProveedor]
(
[LIFNR]
,[Name1]
,[Stras]
,[STCD1]
)
VALUES
(
@sLIFNR
,@sName1
,@sStras
,@sSTCD1
)
SELECT 
@sLIFNR = [LIFNR]
,@sName1 = [Name1]
,@sStras = [Stras]
,@sSTCD1 = [STCD1]
FROM [dbo].[bdiPRVpProveedor]
WHERE 
[LIFNR] = @sLIFNR

GO
/****** Object:  StoredProcedure [dbo].[usp_I_bdiSEGpSegmento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_bdiSEGpSegmento]
@sSEGMENT char(10) OUTPUT
, @sNAME char(50) OUTPUT
, @sid_zona varchar(1) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[bdiSEGpSegmento]
(
[SEGMENT]
,[NAME]
,[id_zona]
)
VALUES
(
@sSEGMENT
,@sNAME
,@sid_zona
)
SELECT 
@sSEGMENT = [SEGMENT]
,@sNAME = [NAME]
,@sid_zona = [id_zona]
FROM [dbo].[bdiSEGpSegmento]
WHERE 
[SEGMENT] = @sSEGMENT

GO
/****** Object:  StoredProcedure [dbo].[usp_I_bdiSOCpSociedades]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_bdiSOCpSociedades]
@sBUKRS char(4) OUTPUT
, @sBUTXT char(80) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[bdiSOCpSociedades]
(
[BUKRS]
,[BUTXT]
)
VALUES
(
@sBUKRS
,@sBUTXT
)
SELECT 
@sBUKRS = [BUKRS]
,@sBUTXT = [BUTXT]
FROM [dbo].[bdiSOCpSociedades]
WHERE 
[BUKRS] = @sBUKRS

GO
/****** Object:  StoredProcedure [dbo].[usp_I_bdiXCCpExtraccionSAP_CentroCosto]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_bdiXCCpExtraccionSAP_CentroCosto]
@sKOSTL char(10) OUTPUT
, @sKTEXT char(20) OUTPUT
, @sKLTXT char(40) OUTPUT
, @sMCDS3 char(20) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[bdiXCCpExtraccionSAP_CentroCosto]
(
[KOSTL]
,[KTEXT]
,[KLTXT]
,[MCDS3]
)
VALUES
(
@sKOSTL
,@sKTEXT
,@sKLTXT
,@sMCDS3
)
SELECT 
@sKOSTL = [KOSTL]
,@sKTEXT = [KTEXT]
,@sKLTXT = [KLTXT]
,@sMCDS3 = [MCDS3]
FROM [dbo].[bdiXCCpExtraccionSAP_CentroCosto]
WHERE 
[KOSTL] = @sKOSTL

GO
/****** Object:  StoredProcedure [dbo].[usp_I_bdiXPEpExtraccionSAP_Personal]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_I_bdiXPEpExtraccionSAP_Personal]
@sPERNR char(8) OUTPUT
, @sNachn char(40) OUTPUT
, @sName2 char(40) OUTPUT
, @sVorna char(40) OUTPUT
, @sDNI char(30) OUTPUT
, @sWERKS char(4) OUTPUT
, @sPersg char(1) OUTPUT
, @sKOSTL char(10) OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[bdiXPEpExtraccionSAP_Personal]
(
[PERNR]
,[Nachn]
,[Name2]
,[Vorna]
,[DNI]
,[WERKS]
,[Persg]
,[KOSTL]
)
VALUES
(
@sPERNR
,@sNachn
,@sName2
,@sVorna
,@sDNI
,@sWERKS
,@sPersg
,@sKOSTL
)
SELECT 
@sPERNR = [PERNR]
,@sNachn = [Nachn]
,@sName2 = [Name2]
,@sVorna = [Vorna]
,@sDNI = [DNI]
,@sWERKS = [WERKS]
,@sPersg = [Persg]
,@sKOSTL = [KOSTL]
FROM [dbo].[bdiXPEpExtraccionSAP_Personal]
WHERE 
[PERNR] = @sPERNR

GO
/****** Object:  StoredProcedure [dbo].[usp_L_AcfACFp_Activo_Fijo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_L_AcfACFp_Activo_Fijo]
AS
BEGIN
SELECT TOP 1 
ACFid,
BUKRS,
SEGMENT,
ANLKL,
PERNR,
CSTid,
MVMid,
ACFfmovimiento,
VNRid,
ACFdescripcion,
ACFfincorporacion,
ACFfcapitalizacion,
ACFvutiltribanio,
ACFvutiltribdia,
ACFvalortrib,
ACFvutilniifanio,
ACFvutilniifdia,
ACFvalorniif,
ACFdepacutrib,
ACFdepacuniif,
ACFobra,
ACFord41,
ACFord42,
ACFord43,
ACFord44,
ACFanlue,
ACFfactortrib,
ACFfactorniif,
ACFcuenta,
ACFcuentadep,
CMPid,
ACFobservacion,
LIFNR,
ACFnotaingreso,
ACFfechanotaingreso,
ACFordencompra,
ACFfechaordencompra,
BLART,
ACFcomprobante,
KOSTL,
AMBid,
UBEid,
ACFfechacomprobante,
V_T087U_ANLUE
FROM AcfACFp_Activo_Fijo
ORDER BY  ACFid DESC
END

GO
/****** Object:  StoredProcedure [dbo].[usp_N_AcfACFp_Activo_Fijo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_N_AcfACFp_Activo_Fijo]
@ACFid AS INT
AS
IF(SELECT COUNT(ACFid) FROM AcfACFp_Activo_Fijo WHERE ACFid > @ACFid) > 0
BEGIN
SELECT TOP 1 
ACFid,
BUKRS,
SEGMENT,
ANLKL,
PERNR,
CSTid,
MVMid,
ACFfmovimiento,
VNRid,
ACFdescripcion,
ACFfincorporacion,
ACFfcapitalizacion,
ACFvutiltribanio,
ACFvutiltribdia,
ACFvalortrib,
ACFvutilniifanio,
ACFvutilniifdia,
ACFvalorniif,
ACFdepacutrib,
ACFdepacuniif,
ACFobra,
ACFord41,
ACFord42,
ACFord43,
ACFord44,
ACFanlue,
ACFfactortrib,
ACFfactorniif,
ACFcuenta,
ACFcuentadep,
CMPid,
ACFobservacion,
LIFNR,
ACFnotaingreso,
ACFfechanotaingreso,
ACFordencompra,
ACFfechaordencompra,
BLART,
ACFcomprobante,
KOSTL,
AMBid,
UBEid,
ACFfechacomprobante,
V_T087U_ANLUE
FROM AcfACFp_Activo_Fijo
WHERE ACFid > @ACFid
ORDER BY  ACFid ASC
END
ELSE
BEGIN
SELECT TOP 1 
ACFid,
BUKRS,
SEGMENT,
ANLKL,
PERNR,
CSTid,
MVMid,
ACFfmovimiento,
VNRid,
ACFdescripcion,
ACFfincorporacion,
ACFfcapitalizacion,
ACFvutiltribanio,
ACFvutiltribdia,
ACFvalortrib,
ACFvutilniifanio,
ACFvutilniifdia,
ACFvalorniif,
ACFdepacutrib,
ACFdepacuniif,
ACFobra,
ACFord41,
ACFord42,
ACFord43,
ACFord44,
ACFanlue,
ACFfactortrib,
ACFfactorniif,
ACFcuenta,
ACFcuentadep,
CMPid,
ACFobservacion,
LIFNR,
ACFnotaingreso,
ACFfechanotaingreso,
ACFordencompra,
ACFfechaordencompra,
BLART,
ACFcomprobante,
KOSTL,
AMBid,
UBEid,
ACFfechacomprobante,
V_T087U_ANLUE
FROM AcfACFp_Activo_Fijo
ORDER BY  ACFid DESC
END

GO
/****** Object:  StoredProcedure [dbo].[usp_P_AcfACFp_Activo_Fijo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_P_AcfACFp_Activo_Fijo]
@ACFid AS INT
AS
IF(SELECT COUNT(ACFid) FROM AcfACFp_Activo_Fijo WHERE ACFid < @ACFid) > 0
BEGIN
SELECT TOP 1 
ACFid,
BUKRS,
SEGMENT,
ANLKL,
PERNR,
CSTid,
MVMid,
ACFfmovimiento,
VNRid,
ACFdescripcion,
ACFfincorporacion,
ACFfcapitalizacion,
ACFvutiltribanio,
ACFvutiltribdia,
ACFvalortrib,
ACFvutilniifanio,
ACFvutilniifdia,
ACFvalorniif,
ACFdepacutrib,
ACFdepacuniif,
ACFobra,
ACFord41,
ACFord42,
ACFord43,
ACFord44,
ACFanlue,
ACFfactortrib,
ACFfactorniif,
ACFcuenta,
ACFcuentadep,
CMPid,
ACFobservacion,
LIFNR,
ACFnotaingreso,
ACFfechanotaingreso,
ACFordencompra,
ACFfechaordencompra,
BLART,
ACFcomprobante,
KOSTL,
AMBid,
UBEid,
ACFfechacomprobante,
V_T087U_ANLUE
FROM AcfACFp_Activo_Fijo
WHERE ACFid < @ACFid
ORDER BY  ACFid DESC
END
ELSE
BEGIN
SELECT TOP 1 
ACFid,
BUKRS,
SEGMENT,
ANLKL,
PERNR,
CSTid,
MVMid,
ACFfmovimiento,
VNRid,
ACFdescripcion,
ACFfincorporacion,
ACFfcapitalizacion,
ACFvutiltribanio,
ACFvutiltribdia,
ACFvalortrib,
ACFvutilniifanio,
ACFvutilniifdia,
ACFvalorniif,
ACFdepacutrib,
ACFdepacuniif,
ACFobra,
ACFord41,
ACFord42,
ACFord43,
ACFord44,
ACFanlue,
ACFfactortrib,
ACFfactorniif,
ACFcuenta,
ACFcuentadep,
CMPid,
ACFobservacion,
LIFNR,
ACFnotaingreso,
ACFfechanotaingreso,
ACFordencompra,
ACFfechaordencompra,
BLART,
ACFcomprobante,
KOSTL,
AMBid,
UBEid,
ACFfechacomprobante,
V_T087U_ANLUE
FROM AcfACFp_Activo_Fijo
ORDER BY  ACFid ASC
END

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfACFp_Activo_Fijo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfACFp_Activo_Fijo]
AS
-- selects all rows from the table
SELECT 
[ACFid]
,[BUKRS]
,[SEGMENT]
,[ANLKL]
,[PERNR]
,[CSTid]
,[MVMid]
,[ACFfmovimiento]
,[VNRid]
,[ACFdescripcion]
,[ACFfincorporacion]
,[ACFfcapitalizacion]
,[ACFvutiltribanio]
,[ACFvutiltribdia]
,[ACFvalortrib]
,[ACFvutilniifanio]
,[ACFvutilniifdia]
,[ACFvalorniif]
,[ACFdepacutrib]
,[ACFdepacuniif]
,[ACFobra]
,[ACFord41]
,[ACFord42]
,[ACFord43]
,[ACFord44]
,[ACFanlue]
,[ACFfactortrib]
,[ACFfactorniif]
,[ACFcuenta]
,[ACFcuentadep]
,[CMPid]
,[ACFobservacion]
,[LIFNR]
,[ACFnotaingreso]
,[ACFfechanotaingreso]
,[ACFordencompra]
,[ACFfechaordencompra]
,[BLART]
,[ACFcomprobante]
,[KOSTL]
,[AMBid]
,[UBEid]
,[ACFfechacomprobante]
,[V_T087U_ANLUE]
FROM [dbo].[acfACFp_Activo_Fijo]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfACTt_Actividad]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfACTt_Actividad]
AS
-- selects all rows from the table
SELECT 
[ACTid]
,[ACTactividad]
FROM [dbo].[acfACTt_Actividad]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfAMBt_Ambiente]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfAMBt_Ambiente]
AS
-- selects all rows from the table
SELECT 
[LOCid]
,[AMBid]
,[AMBambiente]
FROM [dbo].[acfAMBt_Ambiente]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfCMPt_Componente]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfCMPt_Componente]
AS
-- selects all rows from the table
SELECT 
[CMPid]
,[CMPcomponente]
,[CMPusoestimado]
,[CMPconservacion]
,[CMPobsolecencia]
,[CMPlimitelegal]
,[CMPtotalfactores]
,[CMPfactorusoestimado]
,[CMPvutilanio]
,[CMPvutildia]
FROM [dbo].[acfCMPt_Componente]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfCRSt_Caracteristicas]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfCRSt_Caracteristicas]
AS
-- selects all rows from the table
SELECT 
[ACFid]
,[MARid]
,[ESTid]
,[CRSserie]
,[CRSmodelo]
,[CRScolor]
,[MATid]
,[CRStipo]
,[UNMid]
,[CRScantidad]
,[CRSvehplaca]
,[CRSvehexpediente]
,[CRSvehinscripcion]
,[CRSvehclase]
,[CRSvehcombustible]
,[CRSvehejes]
,[CRSvehpasajeros]
,[CRSvehasientos]
,[CRSvehpesoseco]
,[CRSvehcargautil]
,[CRSaltura]
,[CRSancho]
,[CRSvelocidad]
,[CRSresolucion]
,[CRScapacidad]
,[CRSpotencia]
,[CRSvnominal]
,[CRSventrada]
,[CRSvsalida]
,[CRSfrecuencia]
,[CRStemperatura]
,[CRSprocesador]
,[CRSpuertos]
,[CRSutmx]
,[CRSutmy]
,[CRSesfuerzopunta]
,[CRScajaderivadora]
,[CRSalquilacable]
,[CRScentropoblado]
,[CRSurbanizacion]
,[CRScalle]
,[CRSlote]
,[CRSnumeropredio]
,[CRSdepartamento]
,[CRSinterior]
,[CRScarretera]
,[CRSkilometro]
,[CRSnombrepredio]
,[CRSpisospredio]
,[CRSpartidapredio]
,[CRStomopredio]
,[CRSfolioinipredio]
,[CRSfoliofinpredio]
,[CRSasientopredio]
,[CRSfinscpredio]
,[CRSficharegistral]
,[CRSareaconstruida]
,[CRSperimetro]
,[CRSusopredio]
,[CRSvalorautovaluo]
,[CRScodigoluz]
,[CRScodigoagua]
,[CRSfadqpredio]
,[CRSobservacion]
FROM [dbo].[acfCRSt_Caracteristicas]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfCSTt_Costo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfCSTt_Costo]
AS
-- selects all rows from the table
SELECT 
[CSTid]
,[CSTdescripcion]
,[CSTdetalle]
,[CSTabreviado]
,[ACTid]
,[CSTid_costo]
FROM [dbo].[acfCSTt_Costo]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfDDFt_detalledediferido]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfDDFt_detalledediferido]
AS
-- selects all rows from the table
SELECT 
[ACFcuenta]
,[INVZU]
,[TXT50]
,[ACFvalorniif]
,[ACFdepniif]
,[ACFPPENiif]
,[ACFvalortrib]
,[ACFDepTrib]
,[ACFpplir]
,[ACFdeducible]
,[ACFimponible]
,[ACFirda]
,[ACFirdp]
,[ACFculdep]
,[ACFrecper1]
,[ACFrecper2]
,[ACFrecper3]
,[ACFrecper4]
,[ACFtotales]
,[ACFirdaA]
,[ACFirdpA]
,[ACFirdaF]
,[ACFirdpF]
,[PDFcodigo]
FROM [dbo].[acfDDFt_detalledediferido]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfDRTt_detallereparotributario]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfDRTt_detallereparotributario]
AS
-- selects all rows from the table
SELECT 
[RTRcodigo]
,[ACFcuenta]
,[INVZU]
,[TXT50]
,[ACFfactorniif]
,[ACFvutilniif]
,[ACFfactorTrib]
,[ACFvutiltrib]
,[ACFvalorniif]
,[ACFdepAcuniif]
,[ACFNiifNeto]
,[ACFDepNiifPer]
,[ACFvalortrib]
,[ACFdepacutrib]
,[ACFlirneto]
,[ACFdeptlirper]
,[ACFadiciones]
,[ACFdeducciones]
,[ACFneto]
FROM [dbo].[acfDRTt_detallereparotributario]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfEDIt_edificaciondetalle]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfEDIt_edificaciondetalle]
AS
-- selects all rows from the table
SELECT 
[ACFid]
,[EDIzona]
,[EDIdescripicion]
,[EDIfactorasignado]
,[ACFValorIR]
,[ACFTC]
,[ACFCRC]
,[ACFDEPCRC]
,[ACFNETOCRC]
,[ACFvalorniif]
,[ACFdepacuniif]
,[ACFNETOPCGA]
,[ACFDIFCosto]
,[ACFINCCosto]
,[ACFDISCosto]
,[ACFDIFDEP]
,[ACFINCDep]
,[ACFDISDep]
,[ACFDIFNeta]
,[ACFSumDifDed]
,[ACFSumDifGra]
,[ACFSumACTDif]
,[ACFSumPasDif]
,[ACFcuenta]
,[LOClocal]
,[RVAcodigo]
FROM [dbo].[acfEDIt_edificaciondetalle]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfESTt_Estado]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfESTt_Estado]
AS
-- selects all rows from the table
SELECT 
[ESTid]
,[ESTestado]
FROM [dbo].[acfESTt_Estado]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfICRt_Inventariocaracteristicas]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfICRt_Inventariocaracteristicas]
AS
-- selects all rows from the table
SELECT 
[MARid]
,[ESTid]
,[CRSserie]
,[CRSmodelo]
,[CRScolor]
,[MATid]
,[CRStipo]
,[UNMid]
,[CRScantidad]
,[CRSvehplaca]
,[CRSvehexpediente]
,[CRSvehinscripcion]
,[CRSvehclase]
,[CRSvehcombustible]
,[CRSvehejes]
,[CRSvehpasajeros]
,[CRSvehasientos]
,[CRSvehpesoseco]
,[CRSvehcargautil]
,[CRSaltura]
,[CRSancho]
,[CRSvelocidad]
,[CRSresolucion]
,[CRScapacidad]
,[CRSpotencia]
,[CRSvnominal]
,[CRSventrada]
,[CRSvsalida]
,[CRSfrecuencia]
,[CRStemperatura]
,[CRSprocesador]
,[CRSpuertos]
,[CRSutmx]
,[CRSutmy]
,[CRSesfuerzopunta]
,[CRScajaderivadora]
,[CRSalquilacable]
,[CRScentropoblado]
,[CRSurbanizacion]
,[CRScalle]
,[CRSlote]
,[CRSnumeropredio]
,[CRSdepartamento]
,[CRSinterior]
,[CRScarretera]
,[CRSkilometro]
,[CRSnombrepredio]
,[CRSpisospredio]
,[CRSpartidapredio]
,[CRStomopredio]
,[CRSfolioinipredio]
,[CRSfoliofinpredio]
,[CRSasientopredio]
,[CRSfinscpredio]
,[CRSficharegistral]
,[CRSareaconstruida]
,[CRSperimetro]
,[CRSusopredio]
,[CRSvalorautovaluo]
,[CRScodigoluz]
,[CRScodigoagua]
,[CRSfadqpredio]
,[CRSobservacion]
,[INVid]
,[ACFid]
FROM [dbo].[acfICRt_Inventariocaracteristicas]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfINBt_Inventariobienes]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfINBt_Inventariobienes]
AS
-- selects all rows from the table
SELECT 
[INVid]
,[ACFid]
,[ACFactivo]
,[BUKRS]
,[SEGMENT]
,[KOSTL]
,[ANLKL]
,[PERNR]
,[ACTid]
,[CSTid]
,[VNRid]
,[ACFfincorporacion]
,[ACFfcapitalizacion]
,[ACFvutiltribanio]
,[ACFvutiltribdia]
,[ACFvalortrib]
,[ACFfactortrib]
,[ACFdepacutrib]
,[ACfvutilniifanio]
,[ACFvutilniifdia]
,[ACFvalorniif]
,[ACFfactorniif]
,[ACFdepacuniif]
,[ACFobra]
,[ACFord41]
,[ACFord42]
,[ACFord43]
,[ACFord44]
,[ACFanlue]
,[ACFcuenta]
,[ACFcuentadep]
,[LIFNR]
,[BLART]
,[ACFcomprobante]
,[ACFnotaingreso]
,[ACFfechanotaingreso]
,[ACFordencompra]
,[ACFobservacion]
,[AMBid]
,[UBEid]
,[ACFfechacomprobante]
,[ACFfechaordencompra]
FROM [dbo].[acfINBt_Inventariobienes]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfINVp_Inventario]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfINVp_Inventario]
AS
-- selects all rows from the table
SELECT 
[INVid]
,[INVdetalle]
,[INVinicio]
,[INVcierre]
,[INVactivo]
FROM [dbo].[acfINVp_Inventario]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfLOCt_Local]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfLOCt_Local]
AS
-- selects all rows from the table
SELECT 
[LOCid]
,[LOClocal]
,[LOCdireccion]
,[SEGMENT]
FROM [dbo].[acfLOCt_Local]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfMARt_Marca]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfMARt_Marca]
AS
-- selects all rows from the table
SELECT 
[MARid]
,[MARmarca]
FROM [dbo].[acfMARt_Marca]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfMATt_Material]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfMATt_Material]
AS
-- selects all rows from the table
SELECT 
[MATid]
,[MATmaterial]
,[MATabreviado]
FROM [dbo].[acfMATt_Material]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfMEQt_maquinariaequipo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfMEQt_maquinariaequipo]
AS
-- selects all rows from the table
SELECT 
[MEQvnrtot]
,[MEQcantidad]
,[MEQaccffecinc]
,[MEQabreviatura]
,[MEQopiniontecnica]
,[MEQctacontable]
,[MEQniif]
,[MEQvrident]
,[MEQprovdes]
,[MEQcostorepcor]
,[MEQfactorinst]
,[MEQvalorresi]
,[MEQedadact]
,[MEQdeptas]
,[MEQvalorref]
,[MEQvalref2]
,[MEQvsm]
,[MEQestado]
,[MEQvidautil]
,[MEQvidautmax]
,[MEQedadtec]
,[MEQdepreciacion]
,[MEQdep2012]
,[MEQcostocorr]
,[MEQvaloractivo]
,[MEQdepre]
,[MEQtasair]
,[MEQimpdife]
,[MEQdifneta]
,[MEQvalorneto]
,[MEQvalact]
,[MEQcostotcorr]
,[MEQdepacuniif]
,[MEQcrcnet]
,[MEQvalnet]
,[MEQdiferenneta]
,[MEQvalornetolib]
,[MEQdepacumtrib]
,[MEQcostohistorico]
,[RVAcodigo]
FROM [dbo].[acfMEQt_maquinariaequipo]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfMVAt_MovimientoActivo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfMVAt_MovimientoActivo]
AS
-- selects all rows from the table
SELECT 
[MVAid]
,[ACFid]
,[ACFactivo]
,[BUKRS]
,[SEGMENT]
,[KOSTL]
,[ANLKL]
,[PERNR]
,[CSTid]
,[TMVid]
,[MVMid]
,[ACFfmovimiento]
,[VNRid]
,[ACFfincorporacion]
,[ACFfcapitalizacion]
,[ACFvutiltribanio]
,[ACFvutiltribdia]
,[ACFvalortrib]
,[ACFfactortrib]
,[ACFdepacutrib]
,[ACFvutilniifanio]
,[ACFvutilniifdia]
,[ACFvalorniif]
,[ACFfactorniif]
,[ACFdepacuniif]
,[ACFobra]
,[ACFord41]
,[ACFord42]
,[ACFord43]
,[ACFord44]
,[ACFanlue]
,[ACFcuenta]
,[ACFcuentadep]
,[ACFcomprobante]
,[ACFnotaingreso]
,[ACFfechanotaingreso]
,[ACFordencompra]
,[ACFfechaordencompra]
,[ACFobservacion]
,[LIFNR]
,[BLART]
,[AMBid]
,[CMPid]
,[UBEid]
FROM [dbo].[acfMVAt_MovimientoActivo]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfMVMt_MotivoMovimiento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfMVMt_MotivoMovimiento]
AS
-- selects all rows from the table
SELECT 
[TMVid]
,[MVMid]
,[MVMmotivomovimiento]
,[MVMjustificacion]
FROM [dbo].[acfMVMt_MotivoMovimiento]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfPDFt_procesodiferido]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfPDFt_procesodiferido]
AS
-- selects all rows from the table
SELECT 
[PDFcodigo]
,[PDFperiodo]
,[PDFfecha]
,[PDFreponsable]
,[PDFestado]
FROM [dbo].[acfPDFt_procesodiferido]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfRTRt_Reparotributario]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfRTRt_Reparotributario]
AS
-- selects all rows from the table
SELECT 
[RTRperiodo]
,[RTRfecha]
,[RTRresponsable]
,[RTRestado]
,[RTRcodigo]
FROM [dbo].[acfRTRt_Reparotributario]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfRVAt_registrovaluacion]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfRVAt_registrovaluacion]
AS
-- selects all rows from the table
SELECT 
[RVAcodigo]
,[RVAperiodo]
,[RVAfecha]
,[RVAresponsable]
,[RVRestado]
FROM [dbo].[acfRVAt_registrovaluacion]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfSELt_SistemaElectrico]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfSELt_SistemaElectrico]
AS
-- selects all rows from the table
SELECT 
[SELid]
,[SELsistemaelectrico]
,[SEGMENT]
FROM [dbo].[acfSELt_SistemaElectrico]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfSPNt_Supranumero]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfSPNt_Supranumero]
AS
-- selects all rows from the table
SELECT 
[V_T087U_ANLUE]
,[V_T087U_ANLUE_TXT]
FROM [dbo].[acfSPNt_Supranumero]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfTMVt_TipoMovimiento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfTMVt_TipoMovimiento]
AS
-- selects all rows from the table
SELECT 
[TMVid]
,[TMVtipomovimiento]
FROM [dbo].[acfTMVt_TipoMovimiento]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfTRNt_terrenodetalle]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfTRNt_terrenodetalle]
AS
-- selects all rows from the table
SELECT 
[CRSnombrepredio]
,[CRScentropoblado]
,[CRSdepartamento]
,[CRSinterior]
,[CRScarretera]
,[CRSkilometro]
,[ACFArea]
,[ACFvalor]
,[ACFtc]
,[ACFvalorSoles]
,[ACFValorDolar]
,[ACFValorAnt0]
,[ACFVutilniff]
,[ACFNetopcga]
,[ACFvalorATri]
,[ACFid]
,[ACFdiferencia]
,[ACFDifTemDedu]
,[ACFDifTemGrav]
,[ACFTasaIR]
,[ACFSaldoDeducible]
,[ACFSaldoGravable]
,[RVAcodigo]
FROM [dbo].[acfTRNt_terrenodetalle]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfUBEt_UbicacionElectrica]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfUBEt_UbicacionElectrica]
AS
-- selects all rows from the table
SELECT 
[UBEcodigogis]
,[UBEobra]
,[KOSTL]
,[VNRid]
,[SELid]
,[UBEset]
,[UBEsetetq]
,[UBEalimentador]
,[UBEalimentadoretq]
,[UBEsed]
,[UBEsedetq]
,[UBEcircuito]
,[UBEcircuitoetq]
,[UBEpuntoi]
,[UBEpuntoietq]
,[UBEpuntof]
,[UBEpuntofetq]
,[UBEid]
,[ACFid]
FROM [dbo].[acfUBEt_UbicacionElectrica]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfUNMt_Unimed]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfUNMt_Unimed]
AS
-- selects all rows from the table
SELECT 
[UNMid]
,[UNMunidad]
,[UNMdetalle]
FROM [dbo].[acfUNMt_Unimed]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_acfVNRt_VNR]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_acfVNRt_VNR]
AS
-- selects all rows from the table
SELECT 
[VNRid]
,[VNRvnr]
,[VNRcuenta]
,[VNRcuentadep]
FROM [dbo].[acfVNRt_VNR]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_bdiCAFpClaseDeActivoFijo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_bdiCAFpClaseDeActivoFijo]
AS
-- selects all rows from the table
SELECT 
[ANLKL]
,[TXK50]
FROM [dbo].[bdiCAFpClaseDeActivoFijo]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_bdiCDDpClasesDeDocumento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_bdiCDDpClasesDeDocumento]
AS
-- selects all rows from the table
SELECT 
[BLART]
,[LTEXT]
,[DETdoctipo]
FROM [dbo].[bdiCDDpClasesDeDocumento]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_bdiPRVpProveedor]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_bdiPRVpProveedor]
AS
-- selects all rows from the table
SELECT 
[LIFNR]
,[Name1]
,[Stras]
,[STCD1]
FROM [dbo].[bdiPRVpProveedor]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_bdiSEGpSegmento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_bdiSEGpSegmento]
AS
-- selects all rows from the table
SELECT 
[SEGMENT]
,[NAME]
,[id_zona]
FROM [dbo].[bdiSEGpSegmento]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_bdiSOCpSociedades]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_bdiSOCpSociedades]
AS
-- selects all rows from the table
SELECT 
[BUKRS]
,[BUTXT]
FROM [dbo].[bdiSOCpSociedades]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_bdiXCCpExtraccionSAP_CentroCosto]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_bdiXCCpExtraccionSAP_CentroCosto]
AS
-- selects all rows from the table
SELECT 
[KOSTL]
,[KTEXT]
,[KLTXT]
,[MCDS3]
FROM [dbo].[bdiXCCpExtraccionSAP_CentroCosto]

GO
/****** Object:  StoredProcedure [dbo].[usp_S_bdiXPEpExtraccionSAP_Personal]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_S_bdiXPEpExtraccionSAP_Personal]
AS
-- selects all rows from the table
SELECT 
[PERNR]
,[Nachn]
,[Name2]
,[Vorna]
,[DNI]
,[WERKS]
,[Persg]
,[KOSTL]
FROM [dbo].[bdiXPEpExtraccionSAP_Personal]

GO
/****** Object:  StoredProcedure [dbo].[usp_T_AcfACFp_Activo_Fijo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_T_AcfACFp_Activo_Fijo]
AS
BEGIN
SELECT TOP 1 
ACFid,
BUKRS,
SEGMENT,
ANLKL,
PERNR,
CSTid,
MVMid,
ACFfmovimiento,
VNRid,
ACFdescripcion,
ACFfincorporacion,
ACFfcapitalizacion,
ACFvutiltribanio,
ACFvutiltribdia,
ACFvalortrib,
ACFvutilniifanio,
ACFvutilniifdia,
ACFvalorniif,
ACFdepacutrib,
ACFdepacuniif,
ACFobra,
ACFord41,
ACFord42,
ACFord43,
ACFord44,
ACFanlue,
ACFfactortrib,
ACFfactorniif,
ACFcuenta,
ACFcuentadep,
CMPid,
ACFobservacion,
LIFNR,
ACFnotaingreso,
ACFfechanotaingreso,
ACFordencompra,
ACFfechaordencompra,
BLART,
ACFcomprobante,
KOSTL,
AMBid,
UBEid,
ACFfechacomprobante,
V_T087U_ANLUE
FROM AcfACFp_Activo_Fijo
ORDER BY  ACFid ASC
END

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfACFp_Activo_Fijo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfACFp_Activo_Fijo]
@iACFid int OUTPUT
, @sBUKRS char(4) OUTPUT
, @sSEGMENT char(10) OUTPUT
, @sANLKL char(8) OUTPUT
, @sPERNR char(8) OUTPUT
, @sCSTid char(4) OUTPUT
, @sMVMid char(2) OUTPUT
, @dtACFfmovimiento datetime OUTPUT
, @sVNRid char(7) OUTPUT
, @sACFdescripcion char(254) OUTPUT
, @dtACFfincorporacion datetime OUTPUT
, @dtACFfcapitalizacion datetime OUTPUT
, @iACFvutiltribanio int OUTPUT
, @iACFvutiltribdia int OUTPUT
, @decACFvalortrib decimal(18, 2) OUTPUT
, @iACFvutilniifanio int OUTPUT
, @iACFvutilniifdia int OUTPUT
, @decACFvalorniif decimal(18, 2) OUTPUT
, @sACFdepacutrib char(18) OUTPUT
, @decACFdepacuniif decimal(18, 2) OUTPUT
, @sACFobra char(10) OUTPUT
, @sACFord41 char(4) OUTPUT
, @sACFord42 char(4) OUTPUT
, @sACFord43 char(4) OUTPUT
, @sACFord44 char(4) OUTPUT
, @sACFanlue char(12) OUTPUT
, @decACFfactortrib decimal(18, 6) OUTPUT
, @decACFfactorniif decimal(18, 6) OUTPUT
, @sACFcuenta char(18) OUTPUT
, @sACFcuentadep char(18) OUTPUT
, @sCMPid char(15) OUTPUT
, @sACFobservacion varchar(250) OUTPUT
, @sLIFNR char(10) OUTPUT
, @sACFnotaingreso char(18) OUTPUT
, @sACFfechanotaingreso char(18) OUTPUT
, @sACFordencompra char(18) OUTPUT
, @dtACFfechaordencompra datetime OUTPUT
, @sBLART char(2) OUTPUT
, @sACFcomprobante char(18) OUTPUT
, @sKOSTL char(10) OUTPUT
, @iAMBid int OUTPUT
, @iUBEid int OUTPUT
, @dtACFfechacomprobante datetime OUTPUT
, @sV_T087U_ANLUE char(12) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfACFp_Activo_Fijo]
SET
[BUKRS] = @sBUKRS
,[SEGMENT] = @sSEGMENT
,[ANLKL] = @sANLKL
,[PERNR] = @sPERNR
,[CSTid] = @sCSTid
,[MVMid] = @sMVMid
,[ACFfmovimiento] = @dtACFfmovimiento
,[VNRid] = @sVNRid
,[ACFdescripcion] = @sACFdescripcion
,[ACFfincorporacion] = @dtACFfincorporacion
,[ACFfcapitalizacion] = @dtACFfcapitalizacion
,[ACFvutiltribanio] = @iACFvutiltribanio
,[ACFvutiltribdia] = @iACFvutiltribdia
,[ACFvalortrib] = @decACFvalortrib
,[ACFvutilniifanio] = @iACFvutilniifanio
,[ACFvutilniifdia] = @iACFvutilniifdia
,[ACFvalorniif] = @decACFvalorniif
,[ACFdepacutrib] = @sACFdepacutrib
,[ACFdepacuniif] = @decACFdepacuniif
,[ACFobra] = @sACFobra
,[ACFord41] = @sACFord41
,[ACFord42] = @sACFord42
,[ACFord43] = @sACFord43
,[ACFord44] = @sACFord44
,[ACFanlue] = @sACFanlue
,[ACFfactortrib] = @decACFfactortrib
,[ACFfactorniif] = @decACFfactorniif
,[ACFcuenta] = @sACFcuenta
,[ACFcuentadep] = @sACFcuentadep
,[CMPid] = @sCMPid
,[ACFobservacion] = @sACFobservacion
,[LIFNR] = @sLIFNR
,[ACFnotaingreso] = @sACFnotaingreso
,[ACFfechanotaingreso] = @sACFfechanotaingreso
,[ACFordencompra] = @sACFordencompra
,[ACFfechaordencompra] = @dtACFfechaordencompra
,[BLART] = @sBLART
,[ACFcomprobante] = @sACFcomprobante
,[KOSTL] = @sKOSTL
,[AMBid] = @iAMBid
,[UBEid] = @iUBEid
,[ACFfechacomprobante] = @dtACFfechacomprobante
,[V_T087U_ANLUE] = @sV_T087U_ANLUE
WHERE 
[ACFid] = @iACFid
SELECT 
@iACFid = [ACFid]
,@sBUKRS = [BUKRS]
,@sSEGMENT = [SEGMENT]
,@sANLKL = [ANLKL]
,@sPERNR = [PERNR]
,@sCSTid = [CSTid]
,@sMVMid = [MVMid]
,@dtACFfmovimiento = [ACFfmovimiento]
,@sVNRid = [VNRid]
,@sACFdescripcion = [ACFdescripcion]
,@dtACFfincorporacion = [ACFfincorporacion]
,@dtACFfcapitalizacion = [ACFfcapitalizacion]
,@iACFvutiltribanio = [ACFvutiltribanio]
,@iACFvutiltribdia = [ACFvutiltribdia]
,@decACFvalortrib = [ACFvalortrib]
,@iACFvutilniifanio = [ACFvutilniifanio]
,@iACFvutilniifdia = [ACFvutilniifdia]
,@decACFvalorniif = [ACFvalorniif]
,@sACFdepacutrib = [ACFdepacutrib]
,@decACFdepacuniif = [ACFdepacuniif]
,@sACFobra = [ACFobra]
,@sACFord41 = [ACFord41]
,@sACFord42 = [ACFord42]
,@sACFord43 = [ACFord43]
,@sACFord44 = [ACFord44]
,@sACFanlue = [ACFanlue]
,@decACFfactortrib = [ACFfactortrib]
,@decACFfactorniif = [ACFfactorniif]
,@sACFcuenta = [ACFcuenta]
,@sACFcuentadep = [ACFcuentadep]
,@sCMPid = [CMPid]
,@sACFobservacion = [ACFobservacion]
,@sLIFNR = [LIFNR]
,@sACFnotaingreso = [ACFnotaingreso]
,@sACFfechanotaingreso = [ACFfechanotaingreso]
,@sACFordencompra = [ACFordencompra]
,@dtACFfechaordencompra = [ACFfechaordencompra]
,@sBLART = [BLART]
,@sACFcomprobante = [ACFcomprobante]
,@sKOSTL = [KOSTL]
,@iAMBid = [AMBid]
,@iUBEid = [UBEid]
,@dtACFfechacomprobante = [ACFfechacomprobante]
,@sV_T087U_ANLUE = [V_T087U_ANLUE]
FROM [dbo].[acfACFp_Activo_Fijo]
WHERE 
[ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfACTt_Actividad]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfACTt_Actividad]
@sACTid char(2) OUTPUT
, @sACTactividad varchar(60) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfACTt_Actividad]
SET
[ACTactividad] = @sACTactividad
WHERE 
[ACTid] = @sACTid
SELECT 
@sACTid = [ACTid]
,@sACTactividad = [ACTactividad]
FROM [dbo].[acfACTt_Actividad]
WHERE 
[ACTid] = @sACTid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfAMBt_Ambiente]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfAMBt_Ambiente]
@iLOCid int OUTPUT
, @iAMBid int OUTPUT
, @sAMBambiente varchar(100) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfAMBt_Ambiente]
SET
[LOCid] = @iLOCid
,[AMBambiente] = @sAMBambiente
WHERE 
[AMBid] = @iAMBid
SELECT 
@iLOCid = [LOCid]
,@iAMBid = [AMBid]
,@sAMBambiente = [AMBambiente]
FROM [dbo].[acfAMBt_Ambiente]
WHERE 
[AMBid] = @iAMBid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfCMPt_Componente]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfCMPt_Componente]
@sCMPid char(15) OUTPUT
, @sCMPcomponente varchar(100) OUTPUT
, @decCMPusoestimado decimal(18, 2) OUTPUT
, @decCMPconservacion decimal(18, 2) OUTPUT
, @decCMPobsolecencia decimal(18, 2) OUTPUT
, @decCMPlimitelegal decimal(18, 2) OUTPUT
, @decCMPtotalfactores decimal(18, 2) OUTPUT
, @decCMPfactorusoestimado decimal(18, 2) OUTPUT
, @iCMPvutilanio int OUTPUT
, @iCMPvutildia int OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfCMPt_Componente]
SET
[CMPcomponente] = @sCMPcomponente
,[CMPusoestimado] = @decCMPusoestimado
,[CMPconservacion] = @decCMPconservacion
,[CMPobsolecencia] = @decCMPobsolecencia
,[CMPlimitelegal] = @decCMPlimitelegal
,[CMPtotalfactores] = @decCMPtotalfactores
,[CMPfactorusoestimado] = @decCMPfactorusoestimado
,[CMPvutilanio] = @iCMPvutilanio
,[CMPvutildia] = @iCMPvutildia
WHERE 
[CMPid] = @sCMPid
SELECT 
@sCMPid = [CMPid]
,@sCMPcomponente = [CMPcomponente]
,@decCMPusoestimado = [CMPusoestimado]
,@decCMPconservacion = [CMPconservacion]
,@decCMPobsolecencia = [CMPobsolecencia]
,@decCMPlimitelegal = [CMPlimitelegal]
,@decCMPtotalfactores = [CMPtotalfactores]
,@decCMPfactorusoestimado = [CMPfactorusoestimado]
,@iCMPvutilanio = [CMPvutilanio]
,@iCMPvutildia = [CMPvutildia]
FROM [dbo].[acfCMPt_Componente]
WHERE 
[CMPid] = @sCMPid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfCRSt_Caracteristicas]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfCRSt_Caracteristicas]
@iACFid int OUTPUT
, @iMARid int OUTPUT
, @iESTid int OUTPUT
, @sCRSserie varchar(30) OUTPUT
, @sCRSmodelo varchar(35) OUTPUT
, @sCRScolor varchar(35) OUTPUT
, @iMATid int OUTPUT
, @sCRStipo char(1) OUTPUT
, @iUNMid int OUTPUT
, @decCRScantidad decimal(18, 2) OUTPUT
, @sCRSvehplaca varchar(15) OUTPUT
, @sCRSvehexpediente varchar(15) OUTPUT
, @dtCRSvehinscripcion datetime OUTPUT
, @sCRSvehclase varchar(35) OUTPUT
, @sCRSvehcombustible varchar(35) OUTPUT
, @iCRSvehejes int OUTPUT
, @iCRSvehpasajeros int OUTPUT
, @iCRSvehasientos int OUTPUT
, @decCRSvehpesoseco decimal(18, 2) OUTPUT
, @decCRSvehcargautil decimal(18, 2) OUTPUT
, @decCRSaltura decimal(18, 2) OUTPUT
, @decCRSancho decimal(18, 2) OUTPUT
, @sCRSvelocidad varchar(20) OUTPUT
, @sCRSresolucion varchar(20) OUTPUT
, @sCRScapacidad varchar(20) OUTPUT
, @sCRSpotencia varchar(20) OUTPUT
, @sCRSvnominal varchar(20) OUTPUT
, @sCRSventrada varchar(20) OUTPUT
, @sCRSvsalida varchar(20) OUTPUT
, @sCRSfrecuencia varchar(20) OUTPUT
, @sCRStemperatura varchar(20) OUTPUT
, @sCRSprocesador varchar(100) OUTPUT
, @sCRSpuertos varchar(100) OUTPUT
, @decCRSutmx decimal(18, 2) OUTPUT
, @decCRSutmy decimal(18, 2) OUTPUT
, @sCRSesfuerzopunta varchar(20) OUTPUT
, @sCRScajaderivadora varchar(20) OUTPUT
, @sCRSalquilacable char(1) OUTPUT
, @sCRScentropoblado varchar(60) OUTPUT
, @sCRSurbanizacion varchar(60) OUTPUT
, @sCRScalle varchar(60) OUTPUT
, @sCRSlote varchar(10) OUTPUT
, @sCRSnumeropredio varchar(20) OUTPUT
, @sCRSdepartamento varchar(10) OUTPUT
, @sCRSinterior varchar(10) OUTPUT
, @sCRScarretera varchar(50) OUTPUT
, @decCRSkilometro decimal(18, 2) OUTPUT
, @sCRSnombrepredio varchar(60) OUTPUT
, @iCRSpisospredio int OUTPUT
, @sCRSpartidapredio varchar(15) OUTPUT
, @sCRStomopredio varchar(15) OUTPUT
, @sCRSfolioinipredio varchar(10) OUTPUT
, @sCRSfoliofinpredio varchar(10) OUTPUT
, @sCRSasientopredio varchar(15) OUTPUT
, @dtCRSfinscpredio datetime OUTPUT
, @sCRSficharegistral varchar(20) OUTPUT
, @decCRSareaconstruida decimal(18, 2) OUTPUT
, @decCRSperimetro decimal(18, 2) OUTPUT
, @sCRSusopredio varchar(60) OUTPUT
, @decCRSvalorautovaluo decimal(18, 2) OUTPUT
, @sCRScodigoluz varchar(20) OUTPUT
, @sCRScodigoagua varchar(20) OUTPUT
, @dtCRSfadqpredio datetime OUTPUT
, @sCRSobservacion varchar(254) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfCRSt_Caracteristicas]
SET
[MARid] = @iMARid
,[ESTid] = @iESTid
,[CRSserie] = @sCRSserie
,[CRSmodelo] = @sCRSmodelo
,[CRScolor] = @sCRScolor
,[MATid] = @iMATid
,[CRStipo] = @sCRStipo
,[UNMid] = @iUNMid
,[CRScantidad] = @decCRScantidad
,[CRSvehplaca] = @sCRSvehplaca
,[CRSvehexpediente] = @sCRSvehexpediente
,[CRSvehinscripcion] = @dtCRSvehinscripcion
,[CRSvehclase] = @sCRSvehclase
,[CRSvehcombustible] = @sCRSvehcombustible
,[CRSvehejes] = @iCRSvehejes
,[CRSvehpasajeros] = @iCRSvehpasajeros
,[CRSvehasientos] = @iCRSvehasientos
,[CRSvehpesoseco] = @decCRSvehpesoseco
,[CRSvehcargautil] = @decCRSvehcargautil
,[CRSaltura] = @decCRSaltura
,[CRSancho] = @decCRSancho
,[CRSvelocidad] = @sCRSvelocidad
,[CRSresolucion] = @sCRSresolucion
,[CRScapacidad] = @sCRScapacidad
,[CRSpotencia] = @sCRSpotencia
,[CRSvnominal] = @sCRSvnominal
,[CRSventrada] = @sCRSventrada
,[CRSvsalida] = @sCRSvsalida
,[CRSfrecuencia] = @sCRSfrecuencia
,[CRStemperatura] = @sCRStemperatura
,[CRSprocesador] = @sCRSprocesador
,[CRSpuertos] = @sCRSpuertos
,[CRSutmx] = @decCRSutmx
,[CRSutmy] = @decCRSutmy
,[CRSesfuerzopunta] = @sCRSesfuerzopunta
,[CRScajaderivadora] = @sCRScajaderivadora
,[CRSalquilacable] = @sCRSalquilacable
,[CRScentropoblado] = @sCRScentropoblado
,[CRSurbanizacion] = @sCRSurbanizacion
,[CRScalle] = @sCRScalle
,[CRSlote] = @sCRSlote
,[CRSnumeropredio] = @sCRSnumeropredio
,[CRSdepartamento] = @sCRSdepartamento
,[CRSinterior] = @sCRSinterior
,[CRScarretera] = @sCRScarretera
,[CRSkilometro] = @decCRSkilometro
,[CRSnombrepredio] = @sCRSnombrepredio
,[CRSpisospredio] = @iCRSpisospredio
,[CRSpartidapredio] = @sCRSpartidapredio
,[CRStomopredio] = @sCRStomopredio
,[CRSfolioinipredio] = @sCRSfolioinipredio
,[CRSfoliofinpredio] = @sCRSfoliofinpredio
,[CRSasientopredio] = @sCRSasientopredio
,[CRSfinscpredio] = @dtCRSfinscpredio
,[CRSficharegistral] = @sCRSficharegistral
,[CRSareaconstruida] = @decCRSareaconstruida
,[CRSperimetro] = @decCRSperimetro
,[CRSusopredio] = @sCRSusopredio
,[CRSvalorautovaluo] = @decCRSvalorautovaluo
,[CRScodigoluz] = @sCRScodigoluz
,[CRScodigoagua] = @sCRScodigoagua
,[CRSfadqpredio] = @dtCRSfadqpredio
,[CRSobservacion] = @sCRSobservacion
WHERE 
[ACFid] = @iACFid
SELECT 
@iACFid = [ACFid]
,@iMARid = [MARid]
,@iESTid = [ESTid]
,@sCRSserie = [CRSserie]
,@sCRSmodelo = [CRSmodelo]
,@sCRScolor = [CRScolor]
,@iMATid = [MATid]
,@sCRStipo = [CRStipo]
,@iUNMid = [UNMid]
,@decCRScantidad = [CRScantidad]
,@sCRSvehplaca = [CRSvehplaca]
,@sCRSvehexpediente = [CRSvehexpediente]
,@dtCRSvehinscripcion = [CRSvehinscripcion]
,@sCRSvehclase = [CRSvehclase]
,@sCRSvehcombustible = [CRSvehcombustible]
,@iCRSvehejes = [CRSvehejes]
,@iCRSvehpasajeros = [CRSvehpasajeros]
,@iCRSvehasientos = [CRSvehasientos]
,@decCRSvehpesoseco = [CRSvehpesoseco]
,@decCRSvehcargautil = [CRSvehcargautil]
,@decCRSaltura = [CRSaltura]
,@decCRSancho = [CRSancho]
,@sCRSvelocidad = [CRSvelocidad]
,@sCRSresolucion = [CRSresolucion]
,@sCRScapacidad = [CRScapacidad]
,@sCRSpotencia = [CRSpotencia]
,@sCRSvnominal = [CRSvnominal]
,@sCRSventrada = [CRSventrada]
,@sCRSvsalida = [CRSvsalida]
,@sCRSfrecuencia = [CRSfrecuencia]
,@sCRStemperatura = [CRStemperatura]
,@sCRSprocesador = [CRSprocesador]
,@sCRSpuertos = [CRSpuertos]
,@decCRSutmx = [CRSutmx]
,@decCRSutmy = [CRSutmy]
,@sCRSesfuerzopunta = [CRSesfuerzopunta]
,@sCRScajaderivadora = [CRScajaderivadora]
,@sCRSalquilacable = [CRSalquilacable]
,@sCRScentropoblado = [CRScentropoblado]
,@sCRSurbanizacion = [CRSurbanizacion]
,@sCRScalle = [CRScalle]
,@sCRSlote = [CRSlote]
,@sCRSnumeropredio = [CRSnumeropredio]
,@sCRSdepartamento = [CRSdepartamento]
,@sCRSinterior = [CRSinterior]
,@sCRScarretera = [CRScarretera]
,@decCRSkilometro = [CRSkilometro]
,@sCRSnombrepredio = [CRSnombrepredio]
,@iCRSpisospredio = [CRSpisospredio]
,@sCRSpartidapredio = [CRSpartidapredio]
,@sCRStomopredio = [CRStomopredio]
,@sCRSfolioinipredio = [CRSfolioinipredio]
,@sCRSfoliofinpredio = [CRSfoliofinpredio]
,@sCRSasientopredio = [CRSasientopredio]
,@dtCRSfinscpredio = [CRSfinscpredio]
,@sCRSficharegistral = [CRSficharegistral]
,@decCRSareaconstruida = [CRSareaconstruida]
,@decCRSperimetro = [CRSperimetro]
,@sCRSusopredio = [CRSusopredio]
,@decCRSvalorautovaluo = [CRSvalorautovaluo]
,@sCRScodigoluz = [CRScodigoluz]
,@sCRScodigoagua = [CRScodigoagua]
,@dtCRSfadqpredio = [CRSfadqpredio]
,@sCRSobservacion = [CRSobservacion]
FROM [dbo].[acfCRSt_Caracteristicas]
WHERE 
[ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfCSTt_Costo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfCSTt_Costo]
@sCSTid char(4) OUTPUT
, @sCSTdescripcion char(35) OUTPUT
, @sCSTdetalle char(70) OUTPUT
, @sCSTabreviado char(15) OUTPUT
, @sACTid char(2) OUTPUT
, @sCSTid_costo char(2) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfCSTt_Costo]
SET
[CSTdescripcion] = @sCSTdescripcion
,[CSTdetalle] = @sCSTdetalle
,[CSTabreviado] = @sCSTabreviado
,[ACTid] = @sACTid
,[CSTid_costo] = @sCSTid_costo
WHERE 
[CSTid] = @sCSTid
SELECT 
@sCSTid = [CSTid]
,@sCSTdescripcion = [CSTdescripcion]
,@sCSTdetalle = [CSTdetalle]
,@sCSTabreviado = [CSTabreviado]
,@sACTid = [ACTid]
,@sCSTid_costo = [CSTid_costo]
FROM [dbo].[acfCSTt_Costo]
WHERE 
[CSTid] = @sCSTid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfDDFt_detalledediferido]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfDDFt_detalledediferido]
@sACFcuenta char(18) OUTPUT
, @sINVZU char(100) OUTPUT
, @sTXT50 char(100) OUTPUT
, @decACFvalorniif decimal(12, 2) OUTPUT
, @decACFdepniif decimal(12, 2) OUTPUT
, @decACFPPENiif decimal(12, 2) OUTPUT
, @decACFvalortrib decimal(12, 2) OUTPUT
, @decACFDepTrib decimal(12, 2) OUTPUT
, @decACFpplir decimal(12, 2) OUTPUT
, @decACFdeducible decimal(12, 2) OUTPUT
, @decACFimponible decimal(12, 2) OUTPUT
, @decACFirda decimal(12, 2) OUTPUT
, @decACFirdp decimal(12, 2) OUTPUT
, @decACFculdep decimal(12, 2) OUTPUT
, @decACFrecper1 decimal(12, 2) OUTPUT
, @decACFrecper2 decimal(12, 2) OUTPUT
, @decACFrecper3 decimal(12, 2) OUTPUT
, @decACFrecper4 decimal(12, 2) OUTPUT
, @decACFtotales decimal(12, 2) OUTPUT
, @decACFirdaA decimal(12, 2) OUTPUT
, @decACFirdpA decimal(12, 2) OUTPUT
, @decACFirdaF decimal(12, 2) OUTPUT
, @decACFirdpF decimal(12, 2) OUTPUT
, @iPDFcodigo int OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfDDFt_detalledediferido]
SET
[ACFcuenta] = @sACFcuenta
,[INVZU] = @sINVZU
,[TXT50] = @sTXT50
,[ACFvalorniif] = @decACFvalorniif
,[ACFdepniif] = @decACFdepniif
,[ACFPPENiif] = @decACFPPENiif
,[ACFvalortrib] = @decACFvalortrib
,[ACFDepTrib] = @decACFDepTrib
,[ACFpplir] = @decACFpplir
,[ACFdeducible] = @decACFdeducible
,[ACFimponible] = @decACFimponible
,[ACFirda] = @decACFirda
,[ACFirdp] = @decACFirdp
,[ACFculdep] = @decACFculdep
,[ACFrecper1] = @decACFrecper1
,[ACFrecper2] = @decACFrecper2
,[ACFrecper3] = @decACFrecper3
,[ACFrecper4] = @decACFrecper4
,[ACFtotales] = @decACFtotales
,[ACFirdaA] = @decACFirdaA
,[ACFirdpA] = @decACFirdpA
,[ACFirdaF] = @decACFirdaF
,[ACFirdpF] = @decACFirdpF
WHERE 
[PDFcodigo] = @iPDFcodigo
SELECT 
@sACFcuenta = [ACFcuenta]
,@sINVZU = [INVZU]
,@sTXT50 = [TXT50]
,@decACFvalorniif = [ACFvalorniif]
,@decACFdepniif = [ACFdepniif]
,@decACFPPENiif = [ACFPPENiif]
,@decACFvalortrib = [ACFvalortrib]
,@decACFDepTrib = [ACFDepTrib]
,@decACFpplir = [ACFpplir]
,@decACFdeducible = [ACFdeducible]
,@decACFimponible = [ACFimponible]
,@decACFirda = [ACFirda]
,@decACFirdp = [ACFirdp]
,@decACFculdep = [ACFculdep]
,@decACFrecper1 = [ACFrecper1]
,@decACFrecper2 = [ACFrecper2]
,@decACFrecper3 = [ACFrecper3]
,@decACFrecper4 = [ACFrecper4]
,@decACFtotales = [ACFtotales]
,@decACFirdaA = [ACFirdaA]
,@decACFirdpA = [ACFirdpA]
,@decACFirdaF = [ACFirdaF]
,@decACFirdpF = [ACFirdpF]
,@iPDFcodigo = [PDFcodigo]
FROM [dbo].[acfDDFt_detalledediferido]
WHERE 
[PDFcodigo] = @iPDFcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfDRTt_detallereparotributario]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfDRTt_detallereparotributario]
@iRTRcodigo int OUTPUT
, @sACFcuenta char(18) OUTPUT
, @sINVZU char(100) OUTPUT
, @sTXT50 char(100) OUTPUT
, @decACFfactorniif decimal(12, 2) OUTPUT
, @decACFvutilniif decimal(12, 2) OUTPUT
, @decACFfactorTrib decimal(12, 2) OUTPUT
, @decACFvutiltrib decimal(12, 2) OUTPUT
, @decACFvalorniif decimal(12, 2) OUTPUT
, @decACFdepAcuniif decimal(12, 2) OUTPUT
, @decACFNiifNeto decimal(12, 2) OUTPUT
, @decACFDepNiifPer decimal(12, 2) OUTPUT
, @decACFvalortrib decimal(12, 2) OUTPUT
, @decACFdepacutrib decimal(12, 2) OUTPUT
, @decACFlirneto decimal(12, 2) OUTPUT
, @decACFdeptlirper decimal(12, 2) OUTPUT
, @decACFadiciones decimal(12, 2) OUTPUT
, @decACFdeducciones decimal(12, 2) OUTPUT
, @decACFneto decimal(12, 2) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfDRTt_detallereparotributario]
SET
[ACFcuenta] = @sACFcuenta
,[INVZU] = @sINVZU
,[TXT50] = @sTXT50
,[ACFfactorniif] = @decACFfactorniif
,[ACFvutilniif] = @decACFvutilniif
,[ACFfactorTrib] = @decACFfactorTrib
,[ACFvutiltrib] = @decACFvutiltrib
,[ACFvalorniif] = @decACFvalorniif
,[ACFdepAcuniif] = @decACFdepAcuniif
,[ACFNiifNeto] = @decACFNiifNeto
,[ACFDepNiifPer] = @decACFDepNiifPer
,[ACFvalortrib] = @decACFvalortrib
,[ACFdepacutrib] = @decACFdepacutrib
,[ACFlirneto] = @decACFlirneto
,[ACFdeptlirper] = @decACFdeptlirper
,[ACFadiciones] = @decACFadiciones
,[ACFdeducciones] = @decACFdeducciones
,[ACFneto] = @decACFneto
WHERE 
[RTRcodigo] = @iRTRcodigo
SELECT 
@iRTRcodigo = [RTRcodigo]
,@sACFcuenta = [ACFcuenta]
,@sINVZU = [INVZU]
,@sTXT50 = [TXT50]
,@decACFfactorniif = [ACFfactorniif]
,@decACFvutilniif = [ACFvutilniif]
,@decACFfactorTrib = [ACFfactorTrib]
,@decACFvutiltrib = [ACFvutiltrib]
,@decACFvalorniif = [ACFvalorniif]
,@decACFdepAcuniif = [ACFdepAcuniif]
,@decACFNiifNeto = [ACFNiifNeto]
,@decACFDepNiifPer = [ACFDepNiifPer]
,@decACFvalortrib = [ACFvalortrib]
,@decACFdepacutrib = [ACFdepacutrib]
,@decACFlirneto = [ACFlirneto]
,@decACFdeptlirper = [ACFdeptlirper]
,@decACFadiciones = [ACFadiciones]
,@decACFdeducciones = [ACFdeducciones]
,@decACFneto = [ACFneto]
FROM [dbo].[acfDRTt_detallereparotributario]
WHERE 
[RTRcodigo] = @iRTRcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfEDIt_edificaciondetalle]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfEDIt_edificaciondetalle]
@iACFid int OUTPUT
, @sEDIzona char(18) OUTPUT
, @sEDIdescripicion char(100) OUTPUT
, @decEDIfactorasignado decimal(12, 2) OUTPUT
, @decACFValorIR decimal(12, 2) OUTPUT
, @decACFTC decimal(12, 2) OUTPUT
, @decACFCRC decimal(12, 2) OUTPUT
, @decACFDEPCRC decimal(12, 2) OUTPUT
, @decACFNETOCRC decimal(12, 2) OUTPUT
, @decACFvalorniif decimal(12, 2) OUTPUT
, @decACFdepacuniif decimal(12, 2) OUTPUT
, @decACFNETOPCGA decimal(12, 2) OUTPUT
, @decACFDIFCosto decimal(12, 2) OUTPUT
, @decACFINCCosto decimal(12, 2) OUTPUT
, @decACFDISCosto decimal(12, 2) OUTPUT
, @decACFDIFDEP decimal(12, 2) OUTPUT
, @decACFINCDep decimal(12, 2) OUTPUT
, @decACFDISDep decimal(12, 2) OUTPUT
, @decACFDIFNeta decimal(12, 2) OUTPUT
, @decACFSumDifDed decimal(12, 2) OUTPUT
, @decACFSumDifGra decimal(12, 2) OUTPUT
, @decACFSumACTDif decimal(12, 2) OUTPUT
, @decACFSumPasDif decimal(12, 2) OUTPUT
, @sACFcuenta char(18) OUTPUT
, @sLOClocal char(18) OUTPUT
, @sRVAcodigo char(18) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfEDIt_edificaciondetalle]
SET
[ACFid] = @iACFid
,[EDIzona] = @sEDIzona
,[EDIdescripicion] = @sEDIdescripicion
,[EDIfactorasignado] = @decEDIfactorasignado
,[ACFValorIR] = @decACFValorIR
,[ACFTC] = @decACFTC
,[ACFCRC] = @decACFCRC
,[ACFDEPCRC] = @decACFDEPCRC
,[ACFNETOCRC] = @decACFNETOCRC
,[ACFvalorniif] = @decACFvalorniif
,[ACFdepacuniif] = @decACFdepacuniif
,[ACFNETOPCGA] = @decACFNETOPCGA
,[ACFDIFCosto] = @decACFDIFCosto
,[ACFINCCosto] = @decACFINCCosto
,[ACFDISCosto] = @decACFDISCosto
,[ACFDIFDEP] = @decACFDIFDEP
,[ACFINCDep] = @decACFINCDep
,[ACFDISDep] = @decACFDISDep
,[ACFDIFNeta] = @decACFDIFNeta
,[ACFSumDifDed] = @decACFSumDifDed
,[ACFSumDifGra] = @decACFSumDifGra
,[ACFSumACTDif] = @decACFSumACTDif
,[ACFSumPasDif] = @decACFSumPasDif
,[ACFcuenta] = @sACFcuenta
,[LOClocal] = @sLOClocal
WHERE 
[RVAcodigo] = @sRVAcodigo
SELECT 
@iACFid = [ACFid]
,@sEDIzona = [EDIzona]
,@sEDIdescripicion = [EDIdescripicion]
,@decEDIfactorasignado = [EDIfactorasignado]
,@decACFValorIR = [ACFValorIR]
,@decACFTC = [ACFTC]
,@decACFCRC = [ACFCRC]
,@decACFDEPCRC = [ACFDEPCRC]
,@decACFNETOCRC = [ACFNETOCRC]
,@decACFvalorniif = [ACFvalorniif]
,@decACFdepacuniif = [ACFdepacuniif]
,@decACFNETOPCGA = [ACFNETOPCGA]
,@decACFDIFCosto = [ACFDIFCosto]
,@decACFINCCosto = [ACFINCCosto]
,@decACFDISCosto = [ACFDISCosto]
,@decACFDIFDEP = [ACFDIFDEP]
,@decACFINCDep = [ACFINCDep]
,@decACFDISDep = [ACFDISDep]
,@decACFDIFNeta = [ACFDIFNeta]
,@decACFSumDifDed = [ACFSumDifDed]
,@decACFSumDifGra = [ACFSumDifGra]
,@decACFSumACTDif = [ACFSumACTDif]
,@decACFSumPasDif = [ACFSumPasDif]
,@sACFcuenta = [ACFcuenta]
,@sLOClocal = [LOClocal]
,@sRVAcodigo = [RVAcodigo]
FROM [dbo].[acfEDIt_edificaciondetalle]
WHERE 
[RVAcodigo] = @sRVAcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfESTt_Estado]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfESTt_Estado]
@iESTid int OUTPUT
, @sESTestado varchar(20) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfESTt_Estado]
SET
[ESTestado] = @sESTestado
WHERE 
[ESTid] = @iESTid
SELECT 
@iESTid = [ESTid]
,@sESTestado = [ESTestado]
FROM [dbo].[acfESTt_Estado]
WHERE 
[ESTid] = @iESTid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfICRt_Inventariocaracteristicas]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfICRt_Inventariocaracteristicas]
@iMARid int OUTPUT
, @iESTid int OUTPUT
, @sCRSserie varchar(30) OUTPUT
, @sCRSmodelo varchar(35) OUTPUT
, @sCRScolor varchar(35) OUTPUT
, @iMATid int OUTPUT
, @sCRStipo char(1) OUTPUT
, @iUNMid int OUTPUT
, @decCRScantidad decimal(18, 2) OUTPUT
, @sCRSvehplaca varchar(15) OUTPUT
, @sCRSvehexpediente varchar(15) OUTPUT
, @dtCRSvehinscripcion datetime OUTPUT
, @sCRSvehclase varchar(35) OUTPUT
, @sCRSvehcombustible varchar(35) OUTPUT
, @iCRSvehejes int OUTPUT
, @iCRSvehpasajeros int OUTPUT
, @iCRSvehasientos int OUTPUT
, @decCRSvehpesoseco decimal(18, 2) OUTPUT
, @decCRSvehcargautil decimal(18, 2) OUTPUT
, @decCRSaltura decimal(18, 2) OUTPUT
, @decCRSancho decimal(18, 2) OUTPUT
, @sCRSvelocidad varchar(20) OUTPUT
, @sCRSresolucion varchar(20) OUTPUT
, @sCRScapacidad varchar(20) OUTPUT
, @sCRSpotencia varchar(20) OUTPUT
, @sCRSvnominal varchar(20) OUTPUT
, @sCRSventrada varchar(20) OUTPUT
, @sCRSvsalida varchar(20) OUTPUT
, @sCRSfrecuencia varchar(20) OUTPUT
, @sCRStemperatura varchar(20) OUTPUT
, @sCRSprocesador varchar(100) OUTPUT
, @sCRSpuertos varchar(100) OUTPUT
, @decCRSutmx decimal(18, 2) OUTPUT
, @decCRSutmy decimal(18, 2) OUTPUT
, @sCRSesfuerzopunta varchar(20) OUTPUT
, @sCRScajaderivadora varchar(20) OUTPUT
, @sCRSalquilacable char(1) OUTPUT
, @sCRScentropoblado varchar(60) OUTPUT
, @sCRSurbanizacion varchar(60) OUTPUT
, @sCRScalle varchar(60) OUTPUT
, @sCRSlote varchar(10) OUTPUT
, @sCRSnumeropredio varchar(20) OUTPUT
, @sCRSdepartamento varchar(10) OUTPUT
, @sCRSinterior varchar(10) OUTPUT
, @sCRScarretera varchar(50) OUTPUT
, @decCRSkilometro decimal(18, 2) OUTPUT
, @sCRSnombrepredio varchar(60) OUTPUT
, @iCRSpisospredio int OUTPUT
, @sCRSpartidapredio varchar(15) OUTPUT
, @sCRStomopredio varchar(15) OUTPUT
, @sCRSfolioinipredio varchar(10) OUTPUT
, @sCRSfoliofinpredio varchar(10) OUTPUT
, @sCRSasientopredio varchar(15) OUTPUT
, @dtCRSfinscpredio datetime OUTPUT
, @sCRSficharegistral varchar(20) OUTPUT
, @decCRSareaconstruida decimal(18, 2) OUTPUT
, @decCRSperimetro decimal(18, 2) OUTPUT
, @sCRSusopredio varchar(60) OUTPUT
, @decCRSvalorautovaluo decimal(18, 2) OUTPUT
, @sCRScodigoluz varchar(20) OUTPUT
, @sCRScodigoagua varchar(20) OUTPUT
, @dtCRSfadqpredio datetime OUTPUT
, @sCRSobservacion varchar(254) OUTPUT
, @iINVid int OUTPUT
, @iACFid int OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfICRt_Inventariocaracteristicas]
SET
[MARid] = @iMARid
,[ESTid] = @iESTid
,[CRSserie] = @sCRSserie
,[CRSmodelo] = @sCRSmodelo
,[CRScolor] = @sCRScolor
,[MATid] = @iMATid
,[CRStipo] = @sCRStipo
,[UNMid] = @iUNMid
,[CRScantidad] = @decCRScantidad
,[CRSvehplaca] = @sCRSvehplaca
,[CRSvehexpediente] = @sCRSvehexpediente
,[CRSvehinscripcion] = @dtCRSvehinscripcion
,[CRSvehclase] = @sCRSvehclase
,[CRSvehcombustible] = @sCRSvehcombustible
,[CRSvehejes] = @iCRSvehejes
,[CRSvehpasajeros] = @iCRSvehpasajeros
,[CRSvehasientos] = @iCRSvehasientos
,[CRSvehpesoseco] = @decCRSvehpesoseco
,[CRSvehcargautil] = @decCRSvehcargautil
,[CRSaltura] = @decCRSaltura
,[CRSancho] = @decCRSancho
,[CRSvelocidad] = @sCRSvelocidad
,[CRSresolucion] = @sCRSresolucion
,[CRScapacidad] = @sCRScapacidad
,[CRSpotencia] = @sCRSpotencia
,[CRSvnominal] = @sCRSvnominal
,[CRSventrada] = @sCRSventrada
,[CRSvsalida] = @sCRSvsalida
,[CRSfrecuencia] = @sCRSfrecuencia
,[CRStemperatura] = @sCRStemperatura
,[CRSprocesador] = @sCRSprocesador
,[CRSpuertos] = @sCRSpuertos
,[CRSutmx] = @decCRSutmx
,[CRSutmy] = @decCRSutmy
,[CRSesfuerzopunta] = @sCRSesfuerzopunta
,[CRScajaderivadora] = @sCRScajaderivadora
,[CRSalquilacable] = @sCRSalquilacable
,[CRScentropoblado] = @sCRScentropoblado
,[CRSurbanizacion] = @sCRSurbanizacion
,[CRScalle] = @sCRScalle
,[CRSlote] = @sCRSlote
,[CRSnumeropredio] = @sCRSnumeropredio
,[CRSdepartamento] = @sCRSdepartamento
,[CRSinterior] = @sCRSinterior
,[CRScarretera] = @sCRScarretera
,[CRSkilometro] = @decCRSkilometro
,[CRSnombrepredio] = @sCRSnombrepredio
,[CRSpisospredio] = @iCRSpisospredio
,[CRSpartidapredio] = @sCRSpartidapredio
,[CRStomopredio] = @sCRStomopredio
,[CRSfolioinipredio] = @sCRSfolioinipredio
,[CRSfoliofinpredio] = @sCRSfoliofinpredio
,[CRSasientopredio] = @sCRSasientopredio
,[CRSfinscpredio] = @dtCRSfinscpredio
,[CRSficharegistral] = @sCRSficharegistral
,[CRSareaconstruida] = @decCRSareaconstruida
,[CRSperimetro] = @decCRSperimetro
,[CRSusopredio] = @sCRSusopredio
,[CRSvalorautovaluo] = @decCRSvalorautovaluo
,[CRScodigoluz] = @sCRScodigoluz
,[CRScodigoagua] = @sCRScodigoagua
,[CRSfadqpredio] = @dtCRSfadqpredio
,[CRSobservacion] = @sCRSobservacion
WHERE 
[INVid] = @iINVid
AND [ACFid] = @iACFid
SELECT 
@iMARid = [MARid]
,@iESTid = [ESTid]
,@sCRSserie = [CRSserie]
,@sCRSmodelo = [CRSmodelo]
,@sCRScolor = [CRScolor]
,@iMATid = [MATid]
,@sCRStipo = [CRStipo]
,@iUNMid = [UNMid]
,@decCRScantidad = [CRScantidad]
,@sCRSvehplaca = [CRSvehplaca]
,@sCRSvehexpediente = [CRSvehexpediente]
,@dtCRSvehinscripcion = [CRSvehinscripcion]
,@sCRSvehclase = [CRSvehclase]
,@sCRSvehcombustible = [CRSvehcombustible]
,@iCRSvehejes = [CRSvehejes]
,@iCRSvehpasajeros = [CRSvehpasajeros]
,@iCRSvehasientos = [CRSvehasientos]
,@decCRSvehpesoseco = [CRSvehpesoseco]
,@decCRSvehcargautil = [CRSvehcargautil]
,@decCRSaltura = [CRSaltura]
,@decCRSancho = [CRSancho]
,@sCRSvelocidad = [CRSvelocidad]
,@sCRSresolucion = [CRSresolucion]
,@sCRScapacidad = [CRScapacidad]
,@sCRSpotencia = [CRSpotencia]
,@sCRSvnominal = [CRSvnominal]
,@sCRSventrada = [CRSventrada]
,@sCRSvsalida = [CRSvsalida]
,@sCRSfrecuencia = [CRSfrecuencia]
,@sCRStemperatura = [CRStemperatura]
,@sCRSprocesador = [CRSprocesador]
,@sCRSpuertos = [CRSpuertos]
,@decCRSutmx = [CRSutmx]
,@decCRSutmy = [CRSutmy]
,@sCRSesfuerzopunta = [CRSesfuerzopunta]
,@sCRScajaderivadora = [CRScajaderivadora]
,@sCRSalquilacable = [CRSalquilacable]
,@sCRScentropoblado = [CRScentropoblado]
,@sCRSurbanizacion = [CRSurbanizacion]
,@sCRScalle = [CRScalle]
,@sCRSlote = [CRSlote]
,@sCRSnumeropredio = [CRSnumeropredio]
,@sCRSdepartamento = [CRSdepartamento]
,@sCRSinterior = [CRSinterior]
,@sCRScarretera = [CRScarretera]
,@decCRSkilometro = [CRSkilometro]
,@sCRSnombrepredio = [CRSnombrepredio]
,@iCRSpisospredio = [CRSpisospredio]
,@sCRSpartidapredio = [CRSpartidapredio]
,@sCRStomopredio = [CRStomopredio]
,@sCRSfolioinipredio = [CRSfolioinipredio]
,@sCRSfoliofinpredio = [CRSfoliofinpredio]
,@sCRSasientopredio = [CRSasientopredio]
,@dtCRSfinscpredio = [CRSfinscpredio]
,@sCRSficharegistral = [CRSficharegistral]
,@decCRSareaconstruida = [CRSareaconstruida]
,@decCRSperimetro = [CRSperimetro]
,@sCRSusopredio = [CRSusopredio]
,@decCRSvalorautovaluo = [CRSvalorautovaluo]
,@sCRScodigoluz = [CRScodigoluz]
,@sCRScodigoagua = [CRScodigoagua]
,@dtCRSfadqpredio = [CRSfadqpredio]
,@sCRSobservacion = [CRSobservacion]
,@iINVid = [INVid]
,@iACFid = [ACFid]
FROM [dbo].[acfICRt_Inventariocaracteristicas]
WHERE 
[INVid] = @iINVid
AND [ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfINBt_Inventariobienes]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfINBt_Inventariobienes]
@iINVid int OUTPUT
, @iACFid int OUTPUT
, @sACFactivo varchar(100) OUTPUT
, @sBUKRS char(4) OUTPUT
, @sSEGMENT char(10) OUTPUT
, @sKOSTL char(10) OUTPUT
, @sANLKL char(8) OUTPUT
, @sPERNR char(8) OUTPUT
, @sACTid char(2) OUTPUT
, @sCSTid char(4) OUTPUT
, @sVNRid char(7) OUTPUT
, @dtACFfincorporacion datetime OUTPUT
, @dtACFfcapitalizacion datetime OUTPUT
, @iACFvutiltribanio int OUTPUT
, @iACFvutiltribdia int OUTPUT
, @decACFvalortrib decimal(18, 2) OUTPUT
, @decACFfactortrib decimal(18, 6) OUTPUT
, @decACFdepacutrib decimal(18, 2) OUTPUT
, @iACfvutilniifanio int OUTPUT
, @iACFvutilniifdia int OUTPUT
, @decACFvalorniif decimal(18, 2) OUTPUT
, @decACFfactorniif decimal(18, 6) OUTPUT
, @decACFdepacuniif decimal(18, 2) OUTPUT
, @sACFobra char(10) OUTPUT
, @sACFord41 char(4) OUTPUT
, @sACFord42 char(4) OUTPUT
, @sACFord43 char(4) OUTPUT
, @sACFord44 char(4) OUTPUT
, @sACFanlue char(12) OUTPUT
, @sACFcuenta char(18) OUTPUT
, @sACFcuentadep char(18) OUTPUT
, @sLIFNR char(10) OUTPUT
, @sBLART char(2) OUTPUT
, @sACFcomprobante char(18) OUTPUT
, @sACFnotaingreso char(18) OUTPUT
, @dtACFfechanotaingreso datetime OUTPUT
, @sACFordencompra char(18) OUTPUT
, @sACFobservacion varchar(254) OUTPUT
, @iAMBid int OUTPUT
, @iUBEid int OUTPUT
, @dtACFfechacomprobante datetime OUTPUT
, @dtACFfechaordencompra datetime OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfINBt_Inventariobienes]
SET
[ACFactivo] = @sACFactivo
,[BUKRS] = @sBUKRS
,[SEGMENT] = @sSEGMENT
,[KOSTL] = @sKOSTL
,[ANLKL] = @sANLKL
,[PERNR] = @sPERNR
,[ACTid] = @sACTid
,[CSTid] = @sCSTid
,[VNRid] = @sVNRid
,[ACFfincorporacion] = @dtACFfincorporacion
,[ACFfcapitalizacion] = @dtACFfcapitalizacion
,[ACFvutiltribanio] = @iACFvutiltribanio
,[ACFvutiltribdia] = @iACFvutiltribdia
,[ACFvalortrib] = @decACFvalortrib
,[ACFfactortrib] = @decACFfactortrib
,[ACFdepacutrib] = @decACFdepacutrib
,[ACfvutilniifanio] = @iACfvutilniifanio
,[ACFvutilniifdia] = @iACFvutilniifdia
,[ACFvalorniif] = @decACFvalorniif
,[ACFfactorniif] = @decACFfactorniif
,[ACFdepacuniif] = @decACFdepacuniif
,[ACFobra] = @sACFobra
,[ACFord41] = @sACFord41
,[ACFord42] = @sACFord42
,[ACFord43] = @sACFord43
,[ACFord44] = @sACFord44
,[ACFanlue] = @sACFanlue
,[ACFcuenta] = @sACFcuenta
,[ACFcuentadep] = @sACFcuentadep
,[LIFNR] = @sLIFNR
,[BLART] = @sBLART
,[ACFcomprobante] = @sACFcomprobante
,[ACFnotaingreso] = @sACFnotaingreso
,[ACFfechanotaingreso] = @dtACFfechanotaingreso
,[ACFordencompra] = @sACFordencompra
,[ACFobservacion] = @sACFobservacion
,[AMBid] = @iAMBid
,[UBEid] = @iUBEid
,[ACFfechacomprobante] = @dtACFfechacomprobante
,[ACFfechaordencompra] = @dtACFfechaordencompra
WHERE 
[INVid] = @iINVid
AND [ACFid] = @iACFid
SELECT 
@iINVid = [INVid]
,@iACFid = [ACFid]
,@sACFactivo = [ACFactivo]
,@sBUKRS = [BUKRS]
,@sSEGMENT = [SEGMENT]
,@sKOSTL = [KOSTL]
,@sANLKL = [ANLKL]
,@sPERNR = [PERNR]
,@sACTid = [ACTid]
,@sCSTid = [CSTid]
,@sVNRid = [VNRid]
,@dtACFfincorporacion = [ACFfincorporacion]
,@dtACFfcapitalizacion = [ACFfcapitalizacion]
,@iACFvutiltribanio = [ACFvutiltribanio]
,@iACFvutiltribdia = [ACFvutiltribdia]
,@decACFvalortrib = [ACFvalortrib]
,@decACFfactortrib = [ACFfactortrib]
,@decACFdepacutrib = [ACFdepacutrib]
,@iACfvutilniifanio = [ACfvutilniifanio]
,@iACFvutilniifdia = [ACFvutilniifdia]
,@decACFvalorniif = [ACFvalorniif]
,@decACFfactorniif = [ACFfactorniif]
,@decACFdepacuniif = [ACFdepacuniif]
,@sACFobra = [ACFobra]
,@sACFord41 = [ACFord41]
,@sACFord42 = [ACFord42]
,@sACFord43 = [ACFord43]
,@sACFord44 = [ACFord44]
,@sACFanlue = [ACFanlue]
,@sACFcuenta = [ACFcuenta]
,@sACFcuentadep = [ACFcuentadep]
,@sLIFNR = [LIFNR]
,@sBLART = [BLART]
,@sACFcomprobante = [ACFcomprobante]
,@sACFnotaingreso = [ACFnotaingreso]
,@dtACFfechanotaingreso = [ACFfechanotaingreso]
,@sACFordencompra = [ACFordencompra]
,@sACFobservacion = [ACFobservacion]
,@iAMBid = [AMBid]
,@iUBEid = [UBEid]
,@dtACFfechacomprobante = [ACFfechacomprobante]
,@dtACFfechaordencompra = [ACFfechaordencompra]
FROM [dbo].[acfINBt_Inventariobienes]
WHERE 
[INVid] = @iINVid
AND [ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfINVp_Inventario]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfINVp_Inventario]
@iINVid int OUTPUT
, @sINVdetalle varchar(100) OUTPUT
, @dtINVinicio datetime OUTPUT
, @dtINVcierre datetime OUTPUT
, @bINVactivo bit OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfINVp_Inventario]
SET
[INVdetalle] = @sINVdetalle
,[INVinicio] = @dtINVinicio
,[INVcierre] = @dtINVcierre
,[INVactivo] = @bINVactivo
WHERE 
[INVid] = @iINVid
SELECT 
@iINVid = [INVid]
,@sINVdetalle = [INVdetalle]
,@dtINVinicio = [INVinicio]
,@dtINVcierre = [INVcierre]
,@bINVactivo = [INVactivo]
FROM [dbo].[acfINVp_Inventario]
WHERE 
[INVid] = @iINVid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfLOCt_Local]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfLOCt_Local]
@iLOCid int OUTPUT
, @sLOClocal varchar(100) OUTPUT
, @sLOCdireccion varchar(100) OUTPUT
, @sSEGMENT char(10) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfLOCt_Local]
SET
[LOClocal] = @sLOClocal
,[LOCdireccion] = @sLOCdireccion
,[SEGMENT] = @sSEGMENT
WHERE 
[LOCid] = @iLOCid
SELECT 
@iLOCid = [LOCid]
,@sLOClocal = [LOClocal]
,@sLOCdireccion = [LOCdireccion]
,@sSEGMENT = [SEGMENT]
FROM [dbo].[acfLOCt_Local]
WHERE 
[LOCid] = @iLOCid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfMARt_Marca]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfMARt_Marca]
@iMARid int OUTPUT
, @sMARmarca varchar(60) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfMARt_Marca]
SET
[MARmarca] = @sMARmarca
WHERE 
[MARid] = @iMARid
SELECT 
@iMARid = [MARid]
,@sMARmarca = [MARmarca]
FROM [dbo].[acfMARt_Marca]
WHERE 
[MARid] = @iMARid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfMATt_Material]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfMATt_Material]
@iMATid int OUTPUT
, @sMATmaterial char(60) OUTPUT
, @sMATabreviado char(10) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfMATt_Material]
SET
[MATmaterial] = @sMATmaterial
,[MATabreviado] = @sMATabreviado
WHERE 
[MATid] = @iMATid
SELECT 
@iMATid = [MATid]
,@sMATmaterial = [MATmaterial]
,@sMATabreviado = [MATabreviado]
FROM [dbo].[acfMATt_Material]
WHERE 
[MATid] = @iMATid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfMEQt_maquinariaequipo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfMEQt_maquinariaequipo]
@decMEQvnrtot decimal(12, 2) OUTPUT
, @decMEQcantidad decimal(12, 2) OUTPUT
, @decMEQaccffecinc decimal(12, 2) OUTPUT
, @sMEQabreviatura char(18) OUTPUT
, @sMEQopiniontecnica char(18) OUTPUT
, @decMEQctacontable decimal(12, 2) OUTPUT
, @decMEQniif decimal(12, 2) OUTPUT
, @decMEQvrident decimal(12, 2) OUTPUT
, @decMEQprovdes decimal(12, 2) OUTPUT
, @decMEQcostorepcor decimal(12, 2) OUTPUT
, @decMEQfactorinst decimal(12, 2) OUTPUT
, @decMEQvalorresi decimal(12, 2) OUTPUT
, @decMEQedadact decimal(12, 2) OUTPUT
, @decMEQdeptas decimal(12, 2) OUTPUT
, @decMEQvalorref decimal(12, 2) OUTPUT
, @decMEQvalref2 decimal(12, 2) OUTPUT
, @decMEQvsm decimal(12, 2) OUTPUT
, @decMEQestado decimal(12, 2) OUTPUT
, @decMEQvidautil decimal(12, 2) OUTPUT
, @decMEQvidautmax decimal(12, 2) OUTPUT
, @decMEQedadtec decimal(12, 2) OUTPUT
, @decMEQdepreciacion decimal(12, 2) OUTPUT
, @decMEQdep2012 decimal(12, 2) OUTPUT
, @decMEQcostocorr decimal(12, 2) OUTPUT
, @decMEQvaloractivo decimal(12, 2) OUTPUT
, @decMEQdepre decimal(12, 2) OUTPUT
, @decMEQtasair decimal(12, 2) OUTPUT
, @decMEQimpdife decimal(12, 2) OUTPUT
, @decMEQdifneta decimal(12, 2) OUTPUT
, @decMEQvalorneto decimal(12, 2) OUTPUT
, @decMEQvalact decimal(12, 2) OUTPUT
, @decMEQcostotcorr decimal(12, 2) OUTPUT
, @decMEQdepacuniif decimal(12, 2) OUTPUT
, @decMEQcrcnet decimal(12, 2) OUTPUT
, @decMEQvalnet decimal(12, 2) OUTPUT
, @decMEQdiferenneta decimal(12, 2) OUTPUT
, @decMEQvalornetolib decimal(12, 2) OUTPUT
, @decMEQdepacumtrib decimal(12, 2) OUTPUT
, @decMEQcostohistorico decimal(12, 2) OUTPUT
, @sRVAcodigo char(18) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfMEQt_maquinariaequipo]
SET
[MEQvnrtot] = @decMEQvnrtot
,[MEQcantidad] = @decMEQcantidad
,[MEQaccffecinc] = @decMEQaccffecinc
,[MEQabreviatura] = @sMEQabreviatura
,[MEQopiniontecnica] = @sMEQopiniontecnica
,[MEQctacontable] = @decMEQctacontable
,[MEQniif] = @decMEQniif
,[MEQvrident] = @decMEQvrident
,[MEQprovdes] = @decMEQprovdes
,[MEQcostorepcor] = @decMEQcostorepcor
,[MEQfactorinst] = @decMEQfactorinst
,[MEQvalorresi] = @decMEQvalorresi
,[MEQedadact] = @decMEQedadact
,[MEQdeptas] = @decMEQdeptas
,[MEQvalorref] = @decMEQvalorref
,[MEQvalref2] = @decMEQvalref2
,[MEQvsm] = @decMEQvsm
,[MEQestado] = @decMEQestado
,[MEQvidautil] = @decMEQvidautil
,[MEQvidautmax] = @decMEQvidautmax
,[MEQedadtec] = @decMEQedadtec
,[MEQdepreciacion] = @decMEQdepreciacion
,[MEQdep2012] = @decMEQdep2012
,[MEQcostocorr] = @decMEQcostocorr
,[MEQvaloractivo] = @decMEQvaloractivo
,[MEQdepre] = @decMEQdepre
,[MEQtasair] = @decMEQtasair
,[MEQimpdife] = @decMEQimpdife
,[MEQdifneta] = @decMEQdifneta
,[MEQvalorneto] = @decMEQvalorneto
,[MEQvalact] = @decMEQvalact
,[MEQcostotcorr] = @decMEQcostotcorr
,[MEQdepacuniif] = @decMEQdepacuniif
,[MEQcrcnet] = @decMEQcrcnet
,[MEQvalnet] = @decMEQvalnet
,[MEQdiferenneta] = @decMEQdiferenneta
,[MEQvalornetolib] = @decMEQvalornetolib
,[MEQdepacumtrib] = @decMEQdepacumtrib
,[MEQcostohistorico] = @decMEQcostohistorico
WHERE 
[RVAcodigo] = @sRVAcodigo
SELECT 
@decMEQvnrtot = [MEQvnrtot]
,@decMEQcantidad = [MEQcantidad]
,@decMEQaccffecinc = [MEQaccffecinc]
,@sMEQabreviatura = [MEQabreviatura]
,@sMEQopiniontecnica = [MEQopiniontecnica]
,@decMEQctacontable = [MEQctacontable]
,@decMEQniif = [MEQniif]
,@decMEQvrident = [MEQvrident]
,@decMEQprovdes = [MEQprovdes]
,@decMEQcostorepcor = [MEQcostorepcor]
,@decMEQfactorinst = [MEQfactorinst]
,@decMEQvalorresi = [MEQvalorresi]
,@decMEQedadact = [MEQedadact]
,@decMEQdeptas = [MEQdeptas]
,@decMEQvalorref = [MEQvalorref]
,@decMEQvalref2 = [MEQvalref2]
,@decMEQvsm = [MEQvsm]
,@decMEQestado = [MEQestado]
,@decMEQvidautil = [MEQvidautil]
,@decMEQvidautmax = [MEQvidautmax]
,@decMEQedadtec = [MEQedadtec]
,@decMEQdepreciacion = [MEQdepreciacion]
,@decMEQdep2012 = [MEQdep2012]
,@decMEQcostocorr = [MEQcostocorr]
,@decMEQvaloractivo = [MEQvaloractivo]
,@decMEQdepre = [MEQdepre]
,@decMEQtasair = [MEQtasair]
,@decMEQimpdife = [MEQimpdife]
,@decMEQdifneta = [MEQdifneta]
,@decMEQvalorneto = [MEQvalorneto]
,@decMEQvalact = [MEQvalact]
,@decMEQcostotcorr = [MEQcostotcorr]
,@decMEQdepacuniif = [MEQdepacuniif]
,@decMEQcrcnet = [MEQcrcnet]
,@decMEQvalnet = [MEQvalnet]
,@decMEQdiferenneta = [MEQdiferenneta]
,@decMEQvalornetolib = [MEQvalornetolib]
,@decMEQdepacumtrib = [MEQdepacumtrib]
,@decMEQcostohistorico = [MEQcostohistorico]
,@sRVAcodigo = [RVAcodigo]
FROM [dbo].[acfMEQt_maquinariaequipo]
WHERE 
[RVAcodigo] = @sRVAcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfMVAt_MovimientoActivo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfMVAt_MovimientoActivo]
@iMVAid int OUTPUT
, @iACFid int OUTPUT
, @sACFactivo varchar(254) OUTPUT
, @sBUKRS char(4) OUTPUT
, @sSEGMENT char(10) OUTPUT
, @sKOSTL char(10) OUTPUT
, @sANLKL char(8) OUTPUT
, @sPERNR char(8) OUTPUT
, @sCSTid char(4) OUTPUT
, @sTMVid char(2) OUTPUT
, @sMVMid char(2) OUTPUT
, @dtACFfmovimiento datetime OUTPUT
, @sVNRid char(7) OUTPUT
, @dtACFfincorporacion datetime OUTPUT
, @dtACFfcapitalizacion datetime OUTPUT
, @iACFvutiltribanio int OUTPUT
, @iACFvutiltribdia int OUTPUT
, @decACFvalortrib decimal(18, 2) OUTPUT
, @decACFfactortrib decimal(18, 6) OUTPUT
, @decACFdepacutrib decimal(18, 2) OUTPUT
, @iACFvutilniifanio int OUTPUT
, @iACFvutilniifdia int OUTPUT
, @decACFvalorniif decimal(18, 2) OUTPUT
, @decACFfactorniif decimal(18, 6) OUTPUT
, @decACFdepacuniif decimal(18, 2) OUTPUT
, @sACFobra char(10) OUTPUT
, @sACFord41 char(4) OUTPUT
, @sACFord42 char(4) OUTPUT
, @sACFord43 char(4) OUTPUT
, @sACFord44 char(4) OUTPUT
, @sACFanlue char(12) OUTPUT
, @sACFcuenta char(18) OUTPUT
, @sACFcuentadep char(18) OUTPUT
, @sACFcomprobante char(18) OUTPUT
, @sACFnotaingreso char(18) OUTPUT
, @dtACFfechanotaingreso datetime OUTPUT
, @sACFordencompra char(18) OUTPUT
, @dtACFfechaordencompra datetime OUTPUT
, @sACFobservacion char(254) OUTPUT
, @sLIFNR char(10) OUTPUT
, @sBLART char(2) OUTPUT
, @iAMBid int OUTPUT
, @sCMPid char(15) OUTPUT
, @iUBEid int OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfMVAt_MovimientoActivo]
SET
[ACFactivo] = @sACFactivo
,[BUKRS] = @sBUKRS
,[SEGMENT] = @sSEGMENT
,[KOSTL] = @sKOSTL
,[ANLKL] = @sANLKL
,[PERNR] = @sPERNR
,[CSTid] = @sCSTid
,[TMVid] = @sTMVid
,[MVMid] = @sMVMid
,[ACFfmovimiento] = @dtACFfmovimiento
,[VNRid] = @sVNRid
,[ACFfincorporacion] = @dtACFfincorporacion
,[ACFfcapitalizacion] = @dtACFfcapitalizacion
,[ACFvutiltribanio] = @iACFvutiltribanio
,[ACFvutiltribdia] = @iACFvutiltribdia
,[ACFvalortrib] = @decACFvalortrib
,[ACFfactortrib] = @decACFfactortrib
,[ACFdepacutrib] = @decACFdepacutrib
,[ACFvutilniifanio] = @iACFvutilniifanio
,[ACFvutilniifdia] = @iACFvutilniifdia
,[ACFvalorniif] = @decACFvalorniif
,[ACFfactorniif] = @decACFfactorniif
,[ACFdepacuniif] = @decACFdepacuniif
,[ACFobra] = @sACFobra
,[ACFord41] = @sACFord41
,[ACFord42] = @sACFord42
,[ACFord43] = @sACFord43
,[ACFord44] = @sACFord44
,[ACFanlue] = @sACFanlue
,[ACFcuenta] = @sACFcuenta
,[ACFcuentadep] = @sACFcuentadep
,[ACFcomprobante] = @sACFcomprobante
,[ACFnotaingreso] = @sACFnotaingreso
,[ACFfechanotaingreso] = @dtACFfechanotaingreso
,[ACFordencompra] = @sACFordencompra
,[ACFfechaordencompra] = @dtACFfechaordencompra
,[ACFobservacion] = @sACFobservacion
,[LIFNR] = @sLIFNR
,[BLART] = @sBLART
,[AMBid] = @iAMBid
,[CMPid] = @sCMPid
,[UBEid] = @iUBEid
WHERE 
[MVAid] = @iMVAid
AND [ACFid] = @iACFid
SELECT 
@iMVAid = [MVAid]
,@iACFid = [ACFid]
,@sACFactivo = [ACFactivo]
,@sBUKRS = [BUKRS]
,@sSEGMENT = [SEGMENT]
,@sKOSTL = [KOSTL]
,@sANLKL = [ANLKL]
,@sPERNR = [PERNR]
,@sCSTid = [CSTid]
,@sTMVid = [TMVid]
,@sMVMid = [MVMid]
,@dtACFfmovimiento = [ACFfmovimiento]
,@sVNRid = [VNRid]
,@dtACFfincorporacion = [ACFfincorporacion]
,@dtACFfcapitalizacion = [ACFfcapitalizacion]
,@iACFvutiltribanio = [ACFvutiltribanio]
,@iACFvutiltribdia = [ACFvutiltribdia]
,@decACFvalortrib = [ACFvalortrib]
,@decACFfactortrib = [ACFfactortrib]
,@decACFdepacutrib = [ACFdepacutrib]
,@iACFvutilniifanio = [ACFvutilniifanio]
,@iACFvutilniifdia = [ACFvutilniifdia]
,@decACFvalorniif = [ACFvalorniif]
,@decACFfactorniif = [ACFfactorniif]
,@decACFdepacuniif = [ACFdepacuniif]
,@sACFobra = [ACFobra]
,@sACFord41 = [ACFord41]
,@sACFord42 = [ACFord42]
,@sACFord43 = [ACFord43]
,@sACFord44 = [ACFord44]
,@sACFanlue = [ACFanlue]
,@sACFcuenta = [ACFcuenta]
,@sACFcuentadep = [ACFcuentadep]
,@sACFcomprobante = [ACFcomprobante]
,@sACFnotaingreso = [ACFnotaingreso]
,@dtACFfechanotaingreso = [ACFfechanotaingreso]
,@sACFordencompra = [ACFordencompra]
,@dtACFfechaordencompra = [ACFfechaordencompra]
,@sACFobservacion = [ACFobservacion]
,@sLIFNR = [LIFNR]
,@sBLART = [BLART]
,@iAMBid = [AMBid]
,@sCMPid = [CMPid]
,@iUBEid = [UBEid]
FROM [dbo].[acfMVAt_MovimientoActivo]
WHERE 
[MVAid] = @iMVAid
AND [ACFid] = @iACFid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfMVMt_MotivoMovimiento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfMVMt_MotivoMovimiento]
@sTMVid char(2) OUTPUT
, @sMVMid char(2) OUTPUT
, @sMVMmotivomovimiento char(60) OUTPUT
, @iMVMjustificacion smallint OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfMVMt_MotivoMovimiento]
SET
[TMVid] = @sTMVid
,[MVMmotivomovimiento] = @sMVMmotivomovimiento
,[MVMjustificacion] = @iMVMjustificacion
WHERE 
[MVMid] = @sMVMid
SELECT 
@sTMVid = [TMVid]
,@sMVMid = [MVMid]
,@sMVMmotivomovimiento = [MVMmotivomovimiento]
,@iMVMjustificacion = [MVMjustificacion]
FROM [dbo].[acfMVMt_MotivoMovimiento]
WHERE 
[MVMid] = @sMVMid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfPDFt_procesodiferido]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfPDFt_procesodiferido]
@iPDFcodigo int OUTPUT
, @sPDFperiodo char(18) OUTPUT
, @dtPDFfecha datetime OUTPUT
, @sPDFreponsable char(100) OUTPUT
, @bPDFestado bit OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfPDFt_procesodiferido]
SET
[PDFperiodo] = @sPDFperiodo
,[PDFfecha] = @dtPDFfecha
,[PDFreponsable] = @sPDFreponsable
,[PDFestado] = @bPDFestado
WHERE 
[PDFcodigo] = @iPDFcodigo
SELECT 
@iPDFcodigo = [PDFcodigo]
,@sPDFperiodo = [PDFperiodo]
,@dtPDFfecha = [PDFfecha]
,@sPDFreponsable = [PDFreponsable]
,@bPDFestado = [PDFestado]
FROM [dbo].[acfPDFt_procesodiferido]
WHERE 
[PDFcodigo] = @iPDFcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfRTRt_Reparotributario]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfRTRt_Reparotributario]
@sRTRperiodo char(6) OUTPUT
, @dtRTRfecha datetime OUTPUT
, @sRTRresponsable char(50) OUTPUT
, @bRTRestado bit OUTPUT
, @iRTRcodigo int OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfRTRt_Reparotributario]
SET
[RTRperiodo] = @sRTRperiodo
,[RTRfecha] = @dtRTRfecha
,[RTRresponsable] = @sRTRresponsable
,[RTRestado] = @bRTRestado
WHERE 
[RTRcodigo] = @iRTRcodigo
SELECT 
@sRTRperiodo = [RTRperiodo]
,@dtRTRfecha = [RTRfecha]
,@sRTRresponsable = [RTRresponsable]
,@bRTRestado = [RTRestado]
,@iRTRcodigo = [RTRcodigo]
FROM [dbo].[acfRTRt_Reparotributario]
WHERE 
[RTRcodigo] = @iRTRcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfRVAt_registrovaluacion]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfRVAt_registrovaluacion]
@sRVAcodigo char(18) OUTPUT
, @sRVAperiodo char(18) OUTPUT
, @sRVAfecha char(18) OUTPUT
, @sRVAresponsable char(18) OUTPUT
, @sRVRestado char(18) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfRVAt_registrovaluacion]
SET
[RVAperiodo] = @sRVAperiodo
,[RVAfecha] = @sRVAfecha
,[RVAresponsable] = @sRVAresponsable
,[RVRestado] = @sRVRestado
WHERE 
[RVAcodigo] = @sRVAcodigo
SELECT 
@sRVAcodigo = [RVAcodigo]
,@sRVAperiodo = [RVAperiodo]
,@sRVAfecha = [RVAfecha]
,@sRVAresponsable = [RVAresponsable]
,@sRVRestado = [RVRestado]
FROM [dbo].[acfRVAt_registrovaluacion]
WHERE 
[RVAcodigo] = @sRVAcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfSELt_SistemaElectrico]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfSELt_SistemaElectrico]
@sSELid char(6) OUTPUT
, @sSELsistemaelectrico varchar(25) OUTPUT
, @sSEGMENT char(10) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfSELt_SistemaElectrico]
SET
[SELsistemaelectrico] = @sSELsistemaelectrico
,[SEGMENT] = @sSEGMENT
WHERE 
[SELid] = @sSELid
SELECT 
@sSELid = [SELid]
,@sSELsistemaelectrico = [SELsistemaelectrico]
,@sSEGMENT = [SEGMENT]
FROM [dbo].[acfSELt_SistemaElectrico]
WHERE 
[SELid] = @sSELid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfSPNt_Supranumero]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfSPNt_Supranumero]
@sV_T087U_ANLUE char(12) OUTPUT
, @sV_T087U_ANLUE_TXT char(100) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfSPNt_Supranumero]
SET
[V_T087U_ANLUE_TXT] = @sV_T087U_ANLUE_TXT
WHERE 
[V_T087U_ANLUE] = @sV_T087U_ANLUE
SELECT 
@sV_T087U_ANLUE = [V_T087U_ANLUE]
,@sV_T087U_ANLUE_TXT = [V_T087U_ANLUE_TXT]
FROM [dbo].[acfSPNt_Supranumero]
WHERE 
[V_T087U_ANLUE] = @sV_T087U_ANLUE

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfTMVt_TipoMovimiento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfTMVt_TipoMovimiento]
@sTMVid char(2) OUTPUT
, @sTMVtipomovimiento char(60) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfTMVt_TipoMovimiento]
SET
[TMVtipomovimiento] = @sTMVtipomovimiento
WHERE 
[TMVid] = @sTMVid
SELECT 
@sTMVid = [TMVid]
,@sTMVtipomovimiento = [TMVtipomovimiento]
FROM [dbo].[acfTMVt_TipoMovimiento]
WHERE 
[TMVid] = @sTMVid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfTRNt_terrenodetalle]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfTRNt_terrenodetalle]
@sCRSnombrepredio char(18) OUTPUT
, @sCRScentropoblado char(18) OUTPUT
, @sCRSdepartamento char(18) OUTPUT
, @sCRSinterior char(18) OUTPUT
, @sCRScarretera char(18) OUTPUT
, @sCRSkilometro char(18) OUTPUT
, @sACFArea char(18) OUTPUT
, @sACFvalor char(18) OUTPUT
, @sACFtc char(18) OUTPUT
, @sACFvalorSoles char(18) OUTPUT
, @sACFValorDolar char(18) OUTPUT
, @sACFValorAnt0 char(18) OUTPUT
, @sACFVutilniff char(18) OUTPUT
, @sACFNetopcga char(18) OUTPUT
, @sACFvalorATri char(18) OUTPUT
, @sACFid char(18) OUTPUT
, @sACFdiferencia char(18) OUTPUT
, @sACFDifTemDedu char(18) OUTPUT
, @sACFDifTemGrav char(18) OUTPUT
, @sACFTasaIR char(18) OUTPUT
, @sACFSaldoDeducible char(18) OUTPUT
, @sACFSaldoGravable char(18) OUTPUT
, @sRVAcodigo char(18) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfTRNt_terrenodetalle]
SET
[CRSnombrepredio] = @sCRSnombrepredio
,[CRScentropoblado] = @sCRScentropoblado
,[CRSdepartamento] = @sCRSdepartamento
,[CRSinterior] = @sCRSinterior
,[CRScarretera] = @sCRScarretera
,[CRSkilometro] = @sCRSkilometro
,[ACFArea] = @sACFArea
,[ACFvalor] = @sACFvalor
,[ACFtc] = @sACFtc
,[ACFvalorSoles] = @sACFvalorSoles
,[ACFValorDolar] = @sACFValorDolar
,[ACFValorAnt0] = @sACFValorAnt0
,[ACFVutilniff] = @sACFVutilniff
,[ACFNetopcga] = @sACFNetopcga
,[ACFvalorATri] = @sACFvalorATri
,[ACFid] = @sACFid
,[ACFdiferencia] = @sACFdiferencia
,[ACFDifTemDedu] = @sACFDifTemDedu
,[ACFDifTemGrav] = @sACFDifTemGrav
,[ACFTasaIR] = @sACFTasaIR
,[ACFSaldoDeducible] = @sACFSaldoDeducible
,[ACFSaldoGravable] = @sACFSaldoGravable
WHERE 
[RVAcodigo] = @sRVAcodigo
SELECT 
@sCRSnombrepredio = [CRSnombrepredio]
,@sCRScentropoblado = [CRScentropoblado]
,@sCRSdepartamento = [CRSdepartamento]
,@sCRSinterior = [CRSinterior]
,@sCRScarretera = [CRScarretera]
,@sCRSkilometro = [CRSkilometro]
,@sACFArea = [ACFArea]
,@sACFvalor = [ACFvalor]
,@sACFtc = [ACFtc]
,@sACFvalorSoles = [ACFvalorSoles]
,@sACFValorDolar = [ACFValorDolar]
,@sACFValorAnt0 = [ACFValorAnt0]
,@sACFVutilniff = [ACFVutilniff]
,@sACFNetopcga = [ACFNetopcga]
,@sACFvalorATri = [ACFvalorATri]
,@sACFid = [ACFid]
,@sACFdiferencia = [ACFdiferencia]
,@sACFDifTemDedu = [ACFDifTemDedu]
,@sACFDifTemGrav = [ACFDifTemGrav]
,@sACFTasaIR = [ACFTasaIR]
,@sACFSaldoDeducible = [ACFSaldoDeducible]
,@sACFSaldoGravable = [ACFSaldoGravable]
,@sRVAcodigo = [RVAcodigo]
FROM [dbo].[acfTRNt_terrenodetalle]
WHERE 
[RVAcodigo] = @sRVAcodigo

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfUBEt_UbicacionElectrica]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfUBEt_UbicacionElectrica]
@iUBEcodigogis bigint OUTPUT
, @sUBEobra char(10) OUTPUT
, @sKOSTL char(10) OUTPUT
, @sVNRid char(7) OUTPUT
, @sSELid char(6) OUTPUT
, @iUBEset bigint OUTPUT
, @sUBEsetetq varchar(30) OUTPUT
, @iUBEalimentador bigint OUTPUT
, @sUBEalimentadoretq varchar(10) OUTPUT
, @iUBEsed bigint OUTPUT
, @sUBEsedetq varchar(10) OUTPUT
, @iUBEcircuito bigint OUTPUT
, @sUBEcircuitoetq varchar(10) OUTPUT
, @iUBEpuntoi bigint OUTPUT
, @sUBEpuntoietq varchar(10) OUTPUT
, @iUBEpuntof bigint OUTPUT
, @sUBEpuntofetq varchar(10) OUTPUT
, @iUBEid int OUTPUT
, @iACFid int OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfUBEt_UbicacionElectrica]
SET
[UBEcodigogis] = @iUBEcodigogis
,[UBEobra] = @sUBEobra
,[KOSTL] = @sKOSTL
,[VNRid] = @sVNRid
,[SELid] = @sSELid
,[UBEset] = @iUBEset
,[UBEsetetq] = @sUBEsetetq
,[UBEalimentador] = @iUBEalimentador
,[UBEalimentadoretq] = @sUBEalimentadoretq
,[UBEsed] = @iUBEsed
,[UBEsedetq] = @sUBEsedetq
,[UBEcircuito] = @iUBEcircuito
,[UBEcircuitoetq] = @sUBEcircuitoetq
,[UBEpuntoi] = @iUBEpuntoi
,[UBEpuntoietq] = @sUBEpuntoietq
,[UBEpuntof] = @iUBEpuntof
,[UBEpuntofetq] = @sUBEpuntofetq
,[ACFid] = @iACFid
WHERE 
[UBEid] = @iUBEid
SELECT 
@iUBEcodigogis = [UBEcodigogis]
,@sUBEobra = [UBEobra]
,@sKOSTL = [KOSTL]
,@sVNRid = [VNRid]
,@sSELid = [SELid]
,@iUBEset = [UBEset]
,@sUBEsetetq = [UBEsetetq]
,@iUBEalimentador = [UBEalimentador]
,@sUBEalimentadoretq = [UBEalimentadoretq]
,@iUBEsed = [UBEsed]
,@sUBEsedetq = [UBEsedetq]
,@iUBEcircuito = [UBEcircuito]
,@sUBEcircuitoetq = [UBEcircuitoetq]
,@iUBEpuntoi = [UBEpuntoi]
,@sUBEpuntoietq = [UBEpuntoietq]
,@iUBEpuntof = [UBEpuntof]
,@sUBEpuntofetq = [UBEpuntofetq]
,@iUBEid = [UBEid]
,@iACFid = [ACFid]
FROM [dbo].[acfUBEt_UbicacionElectrica]
WHERE 
[UBEid] = @iUBEid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfUNMt_Unimed]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfUNMt_Unimed]
@iUNMid int OUTPUT
, @sUNMunidad char(3) OUTPUT
, @sUNMdetalle char(20) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfUNMt_Unimed]
SET
[UNMunidad] = @sUNMunidad
,[UNMdetalle] = @sUNMdetalle
WHERE 
[UNMid] = @iUNMid
SELECT 
@iUNMid = [UNMid]
,@sUNMunidad = [UNMunidad]
,@sUNMdetalle = [UNMdetalle]
FROM [dbo].[acfUNMt_Unimed]
WHERE 
[UNMid] = @iUNMid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfVNRt_VNR]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_acfVNRt_VNR]
@sVNRid char(7) OUTPUT
, @sVNRvnr char(150) OUTPUT
, @sVNRcuenta char(20) OUTPUT
, @sVNRcuentadep char(20) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfVNRt_VNR]
SET
[VNRvnr] = @sVNRvnr
,[VNRcuenta] = @sVNRcuenta
,[VNRcuentadep] = @sVNRcuentadep
WHERE 
[VNRid] = @sVNRid
SELECT 
@sVNRid = [VNRid]
,@sVNRvnr = [VNRvnr]
,@sVNRcuenta = [VNRcuenta]
,@sVNRcuentadep = [VNRcuentadep]
FROM [dbo].[acfVNRt_VNR]
WHERE 
[VNRid] = @sVNRid

GO
/****** Object:  StoredProcedure [dbo].[usp_U_bdiCAFpClaseDeActivoFijo]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_bdiCAFpClaseDeActivoFijo]
@sANLKL char(8) OUTPUT
, @sTXK50 char(50) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[bdiCAFpClaseDeActivoFijo]
SET
[TXK50] = @sTXK50
WHERE 
[ANLKL] = @sANLKL
SELECT 
@sANLKL = [ANLKL]
,@sTXK50 = [TXK50]
FROM [dbo].[bdiCAFpClaseDeActivoFijo]
WHERE 
[ANLKL] = @sANLKL

GO
/****** Object:  StoredProcedure [dbo].[usp_U_bdiCDDpClasesDeDocumento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_bdiCDDpClasesDeDocumento]
@sBLART char(2) OUTPUT
, @sLTEXT char(100) OUTPUT
, @sDETdoctipo char(2) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[bdiCDDpClasesDeDocumento]
SET
[LTEXT] = @sLTEXT
,[DETdoctipo] = @sDETdoctipo
WHERE 
[BLART] = @sBLART
SELECT 
@sBLART = [BLART]
,@sLTEXT = [LTEXT]
,@sDETdoctipo = [DETdoctipo]
FROM [dbo].[bdiCDDpClasesDeDocumento]
WHERE 
[BLART] = @sBLART

GO
/****** Object:  StoredProcedure [dbo].[usp_U_bdiPRVpProveedor]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_bdiPRVpProveedor]
@sLIFNR char(10) OUTPUT
, @sName1 char(35) OUTPUT
, @sStras char(35) OUTPUT
, @sSTCD1 char(16) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[bdiPRVpProveedor]
SET
[Name1] = @sName1
,[Stras] = @sStras
,[STCD1] = @sSTCD1
WHERE 
[LIFNR] = @sLIFNR
SELECT 
@sLIFNR = [LIFNR]
,@sName1 = [Name1]
,@sStras = [Stras]
,@sSTCD1 = [STCD1]
FROM [dbo].[bdiPRVpProveedor]
WHERE 
[LIFNR] = @sLIFNR

GO
/****** Object:  StoredProcedure [dbo].[usp_U_bdiSEGpSegmento]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_bdiSEGpSegmento]
@sSEGMENT char(10) OUTPUT
, @sNAME char(50) OUTPUT
, @sid_zona varchar(1) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[bdiSEGpSegmento]
SET
[NAME] = @sNAME
,[id_zona] = @sid_zona
WHERE 
[SEGMENT] = @sSEGMENT
SELECT 
@sSEGMENT = [SEGMENT]
,@sNAME = [NAME]
,@sid_zona = [id_zona]
FROM [dbo].[bdiSEGpSegmento]
WHERE 
[SEGMENT] = @sSEGMENT

GO
/****** Object:  StoredProcedure [dbo].[usp_U_bdiSOCpSociedades]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_bdiSOCpSociedades]
@sBUKRS char(4) OUTPUT
, @sBUTXT char(80) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[bdiSOCpSociedades]
SET
[BUTXT] = @sBUTXT
WHERE 
[BUKRS] = @sBUKRS
SELECT 
@sBUKRS = [BUKRS]
,@sBUTXT = [BUTXT]
FROM [dbo].[bdiSOCpSociedades]
WHERE 
[BUKRS] = @sBUKRS

GO
/****** Object:  StoredProcedure [dbo].[usp_U_bdiXCCpExtraccionSAP_CentroCosto]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_bdiXCCpExtraccionSAP_CentroCosto]
@sKOSTL char(10) OUTPUT
, @sKTEXT char(20) OUTPUT
, @sKLTXT char(40) OUTPUT
, @sMCDS3 char(20) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[bdiXCCpExtraccionSAP_CentroCosto]
SET
[KTEXT] = @sKTEXT
,[KLTXT] = @sKLTXT
,[MCDS3] = @sMCDS3
WHERE 
[KOSTL] = @sKOSTL
SELECT 
@sKOSTL = [KOSTL]
,@sKTEXT = [KTEXT]
,@sKLTXT = [KLTXT]
,@sMCDS3 = [MCDS3]
FROM [dbo].[bdiXCCpExtraccionSAP_CentroCosto]
WHERE 
[KOSTL] = @sKOSTL

GO
/****** Object:  StoredProcedure [dbo].[usp_U_bdiXPEpExtraccionSAP_Personal]    Script Date: 06/04/2017 10:30:47  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
CREATE PROCEDURE [dbo].[usp_U_bdiXPEpExtraccionSAP_Personal]
@sPERNR char(8) OUTPUT
, @sNachn char(40) OUTPUT
, @sName2 char(40) OUTPUT
, @sVorna char(40) OUTPUT
, @sDNI char(30) OUTPUT
, @sWERKS char(4) OUTPUT
, @sPersg char(1) OUTPUT
, @sKOSTL char(10) OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[bdiXPEpExtraccionSAP_Personal]
SET
[Nachn] = @sNachn
,[Name2] = @sName2
,[Vorna] = @sVorna
,[DNI] = @sDNI
,[WERKS] = @sWERKS
,[Persg] = @sPersg
,[KOSTL] = @sKOSTL
WHERE 
[PERNR] = @sPERNR
SELECT 
@sPERNR = [PERNR]
,@sNachn = [Nachn]
,@sName2 = [Name2]
,@sVorna = [Vorna]
,@sDNI = [DNI]
,@sWERKS = [WERKS]
,@sPersg = [Persg]
,@sKOSTL = [KOSTL]
FROM [dbo].[bdiXPEpExtraccionSAP_Personal]
WHERE 
[PERNR] = @sPERNR

GO
