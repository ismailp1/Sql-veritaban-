USE [master]
GO
/****** Object:  Database [Otel]    Script Date: 1.01.2023 13:38:54 ******/
CREATE DATABASE [Otel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Otel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Otel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Otel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Otel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Otel] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Otel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Otel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Otel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Otel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Otel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Otel] SET ARITHABORT OFF 
GO
ALTER DATABASE [Otel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Otel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Otel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Otel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Otel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Otel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Otel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Otel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Otel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Otel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Otel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Otel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Otel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Otel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Otel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Otel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Otel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Otel] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Otel] SET  MULTI_USER 
GO
ALTER DATABASE [Otel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Otel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Otel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Otel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Otel] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Otel] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Otel] SET QUERY_STORE = OFF
GO
USE [Otel]
GO
/****** Object:  Table [dbo].[AraçGereç]    Script Date: 1.01.2023 13:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AraçGereç](
	[MalzemeID] [nvarchar](50) NOT NULL,
	[TemizlikAd] [nvarchar](50) NULL,
	[BulaşıkAd] [nvarchar](50) NULL,
 CONSTRAINT [PK_AraçGereç] PRIMARY KEY CLUSTERED 
(
	[MalzemeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 1.01.2023 13:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[KategoriID] [nvarchar](50) NOT NULL,
	[KategoriAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 1.01.2023 13:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuID] [nvarchar](50) NOT NULL,
	[MenüNo] [nvarchar](50) NOT NULL,
	[MenuAdi] [nvarchar](50) NULL,
	[Fiyat] [nvarchar](50) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 1.01.2023 13:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[MusteriID] [nvarchar](50) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[Tckn] [nvarchar](50) NULL,
	[Telefon] [nvarchar](50) NULL,
	[Cinsiyet] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
	[DogumTarihi] [nvarchar](50) NULL,
	[MedeniDurum] [nvarchar](50) NULL,
 CONSTRAINT [PK_Musteriler] PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odalar]    Script Date: 1.01.2023 13:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odalar](
	[OdaID] [nvarchar](50) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Kapasite] [nvarchar](50) NULL,
	[KatNo] [nvarchar](50) NULL,
	[OdaTuru] [nvarchar](50) NULL,
	[OdaNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Odalar] PRIMARY KEY CLUSTERED 
(
	[OdaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odemeler]    Script Date: 1.01.2023 13:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odemeler](
	[OdemeID] [nvarchar](50) NOT NULL,
	[MuşID] [nvarchar](50) NULL,
	[OdemeTuru] [nvarchar](50) NULL,
	[OdemeTarihi] [nvarchar](50) NULL,
	[Tutar] [nvarchar](50) NULL,
 CONSTRAINT [PK_Odemeler] PRIMARY KEY CLUSTERED 
(
	[OdemeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personeller]    Script Date: 1.01.2023 13:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personeller](
	[PersonelID] [nvarchar](50) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[Maas] [nvarchar](50) NULL,
	[Tckn] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
	[Telefon] [nvarchar](50) NULL,
	[Cinsiyet] [nvarchar](50) NULL,
	[Adres] [nvarchar](50) NULL,
	[DogumTarihi] [nvarchar](50) NULL,
	[İseGirisTarihi] [nvarchar](50) NULL,
	[İstenCıkısTarihi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Personeller] PRIMARY KEY CLUSTERED 
(
	[PersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rezervasyon]    Script Date: 1.01.2023 13:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezervasyon](
	[RezervasyonID] [nvarchar](50) NOT NULL,
	[Musteriad] [nvarchar](50) NULL,
	[MusteriSoyad] [nvarchar](50) NULL,
	[Tel] [nvarchar](50) NULL,
	[Tc] [nvarchar](50) NULL,
	[mail] [nvarchar](50) NULL,
	[OdaNo] [nvarchar](50) NULL,
	[RezervasyonGun] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rezervasyon] PRIMARY KEY CLUSTERED 
(
	[RezervasyonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatısDetayı]    Script Date: 1.01.2023 13:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatısDetayı](
	[SatısID] [nvarchar](50) NOT NULL,
	[OdaNo] [nvarchar](50) NULL,
	[Fiyat] [nvarchar](50) NULL,
	[İndirim] [nvarchar](50) NULL,
	[SatısTarihi] [nvarchar](50) NULL,
 CONSTRAINT [PK_SatısDetayı] PRIMARY KEY CLUSTERED 
(
	[SatısID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servisler]    Script Date: 1.01.2023 13:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servisler](
	[ServisID] [nvarchar](50) NOT NULL,
	[ServisNo] [nvarchar](50) NULL,
	[Ucreti] [nvarchar](50) NULL,
	[OdaNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Servisler] PRIMARY KEY CLUSTERED 
(
	[ServisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tedarikciler]    Script Date: 1.01.2023 13:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tedarikciler](
	[TedarikciID] [nvarchar](100) NOT NULL,
	[Adi] [nvarchar](100) NULL,
	[Soyadi] [nvarchar](100) NULL,
	[SirketAdi] [nvarchar](100) NULL,
	[Telefon] [nvarchar](100) NULL,
	[Adres] [nvarchar](100) NULL,
	[Mail] [nvarchar](100) NULL,
	[Ulke] [nvarchar](100) NULL,
	[webSayfası] [nvarchar](100) NULL,
	[Faks] [nvarchar](100) NULL,
 CONSTRAINT [PK_Tedarikciler] PRIMARY KEY CLUSTERED 
(
	[TedarikciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 1.01.2023 13:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[UrunID] [nvarchar](50) NOT NULL,
	[TedarikciID] [nvarchar](100) NULL,
	[UrunAdi] [nvarchar](50) NULL,
	[Fiyat] [nvarchar](50) NULL,
	[Miktar] [nvarchar](50) NULL,
 CONSTRAINT [PK_Urunler] PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'1', N'Elektrikli süpürge', NULL)
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'10', N'Portatif merdiven (gerekiyorsa)', NULL)
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'11', N'Tuvalet fırçası', NULL)
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'12', N'Çok amaçlı yüzey temizleyici', N'Bulaşık Leğeni')
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'13', N'Çok amaçlı yüzey dezenfektanı', N'Yağ Çözücü')
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'14', N'Cam temizleyici', N'Bulaşık makinesi parlatıcı')
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'15', N'Çamaşır leke çıkarıcı', NULL)
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'16', N'Bulaşık deterjanı', N'Sünger')
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'17', N'Halı temizleyici (gerekiyorsa)', NULL)
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'18', N'Zemin temizleyici', NULL)
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'19', N'Mobilya/ahşap cilası', NULL)
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'2', N'Kova', N'Bulaşık Bezi')
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'20', N'Fırın temizleyici (yalnızca mutfak)', NULL)
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'21', N'Fırın için yağ sökücü (yalnızca mutfak)', NULL)
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'22', N'Küf temizleyici (gerekiyorsa)', NULL)
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'23', N'Kâğıt havlu', N'Mutfak Bezi')
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'24', N'Çok amaçlı yüzey temizleyici', NULL)
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'25', N'Dezenfektan mendil veya sprey', NULL)
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'26', N'Antibakteriyel el dezenfektanı', NULL)
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'27', N'Fazladan el sabunu', NULL)
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'28', N'Galoş (isteğe bağlı)', N'Bulaşık Eldiveni')
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'3', N'Toz fırçası', NULL)
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'4', N'Çöp torbası', N'Bulaşıklık')
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'5', N'Mikrofiber bezler', N'Bulaşık deterjanı')
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'6', N'Paspas', NULL)
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'7', N'Kâğıt havlu', NULL)
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'8', N'Temizlik fırçası', N'Bulaşık Fırçası')
INSERT [dbo].[AraçGereç] ([MalzemeID], [TemizlikAd], [BulaşıkAd]) VALUES (N'9', N'Temizlik süngeri (sadece mutfak için)', N'Bulaşık Süngeri')
GO
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (N'1', N'İçecekler')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (N'2', N'Et/Tavuk ürünleri')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (N'3', N'Çeşniler')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (N'4', N'Tatlılar')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (N'5', N'Süt Ürünleri')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (N'6', N'Tahıl Ürünleri')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (N'7', N'El yapımı ürünler')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdi]) VALUES (N'8', N'Deniz Ürünleri')
GO
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'1', N'45', N'Mantı', N'100')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'10', N'36', N'Viyana Usulü Tavuk Şinitzel', N'250')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'11', N'35', N'Tavuk Külbastı', N'180')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'12', N'34', N'Izgara Köfte', N'200')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'13', N'33', N'Viyana Usulü Et Şinitzel', N'300')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'14', N'32', N'Karışık Izgara Tabağı', N'450')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'15', N'31', N'Dana Bonfile', N'300')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'16', N'30', N'Izgara Somon', N'320')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'17', N'29', N'Mevsim Balığı', N'400')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'18', N'28', N'Zeytinyağlı Tabağı', N'200')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'19', N'27', N'Izgara Dana Bonfile', N'375')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'2', N'44', N'Hamburger,Patates,Kola', N'175')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'20', N'26', N'Günün Çorbası', N'50')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'21', N'25', N'Günün Mezesi', N'65')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'22', N'24', N'Patates Tava', N'35')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'23', N'23', N'Kuzu Yaprak Ciğer', N'135')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'24', N'22', N'Süryani Usulü İçli Köfte', N'75')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'25', N'21', N'Paneli Çıtır Tavuk', N'125')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'26', N'20', N'Serpme Meze Tabağ', N'220')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'27', N'19', N'Söğüş Tabağıı', N'55')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'28', N'18', N'Çoban Salata', N'65')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'29', N'17', N'Gavurdağı Salata', N'85')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'3', N'43', N'Ton Balıklı Sandviç, Salata', N'150')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'30', N'16', N'Bonfile Salata', N'165')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'31', N'15', N'Venn Burger', N'135')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'32', N'14', N'Kaburga Burger', N'150')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'33', N'13', N'Mini Burger', N'90')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'34', N'12', N'Tavuk Kanat', N'135')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'35', N'11', N'Tavuk Çökertme', N'150')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'36', N'10', N'Tavuklu Noodle', N'150')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'37', N'9', N'Tavuk Külbastı', N'155')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'38', N'8', N'Venn Kasap Köfte', N'140')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'39', N'7', N'Adana Kebap', N'145')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'4', N'42', N'Tavuklu Wrap', N'200')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'40', N'6', N'Adana Yoğurtlu', N'165')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'41', N'5', N'Urfa Kebap', N'145')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'42', N'4', N'Beyti Kebap', N'160')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'43', N'3', N'Kuzu Çöp Şiş', N'220')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'44', N'2', N'Ali Nazik', N'230')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'45', N'1', N'Kuzu Külbastı', N'230')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'46', N'90', N'Kuzu Kafes', N'650')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'47', N'89', N'Dana Şadra', N'225')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'48', N'87', N'Dana Lokum', N'235')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'49', N'86', N'Dana Bonfile:', N'240')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'5', N'41', N'Biftekli Wrap', N'220')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'50', N'85', N'Bonfile Çökertme', N'215')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'51', N'84', N'Acılı Venn Tava', N'215')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'52', N'83', N'Etli Noodle Tava ', N'220')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'53', N'82', N'Newyork Steak ', N' 315')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'54', N'81', N'Ottaman Steak ', N'370')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'55', N'80', N'Kabak Tatlısı ', N'80')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'56', N'79', N'Cevizli Burma ', N'80')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'57', N'78', N'Trileçe ', N'85')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'58', N'77', N'Sebastian ', N'85')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'59', N'76', N'Meyve Tabağı ', N'85')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'6', N'40', N'Tavuklu Wrap,Makarna,Patates,Kola', N'320')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'60', N'75', N'Dondurma Cup ', N'80')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'61', N'74', N'Kahvaltı Tabağı ', N'175')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'62', N'73', N'Türk Kahvaltısı ', N'200')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'63', N'72', N'Sade Omlet ', N'80')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'64', N'71', N'Peynirli Omlet ', N'100')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'65', N'70', N'Vejeteryan Omlet', N'100')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'66', N'69', N'Karışık Omlet ', N'100')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'67', N'68', N'Izgara Hellim Tabağı', N'120')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'68', N'67', N'Kuymak ', N'80')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'69', N'66', N'Anne Pişisi ', N'85')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'7', N'39', N'Biftekli Wrap,Makarna,Patates,Kola', N'400')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'70', N'64', N'Sahanda Yumurta', N'45')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'71', N'63', N'Demleme Çay', N'15')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'72', N'62', N'Türk Kahvesi', N'30')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'73', N'61', N'Espresso', N'35')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'74', N'60', N'Cafe Latte', N'45')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'75', N'59', N'Cappuccino', N'45')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'76', N'58', N'Mocha', N'50')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'77', N'57', N'Sıcak Çikolata', N'50')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'78', N'56', N'Ihlamur', N'45')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'79', N'55', N'Kuşburnu', N'45')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'8', N'38', N'Milano Usulü Tagliatella', N'150')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'80', N'54', N'Nane Limon', N'45')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'81', N'53', N'Coca Cola', N'30')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'82', N'52', N'Fanta', N'30')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'83', N'51', N'Schweppes', N'33')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'84', N'50', N'Meyveli Soda', N'22')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'85', N'49', N'Su', N'25')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'86', N'48', N'Ayran', N'20')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'87', N'47', N'Red Bull', N'50')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'88', N'46', N'Ev Yapımı Limonata', N'45')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'89', N'45', N'Sıkma Portakal', N'45')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'9', N'37', N'Spagetti Bolonez', N'180')
INSERT [dbo].[Menu] ([MenuID], [MenüNo], [MenuAdi], [Fiyat]) VALUES (N'90', N'44', N'Milkshake', N'50')
GO
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'1', N'YAREN', N'ÖZEK', N'34974016712', N'90(505)050-81-50', N'KIZ', N'yozek3@gmail.com', N'2001-08-16-23:27:18', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'10', N'YUSUF', N'GÖNCÜ', N'89445107154', N'90(545)129-30-33', N'ERKEK', N'ysfff9@gmail.com', N'1996-05-09 08:47:13', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'11', N'TOYANÇ', N'AYŞEN', N'53332178596', N'90(545)739-97-02', N'ERKEK', N'tyonc8222@gmail.com', N'1994-06-06 19:03:03', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'12', N'KASIM', N'DURUM', N'86018267918', N'90(545)318-90-76', N'ERKEK', N'kasdrm1221@gmail.com', N'1980-04-03 18:08:24', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'13', N'ALPEREN', N'GÜNEŞ', N'58590215724', N'90(545)290-32-43', N'ERKEK', N'kalpren@gmail.com', N'1975-01-06 04:27:22', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'14', N'BİROL', N'AYDIN', N'94183443792', N'90(545)720-43-27', N'ERKEK', N'bırola300@gmail.com', N'2014-10-28 09:52:28', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'15', N'BADE', N'YEŞİLKAYA', N'30909988758', N'90(505)171-64-90', N'KIZ', N'byeslky00@gmail.com', N'1980-11-20 06:45:39', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'16', N'TAHSİN', N'BATUHAN EZER', N'90506693660', N'90(505)353-90-45', N'ERKEK', N'tahsınbe@gmail.com', N'1985-12-19 11:18:17', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'17', N'GÜLHANIM', N'TEMİZ', N'31585587822', N'90(505)509-50-29', N'KIZ', N'gltemz55@gmail.com', N'1999-06-22 00:58:37', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'18', N'MUSTAFA ERSAGUN', N'ÖZUĞU', N'17674081228', N'90(505)288-56-76', N'ERKEK', N'meozug33@gmail.com', N'1990-01-14 00:45:22', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'19', N'KAMİL', N'KURAN', N'88585482930', N'90(505)575-07-58', N'ERKEK', N'kamıl21@gmail.com', N'1972-10-21 05:05:28', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'2', N'MUSTAFA ULAŞ ', N'OZAT', N'79720326264', N'90(532)882-01-94', N'ERKEK', N'msuozat0@gmail.com', N'1975-10-13 12:56:54', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'20', N'AYŞIN', N'KÜÇÜKBEYAZİT', N'59089111756', N'90(505)120-26-66', N'KIZ', N'aysınkc@gmail.com', N'2017-10-09 14:11:28', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'21', N'BALA BAŞAK', N'YANBOL', N'35482230546', N'90(505)657-68-73', N'KIZ', N'bbasakc4@gmail.com', N'1994-04-14 04:33:12', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'22', N'SEFA', N'HARATA', N'55945061814', N'90(505)527-19-30', N'ERKEK', N'sefa3423@gmail.com', N'1970-12-16 11:29:03', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'23', N'SEZEN GÜLEN', N'AKKÜÇÜK', N'65678096298', N'90(505)155-81-48', N'KIZ', N'sgakkucuk21@gmail.com', N'2004-06-17 06:14:07', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'24', N'TARIK', N'SAKALLI', N'63788062370', N'90(530)873-97-44', N'ERKEK', N'stsakall91@gmail.com', N'1989-07-18 20:25:48', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'25', N'AYSEL', N'PAKŞİ', N'19235964896', N'90(530)552-63-42', N'KIZ', N'ayselll391@gmail.com', N'1970-05-15 04:22:42', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'26', N'IŞIL', N'MAYDA', N'22699141734', N'90(530)200-44-09', N'KIZ', N'ısılm1@gmail.com', N'1995-03-15 19:34:20', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'27', N'EYYUP', N'SABRİ MOR', N'87937587194', N'90(530)347-83-80', N'ERKEK', N'eyyp31@gmail.com', N'2008-03-06 11:32:25', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'28', N'ALİ RIZA', N'ÇAKAR', N'20649219250', N'90(530)532-28-68', N'ERKEK', N'earcakar431@gmail.com', N'1994-07-18 08:52:42', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'29', N'GÖRKEM', N'GÜLSOY', N'25584182522', N'90(530)100-55-31', N'ERKEK', N'eagrkg41@gmail.com', N'1994-08-23 09:37:59', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'3', N'FİLİZ', N'BÜKÜM', N'35936075402', N'90(532)134-35-78', N'KIZ', N'ffbkm99@gmail.com', N'1994-07-25 01:54:30', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'30', N'BAHAR', N'GÖKÇE', N'31847532980', N'90(530)413-92-28', N'KIZ', N'bgokce1@gmail.com', N'1976-08-17 02:45:38', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'31', N'AHMET BİLGEHAN', N'KÜÇÜKDEMİRTAŞ', N'48647420768', N'90(530)755-03-53', N'ERKEK', N'abkucuk58@gmail.com', N'1981-09-07 04:36:44', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'32', N'BİNNUR', N'EVKURAN', N'17188520114', N'90(530)852-62-00', N'KIZ', N'bınnur508@gmail.com', N'1996-03-27 13:51:40', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'33', N'HAÇÇE', N'KARAALP', N'13400527732', N'90(530)119-64-05', N'KIZ', N'hacce8@gmail.com', N'2001-11-11 14:53:22', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'34', N'MÜRSELİN', N'ÇİMEN', N'57520503412', N'90(540)693-50-83', N'ERKEK', N'mrsc9485@gmail.com', N'1970-02-13 03:53:44', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'35', N'OKTAY', N'AKKAN', N'66291303572', N'90(540)739-49-00', N'ERKEK', N'moakkn893@gmail.com', N'1979-11-18 04:26:43', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'36', N'FATMANUR', N'PAMUKÇUOĞLU', N'99485026698', N'90(540)713-72-07', N'KIZ', N'fatmannur32@gmail.com', N'1989-09-16 09:14:04', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'37', N'ONUR SALİH', N'İNANÇ', N'78712253656', N'90(540)288-41-37', N'ERKEK', N'unurs59@gmail.com', N'1970-06-14 01:17:31', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'38', N'RIFAT', N'ARDOR', N'85125392544', N'90(540)303-48-72', N'ERKEK', N'urfat539@gmail.com', N'1987-04-24 16:03:03', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'39', N'ÖZNUR', N'OLGAÇ', N'89058724496', N'90(540)011-91-13', N'KIZ', N'oznuro23@gmail.com', N'1977-04-28 10:16:03', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'4', N'SUDEM', N'BUDAKÇI', N'63086072620', N'90(532)853-26-18', N'KIZ', N'sudem09@gmail.com', N'1982-06-17 04:01:39', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'40', N'ECECAN', N'TANRIKULU', N'79411063966', N'90(540)377-68-43', N'KIZ', N'etanrık843@gmail.com', N'2006-11-10 06:35:17', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'41', N'ZÜBEYDE', N'SAYDAM', N'91075738370', N'90(540)325-46-32', N'KIZ', N'zubeydes594@gmail.com', N'1997-08-04 03:53:18', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'42', N'HASRET', N'KÖYLÜOĞLU', N'82398939742', N'90(540)353-23-59', N'KIZ', N'hasretk4@gmail.com', N'1975-04-12 00:47:02', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'43', N'MUHAMMED RIZA', N'HAKYOL', N'33791127250', N'90(540)603-82-77', N'ERKEK', N'mrhakyol23@gmail.com', N'1995-08-19 08:30:59', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'44', N'NEFİSE', N'ELMAAĞAÇ', N'88043649226', N'90(555)272-68-18', N'KIZ', N'nefıse433@gmail.com', N'1996-02-15 13:36:41', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'45', N'MEHMET DİRİM', N'AKYILDIZ', N'19284809292', N'90(555)441-82-64', N'ERKEK', N'mdakyıldz3@gmail.com', N'1983-02-06 08:21:12', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'46', N'FIRAT', N'ÜNALDI', N'59214618310', N'90(555)957-42-99', N'ERKEK', N'funaldı930@gmail.com', N'1975-08-10 18:15:39', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'47', N'REFAETTİN', N'EKİNCİOĞLU', N'95978393834', N'90(555)412-02-45', N'ERKEK', N'rekıncı20@gmail.com', N'1971-05-28 13:17:27', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'48', N'MARAL', N'BÜYÜKKAL', N'79233174130', N'90(555)181-00-07', N'KIZ', N'mrlbyk234@gmail.com', N'1990-10-21 00:01:31', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'49', N'SELÇUK', N'TEĞİN', N'33891050212', N'90(555)592-75-68', N'ERKEK', N'stegın9004@gmail.com', N'1998-06-13 23:40:27', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'5', N'LÜTFİ', N'ERDEN', N'12604658754', N'90(532)304-91-27', N'ERKEK', N'ltf4@gmail.com', N'2007-01-27 14:08:05', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'50', N'AZİZ', N'KARAKIŞLA', N'80772404282', N'90(555)260-45-92', N'ERKEK', N'sazız24@gmail.com', N'1978-07-18 22:33:32', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'51', N'İHSAN', N'PAŞAOĞLU', N'63577817846', N'90(555)050-39-68', N'ERKEK', N'ıhsanp457@gmail.com', N'1971-04-01 12:06:24', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'52', N'OKYAR', N'SAĞIRKAYA', N'24379381546', N'90(555)591-50-90', N'ERKEK', N'osagırky02@gmail.com', N'1979-05-29 19:17:21', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'53', N'VASFİYE', N'ARIKBOĞA', N'24379381546', N'90(555)504-55-90', N'KIZ', N'vasfiar563@gmail.com', N'1972-12-01 10:51:32', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'54', N'DERMAN', N'OKUDAN', N'96218766746', N'90(539)697-88-98', N'ERKEK', N'dermn783@gmail.com', N'1975-05-14 10:09:59', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'55', N'HACI', N'ÜLKER', N'10407429298', N'90(539)782-14-76', N'ERKEK', N'hacıul4@gmail.com', N'1988-03-14 06:44:47', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'56', N'NEVAL', N'DAĞLI', N'19800305444', N'90(539)436-46-79', N'KIZ', N'nevald0344@gmail.com', N'1971-01-14 00:49:18', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'57', N'FÜSUN', N'COŞKUN', N'52887833936', N'90(539)183-41-99', N'KIZ', N'nfısuncc3@gmail.com', N'1970-11-20 05:23:31', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'58', N'FATİH MEHMET', N'GÜRPINAR', N'83162749178', N'90(539)867-76-50', N'ERKEK', N'fathmg673@gmail.com', N'1989-05-18 23:40:10', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'59', N'SALMANT', N'ÇAVUŞ', N'14723799158', N'90(539)324-79-11', N'ERKEK', N'salmantcı483@gmail.com', N'2009-12-18 18:41:01', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'6', N'DORUK', N'CUMAOĞLU', N'58944183686', N'90(545)641-61-73', N'ERKEK', N'dorukc71@gmail.com', N'1993-08-17 03:58:15', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'60', N'USLU', N'APA', N'57229888100', N'90(539)588-15-85', N'ERKEK', N'suslu678@gmail.com', N'1987-01-30 11:37:44', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'61', N'HABİBE', N'OZAN', N'67365850268', N'90(539)781-88-07', N'KIZ', N'habıbe328@gmail.com', N'1973-02-06 14:55:14', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'62', N'ARDA', N'GENÇ', N'82474668566', N'90(539)754-30-47', N'ERKEK', N'garda48@gmail.com', N'1992-02-03 15:09:29', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'63', N'NAİL', N'BOZDEMİR', N'74540710378', N'90(539)621-63-20', N'ERKEK', N'naıle34@gmail.com', N'1999-05-18 08:04:07', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'64', N'ANDAÇ', N'ŞEBİT', N'40271050694', N'90(537)631-23-13', N'ERKEK', N'andacs43@gmail.com', N'1991-07-03 14:36:13', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'65', N'MAHSUM', N'AYAŞ', N'94929983148', N'90(537)656-63-07', N'ERKEK', N'mahsuma783@gmail.com', N'1993-05-09 01:35:53', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'66', N'PERİHAN', N'ALTIN', N'85849176086', N'90(537)731-90-14', N'KIZ', N'perıhanaa1@gmail.com', N'1973-09-16 00:45:02', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'67', N'İSMAİL', N'AYTEK', N'29848114670', N'90(537)801-32-32', N'ERKEK', N'ısmaıla02@gmail.com', N'1973-01-24 04:27:49', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'68', N'FERİT', N'ŞIVGIN', N'11449741348', N'90(537)731-15-41', N'ERKEK', N'ıferıt2@gmail.com', N'1985-10-15 10:28:14', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'69', N'BUSE', N'BÜLBÜL', N'95883732308', N'90(537)089-48-66', N'KIZ', N'busebb4@gmail.com', N'1972-07-05 05:53:38', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'7', N'ATACAN ', N'TEMEL', N'39124073010', N'90(545)949-81-41', N'ERKEK', N'atcn2233@gmail.com', N'1979-02-06 01:08:10', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'70', N'AYŞENUR', N'DAYLAK', N'65303982736', N'90(537)075-08-90', N'KIZ', N'aysenurd30@gmail.com', N'1996-03-31 22:38:42', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'71', N'İKRAM', N'GÜLSEREN', N'42865153330', N'90(537)020-25-31', N'KIZ', N'ıkramg00@gmail.com', N'1977-09-22 17:38:28', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'72', N'ŞÜKRAN', N'GÖRMÜŞ', N'89501515206', N'90(537)624-27-54', N'KIZ', N'sukrang100@gmail.com', N'1973-08-18 01:46:44', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'73', N'VEHBİ', N'KAYLAN', N'67170166936', N'90(537)432-20-98', N'ERKEK', N'vehbıkyln2@gmail.com', N'1983-11-24 11:39:11', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'74', N'NUH', N'PİRİM', N'49120303530', N'90(554)080-33-95', N'ERKEK', N'nuhprm58@gmail.com', N'1990-05-09 05:28:06', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'75', N'AYŞE GÜL', N'ANADOLU', N'49120303530', N'90(554)289-84-43', N'KIZ', N'aysegula98@gmail.com', N'1993-08-04 18:49:05', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'76', N'BAKİ', N'HÖKE', N'67465860754', N'90(554)765-74-41', N'ERKEK', N'abakı83@gmail.com', N'1976-02-23 06:47:23', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'77', N'AYLA', N'GÖKTAŞ', N'56045183260', N'90(554)915-89-24', N'KIZ', N'aygokts73@gmail.com', N'1996-03-14 07:20:31', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'78', N'DİLBER', N'ÜNVER', N'91118791614', N'90(554)143-44-97', N'KIZ', N'adılber5@gmail.com', N'1982-05-18 07:26:17', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'79', N'MERJEN', N'SEVİMLİ', N'94243723284', N'90(554)775-21-90', N'KIZ', N'merjen42@gmail.com', N'1997-08-21 07:11:33', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'8', N'SEVGİN', N'AKÇAKAYA', N'79046344164', N'90(545)529-65-98', N'KIZ', N'ssevgn39@gmail.com', N'2004-01-28 10:42:28', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'80', N'SENAN', N'USLUBAŞ', N'21363580930', N'90(554)566-91-81', N'ERKEK', N'senan92@gmail.com', N'1971-09-13 11:52:45', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'81', N'BARKIN', N'USLUBAŞ', N'87848663550', N'90(554)979-99-39', N'ERKEK', N'barkınu92@gmail.com', N'1993-12-10 14:14:58', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'82', N'RUŞEN', N'KAŞIKCI', N'70532278352', N'90(554)836-22-39', N'KIZ', N'rusen83@gmail.com', N'1988-02-20 11:52:14', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'83', N'ESİN', N'BOLAÇ', N'57101835482', N'90(554)042-13-30', N'KIZ', N'esinbo45@gmail.com', N'1984-11-06 07:28:41', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'84', N'CEMRE', N'SAKALLIOĞLU', N'87134107584', N'90(536)121-45-91', N'KIZ', N'ecemre75@gmail.com', N'1994-06-07 12:52:43', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'85', N'BEDRİ', N'BALCIOĞLU', N'82601575712', N'90(536)129-73-43', N'ERKEK', N'bedribb73@gmail.com', N'1994-05-11 06:57:01', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'86', N'ŞULE', N'ILGIN', N'13539515372', N'90(536)504-99-21', N'KIZ', N'bsuleılh3@gmail.com', N'1980-10-12 13:13:17', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'87', N'ZEKİ', N'BARAN', N'19673778536', N'90(536)739-97-83', N'ERKEK', N'bzekı83@gmail.com', N'1984-11-02 23:16:42', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'88', N'BERFİN', N'ÇAKAR', N'64987433756', N'90(536)053-54-44', N'KIZ', N'bberfin93@gmail.com', N'1990-11-18 03:47:51', N'Evli')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'89', N'SIDDIKA', N'ORTA', N'30489261340', N'90(536)733-07-73', N'KIZ', N'bssdka09@gmail.com', N'1973-01-04 10:22:57', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'9', N'AYŞEN', N'BERK', N'49409161004', N'90(545)613-16-61', N'KIZ', N'aysen9@gmail.com', N'2010-11-18 02:07:13', N'Bekar')
INSERT [dbo].[Musteriler] ([MusteriID], [Adi], [Soyadi], [Tckn], [Telefon], [Cinsiyet], [Mail], [DogumTarihi], [MedeniDurum]) VALUES (N'90', N'LALE', N'BALIK', N'27132134632', N'90(536)783-60-49', N'KIZ', N'llale85@gmail.com', N'2000-10-04 06:43:11', N'Bekar')
GO
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'1', NULL, N'2', N'1', N'SUİT', N'1')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'10', NULL, N'1', N'3', N'Suit Oda', N'10')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'11', NULL, N'2', N'3', N'Suit Oda', N'11')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'12', NULL, N'1', N'3', N'Suit Oda', N'12')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'13', NULL, N'6', N'10', N'Aile Odaaı', N'13')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'14', NULL, N'2', N'7', N'Kral Dairesi', N'14')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'15', NULL, N'1', N'7', N'Tek Kişilik Oda', N'15')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'16', NULL, N'5', N'10', N'Dubleks Oda', N'16')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'17', NULL, N'3', N'10', N'Köşe Oda', N'17')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'18', NULL, N'1', N'10', N'Junior Suite', N'18')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'19', NULL, N'1', N'6', N'Suit Oda', N'19')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'2', NULL, N'4', N'1', N'Dört Kişilik', N'2')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'20', NULL, N'2', N'6', N'Bağlantılı Oda', N'20')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'21', NULL, N'6', N'1', N'Dubleks Oda', N'21')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'22', NULL, N'4', N'4', N'Bağlantılı Oda', N'22')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'23', NULL, N'4', N'4', N'Dubleks', N'23')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'24', NULL, N'3', N'4', N'Suite Oda', N'24')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'25', NULL, N'1', N'3', N'Köşe Oda', N'25')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'26', NULL, N'1', N'2', N'Kral Dairesi', N'26')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'27', NULL, N'4', N'8', N'Standart Oda', N'27')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'28', NULL, N'3', N'8', N'Aile Odası', N'28')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'29', NULL, N'2', N'6', N'Tek kişilik Standart Oda', N'29')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'3', NULL, N'6', N'4', N'Aile Odası', N'3')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'30', NULL, N'3', N'5', N'Üç kişilik Standart Oda', N'30')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'31', NULL, N'2', N'5', N'Studio Room', N'31')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'32', NULL, N'4', N'3', N'Köşe Oda', N'32')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'33', NULL, N'1', N'2', N'Kral Dairesi', N'33')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'34', NULL, N'7', N'5', N'Aile Odası', N'34')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'35', NULL, N'2', N'9', N'Köşe Oda', N'5')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'36', NULL, N'1', N'3', N'Suit Oda', N'36')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'37', NULL, N'4', N'8', N'Dubleks Oda', N'37')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'38', NULL, N'1', N'7', N'Tek kişilik Standart Oda', N'38')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'39', NULL, N'3', N'2', N'Bağlantılı Oda', N'39')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'4', NULL, N'3', N'2', N'Üç Kişilik', N'4')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'40', NULL, N'4', N'3', N'Köşe Oda', N'40')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'41', NULL, N'4', N'3', N'Köşe Oda', N'41')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'42', NULL, N'4', N'3', N'Köşe Oda', N'42')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'43', NULL, N'2', N'8', N'Köşe Oda', N'43')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'44', NULL, N'4', N'6', N'Köşe Oda', N'44')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'45', NULL, N'4', N'8', N'Köşe Oda', N'45')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'46', NULL, N'1', N'1', N'Engelli Odası', N'46')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'47', NULL, N'1', N'2', N'Engelli Odası', N'47')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'48', NULL, N'2', N'1', N'Aile Odası', N'48')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'49', NULL, N'3', N'8', N'Studio Room', N'49')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'5', NULL, N'1', N'2', N'Tek Kişilik', N'5')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'50', NULL, N'8', N'8', N'Aile Odası', N'50')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'51', NULL, N'5', N'7', N'VİP Oda', N'51')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'52', NULL, N'6', N'3', N'Klasik Oda', N'52')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'53', NULL, N'9', N'4', N'Extra Yataklı Özel Oda', N'53')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'54', NULL, N'6', N'1', N'Tek Kişilik Özel Oda', N'54')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'55', NULL, N'3', N'2', N'Aile Odası', N'55')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'56', NULL, N'1', N'10', N'Kral Dairesi', N'56')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'57', NULL, N'1', N'9', N'Standart Oda', N'57')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'58', NULL, N'2', N'10', N'Suite Oda', N'58')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'59', NULL, N'8', N'8', N'Dubleks Oda', N'59')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'6', NULL, N'2', N'7', N'Junior Suite', N'6')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'60', NULL, N'1', N'9', N'Studıo Room', N'60')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'61', NULL, N'4', N'10', N'Dört Kişilik Özel Oda', N'61')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'62', NULL, N'3', N'8', N'Extra Yataklı Oda', N'62')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'63', NULL, N'1', N'6', N'Studıo Room', N'63')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'64', NULL, N'5', N'8', N'Aile Odası', N'64')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'65', NULL, N'6', N'6', N'Aile Odası', N'65')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'66', NULL, N'1', N'6', N'Özel Oda', N'66')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'67', NULL, N'5', N'8', N'Aile Odası', N'67')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'68', NULL, N'3', N'10', N'Standart Oda', N'68')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'69', NULL, N'1', N'7', N'Studıo Room', N'69')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'7', NULL, N'4', N'9', N'Dubleks Oda', N'7')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'70', NULL, N'5', N'8', N'Aile Odası', N'70')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'71', NULL, N'1', N'2', N'Tek Kişilik Vip Oda', N'71')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'72', NULL, N'4', N'3', N'Aile Odası', N'72')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'73', NULL, N'5', N'8', N'Extra Yataklı Dubleks Oda', N'73')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'74', NULL, N'2', N'8', N'Aile Odası', N'74')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'75', NULL, N'1', N'8', N'Standart Oda', N'75')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'76', NULL, N'3', N'10', N'Extra Yataklı Oda', N'76')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'77', NULL, N'3', N'1', N'Bağlantılı Oda', N'77')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'78', NULL, N'5', N'8', N'Aile Odası', N'78')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'79', NULL, N'8', N'8', N'Vip Dubleks Oda', N'79')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'8', NULL, N'1', N'5', N'Kral Dairesi', N'8')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'80', NULL, N'4', N'10', N'Dört Kişilik Standart Oda', N'80')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'81', NULL, N'1', N'3', N'Standart Oda', N'81')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'82', NULL, N'2', N'10', N'İki Kişilik Standart Oda', N'82')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'83', NULL, N'5', N'8', N'Dubleks Oda', N'83')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'84', NULL, N'2', N'5', N'İki Kişilik Standart Oda', N'84')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'85', NULL, N'4', N'3', N'Dört Kişilik Vip Oda', N'85')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'86', NULL, N'6', N'1', N'Standart Dubleks Oda', N'86')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'87', NULL, N'1', N'8', N'Suit Oda', N'87')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'88', NULL, N'3', N'3', N'İki Kişilik Extra Yataklı Oda', N'88')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'89', NULL, N'4', N'4', N'Dört Kişilik Standart Oda', N'89')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'9', NULL, N'5', N'10', N'Kral Dairesi', N'9')
INSERT [dbo].[Odalar] ([OdaID], [Adi], [Kapasite], [KatNo], [OdaTuru], [OdaNo]) VALUES (N'90', NULL, N'2', N'4', N'İki Kişilik Vip Oda', N'90')
GO
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'1', N'45', N'B.kart', N'2022-05-09 05:14:51', N'350.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'10', N'36', N'K.kart', N'2022-01-12 02:02:29', N'350.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'11', N'35', N'B.kart', N'2020-02-24 08:22:11', N'400.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'12', N'34', N'Nakit', N'2020-04-01 14:40:49', N'350.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'13', N'33', N'K.kart', N'2020-12-29 03:27:24', N'350.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'14', N'32', N'B.kart', N'2020-06-24 19:54:02', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'15', N'31', N'B.kart', N'2022-06-04 07:38:33', N'350.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'16', N'30', N'Nakit', N'2020-09-16 19:53:15', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'17', N'29', N'K.kart', N'2021-01-11 09:25:06', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'18', N'28', N'B.kart', N'2021-05-20 14:01:33', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'19', N'27', N'Nakit', N'2021-11-21 18:18:50', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'2', N'44', N'K.kart', N'2020-12-03 03:23:01', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'20', N'26', N'Nakit', N'2019-08-24 12:47:02', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'21', N'25', N'B.kart', N'2020-09-23 13:49:01', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'22', N'24', N'Nakit', N'2022-03-03 09:25:44', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'23', N'23', N'K.kart', N'2019-12-29 06:02:35', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'24', N'22', N'B.kart', N'2022-04-30 11:23:20', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'25', N'21', N'Nakit', N'2019-12-24 11:30:32', N'400.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'26', N'20', N'B.kart', N'2020-07-13 08:35:29', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'27', N'19', N'B.kart', N'2022-12-10 11:06:24', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'28', N'18', N'Nakit', N'2020-09-10 12:40:08', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'29', N'17', N'K.kart', N'2019-09-25 12:54:26', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'3', N'43', N'Nakit', N'2021-11-27 10:29:42', N'550.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'30', N'16', N'Nakit', N'2022-09-04 03:19:58', N'300.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'31', N'15', N'B.kart', N'2021-02-27 00:29:59', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'32', N'14', N'K.kart', N'2020-07-18 12:26:01', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'33', N'13', N'Nakit', N'2019-07-16 23:48:54', N'400.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'34', N'12', N'B.kart', N'2020-02-20 03:22:53', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'35', N'11', N'Nakit', N'2020-04-27 10:19:28', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'36', N'10', N'Nakit', N'2022-10-12 17:56:00', N'300.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'37', N'9', N'K.kart', N'2021-02-25 01:42:24', N'300.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'38', N'8', N'Nakit', N'2021-05-06 05:20:35', N'400.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'39', N'7', N'B.kart', N'2022-08-15 19:55:13', N'400.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'4', N'42', N'K.kart', N'2021-06-06 05:35:07', N'350.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'40', N'6', N'B.kart', N'2022-10-26 07:25:52', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'41', N'5', N'K.kart', N'2020-05-21 07:11:36', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'42', N'4', N'Nakit', N'2021-10-17 23:58:26', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'43', N'3', N'B.kart', N'2019-11-15 23:13:01', N'400.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'44', N'2', N'B.kart', N'2022-11-08 07:46:46', N'300.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'45', N'1', N'Nakit', N'2020-05-18 08:41:11', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'46', N'90', N'B.kart', N'2022-05-30 09:40:11', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'47', N'89', N'K.kart', N'2021-04-07 03:40:25', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'48', N'88', N'Nakit', N'2019-09-23 01:41:03', N'300.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'49', N'87', N'B.kart', N'2021-04-17 14:43:48', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'5', N'41', N'Nakit', N'2021-09-20 15:22:40', N'250.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'50', N'86', N'K.kart', N'2022-09-13 17:09:21', N'300.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'51', N'85', N'B.kart', N'2022-07-22 17:48:37', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'52', N'84', N'K.kart', N'2021-04-10 01:29:03', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'53', N'83', N'Nakit', N'2020-03-07 13:54:40', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'54', N'82', N'B.kart', N'2021-07-05 07:18:11', N'300.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'55', N'81', N'Nakit', N'2019-09-24 12:18:30', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'56', N'80', N'K.kart', N'2019-07-17 16:24:56', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'57', N'79', N'Nakit', N'2020-08-10 06:17:10', N'300.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'58', N'78', N'B.kart', N'2021-06-27 02:34:43', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'59', N'77', N'Nakit', N'2021-07-07 07:46:18', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'6', N'40', N'B.kart', N'2020-08-28 02:22:05', N'200.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'60', N'76', N'B.kart', N'2022-07-03 11:36:55', N'350.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'61', N'75', N'B.kart', N'2021-08-08 14:17:37', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'62', N'74', N'K.kart', N'2021-02-14 02:09:28', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'63', N'73', N'K.kart', N'2020-11-01 12:28:27', N'300.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'64', N'72', N'B.kart', N'2021-08-23 17:38:23', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'65', N'71', N'B.kart', N'2022-10-03 22:36:30', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'66', N'70', N'Nakit', N'2020-10-08 00:08:04', N'300.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'67', N'69', N'B.kart', N'2022-08-24 02:04:53', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'68', N'68', N'B.kart', N'2021-02-05 18:58:23', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'69', N'67', N'Nakit', N'2021-07-18 16:32:59', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'7', N'39', N'K.kart', N'2021-01-29 12:49:27', N'350.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'70', N'66', N'K.kart', N'2022-11-05 09:56:37', N'300.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'71', N'65', N'K.kart', N'2020-10-20 14:40:19', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'72', N'64', N'Nakit', N'2021-05-26 02:17:43', N'300.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'73', N'63', N'B.kart', N'2019-02-28 03:03:13', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'74', N'62', N'B.kart', N'2021-01-11 13:54:46', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'75', N'61', N'K.kart', N'2022-11-17 10:41:23', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'76', N'60', N'B.kart', N'2019-05-01 04:31:33', N'300.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'77', N'59', N'Nakit', N'2020-12-20 14:08:51', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'78', N'58', N'K.kart', N'2019-09-25 20:15:26', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'79', N'57', N'B.kart', N'2020-08-20 14:47:39', N'300.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'8', N'38', N'K.kart', N'2021-02-04 12:48:03', N'300.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'80', N'56', N'Nakit', N'2021-12-08 00:38:39', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'81', N'55', N'B.kart', N'2019-04-30 09:04:51', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'82', N'54', N'K.kart', N'2019-09-03 20:37:10', N'300.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'83', N'53', N'Nakit', N'2019-08-10 03:50:18', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'84', N'52', N'B.kart', N'2019-03-31 16:22:06', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'85', N'51', N'Nakit', N'2021-08-13 15:10:11', N'300.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'86', N'50', N'Nakit', N'2019-06-05 19:53:16', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'87', N'49', N'K.kart', N'2019-08-10 15:58:50', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'88', N'48', N'B.kart', N'2021-05-23 20:46:09', N'500.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'89', N'47', N'K.kart', N'2020-06-01 07:14:58', N'450.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'9', N'37', N'B.kart', N'2022-01-21 03:53:01', N'300.TL')
INSERT [dbo].[Odemeler] ([OdemeID], [MuşID], [OdemeTuru], [OdemeTarihi], [Tutar]) VALUES (N'90', N'46', N'Nakit', N'2019-04-17 03:42:15', N'300.TL')
GO
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'1', N'Ahmet', N'EKİNCİ', N'Erkek', N'6000', N'2368957298', N'ahmet.ekinci@gmail.com', N'5316489586', N'İSTANBUL', N'01-04-1889', N'2012', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'10', N'Elif', N'BUZDAĞ', N'Kadın', N'7569', N'54235990322', N'elif.buzdag@gmail.com', N'5363311272', N'İSTANBUL', N'04-05-1996', N'2006', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'100', N'Aslı  ', N'ÜNLÜ', N'Kadın', N'9999', N'61135502890', N'asli.unlu@gmail.com', N'5325455691', N'İSTANBUL', N'10-07-2000', N'2021', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'11', N'Taner', N'BOZOKLU', N'Erkek', N'6735', N'17454714902', N'taner.bozoklu@gmail.com', N'5363311272', N'İSTANBUL', N'18-06-1990', N'2006', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'12', N'Ömer', N'BUZDAĞ', N'Erkek', N'9492', N'22698025486', N'omer.buzdag@gmail.com', N'5301046904', N'İSTANBUL', N'08-12-1980', N'2000', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'13', N'Veysel', N'ERTÜZÜN', N'Erkek', N'8452', N'28686444888', N'veysel.ertuzun@gmail.com', N'5328563756', N'İSTANBUL', N'20-07-1998', N'2004', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'14', N'Sertaç', N'KÖSEDAĞ', N'Erkek', N'9647', N'35636341708', N'sertac.kosedag@gmail.com', N'5427110757', N'İSTANBUL', N'25-08-1986', N'2004', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'15', N'Necati', N'UYSAL', N'Erkek', N'6977', N'28793496008', N'necati.uysal@gmail.com', N'5424224430', N'İSTANBUL', N'08-09-1995', N'2000', N'2022')
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'16', N'Zeliha', N'CANİŞ', N'Kadın', N'5639', N'80184981098', N'zeliha.canis@gmail.com', N'5418615319', N'İSTANBUL', N'19-09-1997', N'2019', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'17', N'Emin', N'FİDAN', N'Erkek', N'8881', N'46421031292', N'emin.fidan@gmail.com', N'5325474342', N'İSTANBUL', N'27-10-1978', N'2001', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'18', N'Fidan', N'AY', N'Kadın', N'9785', N'13473690654', N'fidan.ay@gmail.com', N'5418318167', N'İSTANBUL', N'11-11-1977', N'1994', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'19', N'Yakup', N'GÖKÇE', N'Erkek', N'7569', N'44705036100', N'yakup.gokce@gmail.com', N'5486491490', N'İSTANBUL', N'05-12-1979', N'2004', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'2', N'Demet', N'ÇOLAK', N'Kadın', N'6000', N'45668951234', N'demet.colak@gmail.com', N'5358989144', N'İSTANBUL', N'02-10-1891', N'2012', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'20', N'Evrim', N'ÇITAK', N'Kadın', N'7132', N'91460816140', N'evrim.citak@gmail.com', N'5323218906', N'İSTANBUL', N'01-01-1981', N'2004', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'21', N'Yunus', N'ÇITAK', N'Erkek', N'7132', N'91666673936', N'yunus.citak@gmail.com', N'5427625062', N'İSTANBUL', N'01-02-1980', N'2004', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'22', N'Ilgın', N'ACI', N'Erkek', N'6012', N'69539665234', N'ilgin.aci@gmail.com', N'5328600170', N'İSTANBUL', N'30-10-1998', N'2018', N'2022')
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'23', N'Ümit', N'ŞİRİN', N'Erkek', N'8306', N'56339896616', N'umit.sirin@gmail.com', N'5334811677', N'İSTANBUL', N'25-10-2000', N'2019', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'24', N'Jale', N'CAN', N'Kadın', N'6012', N'35199559084', N'jale.can@gmail.com', N'5407781661', N'İSTANBUL', N'12-12-1987', N'2010', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'25', N'Arslan', N'Akyüz', N'Erkek', N'7569', N'21130039302', N'arslan.akyüz@gmail.com', N'5334811677', N'İSTANBUL', N'11-06-1982', N'2010', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'26', N'Adnân ', N'Tokgöz', N'Erkek', N'6012', N'96121598472', N'adnan.tokgoz@gmail.com', N'5407986288', N'İSTANBUL', N'30-01-1983', N'2001', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'27', N'Seçil ', N'Öymen', N'Kadın', N'7569', N'83830820192', N'secil.oymen@gmail.com', N'5325342909', N'İSTANBUL', N'02-06-1983', N'2004', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'28', N'Sinem', N'Özbey', N'Kadın', N'8306', N'47852660334', N'sinem.ozbey@gmail.com', N'5408843387', N'İSTANBUL', N'06-01-1984', N'2004', N'2018')
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'29', N'Şeyma ', N'Çamdalı', N'Kadın', N'5829', N'29135475668', N'seyma.camdalı@gmail.com', N'5426777422', N'İSTANBUL', N'07-09-1988', N'2004', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'3', N'Kamil', N'SARI', N'Erkek', N'5500', N'32065489789', N'kamil.sari@gmail.com', N'5326919181', N'İSTANBUL', N'10-10-2000', N'2020', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'30', N'Tahir ', N'Tazegül', N'Erkek', N'5829', N'41857478284', N'tahir.tazegul@gmail.com', N'5334693972', N'İSTANBUL', N'11-09-1997', N'2004', N'2016')
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'31', N'Fazıl ', N'Ozansoy', N'Erkek', N'12285', N'90309240580', N'fazil.ozansoy@gmail.com', N'5487317307', N'İSTANBUL', N'09-10-1996', N'2004', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'32', N'Özge ', N'Karaduman', N'Kadın', N'12285', N'67136726884', N'ozge.karaduman@gmail.com', N'5421119105', N'İSTANBUL', N'30-04-1978', N'2004', N'2020')
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'33', N'Dilan ', N'Özkara', N'Kadın', N'12285', N'26982533312', N'dilan.ozkara@gmail.com', N'5329209368', N'İSTANBUL', N'05-05-1998', N'2004', N'2018')
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'34', N'Murat ', N'Özkara', N'Erkek', N'10156', N'23052470812', N'murat.ozkara@gmail.com', N'5412260360', N'İSTANBUL', N'10-10-2000', N'2004', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'35', N'Ferhat ', N'Kuzucu', N'Erkek', N'9396', N'55227120048', N'ferhat.kuzucu@gmail.com', N'5330793605', N'İSTANBUL', N'09-09-1966', N'2004', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'36', N'Dilruba ', N'TAŞ', N'Kadın', N'10156', N'19460533720', N'dilruba.tas@gmail.com', N'5407262768', N'İSTANBUL', N'12-02-1998', N'2022', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'37', N'Ela ', N'Öymen', N'Kadın', N'10156', N'63872715830', N'ela.oymen@gmail.com', N'5489075647', N'İSTANBUL', N'06-05-1997', N'2022', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'38', N'Reşat ', N'Akgül', N'Erkek', N'9396', N'88860280336', N'resat.akgul@gmail.com', N'5481385909', N'İSTANBUL', N'04-04-1965', N'1996', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'39', N'Dilan ', N'Bolatlı', N'Kadın', N'8661', N'84881336540', N'dilan.bolatli@gmail.com', N'5338714595', N'İSTANBUL', N'08-04-1985', N'2004', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'4', N'Necati', N'UYSAL', N'Erkek', N'5900', N'32927489019', N'necati.uysal@gmail.com', N'5323114121', N'İSTANBUL', N'01-11-1996', N'2015', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'40', N'Fahriye ', N'Kunter', N'Kadın', N'9895', N'65078317962', N'fahriye.kunter@gmail.com', N'5401292481', N'İSTANBUL', N'01-01-1986', N'2004', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'41', N'Açelya ', N'Kasapoğlu', N'Kadın', N'7241', N'71921218720', N'acelya.kasapoglu@gmail.com', N'5410784484', N'İSTANBUL', N'01-02-2000', N'2022', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'42', N'Ertuğrul  ', N'Köylüoğlu ', N'Erkek', N'9392', N'90419568406', N'ertugrul.koyluoglu@gmail.com', N'5331384707', N'İSTANBUL', N'01-06-1991', N'2018', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'43', N'Mithat ', N'Tanrıkulu', N'Erkek', N'7569', N'18848668290', N'mithat.tanrikulu@gmail.com', N'5363311272', N'İSTANBUL', N'05-05-1976', N'2019', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'44', N'İlker ', N'Eronat', N'Erkek', N'9392', N'25742659606', N'ilker.eronat@gmail.com', N'5489874949', N'İSTANBUL', N'23-11-1989', N'2018', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'45', N'Caner ', N'Akay', N'Erkek', N'6475', N'87488537976', N'caner.akay@gmail.com', N'5363311272', N'İSTANBUL', N'17-10-1987', N'2019', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'46', N'Şaban ', N'Kasapoğlu', N'Erkek', N'6727', N'47066521292', N'saban,kasapoglu@gmail.com', N'5301004365', N'İSTANBUL', N'14-11-1964', N'2004', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'47', N'Simge ', N'Akman', N'Kadın', N'6727', N'20105149114', N'simge.akman@gmail.com', N'5336525342', N'İSTANBUL', N'12-10-1989', N'2014', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'48', N'Fidan ', N'Sarıoğlu', N'Kadın', N'6727', N'57882360548', N'fidan.sarioglu@gmail.com', N'5363311272', N'İSTANBUL', N'16-03-1988', N'2014', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'49', N'Peri ', N'Çamdalı', N'Kadın', N'9300', N'49521006108', N'peri.camdalı@gmail.com', N'5515063329', N'İSTANBUL', N'18-08-1996', N'2020', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'5', N'Taner', N'BOZOKLU', N'Erkek', N'9981', N'532479521357', N'taner.bozoklu@gmail.com', N'5363311272', N'İSTANBUL', N'04-08-1978', N'2004', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'50', N'Hikmet ', N'Tazegül', N'Erkek', N'6894', N'19726491054', N'hikmet.tazegul@gmail.com', N'5337724785', N'İSTANBUL', N'19-02-1982', N'2019', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'51', N'Eray ', N'Alnıaçık', N'Erkek', N'7569', N'43233243172', N'eray.alniacik@gmail.com', N'5512132716', N'İSTANBUL', N'20-02-2000', N'2022', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'52', N'Utku ', N'Poyrazoğlu', N'Erkek', N'5982', N'14996986248', N'utku.poyrazoglu@gmail.com', N'5306649700', N'İSTANBUL', N'19-06-1989', N'2019', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'53', N'Faruk  ', N'Tokgöz', N'Erkek', N'8793', N'93112063230', N'faruk.tokgoz@gmail.com', N'5325798219', N'İSTANBUL', N'19-07-1997', N'2020', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'54', N'Arslan ', N'Öymen', N'Erkek', N'7899', N'96413143618', N'arslan.oymen@gmail.com', N'5308692194', N'İSTANBUL', N'19-08-1998', N'2019', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'55', N'Fuat ', N'Türkyılmaz', N'Erkek', N'12118', N'64988490222', N'fuat.turkyilmaz@gmail.com', N'5328009713', N'İSTANBUL', N'18-09-1980', N'2004', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'56', N'Tutku ', N'Tuğluk', N'Kadın', N'12118', N'73529251802', N'tutku.tugluk@gmail.com', N'5519503956', N'İSTANBUL', N'02-12-2000', N'20020', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'57', N'Gözde ', N'Yorulmaz', N'Kadın', N'12118', N'51149117616', N'gozde.yorulmaz@gmail.com', N'5318204298', N'İSTANBUL', N'19-04-1998', N'2017', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'58', N'Feride ', N'Alyanak', N'Kadın', N'12118', N'24004246080', N'feride.alyanak@gmail.com', N'5326946031', N'İSTANBUL', N'18-05-1985', N'2015', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'59', N'Eda ', N'Abacı', N'Kadın', N'6581', N'17446054528', N'eda.abaci@gmail.com', N'5337210907', N'İSTANBUL', N'17-07-1997', N'2016', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'6', N'Osman', N'UYSAL', N'Erkek', N'9981', N'532479521937', N'osman.uysal@gmail.com', N'5365071937', N'İSTANBUL', N'30-06-1982', N'2017', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'60', N'Alpay ', N'Bolatlı', N'Erkek', N'6908', N'59896322048', N'alpay.bolatli@gmail.com', N'5518312820', N'İSTANBUL', N'18-03-1983', N'2014', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'61', N'Cilvenaz ', N'Limoncuoğlu', N'Kadın', N'16696', N'54337122300', N'cilvenaz.limoncuoğlu@gmail.com', N'5318124131', N'İSTANBUL', N'20-02-2000', N'2022', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'62', N'Sunay  ', N'Evliyaoğlu', N'Kadın', N'7903', N'15521328670', N'sunay.evliyaoglu@gmail.com', N'5354966021', N'İSTANBUL', N'19-01-1984', N'2004', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'63', N'Muharrem  ', N'Uca', N'Erkek', N'8153', N'82566979204', N'muharrem.uca@gmail.com', N'5329646612', N'İSTANBUL', N'05-05-1985', N'2010', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'64', N'Ferhat  ', N'Arslanoğlu', N'Erkek', N'5571', N'65457960260', N'ferhat.arslanoglu@gmail.com', N'5333916321', N'İSTANBUL', N'19-08-1988', N'2010', N'215')
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'65', N'Feride ', N'Arslan', N'Kadın', N'6571', N'21715908610', N'feride.arslan@gmail.com', N'5306246421', N'İSTANBUL', N'19-06-1996', N'2015', N'2022')
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'66', N'Mine  ', N'Çörekçi', N'Kadın', N'7171', N'86530043144', N'mine.corekci@gmail.com', N'5326146711', N'İSTANBUL', N'19-09-1990', N'2015', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'67', N'Arda  ', N'Biçer', N'Erkek', N'6205', N'60574010430', N'arda.bicer@gmail.com', N'5327948090', N'İSTANBUL', N'19-09-1997', N'2015', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'68', N'Arda  ', N'Gül', N'Erkek', N'7519', N'82381844794', N'arda.gül@gmail.com', N'5336499595', N'İSTANBUL', N'19-01-1991', N'2018', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'69', N'Ömer  ', N'Günday', N'Erkek', N'7368', N'86116547592', N'omer.gunday@gmail.com', N'5325240613', N'İSTANBUL', N'15-09-1985', N'2019', N'2022')
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'7', N'Perihan', N'KANAT', N'Kadın', N'9981', N'5324795213', N'perihan.kanat@gmail.com', N'5363311272', N'İSTANBUL', N'01-01-1982', N'2011', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'70', N'Alper  ', N'Topçuoğlu', N'Erkek', N'6865', N'22983126430', N'alper.topcuoglu@gmail.com', N'5323140114', N'İSTANBUL', N'12-08-1982', N'2017', N'2019')
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'71', N'Ceylan  ', N'Ozansoy', N'Kadın', N'8119', N'44290133062', N'ceylan.ozansoy@gmail.com', N'5303946020', N'İSTANBUL', N'13-03-1983', N'2015', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'72', N'Mahir  ', N'Hamzaoğlu', N'Erkek', N'7106', N'28194318848', N'mahir.hamzaoglu@gmail.com', N'5325402091', N'İSTANBUL', N'19-02-1983', N'2013', N'2016')
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'73', N'Kubilay  ', N'Sadıklar', N'Erkek', N'9107', N'66596490410', N'kubilay.sadiklar@gmail.com', N'5329914884', N'İSTANBUL', N'18-01-1988', N'2016', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'74', N'Güneş  ', N'Sezek', N'Kadın', N'7328', N'12573014520', N'gunes.sezek@gmail.com', N'5334919092', N'İSTANBUL', N'18-04-1984', N'2015', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'75', N'Serpil  ', N'Akşit', N'Kadın', N'6069', N'57099626970', N'serpil.aksit@gmail.com', N'5326320222', N'İSTANBUL', N'12-02-2000', N'2019', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'76', N'Can ', N'Koyuncu', N'Erkek', N'8356', N'27723054202', N'can.koyuncu@gmail.com', N'5306946031', N'İSTANBUL', N'22-02-2000', N'2022', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'77', N'Canalp  ', N'Beşok', N'Erkek', N'6654', N'74034515076', N'canalp.besok@gmail.com', N'5326946021', N'İSTANBUL', N'12-12-2000', N'2019', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'78', N'Ceylan  ', N'Ozansoy', N'Kadın', N'6349', N'71176785114', N'ceylan.ozansoy@gmail.com', N'5334806011', N'İSTANBUL', N'18-11-1998', N'2016', N'2018')
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'79', N'Köksal  ', N'Öztuna', N'Erkek', N'9495', N'15127360678', N'koksal.oztuna@gmail.com', N'5306946633', N'İSTANBUL', N'15-09-1995', N'2015', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'8', N'Akif', N'ÇAKIR', N'Erkek', N'7569', N'53058152132', N'akif.cakir@gmail.com', N'5323375298', N'İSTANBUL', N'02-02-1980', N'2018', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'80', N'Nazmi ', N'Denkel', N'Erkek', N'5501', N'30346161240', N'nazmi.denkel@gmail.com', N'5327243160', N'İSTANBUL', N'19-05-1995', N'2015', N'2017')
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'81', N'Veli ', N'KIVRAK', N'Erkek', N'7118', N'64124436336', N'veli.kivrak@gmail.com', N'5316316090', N'İSTANBUL', N'02-06-1990', N'2011', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'82', N'Alperen  ', N'Taşlı', N'Erkek', N'8091', N'10100546018', N'alperen.tasli@gmail.com', N'5302593304', N'İSTANBUL', N'08-01-1998', N'2018', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'83', N'Buğra  ', N'Orbay', N'Erkek', N'9658', N'32040016208', N'bugra.orbay@gmail.com', N'5301873970', N'İSTANBUL', N'14-04-1995', N'2017', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'84', N'Mustafa  ', N'Bolatlı', N'Kadın', N'5664', N'92090250984', N'mustafa.bolatli@gmail.com', N'5307228186', N'İSTANBUL', N'18-11-2000', N'2021', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'85', N'Jale  ', N'Çörekçi', N'Kadın', N'7035', N'25079050480', N'jale.corekci@gmail.com', N'5331294810', N'İSTANBUL', N'02-01-2000', N'2021', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'86', N'Gözde ', N'Öztuna', N'Kadın', N'5956', N'62782227310', N'gozde.oztuna@gmail.com', N'5323925298', N'İSTANBUL', N'22-05-1995', N'2014', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'87', N'Dilruba  ', N'Önür', N'Kadın', N'8112', N'41621204774', N'dilruba.onur@gmail.com', N'5329989382', N'İSTANBUL', N'23-09-1996', N'2018', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'88', N'Duygu  ', N'Polat', N'Kadın', N'8959', N'46112839442', N'duygu.polat@gmail.com', N'5338818506', N'İSTANBUL', N'11-01-1980', N'2000', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'89', N'Halit  ', N'Adal', N'Erkek', N'5433', N'51613785310', N'halit.adal@gmail.com', N'5308085883', N'İSTANBUL', N'02-10-1981', N'2000', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'9', N'Jülide', N'BUZDAĞ', N'Kadın', N'8196', N'34725829751', N'julide.buzdag@gmail.com', N'5309184150', N'İSTANBUL', N'03-03-1992', N'2006', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'90', N'Suat ', N'Koyuncu', N'Erkek', N'7026', N'94191683630', N'suat.koyuncu@gmail.com', N'5336911818', N'İSTANBUL', N'06-04-1982', N'2000', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'91', N'Melih  ', N'Korol', N'Erkek', N'7791', N'13465405648', N'melih.korol@gmail.com', N'5329989382', N'İSTANBUL', N'07-10-2000', N'2021', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'92', N'Ceylan ', N'Kuday', N'Kadın', N'9929', N'27118350490', N'ceylan.kuday@gmail.com', N'5337161202', N'İSTANBUL', N'09-11-1996', N'2015', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'93', N'Defne  ', N'Adal', N'Kadın', N'9708', N'23517733810', N'defne.adal@gmail.com', N'5308995914', N'İSTANBUL', N'08-04-2000', N'2018', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'94', N'Dilara ', N'Gümüşpala', N'Kadın', N'8781', N'85798227884', N'dilara.gümüspala@gmail.com', N'5331508303', N'İSTANBUL', N'02-06-1980', N'2014', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'95', N'Mehmet  ', N'YAR', N'Erkek', N'7835', N'91287446506', N'mehmet.yar@gmail.com', N'5327881605', N'İSTANBUL', N'01-09-1880', N'2000', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'96', N'Asım  ', N'KAYA', N'Erkek', N'6435', N'24816258882', N'asim,kaya@gmail.com', N'5309972700', N'İSTANBUL', N'05-02-2000', N'2020', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'97', N'Alina  ', N'BAL', N'Kadın', N'7234', N'26664824356', N'alina.bal@gmail.com', N'5323418784', N'İSTANBUL', N'09-10-1996', N'2015', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'98', N'Leyla  ', N'GÜL', N'Kadın', N'8345', N'17113048768', N'leyla.gul@gmail.com', N'5324042510', N'İSTANBUL', N'11-02-1989', N'2016', NULL)
INSERT [dbo].[Personeller] ([PersonelID], [Adi], [Soyadi], [Maas], [Tckn], [Mail], [Telefon], [Cinsiyet], [Adres], [DogumTarihi], [İseGirisTarihi], [İstenCıkısTarihi]) VALUES (N'99', N'Ali ', N'BUDAK', N'Erkek', N'7802', N'96745145472', N'ali.budak@gmail.com', N'5303838189', N'İSTANBUL', N'27-10-2000', N'2020', NULL)
GO
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'1', N'Orhan', N'Yılmaz', N'05445545454', N'23132345634', N'orhanylmz@gmail.com', N'01', N'2022-07-20 07:02:51')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'10', N'Polat', N'Alemdar', N'05678765432', N'42012667468', N'polatalemdar@gmail.com', N'10', N'2015-11-20 09:35:05')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'11', N'Memati', N'Baş', N'05425974200', N'67660344264', N'mematibaş@gmail.com', N'11', N'1977-05-14 11:02:00')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'12', N'Süleyman', N'Çakır', N'05328765655', N'60911568242', N'suleymanckr@gmail.com', N'12', N'2009-05-28 03:42:38')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'13', N'Ramiz', N'Karaeski', N'05429963838', N'27011549076', N'ramizkaraeski@gmail.com', N'13', N'1992-04-14 11:30:43')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'14', N'Behzat', N'Ç', N'05320891221', N'92116589708', N'behzatc@gmail.com', N'14', N'1992-05-26 11:24:22')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'15', N'Harun', N'Sinanoğlu', N'05443271523', N'74981079386', N'harunkomiser@gmail.com', N'15', N'1997-12-26 14:20:46')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'16', N'Abdulhey', N'Çoban', N'05425506820', N'73436452880', N'ab_dul_hey@gmail.com', N'16', N'1984-04-21 08:21:29')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'17', N'Aslan', N'Akbey', N'05423445654', N'25551210494', N'aslanakbey@gmail.com', N'17', N'2006-07-22 15:24:25')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'18', N'Tefik', N'Zaim', N'05449872233', N'47274051628', N'tefikzaim@gmail.com', N'18', N'1973-02-16 03:54:46')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'19', N'Kenan', N'Birkan', N'05425433322', N'83238960582', N'kenanmirkan@gmail.com', N'19', N'2010-11-29 08:44:21')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'2', N'Yahya', N'Kazaz', N'05643332212', N'27876567322', N'yahyacankzz@gmail.com', N'02', N'2004-05-30 06:48:52')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'20', N'Kamil', N'Çalıcı', N'05328975321', N'12110046724', N'kamilcalıcı@gmail.com', N'20', N'1974-08-07 01:05:06')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'21', N'Selma', N'Hünel', N'05422411725', N'27644367054', N'selmahunel@gmail.com', N'21', N'1995-01-09 07:03:33')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'22', N'Elif', N'Eylül', N'05325111090', N'49699487938', N'elifeylül@gmail.com', N'22', N'2013-03-02 03:02:09')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'23', N'Meral', N'Yılmaz', N'05443211234', N'45893095788', N'meralyilmaz@gmail.com', N'23', N'1997-08-26 19:36:59')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'24', N'Derya', N'Çakır', N'05326497716', N'70732908028', N'deryacakir@gmail.com', N'24', N'1971-02-19 00:21:12')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'25', N'Cansel', N'Ayanoğlu', N'05322323344', N'35190195878', N'canselayanoglu@gmail.com', N'25', N'2002-06-13 13:55:46')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'26', N'Yaren', N'Sarı', N'05439877662', N'84408443768', N'yarensari@gmail.com', N'26', N'1981-12-22 04:17:07')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'27', N'Melisa', N'Demirel', N'05329874487', N'23848904446', N'melisademirel@gmail.com', N'27', N'2018-04-14 19:53:45')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'28', N'Ahu', N'Toros', N'05464567584', N'48935716924', N'ahutoros@gmail.com', N'28', N'2009-07-10 04:22:05')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'29', N'Selin', N'Koç', N'05487632211', N'25183332120', N'selinkoc@gmail.com', N'29', N'1987-01-20 07:30:27')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'3', N'Eren', N'Kara', N'05315673272', N'33128611122', N'erenkara@gmail.com', N'03', N'1998-12-09 09:29:31')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'30', N'Zeynep', N'Karahan', N'05437678292', N'45541445934', N'zeynepkarahan@gmail.com', N'30', N'2021-06-16 20:59:13')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'31', N'Pelin', N'Kırhan', N'05643258365', N'19120777914', N'pelinkirhan@gmail.com', N'31', N'1972-01-03 01:28:49')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'32', N'Dilara', N'Öztuna', N'05421902377', N'21242209440', N'dilaraoztuna@gmail.com', N'32', N'2005-07-24 10:17:04')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'33', N'Naz', N'Kahveci', N'05427252550', N'73070615504', N'nazkahveci@gmail.com', N'33', N'2010-08-12 04:52:37')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'34', N'Özge', N'Abacı', N'05426147695', N'51152250102', N'ozgeabaci@gmail.com', N'34', N'2012-04-13 09:07:46')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'35', N'Melis', N'Kaya', N'05447868701', N'80598345158', N'meliskaya@gmail.com', N'35', N'1986-10-06 14:14:26')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'36', N'Ece', N'Abacı', N'05444123754', N'76102271860', N'eceabaci@gmail.com', N'36', N'1983-02-05 23:24:50')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'37', N'Ela', N'Kunter', N'05449457953', N'44968503098', N'elakunter@gmail.com', N'37', N'1981-10-23 22:39:01')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'38', N'Gonca', N'Yalçın', N'05445658852', N'59930222754', N'goncayalcin@gmail.com', N'38', N'1978-07-25 01:50:37')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'39', N'Ebru', N'Kutlay', N'05444858333', N'67400942620', N'ebrukutlay@gmail.com', N'39', N'1978-01-14 13:37:36')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'4', N'Kutay', N'Demircan', N'05345556948', N'87656766643', N'kutaydmrcn@gmail.com', N'04', N'2015-01-03 05:09:45')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'40', N'Selma', N'Kumcuoğlu', N'05448754164', N'30001961246', N'selmakumcuoglu@gmail.com', N'40', N'2003-01-01 17:15:20')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'41', N'Derin', N'Balaban', N'05440491741', N'96962007706', N'derinbalaban@gmail.com', N'41', N'2017-07-12 03:51:54')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'42', N'Birgül', N'Yıldırım', N'05441710249', N'88576530046', N'birgulyildirim@gmail.com', N'42', N'1980-08-07 08:37:43')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'43', N'Zehranur', N'Arsoy', N'05442456798', N'85086845936', N'zehranurarsoy@gmail.com', N'43', N'1996-01-05 22:09:13')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'44', N'Selmin', N'Arslan', N'05447308057', N'67254976680', N'selminarslan@gmail.com', N'44', N'2010-12-04 00:42:29')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'45', N'Olca', N'Ergül', N'05449627140', N'49187326336', N'olcaergul@gmail.com', N'45', N'1991-05-02 03:58:55')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'46', N'Şebnem', N'Ferah', N'05446896867', N'54935716924', N'sebnemfrah@gmail.com', N'46', N'2008-04-02 21:49:00')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'47', N'Seda', N'Sayan', N'05448550811', N'85548835211', N'sedasayan@gmal.com', N'47', N'2020-03-17 11:08:12')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'48', N'Nazlı', N'Bekiroğlu', N'05328576117', N'88199653317', N'nazlıbekıroglu@gmail.com', N'48', N'2020-10-27 14:54:24')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'49', N'Serpil', N'Tamur', N'05326038762', N'74173053020', N'serpıltamur@gmail.com', N'49', N'2015-06-04 07:04:05')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'5', N'Emre', N'Candemir', N'05446083644', N'68754329077', N'emrecndmr@gmail.com', N'05', N'2011-05-30 12:12:15')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'50', N'Gaye', N'Gürsel', N'05443223680', N'19216811120', N'gayegursel@gmail.com', N'50', N'2009-09-04 19:07:23')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'51', N'İrem', N'Helvacı', N'05435448210', N'53741121030', N'ıremhelvacı@gmail.com', N'51', N'2011-04-27 11:55:00')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'52', N'Nergiz', N'Sorak', N'04305095481', N'19926018010', N'nergızsorak@gmail.com', N'52', N'2010-11-29 02:37:44')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'53', N'Seray', N'Sever', N'05306039503', N'16817715050', N'serasever@gmail.com', N'53', N'2002-04-17 22:13:20')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'54', N'Vildan', N'Atasever', N'05417201410', N'72053064090', N'vıldanatsvr@gmail.com', N'54', N'2012-04-26 22:38:19')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'55', N'Fatma', N'Ayaydın', N'05367908040', N'19753033045', N'fatmaayaydın@gmail.com', N'55', N'2007-10-27 07:21:1')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'56', N'Hande', N'Sarıoğlu', N'05118801515', N'80996554348', N'handesarı@gmail.com', N'56', N'2021-03-29 19:57:13')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'57', N'Begüm', N'Kütük', N'05346073140', N'44856031315', N'begumkutuk@gmail.com', N'57', N'2019-11-05 01:35:5')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'58', N'Safiye', N'Karahanlı', N'08306073050', N'45699636650', N'safıyekarhn@gmail.com', N'58', N'2012-07-18 05:49:48')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'59', N'Ayça', N'Eren', N'05706455113', N'92063041250', N'aycaeren@gmail.com', N'59', N'2016-12-11 14:18:28')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'6', N'Tuna', N'Tavus', N'05324238766', N'83636836328', N'tunatvs@gmail.com', N'06', N'2010-07-22 10:50:30')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'60', N'Canan', N'Ergün', N'05702301180', N'88816579645', N'cananergun@gmail.com', N'60', N'2001-05-15 11:26:21')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'61', N'Seda', N'Akman', N'05367903510', N'88663531420', N'sedaakmn@gmail.com', N'61', N'2004-01-23 14:55:24')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'62', N'Zeynep', N'Koltuk', N'05368703090', N'69178019650', N'zeynepkoltuk@gmail.com', N'62', N'2008-07-23 14:30:24')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'63', N'Pelinsu', N'Pir', N'05407506031', N'74565732047', N'pelınsupır@gmail.com', N'63', N'2010-05-23 14:50:24')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'64', N'Seda', N'Bayram', N'02126074526', N'54196014160', N'sedabyrm@gmail.com', N'64', N'2022-12-18 17:42:24')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'65', N'Hazal', N'Kaya', N'05967451560', N'55463217690', N'hazalkaya@gmail.com', N'65', N'2015-06-23 19:55:24')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'66', N'Eda', N'Nur', N'05658474433', N'24540422306', N'edanur@gmail.com', N'66', N'1996-09-11 22:27:41')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'67', N'Serhat', N'Bal', N'05659093192', N'85544136286', N'serhatbal@gmail.com', N'67', N'1991-09-30 05:11:02')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'68', N'Yıldız', N'Tilbe', N'05464453032', N'96207353780', N'yildiztilbe@gmail.com', N'68', N'2022-08-02 02:14:08')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'69', N'Sena', N'Nur', N'05447667899', N'86942177420', N'senanur@gmail.com', N'69', N'2001-09-12 19:21:19')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'7', N'Muhammet', N'Talha', N'05678765522', N'15278486630', N'muhammettlh@gmail.com', N'07', N'2013-10-05 04:49:41')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'70', N'Azad', N'Karaeski', N'05286273381', N'28582403856', N'AzadKaraeski@gmail.com', N'70', N'2022-01-15 22:32:45')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'71', N'Recep', N'Basılmış', N'05952789215', N'72957402953', N'RecepBasılmıs@gmail.com', N'71', N'1986-08-18 16:40:28')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'72', N'Ahmet', N'Çakar', N'05835729632', N'68264759621', N'AhmetCakar@gmail.com', N'72', N'2002-05-27 16:07:01')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'73', N'Sinan', N'Engin', N'05737582951', N'84625861721', N'SinanEngin@gmail.com', N'73', N'2017-03-13 13:28:09')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'74', N'Abdulkerim', N'Durmaz', N'05256376843', N'28562966129', N'AbdulkerimDurmaz@gmail.com', N'74', N'2008-09-28 02:35:44')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'75', N'Ertem', N'Şener', N'05286641022', N'28465826501', N'ErtemSener@gmail.com', N'75', N'1983-08-16 20:53:24')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'76', N'Rasim', N'Ozan', N'05485662946', N'68462475182', N'RasimOzan@gmail.com', N'76', N'1973-08-06 12:32:59')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'77', N'Fatih', N'Terim', N'05683265911', N'72856195732', N'FatihTerim@gmail.com', N'77', N'2005-01-11 05:16:34')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'78', N'İsmail', N'Kartal', N'05586926481', N'28624957218', N'İsmailKartal@gmail.com', N'78', N'1975-03-26 02:28:21')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'79', N'Şenol', N'Güneş', N'05863925019', N'59275828259', N'SenolGunes@gmail.com', N'79', N'1988-10-27 10:15:12')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'8', N'Enes', N'Bayram', N'05422805396', N'93182383658', N'enesbyrm@gmail.com', N'08', N'1999-06-11 22:13:17')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'80', N'Necip', N'Uysal', N'05967296015', N'76381246962', N'NecipUysal@gmail.com', N'80', N'1992-03-13 08:33:14')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'81', N'Tayyip', N'Talha', N'05586249617', N'58612956712', N'TayyipTalha@gmail.com', N'81', N'2012-07-10 10:17:10')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'82', N'Serdar', N'Aziz', N'05768492578', N'63882227621', N'SerdarAziz@gmail.com', N'82', N'2011-11-30 21:29:05')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'83', N'Gökhan', N'Gönül', N'05854629662', N'86265824561', N'GokhanGonul@gmail.com', N'83', N'2016-01-14 12:48:13')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'84', N'Nazım', N'Sangare', N'05859859127', N'69244816214', N'NazımSangare@gmail.com', N'84', N'1997-11-06 09:03:02')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'85', N'Rıza', N'Çalımbay', N'05683138591', N'48569159278', N'RızaCalımbay@gmail.com', N'85', N'1990-02-25 23:59:32')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'86', N'Mert', N'Günok', N'05865924814', N'69352381259', N'MertGunok@gmail.com', N'86', N'1980-12-03 01:23:44')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'87', N'Ersin', N'Destanoğlu', N'05686482618', N'86357248691', N'ErsinDestanoğlu@gmail.com', N'87', N'1998-06-08 19:40:18')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'88', N'Ahmet', N'Kazım', N'05586953821', N'82758284962', N'AhmetKazım@gmail.com', N'88', N'2006-07-26 10:22:19')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'89', N'Namık', N'Kemal', N'05852947121', N'48524957126', N'NamıkKemal@gmail.com', N'89', N'1992-07-15 12:54:11')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'9', N'Ezel', N'Bayraktar', N'05423762359', N'55510725134', N'ezelbyrktr@gmail.com', N'09', N'1971-05-01 21:19:36')
INSERT [dbo].[Rezervasyon] ([RezervasyonID], [Musteriad], [MusteriSoyad], [Tel], [Tc], [mail], [OdaNo], [RezervasyonGun]) VALUES (N'90', N'Emirhan', N'Uzunhan', N'05827528612', N'65835294712', N'EmirhanUzunhan@gmail.com', N'90', N'1993-12-02 03:21:29')
GO
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'1', N'1', N'200', N'%5', N'2005-08-08 12:59:24')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'10', N'10', N'350', N'%5', N'1996-03-10 23:15:18')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'11', N'11', N'550', N'%5', N'2016-04-24 18:25:51')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'12', N'12', N'450', N'%10', N'2018-05-21 15:37:27')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'13', N'13', N'400', N'%10', N'1990-01-25 02:51:43')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'14', N'14', N'400', N'%10', N'2012-10-07 22:52:25')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'15', N'15', N'500', N'%5', N'2020-03-20 15:01:08')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'16', N'16', N'300', N'%5', N'2016-05-20 07:37:54')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'17', N'17', N'450', N'%5', N'2021-05-06 06:21:01')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'18', N'18', N'550', N'%10', N'2020-07-28 21:43:02')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'19', N'19', N'300', N'%10', N'2021-01-09 17:14:57')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'2', N'2', N'350', N'%5', N'1979-10-11 12:03:31')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'20', N'20', N'400', N'%5', N'2020-12-04 06:54:43')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'21', N'21', N'350', N'%10', N'2021-11-24 23:07:26')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'22', N'22', N'400', N'%5', N'2020-06-13 18:39:59')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'23', N'23', N'550', N'%10', N'2021-12-07 14:07:38')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'24', N'24', N'450', N'%10', N'2021-12-21 08:16:12')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'25', N'25', N'450', N'%5', N'2020-01-29 04:10:12')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'26', N'26', N'550', N'%10', N'2020-02-29 11:39:54')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'27', N'27', N'250', N'%10', N'2021-07-04 15:30:48')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'28', N'28', N'350', N'%10', N'2021-03-19 01:40:4')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'29', N'29', N'450', N'%5', N'2020-02-12 15:20:35')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'3', N'3', N'250', N'%10', N'1981-05-04 02:47:15')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'30', N'30', N'200', N'%5', N'2021-09-02 19:52:59')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'31', N'31', N'350', N'%5', N'2021-09-20 14:15:23')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'32', N'32', N'300', N'%10', N'2021-12-14 19:26:32')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'33', N'33', N'300', N'%10', N'2020-06-27 15:07:29')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'34', N'34', N'550', N'%10', N'2022-05-31 10:53:21')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'35', N'35', N'350', N'%5', N'2022-04-03 04:39:05')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'36', N'36', N'450', N'%10', N'2020-11-25 17:54:21')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'37', N'37', N'300', N'%5', N'2020-02-11 09:56:09')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'38', N'38', N'200', N'%5', N'2021-09-20 10:11:4')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'39', N'39', N'400', N'%5', N'2022-12-01 06:20:04')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'4', N'4', N'350', N'%5', N'1996-01-29 10:40:26')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'40', N'40', N'500', N'%5', N'2021-07-09 06:24:52')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'41', N'41', N'350', N'%10', N'2020-01-12 20:15:03')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'42', N'42', N'350', N'%10', N'2022-10-18 21:33:22')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'43', N'43', N'450', N'%10', N'2021-05-13 14:18:02')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'44', N'44', N'550', N'%5', N'2021-04-01 19:24:29')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'45', N'45', N'250', N'%5', N'2021-10-13 13:50:29')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'46', N'46', N'350', N'%10', N'2020-04-03 03:15:08')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'47', N'47', N'400', N'%5', N'2021-08-13 16:14:14')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'48', N'48', N'500', N'%10', N'2020-10-24 00:28:46')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'49', N'49', N'300', N'%10', N'2021-09-30 23:45:31')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'5', N'5', N'450', N'%5', N'2007-10-25 00:12:38')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'50', N'50', N'350', N'%5', N'2021-03-03 10:58:10')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'51', N'51', N'200', N'%10', N'2021-02-12 04:25:43')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'52', N'52', N'200', N'%10', N'2022-04-05 20:52:48')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'53', N'53', N'200', N'%10', N'2020-04-01 15:04:05')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'54', N'54', N'400', N'%5', N'2022-04-05 20:52:48')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'55', N'55', N'500', N'%10', N'2022-04-05 20:52:48')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'56', N'56', N'200', N'%5', N'2022-04-05 20:52:48')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'57', N'57', N'300', N'%10', N'2022-04-05 20:52:48')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'58', N'58', N'300', N'%5', N'2021-07-22 22:44:55')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'59', N'59', N'500', N'%10', N'2020-12-12 18:36:40')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'6', N'6', N'150', N'%10', N'2009-04-17 09:24:09')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'60', N'60', N'350', N'%5', N'2020-09-13 19:36:09')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'61', N'61', N'450', N'%10', N'2021-06-25 09:34:49')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'62', N'62', N'200', N'%5', N'2021-04-28 23:20:41')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'63', N'63', N'550', N'%5', N'2020-03-11 17:29:43')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'64', N'64', N'350', N'%10', N'2021-03-03 05:45:06')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'65', N'65', N'450', N'%5', N'2021-06-28 15:49:04')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'66', N'66', N'350', N'%5', N'2020-01-31 18:36:31')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'67', N'67', N'250', N'%10', N'2021-08-13 11:14:29')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'68', N'68', N'200', N'%10', N'2020-04-11 04:00:40')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'69', N'69', N'400', N'%5', N'2020-10-14 22:31:44')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'7', N'7', N'500', N'%10', N'2002-11-11 17:49:12')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'70', N'70', N'500', N'%5', N'2022-03-12 03:33:46')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'71', N'71', N'550', N'%10', N'2022-02-19 04:53:42')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'72', N'72', N'250', N'%5', N'2022-06-21 11:05:37')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'73', N'73', N'300', N'%10', N'2022-12-14 16:20:13')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'74', N'74', N'300', N'%10', N'2021-12-17 00:01:36')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'75', N'75', N'300', N'%5', N'2021-04-04 11:17:42')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'76', N'76', N'400', N'%10', N'2021-07-03 19:53:56')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'77', N'77', N'450', N'%5', N'2022-03-15 03:46:59')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'78', N'78', N'500', N'%10', N'2021-03-18 11:06:35')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'79', N'79', N'350', N'%10', N'2021-09-20 14:57:16')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'8', N'8', N'550', N'%5', N'1978-11-03 05:44:29')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'80', N'80', N'250', N'%5', N'2020-07-30 19:45:41')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'81', N'81', N'300', N'%10', N'2022-08-29 12:06:39')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'82', N'82', N'400', N'%5', N'2021-07-30 10:41:44')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'83', N'83', N'200', N'%5', N'2020-09-02 00:22:44')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'84', N'84', N'450', N'%5', N'2021-08-12 02:08:30')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'85', N'85', N'200', N'%5', N'2020-10-23 11:07:31')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'86', N'86', N'350', N'%10', N'2022-03-17 15:03:31')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'87', N'87', N'400', N'%5', N'2021-03-04 06:54:02')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'88', N'88', N'400', N'%10', N'2022-01-10 00:09:27')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'89', N'89', N'450', N'%5', N'2020-10-31 03:09:44')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'9', N'9', N'450', N'%10', N'2021-01-04 20:51:54')
INSERT [dbo].[SatısDetayı] ([SatısID], [OdaNo], [Fiyat], [İndirim], [SatısTarihi]) VALUES (N'90', N'90', N'200', N'%10', N'2022-04-14 23:31:57')
GO
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'1', N'1', N'100', N'01')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'10', N'11', N'300', N'13')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'11', N'12', N'375', N'14')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'12', N'14', N'400', N'17')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'13', N'16', N'225', N'18')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'14', N'17', N'450', N'19')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'15', N'18', N'500', N'20')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'16', N'19', N'125', N'21')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'17', N'20', N'750', N'22')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'18', N'21', N'1000', N'23')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'19', N'22', N'750', N'23')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'2', N'1', N'100', N'02')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'20', N'23', N'750', N'24')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'21', N'24', N'800', N'25')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'22', N'25', N'430', N'26')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'23', N'26', N'120', N'27')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'24', N'27', N'750', N'28')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'25', N'28', N'750', N'29')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'26', N'29', N'750', N'29')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'27', N'30', N'600', N'31')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'28', N'31', N'460', N'32')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'29', N'32', N'750', N'33')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'3', N'2', N'75', N'03')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'30', N'33', N'820', N'34')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'31', N'34', N'480', N'35')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'32', N'35', N'1500', N'36')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'33', N'36', N'1200', N'37')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'34', N'37', N'1400', N'38')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'35', N'38', N'750', N'39')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'36', N'39', N'1600', N'40')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'37', N'40', N'750', N'41')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'38', N'41', N'300', N'42')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'39', N'42', N'350', N'43')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'4', N'3', N'80', N'04')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'40', N'43', N'375', N'44')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'41', N'44', N'280', N'45')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'42', N'45', N'365', N'46')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'43', N'46', N'1250', N'47')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'44', N'47', N'1375', N'48')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'45', N'48', N'1550', N'49')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'46', N'49', N'1275', N'50')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'47', N'50', N'900', N'07')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'48', N'51', N'200', N'08')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'49', N'52', N'375', N'09')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'5', N'3', N'80', N'06')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'50', N'53', N'1500', N'11')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'6', N'6', N'120', N'05')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'7', N'6', N'120', N'12')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'8', N'7', N'150', N'18')
INSERT [dbo].[Servisler] ([ServisID], [ServisNo], [Ucreti], [OdaNo]) VALUES (N'9', N'8', N'250', N'10')
GO
INSERT [dbo].[Tedarikciler] ([TedarikciID], [Adi], [Soyadi], [SirketAdi], [Telefon], [Adres], [Mail], [Ulke], [webSayfası], [Faks]) VALUES (N'1', N'Aydın', N'Göktürk', N'GLOBAL HORECA İÇ VE DIŞ TİCARET LİMİTED ŞİRKETİ', N'+90 212 885 80 85', N'Yenimahalle mah. E5 Kuzey Yanyol cad. Fahrettin İş Merkezi No:65 Kat:1 Büyükçekmece /İstanbul', N'info@globalhoreca.com.tr', N'Türkiye', N'globalhoreca.com.tr', N'+90 242 502 90 10')
INSERT [dbo].[Tedarikciler] ([TedarikciID], [Adi], [Soyadi], [SirketAdi], [Telefon], [Adres], [Mail], [Ulke], [webSayfası], [Faks]) VALUES (N'2', N'Nisanur', N'Parlak', N'OTEL ÜRÜNLERİ TEKSTİL SAN. VE TİC. LTD. ŞTİ.', N'+90 212 580 1 590', N'YENİ MAHALLE E5 KUZEY YANYOL CADDESİ NO: 65  34530 KUMBURGAZ / BÜYÜKÇEKMECE / İSTANBUL', N'info@otelurunleri.com.tr', N'Türkiye', N'otelurunleri.com.tr', N'+90 212 580 1 581')
INSERT [dbo].[Tedarikciler] ([TedarikciID], [Adi], [Soyadi], [SirketAdi], [Telefon], [Adres], [Mail], [Ulke], [webSayfası], [Faks]) VALUES (N'3', N'Hüseyin', N'Nuralın', N'Ekipmer Otel Ekipmanları Kozmetik San. ve Tic. Ltd. Şti.', N'+90 507 250 32 12', N'Mahmutbey Mah. İstoç Ticaret Merkezi, 35.Ada No:1, 34218 Bağcılar/İstanbul', N'info@ekipmer.com', N'Türkiye', N'ekipmer.com', N'+90 212 909 52 74')
INSERT [dbo].[Tedarikciler] ([TedarikciID], [Adi], [Soyadi], [SirketAdi], [Telefon], [Adres], [Mail], [Ulke], [webSayfası], [Faks]) VALUES (N'4', N'Cemre', N'Salik', N'Polat Hastane ve Otel Teks. Ürün. İmalatı Gıd. Tur. San. Tic. Ltd. Şti.', N'+90 212 489 40 80', N'Bağlar Mah. Yavuz Sultan Selim Cad. 9. Sk. Kat: 1 A-Blok No:6 Güneşli', N'destek@polattibbitekstil.com.tr', N'Türkiye', N'polattibbitekstil.com.tr', N'+90 212 474 90 15')
GO
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'1', N'1', N'Çöp Kovası', N'100', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'10', N'1', N'Saç Kurutma Makinası', N'350', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'11', N'2', N'Çamaşır Toplama Arabası', N'500', N'50')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'12', N'2', N'Kat Temizlik Arabası', N'500', N'50')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'13', N'2', N'Temizlik Seti', N'750', N'50')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'14', N'2', N'Mini Bar Arabası', N'350', N'50')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'15', N'3', N'Elektrikli Süpürge', N'800', N'50')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'16', N'2', N'Karşılama Tepsisi', N'70', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'17', N'2', N'Kasa', N'2000', N'100')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'18', N'2', N'Minibar', N'3000', N'100')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'19', N'3', N'Banyo Telefonu', N'300', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'2', N'1', N'Klozet Fırçası', N'75', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'20', N'3', N'Oda Telefonu', N'300', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'21', N'3', N'Televizyon', N'10000', N'100')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'22', N'4', N'Nevresim Takımı', N'600', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'23', N'4', N'Yatak Baza', N'10000', N'100')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'24', N'1', N'Şampuan', N'100', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'25', N'1', N'Sabun', N'30', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'26', N'4', N'Bornoz', N'200', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'27', N'4', N'Battaniye', N'300', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'28', N'4', N'Yorgan', N'300', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'29', N'4', N'Çarşaf', N'100', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'3', N'1', N'Raf Havluluk', N'50', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'30', N'4', N'Yastık', N'150', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'31', N'4', N'Yastık Kılıfı', N'35', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'32', N'1', N'Çöp Torbası', N'15', N'300')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'33', N'1', N'Diş Fırçalık', N'100', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'34', N'1', N'Peştemal', N'50', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'35', N'3', N'Ütü', N'1000', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'36', N'1', N'Ütü Masası', N'300', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'37', N'1', N'Diş Fırçası', N'25', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'38', N'1', N'Diş Macunu', N'75', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'39', N'1', N'Lif', N'40', N'200')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'4', N'1', N'Sabunluk', N'30', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'40', N'1', N'Islak Mendil', N'15', N'300')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'41', N'1', N'Kağıt Mendil', N'30', N'300')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'42', N'4', N'Koltuk', N'5000', N'100')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'43', N'4', N'Dolap', N'1000', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'5', N'1', N'Kağıtlık', N'40', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'6', N'1', N'El Yüz Havlusu', N'40', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'7', N'1', N'Banyo Havlusu', N'100', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'8', N'1', N'Ayak Havlusu', N'50', N'150')
INSERT [dbo].[Urunler] ([UrunID], [TedarikciID], [UrunAdi], [Fiyat], [Miktar]) VALUES (N'9', N'1', N'Terlik', N'25', N'150')
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Musteriler] FOREIGN KEY([MenüNo])
REFERENCES [dbo].[Musteriler] ([MusteriID])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_Musteriler]
GO
ALTER TABLE [dbo].[Odalar]  WITH CHECK ADD  CONSTRAINT [FK_Odalar_Personeller] FOREIGN KEY([OdaNo])
REFERENCES [dbo].[Personeller] ([PersonelID])
GO
ALTER TABLE [dbo].[Odalar] CHECK CONSTRAINT [FK_Odalar_Personeller]
GO
ALTER TABLE [dbo].[Odalar]  WITH CHECK ADD  CONSTRAINT [FK_Odalar_Rezervasyon] FOREIGN KEY([OdaNo])
REFERENCES [dbo].[Rezervasyon] ([RezervasyonID])
GO
ALTER TABLE [dbo].[Odalar] CHECK CONSTRAINT [FK_Odalar_Rezervasyon]
GO
ALTER TABLE [dbo].[Odemeler]  WITH CHECK ADD  CONSTRAINT [FK_Odemeler_Musteriler] FOREIGN KEY([MuşID])
REFERENCES [dbo].[Musteriler] ([MusteriID])
GO
ALTER TABLE [dbo].[Odemeler] CHECK CONSTRAINT [FK_Odemeler_Musteriler]
GO
ALTER TABLE [dbo].[Odemeler]  WITH CHECK ADD  CONSTRAINT [FK_Odemeler_SatısDetayı] FOREIGN KEY([MuşID])
REFERENCES [dbo].[SatısDetayı] ([SatısID])
GO
ALTER TABLE [dbo].[Odemeler] CHECK CONSTRAINT [FK_Odemeler_SatısDetayı]
GO
ALTER TABLE [dbo].[Servisler]  WITH CHECK ADD  CONSTRAINT [FK_Servisler_Odalar] FOREIGN KEY([ServisNo])
REFERENCES [dbo].[Odalar] ([OdaID])
GO
ALTER TABLE [dbo].[Servisler] CHECK CONSTRAINT [FK_Servisler_Odalar]
GO
ALTER TABLE [dbo].[Servisler]  WITH CHECK ADD  CONSTRAINT [FK_Servisler_Personeller] FOREIGN KEY([ServisNo])
REFERENCES [dbo].[Personeller] ([PersonelID])
GO
ALTER TABLE [dbo].[Servisler] CHECK CONSTRAINT [FK_Servisler_Personeller]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Tedarikciler] FOREIGN KEY([TedarikciID])
REFERENCES [dbo].[Tedarikciler] ([TedarikciID])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Tedarikciler]
GO
USE [master]
GO
ALTER DATABASE [Otel] SET  READ_WRITE 
GO
