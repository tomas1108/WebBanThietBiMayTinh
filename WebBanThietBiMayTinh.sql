USE [master]
GO

CREATE DATABASE [QuanLyBanThietBiMayTinh]
GO

ALTER DATABASE [QuanLyBanThietBiMayTinh] SET COMPATIBILITY_LEVEL = 140
GO

ALTER DATABASE [QuanLyBanThietBiMayTinh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET QUERY_STORE = OFF
GO
USE [QuanLyBanThietBiMayTinh]
GO

CREATE USER [demo] FOR LOGIN [demo] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [demo]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [nchar](10) NULL,
	[pass] [nchar](10) NULL,
	[isSell] [bit] NULL,
	[isAdmin] [bit] NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[accountID] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[amount] [int] NULL,
	[maCart] [int] IDENTITY(1,1) NOT NULL,
	[size] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[maCart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[maHD] [int] IDENTITY(1,1) NOT NULL,
	[accountID] [int] NULL,
	[tongGia] [float] NULL,
	[ngayXuat] [datetime] NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[image] [nvarchar](500) NULL,
	[price] [float] NULL,
	[title] [nvarchar](500) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NOT NULL,
	[sell_ID] [int] NOT NULL,
	[model] [nvarchar](50) NULL,
	[delivery] [nvarchar](50) NULL,
	[image2] [nvarchar](500) NULL,
	[image3] [nvarchar](500) NULL,
	[image4] [nvarchar](500) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[accountID] [int] NULL,
	[productID] [int] NULL,
	[contentReview] [nvarchar](500) NULL,
	[dateReview] [date] NULL,
	[maReview] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[maReview] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoLuongDaBan](
	[productID] [int] NULL,
	[soLuongDaBan] [int] NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[idSupplier] [int] IDENTITY(1,1) NOT NULL,
	[nameSupplier] [nvarchar](100) NULL,
	[phoneSupplier] [nvarchar](50) NULL,
	[emailSupplier] [nvarchar](200) NULL,
	[addressSupplier] [nvarchar](200) NULL,
	[cateID] [int] NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[idSupplier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TongChiTieuBanHang](
	[userID] [int] NULL,
	[TongChiTieu] [float] NULL,
	[TongBanHang] [float] NULL
) ON [PRIMARY]
GO
-- Bật IDENTITY_INSERT cho bảng Account
SET IDENTITY_INSERT [dbo].[Account] ON;
GO

-- Chèn các bản ghi vào bảng Account
INSERT INTO [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (1, N'admin', N'admin', 1, 1, N'nguyendo76ngant@gmail.com');

GO

-- Tắt IDENTITY_INSERT cho bảng Account
SET IDENTITY_INSERT [dbo].[Account] OFF;
GO

INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'Corsair')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'Asus')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'Msi')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Logitech')
GO
/*

SET IDENTITY_INSERT [dbo].[Invoice] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    01, 
    N'Chuột ASUS ', 
    N'https://lh3.googleusercontent.com/hL_pYMvpp0UOCHiCdIPHIPhGoNWv5bbl0ycViDrM7YPduVwJVGO8fjWZ9LzhVR-EXi7L31f3WU5FeU4WWIWUzX_QUSf2H4M=w500-rw', 
    50, 
    N'TUF M3 Gen II (90MP0320-BMUA00)', 
    N'MÀU SẮC: ĐEN', 
    1, 
    1, 
    N' SKU: 231002823',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/VuxwGF1ywZfwuCpU8-tj9CeyA3jsEFw0wzp7tYqmZwBe6kKYs-g9dmu_go05LGLIwg0K_hhzAEkAwkV7RRBe6CdTmyj4CR4f=rw', 
    N'https://lh3.googleusercontent.com/VuxwGF1ywZfwuCpU8-tj9CeyA3jsEFw0wzp7tYqmZwBe6kKYs-g9dmu_go05LGLIwg0K_hhzAEkAwkV7RRBe6CdTmyj4CR4f=rw', 
    N'https://lh3.googleusercontent.com/upLwwAphaFbb4cUva5-0fIaw9pvfyystJIUf-SERvcvLFanmjqFARKP3B7vB4yd_eXYwsKUVgT4PWOwQBmGVGCHNTu9N0v1-VA=rw'
)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    02, 
    N'Bàn phím cơ Corsair', 
    N'https://lh3.googleusercontent.com/jb6sZ9SmtLYu6GNWIHPwAfhoALIlXSAel2aiIuxlHNP32CEe0QoibnX2IMQgDtn_crTxEBySSFS6Y5HloZLfxdd__QgE65kF=w500-rw', 
    100, 
    N'K70 CORE-BLK-CRSR MX-RGB (CH-910971E-NA)', 
    N'MÀU SẮC: ĐEN', 
    1, 
    1, 
    N' SKU: 231002823',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/jb6sZ9SmtLYu6GNWIHPwAfhoALIlXSAel2aiIuxlHNP32CEe0QoibnX2IMQgDtn_crTxEBySSFS6Y5HloZLfxdd__QgE65kF=rw', 
    N'', 
    N''
)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    03, 
    N'Ghế Gaming ASUS', 
    N'https://lh3.googleusercontent.com/S7cYVsfua5xzsUu9fF3EqoYYf1EAyc3NTJKcbIEhpDJ2PVId9T_DJNngZYW738Ow4UwgJJNMOkWJXbYXSRAeatOJU7gyOtxISg=w500-rw', 
    1.000,
    N'ASUS ROG CHARIOT CORE SL300 Đen (90GC00D0-MSG010)', 
    N'MÀU SẮC: ĐEN', 
    1, 
    1, 
    N'SKU: 240101206',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/r5wHzJn-dE2bTpRmeHMIED45d8YJiNOwG0Wu4vb27LFkHwfvdjEJdSoFYmOp3w9e6fty8lJc-1sdFZhOQ4c5xYUWbRuwZPG8Cw=rw', 
    N'', 
    N''
)

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    04, 
    N'Tai nghe Logitech', 
    N'https://lh3.googleusercontent.com/Ee0MFTp9jeyh7942xINg9bwJCDapytGXgx6ANQHz5yUIMT_fZgdfw12kxQvXDJ6Kjb1bzYjPK17ymN9-2Y7v=w500-rw', 
    60, 
    N'H111 (Bạc)', 
    N'MÀU SẮC: XÁM', 
    1, 
    1, 
    N' SKU: 1501460',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/rWe3jFYrLP-NkxbDMlxloL9_XvYyECQi7d3-Kl96jh-nu0dImo28SmkJNOgNG7zyCRonJgJYZ62wamuF24Y=rw', 
    N'https://lh3.googleusercontent.com/Ee0MFTp9jeyh7942xINg9bwJCDapytGXgx6ANQHz5yUIMT_fZgdfw12kxQvXDJ6Kjb1bzYjPK17ymN9-2Y7v=rw', 
    N'https://lh3.googleusercontent.com/I49Lynao0ySA3BhXWMRoM79hI_VatlQ9zrCJjCU6r4xXz5N2s75zMebXxhaS7zTB8eu0bFTfdYOXvc8tTlA=rw'
)


INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    05, 
    N'Giá treo Human', 
    N'https://lh3.googleusercontent.com/A3sgAQPMCiiGT0sqNVE_mTAwA_5UjAuZKkwyOC-pSia0ebA9YdOYybmsSTLTm-tJCFIP8z2-YHCV-oQlZJU0K-dfc20qXp3v=w500-rw', 
    40, 
    N'T6 Pro - Trắng', 
    N'MÀU SẮC: TRẮNG', 
    1, 
    1, 
    N' SKU: 240703486',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/LHkTrPFLbdzog3nsS5lnP9rvuAR1hDLG7U9wlzxn0rPQdMFV3nFgrCmkA2pQI2smxDqQUKGSxFgrgoI0nV_NKcFDHWUsiWQ9=rw', 
    N'https://lh3.googleusercontent.com/-a8Kv94fjypwEHIoHWNZx00NFz0Ikpw3yd_FP-z6FTQJxyBWC2Xi13XJ8H_0jxTARot0zWyH_WTpquKyzmnYhWbKSSHW5w7_vA=rw', 
    N''
)



INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    06, 
    N'Tấm lót QcK ', 
    N'https://lh3.googleusercontent.com/F3Qot0aPDGj93KoZtpFhbxfm56T5TYpsnTnqwV2btyFB1X82QtJLJxIWJ7T6pIHygFvaECXuHfiNPjgggN1Oa8BXAcAyPrM=w500-rw', 
    35, 
    N'Heavy Large SteelSeries', 
    N'MÀU SẮC: ĐEN', 
    1, 
    1, 
    N'SKU: 240302609',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/F3Qot0aPDGj93KoZtpFhbxfm56T5TYpsnTnqwV2btyFB1X82QtJLJxIWJ7T6pIHygFvaECXuHfiNPjgggN1Oa8BXAcAyPrM=rw', 
    N'', 
    N''
)




INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    07, 
    N'Loa Bluetooth ', 
    N'https://lh3.googleusercontent.com/xT2ceWf188sLlNJgxgvTNrIvKLC3c_suqvF7coBrSZX60ARrf_4XdTwrj_LmTj69B2pTnli4RxY7coxhniwmyAmtOmAbTGl7fw=w500-rw', 
    100, 
    N'Edifier QD35 (Đen)', 
    N'MÀU SẮC: ĐEN', 
    1, 
    1, 
    N' SKU: 231200183',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/CnjR29XX11rbXmyE2h8QkRemYZFqlk3RQGXEW4wpNKM5HPP81Y_iLROvWXvx8W2eHKVySanba-XrZxg9rwlNe4AhP2RvpzDu=rw', 
    N'https://lh3.googleusercontent.com/L4ZcGMx36SZmUjcDzo52ppCf3_bkLqK-wc1noa_4gBkTSyjhQIi4_nd7EzLCX7ehtKnqXFwLHrk9VGgk2QKeAhpmhlhjRFw=rw', 
    N'https://lh3.googleusercontent.com/GPrT4adZEyVowsRwDoR3N-bs_EVd8sj_Scumv3Cp9V3Gkqw-PAhEhok74yM5iyWoDDiA1uFloQOq5OqRxOalneB-mcDixpc=rw'
)



INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    08, 
    N'Chuột không dây ', 
    N'https://lh3.googleusercontent.com/f1KB7yLcMhttYPSSWfYyF6LSo6XIYuJtkTDifZ2cHohPwhneDeRFtmzM__0dVEbtyp01zYXWfgyNDww81EFLhaAOVHtWCa3L=w500-rw', 
    20, 
    N'HyperWork Silentium MS01', 
    N'MÀU SẮC: ĐEN', 
    1, 
    1, 
    N' SKU: 240704404',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/9wJU-qSDONTiDyXGQr7qD-6p_mqTbj4WuF6fZfNVpjQrGdecWR-4JT1FPuA9WtldfJfzak-0TPoDTk8VHBtQx_B54iLMCNrI=rw', 
    N'', 
    N''
)




INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    09, 
    N'Bàn phím Razer', 
    N'https://product.hstatic.net/200000722513/product/250-9303-ban-phim-razer-v3-pro-tenkeyless-1_b7d6ef40b1224ede9552186f348113da_grande.jpg', 
    250, 
    N' Huntsman V3 Pro TKL', 
    N'MÀU SẮC: ĐEN', 
    1, 
    1, 
    N' Thương hiệu Razer ',  
    N'TP.HCM', 
    N'https://product.hstatic.net/200000722513/product/9303-ban-phim-razer-v3-pro-tenkeyless-2_9760f78a119e4f77866e0934cdb035b2_compact.jpg', 
    N'https://product.hstatic.net/200000722513/product/9303-ban-phim-razer-v3-pro-tenkeyless-3_f26f151e88654ff2b350542283f14255_compact.jpg', 
    N''
)




INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    10, 
    N'Chuột ASUS ', 
    N'https://lh3.googleusercontent.com/hL_pYMvpp0UOCHiCdIPHIPhGoNWv5bbl0ycViDrM7YPduVwJVGO8fjWZ9LzhVR-EXi7L31f3WU5FeU4WWIWUzX_QUSf2H4M=w500-rw', 
    430.000, 
    N'TUF M3 Gen II (90MP0320-BMUA00)', 
    N'MÀU SẮC: ĐEN', 
    1, 
    1, 
    N' Thương hiệu Asus',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/VuxwGF1ywZfwuCpU8-tj9CeyA3jsEFw0wzp7tYqmZwBe6kKYs-g9dmu_go05LGLIwg0K_hhzAEkAwkV7RRBe6CdTmyj4CR4f=rw', 
    N'https://lh3.googleusercontent.com/VuxwGF1ywZfwuCpU8-tj9CeyA3jsEFw0wzp7tYqmZwBe6kKYs-g9dmu_go05LGLIwg0K_hhzAEkAwkV7RRBe6CdTmyj4CR4f=rw', 
    N'https://lh3.googleusercontent.com/upLwwAphaFbb4cUva5-0fIaw9pvfyystJIUf-SERvcvLFanmjqFARKP3B7vB4yd_eXYwsKUVgT4PWOwQBmGVGCHNTu9N0v1-VA=rw'
)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    11, 
    N'Case ASUS PRIME ', 
    N'https://lh3.googleusercontent.com/VPd_r5ASkhOlyKvJJ15sJU-V3ig8gwR0v0nUWBhwspMsCy7083j4iN9bJZJnlJZCF_EfOdE7UXksQFynD4XrKUMigPHpXqw=w500-rw', 
    50, 
    N' AP201 TG BLACK', 
    N'MÀU SẮC: ĐEN', 
    2, 
    1, 
    N'  SKU: 230302757',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/3tUEWTsoLgVENCxHDowHo5s4pDYeB60l3J8-KsgzC_vMJtF6eY_zb4yd24RZrk0CHlQggbMA5-8WcFM3ipkXjlCItx86zN362w=rw', 
    N'https://lh3.googleusercontent.com/21uz0l0xEi433rvdB4gSU0xWxQaynoHcNf_Zdeu2WVU41T8XYjrXCYcUDnbaPKW9dLlCEeBRSjprclxtGmA3fPgQkn-9yDJJfw=rw', 
    N'https://lh3.googleusercontent.com/B-yamzBZ1SucWTnYZIFU7wvTclnBYTqzP8a-GMPEgwjrYWK8ffdWpI3uz4KKj1l5U2GcShjS1AlKjLWOwVFjxJFJmStv-6Q8=rw'
)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    12, 
    N'Card màn hình MSI ', 
    N'https://lh3.googleusercontent.com/GpAns2v6BQxZV-w6AvEBGSZNmb57c_zPlvB3Qt2Zn3j_G-3L5_2wfj4MrhsXrdo2jh3FuPeopC0760PPsdRczdruMKkDgWEa7A=w500-rw', 
    150, 
    N'GTX 1650 D6 VENTUS XS OCV3 4GB GDDR6 (912-V812-003)', 
    N'MÀU SẮC: ĐEN', 
    2, 
    1, 
    N'SKU: 231004195',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/w-KOclBr4pVKhvbbBfkR1xyzUhUImZcncmcgYVZTZLW9TltCblE3EjvbU53-W7U_mYYLGl7A5e6G386l565xg-XJNqblhvA=w500-rw', 
    N'https://lh3.googleusercontent.com/of1kcUHE76G_5IFMzIFjaYms55e_ieX5ibToD2J8sEn0-JQepXLr2_AcRSsH255oz_OE-Qtw0Bt4PItQNixzZZXR3vYqEuU=rw', 
    N'https://lh3.googleusercontent.com/ERfA-h5rrZobgE25B0JymUbZX5MeDuZnE1uFSeL3jYOehNJWkMcES2GH7gYRYIazYou1Et5czaGAdka3nV5sJWcRZp_fc6_Z=rw'
)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    13, 
    N'Quạt case Xigmatek ', 
    N'https://lh3.googleusercontent.com/P-tinDSsBfBd_IakNcpAvgUCCRjz0DBlO4l45SDDJXMFaMvMx2N_8vrLFJElnRyoYH2wWKOXfuh0kpTprVlh0OBAWQ3sA9g6Fg=w500-rw', 
    25, 
    N'Infinity Reverse 120mm Fan -EN44588 (Đen)', 
    N'MÀU SẮC: ĐEN', 
    2, 
    1, 
    N'SKU: 240702623',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/X1-AZycjH78h2NcKkl6PEiWFs5UJhM8-THMgUMbcKDibPsOGJ0mV3ctQl-YRLbOULR-SK6atuMNdL0hGdCGqe1cdqL1fZu6l=w500-rw', 
    N'https://lh3.googleusercontent.com/Nu-kqZiYqWzig71rN3plORrZqAdgD5-LxlhiurIp-HZuoJPn-IldQb2Wlg72hnlGThCcwHJ2gYJTUQz8sLzSZvbBOh2wsJwCGg=w1000-rw', 
    N'https://lh3.googleusercontent.com/kFbZ3qa0rDVRGHOuM9_2Nt1-qcyj_CQy0cWo4Nlhy0faVTq6kBVs80YwZADHCwqf_l2iv2X_fe78I7hjmix1dT76Epxq1Oc=w1000-rw'
)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    14, 
    N'Ổ cứng SSD ', 
 N'https://lh3.googleusercontent.com/4VGEJynfh744BTdZsDbMqd_WJ_sZZhMnimHwHCjIA0IOh0jnuxD4qsO7K4puDvVoRisTCbSb2DsTQk11pxDUsMkKoHMOzc5o8g=rw', 
    30, 
    N'TeamGroup MP33 256GB M.2 PCIe Gen3x4 (TM8FP6256G0C101)', 
    N'MÀU SẮC CỦA Ổ CỨNG: XANH', 
    2, 
    1, 
    N' SKU: 240703613',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/4VGEJynfh744BTdZsDbMqd_WJ_sZZhMnimHwHCjIA0IOh0jnuxD4qsO7K4puDvVoRisTCbSb2DsTQk11pxDUsMkKoHMOzc5o8g=rw', 
    N'', 
    N''
)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    15, 
    N'Ổ cứng HDD ', 
    N'https://lh3.googleusercontent.com/hL_pYMvpp0UOCHiCdIPHIPhGoNWv5bbl0ycViDrM7YPduVwJVGO8fjWZ9LzhVR-EXi7L31f3WU5FeU4WWIWUzX_QUSf2H4M=w500-rw', 
    430.000, 
    N'WD Enterprise Ultrastar DC HC310 6TB 3.5" (HUS726T6TALE6L4)', 
    N'MÀU SẮC: ĐEN', 
    2, 
    1, 
    N' SKU: 191100709',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/y2mPPlk-ICPB_WP77ny2GRdiO_e6DExRQDn5shvB78cT_rlxLOnyHwkcjJ8LftasljG9KaWvzYWuBCeTxw=rw', 
    N'https://lh3.googleusercontent.com/y2mPPlk-ICPB_WP77ny2GRdiO_e6DExRQDn5shvB78cT_rlxLOnyHwkcjJ8LftasljG9KaWvzYWuBCeTxw=rw', 
    N'https://lh3.googleusercontent.com/y2mPPlk-ICPB_WP77ny2GRdiO_e6DExRQDn5shvB78cT_rlxLOnyHwkcjJ8LftasljG9KaWvzYWuBCeTxw=rw'
)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    16, 
    N'Tản nhiệt nước', 
    N'https://lh3.googleusercontent.com/7ukaHZlOeZNnhqPFDPGrHDBr68XDfNMq9aIhUiOmKSnZjc-POLbhIk0ePzVVUydBVPyfxec8R7z691Fl6YVCBnZImsJyx8PVjg=w500-rw', 
    65, 
    N' Xigmatek FENIX 240 - EN42935 (Đen)', 
    N'Thương hiệu XIGMATEK', 
    2, 
    1, 
    N'SKU: 240702620',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/3kaRSuLciFI8iVd2BrkLGoYj7TMqjRRsXcTkjrH9jmwUr-dN7f4QWigzuhtDKNHHB8-4C9Znx1tcDkDbG0srGkuBujb26I67mA=rw', 
    N'https://lh3.googleusercontent.com/k4877PDql_yIA97B6vvbODVW2p0XX18e-r6U34hVjjUJ7m2nvR6xW8neG8FsjrmadxdDN-is1jeuGUUdXcPYduNa7o8kwWog=rw', 
    N''
)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    17, 
    N'CPU INTEL ', 
    N'https://lh3.googleusercontent.com/Qba6Cu8lzanPmkkNRn_P9qbm4THYZL36A40kmeWNOL0EUDzjn9INpmHgUyPJq1vXQWvxUbdV56vCCgfhen4CfkkoiVCb-MU=w500-rw', 
    500, 
    N'Core i7-14700KF (20C/28T, 3.4 GHz - 5.6 GHz, 33MB) - 1700', 
    N'Thương hiệu INTEL', 
    2, 
    1, 
    N' SKU: 231002131',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/Qba6Cu8lzanPmkkNRn_P9qbm4THYZL36A40kmeWNOL0EUDzjn9INpmHgUyPJq1vXQWvxUbdV56vCCgfhen4CfkkoiVCb-MU=w500-rw', 
    N'', 
    N''
)

 INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    18, 
    N'CPU AMD ', 
    N'https://lh3.googleusercontent.com/uQb_Wt77la4S80PQPEnOMVi_iw63bwhQy1U2M1za9JXIWGh8CCKPzvoNxSnss7CfhQV1hxa_mTM4nuxGA5iEIZlF0L7tBLLntw=w500-rw', 
    100, 
    N'Ryzen 5 4600G (6C/12T, 3.7GHz up to 4.2GHz, 11MB, 65W, socket AM4, Radeon Graphics 7CU - GCN 5.0, Wraith Stealth cooler)', 
    N'Thương hiệu AMD', 
    2, 
    1, 
    N' SKU: 220800025',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/uQb_Wt77la4S80PQPEnOMVi_iw63bwhQy1U2M1za9JXIWGh8CCKPzvoNxSnss7CfhQV1hxa_mTM4nuxGA5iEIZlF0L7tBLLntw=rw', 
    N'https://lh3.googleusercontent.com/WHLf1sQBYICUQHGsvmvC4I_G91iHcK4Eu2QrO1GW6Zvv3kfTPap2Kw_CzwQjpbZiSQNsqCt1owYdfBO0l6hoxHc31D2SLr8L=rw', 
    N''
)


INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    19, 
    N'Ổ Cứng di Động ', 
    N'https://lh3.googleusercontent.com/mNHjY6tYk_wuTp6suHJ3shBEOMZA7A959YY_D13A85F_Xi0OZ2ZWi72fx9gw0a5m2FxTA_XQR6TSYGtzBrB5Y-9wpJNWOOTx=w500-rw', 
    70, 
    N'SSD Transcend ESD300, USB 3.2 Gen 2x1, Type-C', 
    N'MÀU SẮC CỦA Ổ CỨNG: XANH', 
    2, 
    1, 
    N'SKU: 230901152',  
    N'TP.HCM', 
       N'https://lh3.googleusercontent.com/mNHjY6tYk_wuTp6suHJ3shBEOMZA7A959YY_D13A85F_Xi0OZ2ZWi72fx9gw0a5m2FxTA_XQR6TSYGtzBrB5Y-9wpJNWOOTx=w500-rw', 
    N'', 
      N''
)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    20, 
    N'Mainboard GIGABYTE ', 
    N'https://lh3.googleusercontent.com/aJCr6-tFB-CPQz2XrzGc5PlmEmsRJWnWgXKtOgfy5EJ5VMwrakmlzABADKHbakOqdTYpS-4E8uwHnHiw3tDiTgZ_oYNdT3IL=w500-rw', 
    95, 
    N'H610M H V3', 
    N'Thương hiệu GIGABYTE', 
    2, 
    1, 
    N'SKU: 240703192',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/0VD5MBeqa0pkX6gkB7aKCVOYIpC7KLSFprC57T-0BTLs9cfTC9D3E32FJ1eQhyeYM-EONp5HCA7rM-h6drwgnaHJ60hsnAED=rw', 
    N'https://lh3.googleusercontent.com/oOU9qYlRMQmzAGwwQIvB4scmYCzE_dJ4-C0GvBBmWrDdVVt6UObYFeskY0KhPuxQeDnDQJz0k-nqwH7h_6dItDja9GQQnCY=rw', 
    N'https://lh3.googleusercontent.com/xuqggvBq_3n3_Raiiflnr3C7QFQ24MCkk4QsdJLr0KEVqf0HNy0aBvSHTU2jDT38M8ixzp2tj5pRRwWJUi4_2GsoPUMa4WaI=rw'
)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO

SET IDENTITY_INSERT [dbo].[Review] ON 

INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 15, N'xin chao san pham nay rat tot', CAST(N'2021-11-19' AS Date), 2)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'xin chào', CAST(N'2021-11-24' AS Date), 14)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'sản phẩm này rất tốt', CAST(N'2021-11-25' AS Date), 15)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'xin chao 2', CAST(N'2021-11-26' AS Date), 16)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'fsdf', CAST(N'2021-12-01' AS Date), 17)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'xin chao 3', CAST(N'2021-12-02' AS Date), 18)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'xin chao 4', CAST(N'2021-12-03' AS Date), 19)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'bao cao', CAST(N'2021-12-14' AS Date), 20)
SET IDENTITY_INSERT [dbo].[Review] OFF
GO
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (11, 23)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (15, 13)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (19, 21)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (20, 9)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (21, 7)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (24, 10)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (46, 2)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (45, 4)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (41, 2)
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([idSupplier], [nameSupplier], [phoneSupplier], [emailSupplier], [addressSupplier], [cateID]) VALUES (1, N'Cty TNHH D.ADDIDAS', N'091121786', N'cty@gmail.com', N'so 1 Vo Van Ngan', 1)
INSERT [dbo].[Supplier] ([idSupplier], [nameSupplier], [phoneSupplier], [emailSupplier], [addressSupplier], [cateID]) VALUES (2, N'Cty TNHH D.NIKE', N'091121786', N'cty@gmail.com', N'so 2 Vo Van Ngan', 2)
INSERT [dbo].[Supplier] ([idSupplier], [nameSupplier], [phoneSupplier], [emailSupplier], [addressSupplier], [cateID]) VALUES (3, N'Cty TNHH D.BITIS', N'091121786', N'cty@gmail.com', N'so 3 Vo Van Ngan', 3)
INSERT [dbo].[Supplier] ([idSupplier], [nameSupplier], [phoneSupplier], [emailSupplier], [addressSupplier], [cateID]) VALUES (4, N'Cty TNHH D.CONVERSE', N'091121786', N'cty@gmail.com', N'so 4 Vo Van Ngan', 4)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1, 10340.200000000003, 14082)
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1014, 600, 4000)
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1015, 450, 3500)
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1017, 900, 3000)
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1018, 800, 2500)
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1019, 660, 2700)
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (2, 100, 150)
GO
*/

ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Account]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Account] FOREIGN KEY([sell_ID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Account]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Account]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Product]
GO
ALTER TABLE [dbo].[SoLuongDaBan]  WITH CHECK ADD  CONSTRAINT [FK_SoLuongDaBan_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[SoLuongDaBan] CHECK CONSTRAINT [FK_SoLuongDaBan_Product]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_Category]
GO
ALTER TABLE [dbo].[TongChiTieuBanHang]  WITH CHECK ADD  CONSTRAINT [FK_TongChiTieuBanHang_Account] FOREIGN KEY([userID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[TongChiTieuBanHang] CHECK CONSTRAINT [FK_TongChiTieuBanHang_Account]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_CapNhatSoLuongDaBan] @productID int, @soLuongBanThem int
as
begin
	update SoLuongDaBan set [soLuongDaBan]=[soLuongDaBan] + @soLuongBanThem where productID=@productID
end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_CapNhatTongBanHang] @sell_ID int, @banHangThem float
as
begin
	update TongChiTieuBanHang set TongBanHang= TongBanHang + @banHangThem where [userID]=@sell_ID
end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_CapNhatTongChiTieu] @userID int, @chiTieuThem float
as
begin
	update TongChiTieuBanHang set TongChiTieu= TongChiTieu + @chiTieuThem where [userID]=@userID
end
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanThietBiMayTinh] SET  READ_WRITE 
GO
