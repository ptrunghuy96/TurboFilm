create database TURBO_PHIM
USE [TURBO_PHIM]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 30/05/2015 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 30/05/2015 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 30/05/2015 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 30/05/2015 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 30/05/2015 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 30/05/2015 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[DayRegister] [datetime] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BaiNhanXet]    Script Date: 30/05/2015 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiNhanXet](
	[MaSo] [int] IDENTITY(0,1) NOT NULL,
	[MS_Phim] [int] NULL,
	[MS_ThanhVien] [int] NULL,
	[NoiDung] [ntext] NULL,
	[NgayDang] [datetime] NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_BaiNhanXet] PRIMARY KEY CLUSTERED 
(
	[MaSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BangThamSo]    Script Date: 30/05/2015 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangThamSo](
	[MaSo] [int] IDENTITY(0,1) NOT NULL,
	[TenThamSo] [nvarchar](50) NULL,
	[KieuDuLieu] [nchar](10) NULL,
	[GiaTri] [nchar](30) NULL,
 CONSTRAINT [PK_BangThamSo] PRIMARY KEY CLUSTERED 
(
	[MaSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BinhChon]    Script Date: 30/05/2015 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhChon](
	[MaSo] [int] IDENTITY(0,1) NOT NULL,
	[MS_ThanhVien] [int] NOT NULL,
	[MS_BaiNhanXet] [int] NOT NULL,
	[BinhChon] [bit] NOT NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_BinhChon] PRIMARY KEY CLUSTERED 
(
	[MaSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 30/05/2015 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaSo] [int] IDENTITY(0,1) NOT NULL,
	[MS_ThanhVien] [int] NULL,
	[MS_BaiNhanXet] [int] NULL,
	[NoiDung] [ntext] NULL,
	[NgayDang] [date] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 30/05/2015 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[MaSo] [int] IDENTITY(0,1) NOT NULL,
	[MS_ThanhVien] [int] NULL,
	[MS_Phim] [int] NULL,
	[DiemDanhGia] [float] NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[MaSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMucNuocSanXuat]    Script Date: 30/05/2015 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucNuocSanXuat](
	[MaSo] [int] IDENTITY(0,1) NOT NULL,
	[TenNuoc] [nvarchar](20) NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_NuocSX] PRIMARY KEY CLUSTERED 
(
	[MaSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMucTheLoai]    Script Date: 30/05/2015 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucTheLoai](
	[MaSo] [int] IDENTITY(0,1) NOT NULL,
	[TenTheLoai] [nvarchar](50) NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhSachPhimYeuThich]    Script Date: 30/05/2015 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachPhimYeuThich](
	[MaSo] [int] IDENTITY(0,1) NOT NULL,
	[MS_ThanhVien] [int] NULL,
	[MS_Phim] [int] NULL,
 CONSTRAINT [PK_DanhSachPhimYeuThich] PRIMARY KEY CLUSTERED 
(
	[MaSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phim]    Script Date: 30/05/2015 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[MaSo] [int] IDENTITY(0,1) NOT NULL,
	[TenPhim] [nvarchar](100) NULL,
	[NoiDung] [ntext] NULL,
	[URL_Trailer] [nvarchar](50) NULL,
	[DiemDanhGia] [float] NULL,
	[MS_TheLoai] [int] NULL,
	[ThoiLuong] [float] NULL,
	[DienVien] [ntext] NULL,
	[DaoDien] [ntext] NULL,
	[MS_NuocSX] [int] NULL,
	[HinhAnh] [nvarchar](100) NULL,
	[NgayPhatHanh] [date] NULL,
	[TinhTrang] [bit] NULL,
	[AnhBanner] [nvarchar](100) NULL,
 CONSTRAINT [PK_Phim] PRIMARY KEY CLUSTERED 
(
	[MaSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 30/05/2015 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaSo] [int] IDENTITY(0,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[TinhTrang] [bit] NULL,
	[GioiTinh] [bit] NULL,
	[Avatar] [nchar](100) NULL,
	[MS_TaiKhoan] [nvarchar](128) NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201505291903476_InitialCreate', N'Turbo_Phim.Migrations.Configuration', 0x1F8B0800000000000400DD5CDB6EE4B8117D0F907F10F49404DE962F99C1C468EFC2DBB63746C6174C7B167933D812BB4D8C446925CA6B23D82FDB877C527E214589BAF1A24BB7DCDD5E0C30B0C8E2A962B148168BC5FEDFEFFF9DFEF012F8D6338E1312D233FB6872685B98BAA147E8EACC4ED9F2BB4FF60FDFFFF94FD34B2F78B17E2EE84E381DB4A4C999FDC45874EA3889FB8403944C02E2C661122ED9C40D030779A1737C78F80FE7E8C8C100610396654DBFA4949100671FF0390BA98B239622FF26F4B09F8872A89967A8D62D0A701221179FD90F69BC081FEF9F4830C9896DEBDC27080499637F695B88D2902106629E7E4DF09CC5215DCD232840FEC36B84816E89FC040BF14F2BF2BE3D393CE63D71AA8605949B262C0C06021E9D08D53872F3B5146C97AA03E55D8292D92BEF75A6C033FBDAC359D197D00705C80C4F677ECC89CFEC9B92C57912DD6236291A4E72C8AB18E07E0DE36F933AE281D5BBDD41694AC79343FEEFC09AA53E4B637C4671CA62E41F58F7E9C227EEBFF0EB43F80DD3B393A3C5F2E4D3878FC83BF9F8777CF2A1DE53E82BD0350AA0E83E0E231C836C7859F6DFB69C663B476E5836ABB5C9B502B604B3C2B66ED0CB674C57EC09E6CBF127DBBA222FD82B4A84717DA50426113462710A9FB7A9EFA3858FCB7AA79527FFBF85EBF1878FA370BD45CF64950DBDC41F264E0CF3EA0BF6B3DAE48944F9F46A8CF7A320BB8AC3807F37ED2BAF7D9C8769ECF2CE8446920714AF306B4A37752AE3ED65D21C6A7CB32E50F7DFB4B9A4AA796B497987D69909058B6DCF8642DEB7E5DBDBE2CEA308062F332DAE91368353F6AA89D4F8C0AA482AC339EA6B38143AF4475E072F0344FC1116C21E5CC005599238C0652F7F0CC1EC101D2CF33D4A125807BC7FA2E4A94574F87304D1E7D84D6330CF394341F4E6DCEE9F428A6FD360C1AD7E7BBC461B9A875FC32BE4B230BEA4BCD5C6789F43F75B98B24BEA5D2086BF32B700E49F0F24E80F308A38E7AE8B93E40A8C197BB3103CEC02F09AB293E3C1707C7DDAB52332F31109F49E88B4923E16A49537A2A7503C120399CE2B6913F573B822B49FA805A959D49CA25354413654540ED64F524169163423E89433A71ACDCFCB46687C472F83DD7F4F6FB3CDDBB416D4D438871512FF84298E6119F3EE116338A6D508F4593776E12C64C3C799BEF9DE9471FA19F9E9D8ACD69A0DD92230FE6CC860F77F36646242F133F1B857D2E3F85310037C2F7AFDC9AA7BCE49926D7B3A34BAB96DE6DB59034CD3E53C49429764B34013F812618BA6FCE0C359DD318CBC37721C043A06864EF8960725D0375B36AA3B7A817DCCB075EEE681C1194A5CE4A96A840E7903042B76548D60553CA429DCDF149E60E938E68D103F042530530965EAB420D42511F23BB524B5ECB985F1BE973CE49A0B1C61CA19766AA20F737DF8830B50F29106A54B4353A76671ED8668F05A4D63DEE5C256E3AE4425B662931DBEB3C12E85FFF62686D9AEB12D1867BB4AFA08600CE5EDC240C559A5AF01C807977D3350E9C4643050E1526DC5409B1ADB81813655F2EE0C343FA2F61D7FE9BCBA6FE6D93C286F7F5B6F55D70E6CB3A18F3D33CDDCF784360C5AE05835CF8B05AFC42F4C73380339C5F92C11AEAE6C221C7C8E59336453F9BB5A3FD46907918DA80DB032B40E507109A80029136A8070452CAF553AE1450C802DE26EADB062ED97606B36A062D72F436B84E62B53D9387B9D3ECA9E95D6A01879AFC3420D476310F2E2D5EC780FA598E2B2AA62FAF8C243BCE15AC7C460B428A8C3733528A9E8CCE85A2A4CB35B4B3A876C884BB6919624F7C9A0A5A233A36B49D868B792344EC100B760231535B7F091265B11E928779BB26EEAE42952A260EA1872A9A637288A085DD572AB448935CF13AB66DFCD87A71C053986E3269ACCA352DA92130B63B4C2522DB00649AF489CB00BC4D002F138CFCC0B1432EDDE6A58FE0B96F5ED531DC4621F28A8F9DFE2AE50B9BA6F6CB5AA2F2220AEA083017768B228BA66F8F5CD2D9EEA867C146B02F7B3D04F036AF6AFCCADF3EBBB7AFBBC4445983A92FC8AFFA4284BF1729B9AEF352EEA9C18678C4AEF65FD71324398B45DF89E757D9BFC51334A119EAAA39842563B1B37931B3364AC640771F8507522BCCDAC1259297500513410A396D8A080D5EAFAA336734FEA98CD9AFE885282491D52AA1A20653D8DA42164BD622D3C8346F514FD39A889237574B5B63FB22685A40EADA95E035B23B35CD71F5593655207D654F7C7AE524EE435748FF72DE3B165DD8D2B3FD86EB6731930DE66411C67E3ABDDDFD7816AC503B1C40DBD0226CAF7D2988CA7BB758D290F676C664C060CF3BAD3B8F86E2E3BADB7F566CCC66D7663696FBBCD37E30D33D937350CE56C279394DCCB339E74969B8A7355F7E319E5A09593D856A146D8D65F138683092798CC7FF1673EC17C112F086E10254B9CB03C83C33E3E3C3A961EE0ECCF631827493C5F732E35BD88698ED91692B1E8338ADD2714ABA9111B3C18A94095A8F335F5F0CB99FD9FACD56916C0E07F65C507D675F295925F52A87888536CFDA6A67A8E9340DF7EC2DAD3E70EFDB57AFDEFC7BCE9817517C38C39B50E255DAE33C2CD471083A4C99B6E20CDDA4F23DEEF846ABC3CD0A24A1362FD87060BC24679645048F99700BDFC75A868DA87041B216A1E0B8C85378A0A4D8F01D6C1323E04F0E093650F01867556FF30601DD18C8F02081D0E263F09E8BF0C152D77B8D5688E44DB5892323D77A6546F945FB9EBBD49C9BCDE68A2ABD9D503E036C8A05EC332DE59F2F168BBA326B77834EC5D9AF69B2714EF4B0E7195DDB1DBD4E16D660BB7DC09FDA19284F720AD4D93A6B3FB54E06DDB9A298CBBE7F994C3127EF7CCD844F2D6EED37AB76D6CA630EF9E1BDBA0E4DD3DB3B55DED9F3BB6B4DE5BE8CE5371D5AC22C3758C2E16DC956A9B07CEE184BF08C108728F327F21A9CFED6ACB4BED60589198999A93CA64C6CAC451F82A14ED6C87F5556CF8AD9D1534ED6C0DA9986DBCC5FADFCA5BD0B4F3362438EE2249589B62A84BDCEE58C7DA32A0DE535270A3271D39E85D3E6BEBDDFA7BCA011E45298DD963B8237E3F29BFA3A864CCA93320C557BDEE85BDB3F68B8AB07F27645541F0DF57A4D86DEC9A25CD355D86C5E62D49549048119A1BCC90075BEA79CCC812B90CAA798C397BE29DC5EDF84DC7027BD7F42E6551CAA0CB3858F88D80177702DAF86779CC4D99A77751F66B25637401C4243C367F477F4C89EF95725F6962420608EE5D88882E1F4BC623BBABD712E936A43D8184FA4AA7E80107910F60C91D9DA367BC8E6C607E9FF10AB9AF5504D004D23D104DB54F2F085AC528480446D51E3EC186BDE0E5FBFF034194423658540000, N'6.1.1-30610')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201505291914052_DayRegister', N'Turbo_Phim.Migrations.Configuration', 0x1F8B0800000000000400DD5CDB6EE4B8117D0F907F10F49404DE962F99C1C468EFC2DBB63746C6174C7B167933D812BB4D8C446925CA6B23D82FDB877C527E214589BAF1A24BB7DCDD5E0C30B0C5E2A962F1902C9245FFEFF7FF4E7F78097CEB19C70909E9997D3439B42D4CDDD023747566A76CF9DD27FB87EFFFFCA7E9A517BC583F1772275C0E6AD2E4CC7E622C3A759CC47DC2014A260171E33009976CE2868183BCD0393E3CFC877374E46080B001CBB2A65F52CA4880B35FE0D759485D1CB114F937A187FD447C879279866ADDA200271172F199FD90C68BF0F1FE8904935CD8B6CE7D82C09039F697B685280D196260E6E9D704CF591CD2D53C820FC87F788D30C82D919F6061FE6925DEB72587C7BC254E55B18072D38485C140C0A313E11A47AEBE9683EDD275E0BC4B70327BE5ADCE1C78665F7B38FBF425F4C101B2C2D3991F73E133FBA654719E44B7984D8A8A931CF22A06B85FC3F8DBA48E7860F5AE775052E97872C8FF1D58B3D467698CCF284E598CFC03EB3E5DF8C4FD177E7D08BF617A7672B4589E7CFAF01179271FFF8E4F3ED45B0A6D05B9C607F8741F87118EC136BC2CDB6F5B4EB39E23572CABD5EAE45E012EC1A8B0AD1BF4F219D3157B82F172FCC9B6AEC80BF68A2F825C5F2981410495589CC2AFB7A9EFA3858FCB72A75527FFBF45EBF1878FA368BD45CF649575BDA41F064E0CE3EA0BF6B3D2E48944F9F06AF4F7A310BB8AC380FFDEE4575EFA380FD3D8E58D098D220F285E61D6B46EEA54E4ED45690E353EAD0BD4FDA736B754A5B7569437689D9150A8D8F66828EC7D5BBDBD19771E45D07919B5B847DA08A7AC5513A9F281558954C439EA4B1C0A0DFA23CF8317088C5E91847137E7CA2F10C30F24E8AC7A1920E28F3087F6D002D1CB92C4012E1DF463088C45747073EF5192C014E2FD13254F2DA6C38F23983EC76E1A03B3E70C05D19B6BBB7F0A29BE4D8345D593DBD0355AD73CFC1A5E219785F125E5B536C6FB1CBADFC2945D528F13FA2B7387F2BB0418C59C73D7C549720564C6DE2C84E0BC00BCA6ECE478301C9FDA761DC3CC7C44027D10234DC28F856815C8E8259460C620A60B68DA4CFD1CAE08ED676A216A363597E83455880D359583F5B354489A0DCD043AEDCCA5460B11B31E1A3F46CC60F73F48DC6CDD37CD053537CE6186C43F618A6398C6BC7BC460E5A6550FF4993776116764DDC795BEF9DA9469FA19F9E9D8AAD61A0DD92430FE68C860F77F346466C2E767E2F1A8A4C7CEA91006F85EF2FA4D59F798932CDBF670683473DBCAB733079886CB7992842EC94681E6CC4C9C7834ED8718CEEA3EFEC85B231FA140C380E8842F79F005DA66CBA4BAA317D8C70C5BE76E7EA63843898B3CD58DD0206F8061C58AAA31AC3A4A691AF7374527301DC7BC12E29BA004462AA14C1D1684BA24427EA797A49A3D9730DEF652875C7281234CB9C24E4FF451AE3F39E106947AA44EE9F2D0D4A931AE9D8886A8D5D4E75D216CD5EFCA81C65638D9113B1B7829E2B7372166BBC7B640CE7697F431C0780AB80B828ABD4A5F02C81B977D23A8B46332105484545B2168D3633B2068D325EF8EA0F916B56FFF4BFBD57DA36773A3BCFD65BDD55D3BE066C31F7B46CD3CF6843A0C6AE058A5E7C58217E217A6D99C819D627F96885057A608079F63D63CB2A9E25D6D1CEAB483C8246A03AC88D6012AEE0F152065400D30AE38CB6BB54E441103608B73B7565831F74BB0350EA8D8F57BD49AA0F9B6552667AFDD47D9B2920D0AC97B6D166A381A42C89357B3E13D9C623A97551DD327161E120DD71A263AA3C5411D91ABC149456346F75241CD6E2FE902B22121D9465E92C22783978AC68CEE25C1D16E276982820161C1462E6A2EE1230DB6E2A4A35C6DCAB2A9936757890F53C7908635BD415144E8AA969625BE58F33C276BF6DD7C78B6529063386EA2495A2AAD2D35B130462B2C95826AB0F48AC409BB400C2D103FE799798122A65D5B0DD37FA1B2BE7CAA9D58AC038534FF59DC152AB7FE8DA5568D4504C4153430E0014D768AAEE97E7D758B67C9211FC59A83FB59E8A70135C757E6DAF9F55DBD7EFE4545983A92FD4AFCA4384B89729B9EEFD52FEA9818A78FCAE865FD7E324398BC5DC49E757F9BE251334A713C5547311D59EDACDF4C61CC90BE9203C4E15DD589F036A3AA91D052876914F4C713592E7524F16920462D514201AB95F5476DE6B2D4319B25FD11A584953AA45434C0CA7A5A4AC3C87AC15A78068FEA25FA6B501351EAE86A697F644D4A4A1D5A53BC06B6C666B9AC3FAA266BA50EAC29EE8F5DA5B0C873F21EAF83C66DD0BA0B61BE51DE6C253460BCCD043BCE425ACB07A803D53E0FC41237FE0A98F8BE976432EE16D725537E3CB219990C18E679A77191DE9C765A6FFFCD988DDBF1C6D4DE961D60C61B46D9372586B25794454AEDE59E51DA1B4EC53EADFB1D8FB271CB456CAB70232CEBAF100F05132E3099FFE2CF7C82F9245E08DC204A9638617946887D7C78742CBD05DA9F77394E9278BE669F6B7A9CD3ECB32D2477D16714BB4F2856532D3678BB52812AA7D8D7D4C32F67F67FB25AA7D98108FF29FB7C605D275F29F92585828738C5D66F6AEAE838B9FCED3BB63D7D79D1DFABD7FF7ECCAB1E5877318C9853EB50F2E53A3DDC7C8F31C89ABCEA06D6ACFD4AE3FD0E28CD23080F22709625895758BD9F2BB41A288DADF5DF402C081BE5FD4361E55F02F4F2D7A1A669DF386C84A879C73016DE282E34BD535807CBF846615DFAE9DF2CAC639AF1BD02A1C3C1E4D70AFD67B4A2E60E572DCDEE6A1BB35BE6E7CE6CEF8D523F77BDCC2949E11B0D7435F17B00DC06C9DD6B30E39DE5458FB6D06AD29E47C3DE25B5DF3CD7795FD29BABC493DD66356F3391B9E5BAEA0F95BFBC0719779A0CA2DD67296F9B6BA613E13D4FF51C968BBC6764137965BBCF38DE36D94C27C67B4EB64179C57BC6B55DAD9F3B665AEF2574E759C26AC293E1664777ACDC95059C9FC1C30E7F110209F288327FBCA94F3B6B4B99ED50588998959AF3DD64C5CAC051F42A12ED6A87B5552CF8AD8D1532ED6A0D59A26DBAC5FCDFAA5BC8B4EB36E45EEE227F599BFDA8CB29EF98C7DA92B3DE53BE72A3251DE9F15D316BEB35FD7B4A4F1EC5298DD163B86E7E3FD9C8A3B864CCA13320FB58BD3986B5B3F6772261FD4EC8AA82E07F359262B7B16A9632D77419168BB7645121229DD0DC60863C5852CF634696C86550CCCF98B3D7E7D9B91DBFE95860EF9ADEA52C4A193419070BBF71E0C5838036FD598A75D3E6E95D94FD2195319A0066127E367F477F4C89EF95765F69CE840C103CBA1027BABC2F193FD95DBD9648B721ED0924DC5706450F38887C004BEEE81C3DE3756C03FA7DC62BE4BE5627802690EE8E68BA7D7A41D02A46412230AAFAF02B70D80B5EBEFF3F1CF98CB92E550000, N'6.1.1-30610')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9b352b34-aa5c-4116-945a-f9bb478f4f74', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'09c68b75-ed35-420e-b291-a50e3796326f', N'Member')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'e1414006-9b2e-448a-ae47-518c355c8a88', N'Super Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'03d44a3d-aedb-4fdf-8c4d-caad4e6458f7', N'09c68b75-ed35-420e-b291-a50e3796326f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8524c81d-cd0f-449c-b223-4535595f7b78', N'09c68b75-ed35-420e-b291-a50e3796326f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'03d44a3d-aedb-4fdf-8c4d-caad4e6458f7', N'9b352b34-aa5c-4116-945a-f9bb478f4f74')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8524c81d-cd0f-449c-b223-4535595f7b78', N'9b352b34-aa5c-4116-945a-f9bb478f4f74')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8524c81d-cd0f-449c-b223-4535595f7b78', N'e1414006-9b2e-448a-ae47-518c355c8a88')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [DayRegister]) VALUES (N'03d44a3d-aedb-4fdf-8c4d-caad4e6458f7', N'admin@admin.com', 0, N'ADdC8YjVJsmRbCm3FpLdKvm0TumbxsFnKoB1aQsEFSny311P5FGazEuGgHFOBIlraw==', N'99853799-33a4-40d0-aacf-f6ed3995a75e', NULL, 0, 0, NULL, 0, 0, N'admin@admin.com', CAST(0x0000A4A800000000 AS DateTime))
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [DayRegister]) VALUES (N'8524c81d-cd0f-449c-b223-4535595f7b78', N'superadmin@turbo.com', 1, N'AK2a2ff4/1XYVzcp0R/R5Qu+53v6CMwTSQZUBkWQ45xuUtfGE2r8/quOS6ENf1t8GQ==', N'8e3066fc-2cdb-427e-8f51-ca69694aec83', NULL, 0, 0, NULL, 1, 0, N'superadmin@turbo.com', NULL)
SET IDENTITY_INSERT [dbo].[BangThamSo] ON 

INSERT [dbo].[BangThamSo] ([MaSo], [TenThamSo], [KieuDuLieu], [GiaTri]) VALUES (0, N'SoPhimTrenMotTrang', N'int       ', N'5                             ')
INSERT [dbo].[BangThamSo] ([MaSo], [TenThamSo], [KieuDuLieu], [GiaTri]) VALUES (9, N'GiaTriTrangLonNhatMoiLanPhanTrang', N'int       ', N'5                             ')
SET IDENTITY_INSERT [dbo].[BangThamSo] OFF
SET IDENTITY_INSERT [dbo].[DanhMucNuocSanXuat] ON 

INSERT [dbo].[DanhMucNuocSanXuat] ([MaSo], [TenNuoc], [TinhTrang]) VALUES (0, N'Mỹ', 1)
INSERT [dbo].[DanhMucNuocSanXuat] ([MaSo], [TenNuoc], [TinhTrang]) VALUES (1, N'Việt Nam', 1)
INSERT [dbo].[DanhMucNuocSanXuat] ([MaSo], [TenNuoc], [TinhTrang]) VALUES (2, N'Pháp', 1)
INSERT [dbo].[DanhMucNuocSanXuat] ([MaSo], [TenNuoc], [TinhTrang]) VALUES (3, N'Hàn Quốc', 1)
INSERT [dbo].[DanhMucNuocSanXuat] ([MaSo], [TenNuoc], [TinhTrang]) VALUES (4, N'Nhật Bản', 1)
INSERT [dbo].[DanhMucNuocSanXuat] ([MaSo], [TenNuoc], [TinhTrang]) VALUES (5, N'Anh', 1)
INSERT [dbo].[DanhMucNuocSanXuat] ([MaSo], [TenNuoc], [TinhTrang]) VALUES (6, N'Trung Quốc', 1)
INSERT [dbo].[DanhMucNuocSanXuat] ([MaSo], [TenNuoc], [TinhTrang]) VALUES (7, N'Hồng Kong', 1)
INSERT [dbo].[DanhMucNuocSanXuat] ([MaSo], [TenNuoc], [TinhTrang]) VALUES (8, N'Thái Lan', 1)
INSERT [dbo].[DanhMucNuocSanXuat] ([MaSo], [TenNuoc], [TinhTrang]) VALUES (9, N'Ấn Độ', 1)
INSERT [dbo].[DanhMucNuocSanXuat] ([MaSo], [TenNuoc], [TinhTrang]) VALUES (10, N'Khác', 1)
SET IDENTITY_INSERT [dbo].[DanhMucNuocSanXuat] OFF
SET IDENTITY_INSERT [dbo].[DanhMucTheLoai] ON 

INSERT [dbo].[DanhMucTheLoai] ([MaSo], [TenTheLoai], [TinhTrang]) VALUES (0, N'Hành động', 1)
INSERT [dbo].[DanhMucTheLoai] ([MaSo], [TenTheLoai], [TinhTrang]) VALUES (1, N'Phiêu lưu', 1)
INSERT [dbo].[DanhMucTheLoai] ([MaSo], [TenTheLoai], [TinhTrang]) VALUES (2, N'Viễn tưởng', 1)
INSERT [dbo].[DanhMucTheLoai] ([MaSo], [TenTheLoai], [TinhTrang]) VALUES (3, N'Võ thuật', 1)
INSERT [dbo].[DanhMucTheLoai] ([MaSo], [TenTheLoai], [TinhTrang]) VALUES (4, N'Kinh dị', 1)
INSERT [dbo].[DanhMucTheLoai] ([MaSo], [TenTheLoai], [TinhTrang]) VALUES (5, N'Cổ trang', 1)
INSERT [dbo].[DanhMucTheLoai] ([MaSo], [TenTheLoai], [TinhTrang]) VALUES (6, N'Tâm lý', 1)
INSERT [dbo].[DanhMucTheLoai] ([MaSo], [TenTheLoai], [TinhTrang]) VALUES (7, N'Hình sự', 1)
INSERT [dbo].[DanhMucTheLoai] ([MaSo], [TenTheLoai], [TinhTrang]) VALUES (8, N'Hài hước', 1)
INSERT [dbo].[DanhMucTheLoai] ([MaSo], [TenTheLoai], [TinhTrang]) VALUES (9, N'Thần thoại', 1)
INSERT [dbo].[DanhMucTheLoai] ([MaSo], [TenTheLoai], [TinhTrang]) VALUES (10, N'Hoạt hình', 1)
INSERT [dbo].[DanhMucTheLoai] ([MaSo], [TenTheLoai], [TinhTrang]) VALUES (11, N'Khác', 1)
SET IDENTITY_INSERT [dbo].[DanhMucTheLoai] OFF
SET IDENTITY_INSERT [dbo].[Phim] ON 

INSERT [dbo].[Phim] ([MaSo], [TenPhim], [NoiDung], [URL_Trailer], [DiemDanhGia], [MS_TheLoai], [ThoiLuong], [DienVien], [DaoDien], [MS_NuocSX], [HinhAnh], [NgayPhatHanh], [TinhTrang], [AnhBanner]) VALUES (0, N'Spider Man 2', N'Wizard Vitruvius, một nhà tiên tri phải cố gắng để bảo vệ "Kragle", một siêu vũ khí từ Trùm Kinh doanh. Ông đã không ngăn cản được hắn, nhưng ông đã cảnh báo Trùm kinh doanh về một lời tiên tri, nơi mà một người được gọi là "người đặc biệt" sẽ ngăn chặn được Kragle. Tám năm sau, Emmet Brickowski, một công nhân xây dựng bình thường, anh gặp một phụ nữ tên là Wyldstyle, cô đang tìm kiếm một cái gì đó sau giờ làm ở công trường xây dựng của Emmet. Khi đi tìm cô, Emmet rơi vào một cái lỗ và tìm thấy cái "cục gạch ngăn trở". Sau khi chạm vào nó, Emmet ngất đi. Anh tỉnh dậy dưới sự giám sát của Cảnh sát Xấu (người có hai mặt là tốt và xấu), tay sai của Trùm kinh doanh, lúc này Emmet phát hiện ra trên lưng anh vẫn còn "cục gạch ngăn trở". Emmet biết được kế hoạch của Trùm kinh doanh là đóng băng thế giới bằng Kragle (một loại keo dán). Wyldstyle cứu Emmet và đưa anh ta đến Vitruvius, cô cố giải thích cho Emmet và cô nói anh là Thợ xây Tài ba (Master Builders) có khả năng xây dựng bất cứ điều gì họ cần với tốc độ lớn và không cần hướng dẫn. Khi Trùm kinh doanh lên cầm quyền, hắn không tán thành về sự sáng tạo vô chính phủ như vậy hắn đến và bắt giữ nhiều người trong số họ. Là " người đặc biệt", Emmet có sứ mệnh phải đánh bại hắn ta nhưng Wyldstyle và Vitruvius rất thất vọng khi thấy Emmet không có gì sáng tạo.', N'https://www.youtube.com/embed/DlM2CWNTQ84', 8, 0, 120, N'Phil Lord , Chris Miller', N'Lý An', 1, N'/Images/01.JPG', CAST(0xF1390B00 AS Date), 1, NULL)
INSERT [dbo].[Phim] ([MaSo], [TenPhim], [NoiDung], [URL_Trailer], [DiemDanhGia], [MS_TheLoai], [ThoiLuong], [DienVien], [DaoDien], [MS_NuocSX], [HinhAnh], [NgayPhatHanh], [TinhTrang], [AnhBanner]) VALUES (1, N'Big Hero 6', N'Câu chuyện diễn ra tại một thành phố hư cấu có tên là San Fransokyo (tên viết tắt của 2 thành phố San Francisco của Mỹ và Tokyo của Nhật Bản). Đó là nơi ở của cậu bé thần đồng Hiro Hamada cùng với một người bạn hết sức đặc biệt là Baymax. Baymax trông giống như một người tuyết màu trắng, đây là phát minh của Tadashi – anh trai Hiro. Baymax được tạo ra nhằm mục đích phục vụ cho sức khỏe của con người. Với sự thông minh của Hiro, cậu nhóc đã chế tạo ra các công cụ chiến đấu cho biệt đội siêu anh hùng với sự đồng hành của 5 thành viên còn lại là Baymax, Wasabi, Go Go, Fred và Honey Lemon. Họ cùng điều tra về kẻ giấu mặt “kabuki” đã đánh cắp phát minh “bọ siêu nhỏ” của Hiro và ngăn chặn 1 thảm họa đối với thành phố.', N'https://www.youtube.com/embed/mZEZ35Fhvuc', 9, 0, 120, N'uyuyuyyu', N'Chris Williams, Don Hall, ', 2, N'/Images/02.jpg', CAST(0xEF390B00 AS Date), 1, NULL)
INSERT [dbo].[Phim] ([MaSo], [TenPhim], [NoiDung], [URL_Trailer], [DiemDanhGia], [MS_TheLoai], [ThoiLuong], [DienVien], [DaoDien], [MS_NuocSX], [HinhAnh], [NgayPhatHanh], [TinhTrang], [AnhBanner]) VALUES (2, N'The Lego Movie', N'Bộ Phim Lego là một bộ phim điện ảnh thuộc thể loại hoạt hình 3d hành động được 2 đạo diễn Phil Lord và Chris Miller phụ trách hợp tác ngoài ra còn có thêm những diễn viên lồng tiếng thú vị trong phim như là Phil Lord, Chris Miller....Nội dung bộ Phim The Lego Movie  xoay quanh một anh chàng thanh niên bình thường tên Emmet bị hiểu nhầm là một trong những siêu anh hùng đi giải cứu thế giới khỏi tay một tên độc tài sở hữu sức mạnh khủng khiếp nhất vũ trụ, với ý đĩnh sẽ chiếm lấy Trái Đất làm của riêng hắn. Emmet từ một chàng trai bình thường trở thành vị cứu tình bất đắc dĩ của cả nhân loại, đằng sau Emmet là sự hỗ trợ của những super heroes đến từ khắp nơi trên thế giới, điển hình như Superman, Batman, Superwoman và những siêu robot do quân đội điều phái đến. Nhận thấy Emmet là mối nguy hiểm cần diệt trừ cho nên President Business đã điều phái Bad Cop đi bắt cóc Emmet và điều tra thông tin về anh chàng thanh niên này. Bộ phim sử dụng đồ họa 3d về những bộ trò chơi lắp ráp lego nổi tiếng thế giới rất được ưa chuộng hàng thập kỉ qua và cho đến tận bây giờ.', N'https://www.youtube.com/embed/fZ_JOBCLF-I', 8, 0, 120, N'Phil Lord , Chris Miller', N'Xanh Hồ3', 1, N'/Images/03.jpg', CAST(0xF1390B00 AS Date), 1, NULL)
INSERT [dbo].[Phim] ([MaSo], [TenPhim], [NoiDung], [URL_Trailer], [DiemDanhGia], [MS_TheLoai], [ThoiLuong], [DienVien], [DaoDien], [MS_NuocSX], [HinhAnh], [NgayPhatHanh], [TinhTrang], [AnhBanner]) VALUES (3, N'Transcendence ', N'Transcendence xoay quanh tiến sĩ Will Caster (Johnny Depp), một nhà nghiên cứu dự báo trong lĩnh vực trí thông minh nhân tạo, công việc của anh đang làm nhằm chế tạo một cỗ máy có khả năng tự nhận thức, kết hợp từ toàn bộ những tri thức mà nhân loại từng biết đến với mọi biểu hiện cảm xúc đặc trưng của con người. Những thử nghiệm gây tranh cãi của Will khiến anh trở nên nổi tiếng nhưng cũng biến anh thành mục tiêu lớn nhất của những phần tử bài công nghệ và chúng sẽ không từ bất kỳ thủ đoạn nào để ngăn cản anh.', N'https://www.youtube.com/embed/CTen3-B8GU', 0, 1, 90, N'Johnny Depp, Rebecca Hall, Morgan ', N'Wally Pfister', 4, N'/Images/04.jpg', CAST(0xEF390B00 AS Date), 1, NULL)
INSERT [dbo].[Phim] ([MaSo], [TenPhim], [NoiDung], [URL_Trailer], [DiemDanhGia], [MS_TheLoai], [ThoiLuong], [DienVien], [DaoDien], [MS_NuocSX], [HinhAnh], [NgayPhatHanh], [TinhTrang], [AnhBanner]) VALUES (4, N'Life of Pi ', N'Nội dung phim Cuộc Phiêu Lưu Của Pi: Đã lâu rồi mình không cảm thấy tuyệt vời như vậy khi đến rạp xem phim, đạo diễn Lý An đã mang đến cho khán giả một thế giới tuyệt vời, đưa người xem chu du qua những cung bậc cảm xúc, thoả mãn những giác quan khó tính, làm người xem nổi da gà qua những khung hình tuyệt đẹp cùng âm thanh sống động đến không ngờ, Life of Pi quả thật là một trải niệm điện ảnh tuyệt vời, cùng với công nghệ 3D, bộ phim là một tác phẩm nghệ thuật đích thực. 1. Kịch bản: 8/10 Pi Patel là một cậu bé người Ấn Độ, cậu lớn lên một cách bình thường như bao đứa trẻ khác, cậu cũng yêu, cũng bất đồng với cha mẹ...đến một ngày, cha cậu quyết định chuyển nhà đến tận Canada vì chuyện kinh doanh hiện tại không được tốt, trong chuyến đi định mệnh, con tàu chở hàng cùng với cả nhà Pi gặp một trận bão lớn, và chỉ có mình Pi sống sót trên con thuyền cứu hộ nhỏ, chút ít lương thực cùng một vài con thú từ sở thú mà cha cậu định mang sang Mỹ để bán lấy tiền sinh sống, một con ngựa vằn, một con linh cẩu, một đười ươi và một con hổ, lênh đênh trên biển bao ngày, chống chọi với thiên nhiên cùng những con thú, cuối cùng cậu đã đến được đất liền Mexicô, kiệt sức và cô độc. Kịch bản của Life of Pi quả thực viết rất hay, những tình tiết, lời thoại trong phim có giá trị giáo dục rất cao mà không thể xem một lần đã hiểu hết được, phim cho ta thấy một cách toàn diện văn hoá, con người Ấn Độ, một cái nhìn về các tôn giáo, tuyên truyền bảo vệ động vật...hầu như trong phim, mọi thứ đều có một liên kết rất chặt chẽ với nhau một cách tuyệt vời, một kịch bản không có gì đáng chê trách. 2. Diễn xuất: 8/10 Câu chuyện trong Life of Pi là một câu chuyện được kể lại, có người kể Irrfan Khan [trong vai Pi Patel trưởng thành] và người nghe Rafe Spall [một tiểu thuyết gia đi tìm ý tưởng], hai nhân vật này chỉ xuất hiện rất ít trong phim, nhân vật chính chúng ta cần nói đến chính là Suraj Sharma [trong vai Pi Patel còn trẻ] và...con hổ Bengal có tên Richard Parker. Pi Patel, thường gọi là Pi, sau khi sống sót qua cơn bão thì số phận oái oăm ào đến với một con thú dữ cứ lỡn vỡn trong bán kính 10m xung quanh, anh cố gắn để sống sót, làm quen với con hổ, và gần như trở thành bạn nó. Đây là một vai diễn khá tốt của chàng diễn viên trẻ, những trường đoạn như lúc tàu chìm, lúc vờn với con hổ rất cảm xúc, làm người xem rất cảm động, tuy chỉ có hai nhân vật phần lớn thời gian của phim.', N'https://www.youtube.com/embed/mZEZ35Fhvuc', 9, 2, 45, N'Suraj Sharma, Irrfan Khan và Adil ', N'Lý An', 3, N'/Images/05.jpg', CAST(0xF1390B00 AS Date), 1, NULL)
INSERT [dbo].[Phim] ([MaSo], [TenPhim], [NoiDung], [URL_Trailer], [DiemDanhGia], [MS_TheLoai], [ThoiLuong], [DienVien], [DaoDien], [MS_NuocSX], [HinhAnh], [NgayPhatHanh], [TinhTrang], [AnhBanner]) VALUES (5, N'SherLock Holmes ', N'Sherlock Holmes và người bạn thân là bác sĩ Watson lần này phải đối mặt với kẻ thù mới vô cùng khôn ngoan là giáo sư Moriarty.', N'https://www.youtube.com/embed/I0hXhGt5XPg', 9, 3, 180, N'Joel Silver, Lionel Wigram, Susan Downey, Dan Lin, Robert Downey Jr, Rachel McAdams', N'Guy Ritchie', 7, N'/Images/06.jpg', CAST(0xB1340B00 AS Date), 1, NULL)
INSERT [dbo].[Phim] ([MaSo], [TenPhim], [NoiDung], [URL_Trailer], [DiemDanhGia], [MS_TheLoai], [ThoiLuong], [DienVien], [DaoDien], [MS_NuocSX], [HinhAnh], [NgayPhatHanh], [TinhTrang], [AnhBanner]) VALUES (6, N'The Avengers', N'The Avengers là một tập hợp những siêu anh hùng bao gồm: Captain America, Iron Man, Thor, Hulk,… Tuy nhiên, Captain America vẫn chưa công chiếu. Vì là tập hợp của một loạt siêu anh hùng trên nên việc đồng nhất về nhân vật cũng như cốt truyện, cách xây dựng là rất khó, điều đó nâng The Avengers trở thành một siêu phẩm hứa hẹn sẽ thu hút bất kỳ tín đồ nào của dòng phim này.', N'https://www.youtube.com/embed/tmeOjFno6Do', 7, 4, 45, N'Robert Downey, Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Tom Hiddleston, Samuel L. Jackson', N'Joss Whedon', 5, N'/Images/07.jpg', CAST(0x01360B00 AS Date), 1, NULL)
INSERT [dbo].[Phim] ([MaSo], [TenPhim], [NoiDung], [URL_Trailer], [DiemDanhGia], [MS_TheLoai], [ThoiLuong], [DienVien], [DaoDien], [MS_NuocSX], [HinhAnh], [NgayPhatHanh], [TinhTrang], [AnhBanner]) VALUES (7, N'Interstellar', N'“Interstellar” là biên niên ký về cuộc phiêu lưu vĩ đại của một nhóm các nhà thám hiểm sử dụng khám phá mới về lỗ đen vũ trụ để vượt qua các giới hạn thông thường trong du hành không gian, chinh phục khoảng không mênh mông trên một chuyến hành trình xuyên dải ngân hà...', N'https://www.youtube.com/embed/Lm8p5rlrSkY', 8, 2, 120, N'Matthew McConaughey, Anne Hathaway, Jessica Chastain', N'Christopher Nolan', 6, N'/Images/08.jpg', CAST(0x7D380B00 AS Date), 1, NULL)
INSERT [dbo].[Phim] ([MaSo], [TenPhim], [NoiDung], [URL_Trailer], [DiemDanhGia], [MS_TheLoai], [ThoiLuong], [DienVien], [DaoDien], [MS_NuocSX], [HinhAnh], [NgayPhatHanh], [TinhTrang], [AnhBanner]) VALUES (8, N'Dawn of the Planet of the Apes 123', N'Phần tiếp theo của siêu phẩm khoa học viễn tưởng Rise of the Planet of the Apes (Sự Nổi Dậy Của Loài Khỉ) - Dawn of the Planet of the Apes - đang gây sự chú ý cao độ của người xem khi nhận được hàng loạt lời nhận xét vô cùng tích cực từ giới truyền thông. Thậm chí, những dự đoán phim sẽ oanh tạc phòng vé vào thứ 6 tuần tới đã được nhiều trang báo khẳng định “chắc như đinh đóng cột”.', N'https://www.youtube.com/embed/eq1sTNGDXo0', 10, 5, 120, N'Gary Oldman, Keri Russell, Andy Serkis', N'Matt Reeves', 6, N'/Images/09.jpg', CAST(0xFF390B00 AS Date), 1, NULL)
SET IDENTITY_INSERT [dbo].[Phim] OFF
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([MaSo], [HoTen], [DiaChi], [NgaySinh], [TinhTrang], [GioiTinh], [Avatar], [MS_TaiKhoan]) VALUES (19, NULL, NULL, NULL, 1, NULL, NULL, N'8524c81d-cd0f-449c-b223-4535595f7b78')
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BaiNhanXet]  WITH CHECK ADD  CONSTRAINT [FK_BaiNhanXet_Phim] FOREIGN KEY([MS_Phim])
REFERENCES [dbo].[Phim] ([MaSo])
GO
ALTER TABLE [dbo].[BaiNhanXet] CHECK CONSTRAINT [FK_BaiNhanXet_Phim]
GO
ALTER TABLE [dbo].[BaiNhanXet]  WITH CHECK ADD  CONSTRAINT [FK_BaiNhanXet_ThanhVien] FOREIGN KEY([MS_ThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaSo])
GO
ALTER TABLE [dbo].[BaiNhanXet] CHECK CONSTRAINT [FK_BaiNhanXet_ThanhVien]
GO
ALTER TABLE [dbo].[BinhChon]  WITH CHECK ADD  CONSTRAINT [FK_BinhChon_BaiNhanXet] FOREIGN KEY([MS_BaiNhanXet])
REFERENCES [dbo].[BaiNhanXet] ([MaSo])
GO
ALTER TABLE [dbo].[BinhChon] CHECK CONSTRAINT [FK_BinhChon_BaiNhanXet]
GO
ALTER TABLE [dbo].[BinhChon]  WITH CHECK ADD  CONSTRAINT [FK_BinhChon_ThanhVien] FOREIGN KEY([MS_ThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaSo])
GO
ALTER TABLE [dbo].[BinhChon] CHECK CONSTRAINT [FK_BinhChon_ThanhVien]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_BaiNhanXet] FOREIGN KEY([MS_BaiNhanXet])
REFERENCES [dbo].[BaiNhanXet] ([MaSo])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_BaiNhanXet]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_ThanhVien] FOREIGN KEY([MS_ThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaSo])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_ThanhVien]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_Phim] FOREIGN KEY([MS_Phim])
REFERENCES [dbo].[Phim] ([MaSo])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_Phim]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_ThanhVien] FOREIGN KEY([MS_ThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaSo])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_ThanhVien]
GO
ALTER TABLE [dbo].[DanhSachPhimYeuThich]  WITH CHECK ADD  CONSTRAINT [FK_DanhSachPhimYeuThich_Phim] FOREIGN KEY([MS_Phim])
REFERENCES [dbo].[Phim] ([MaSo])
GO
ALTER TABLE [dbo].[DanhSachPhimYeuThich] CHECK CONSTRAINT [FK_DanhSachPhimYeuThich_Phim]
GO
ALTER TABLE [dbo].[DanhSachPhimYeuThich]  WITH CHECK ADD  CONSTRAINT [FK_DanhSachPhimYeuThich_ThanhVien] FOREIGN KEY([MS_ThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaSo])
GO
ALTER TABLE [dbo].[DanhSachPhimYeuThich] CHECK CONSTRAINT [FK_DanhSachPhimYeuThich_ThanhVien]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_NuocSX] FOREIGN KEY([MS_NuocSX])
REFERENCES [dbo].[DanhMucNuocSanXuat] ([MaSo])
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_NuocSX]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_TheLoai] FOREIGN KEY([MS_TheLoai])
REFERENCES [dbo].[DanhMucTheLoai] ([MaSo])
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_TheLoai]
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_AspNetUsers] FOREIGN KEY([MS_TaiKhoan])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_AspNetUsers]
GO
