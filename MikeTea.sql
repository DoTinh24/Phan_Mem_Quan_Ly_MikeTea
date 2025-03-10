USE [MikeTea]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 11/12/2023 2:25:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDDonHang] [int] NULL,
	[SoLuong] [int] NOT NULL,
	[GiaBan] [float] NOT NULL,
	[ThanhTien] [float] NOT NULL,
	[IDSanPham] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 11/12/2023 2:25:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDHoaDon] [int] NOT NULL,
	[IDSanPham] [varchar](10) NOT NULL,
	[IDNhanVien] [varchar](10) NOT NULL,
	[IDCTDonHang] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[TongTien] [float] NOT NULL,
 CONSTRAINT [PK_CTDonHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 11/12/2023 2:25:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[TongGiaTri] [float] NOT NULL,
	[IDKhuyenMai] [varchar](10) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/12/2023 2:25:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[NgayLap] [date] NULL,
	[IDDonHang] [int] NULL,
	[TongTien] [float] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 11/12/2023 2:25:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[ID] [varchar](10) NOT NULL,
	[TenKM] [nvarchar](50) NOT NULL,
	[GiaTri] [int] NOT NULL,
	[TGBatDau] [date] NULL,
	[TGKetThuc] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/12/2023 2:25:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[ID] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[TinhTrang] [bit] NOT NULL,
	[VaiTro] [bit] NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/12/2023 2:25:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[IDSP] [varchar](10) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[GiaTien] [float] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[IDTopping] [varchar](10) NOT NULL,
	[IDSize] [varchar](10) NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[IDSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 11/12/2023 2:25:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[ID] [varchar](10) NOT NULL,
	[TenSize] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topping]    Script Date: 11/12/2023 2:25:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topping](
	[ID] [varchar](10) NOT NULL,
	[TenTopping] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Topping] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [SoLuong], [GiaBan], [ThanhTien], [IDSanPham]) VALUES (1049, 1024, 8, 30000, 240000, N'SP001')
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [SoLuong], [GiaBan], [ThanhTien], [IDSanPham]) VALUES (1050, 1024, 8, 40000, 320000, N'SP007')
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([ID], [IDHoaDon], [IDSanPham], [IDNhanVien], [IDCTDonHang], [SoLuong], [TongTien]) VALUES (1097, 1023, N'SP001', N'chiht', 1049, 8, 240000)
INSERT [dbo].[ChiTietHoaDon] ([ID], [IDHoaDon], [IDSanPham], [IDNhanVien], [IDCTDonHang], [SoLuong], [TongTien]) VALUES (1098, 1023, N'SP007', N'chiht', 1050, 8, 320000)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([ID], [SoLuong], [TongGiaTri], [IDKhuyenMai]) VALUES (1024, 16, 560000, NULL)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([ID], [TrangThai], [NgayLap], [IDDonHang], [TongTien]) VALUES (1023, 1, CAST(N'2023-12-09' AS Date), 1024, 560000)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
INSERT [dbo].[KhuyenMai] ([ID], [TenKM], [GiaTri], [TGBatDau], [TGKetThuc]) VALUES (N'KM001', N'Mừng lễ Nhà Giáo Việt Nam', 10000, CAST(N'2023-11-22' AS Date), CAST(N'2023-12-20' AS Date))
INSERT [dbo].[KhuyenMai] ([ID], [TenKM], [GiaTri], [TGBatDau], [TGKetThuc]) VALUES (N'KM002', N'Mừng lễ Quốc Tế Phụ Nữ', 20000, CAST(N'2023-10-18' AS Date), CAST(N'2023-10-20' AS Date))
INSERT [dbo].[KhuyenMai] ([ID], [TenKM], [GiaTri], [TGBatDau], [TGKetThuc]) VALUES (N'KM003', N'Mừng lễ Valentine', 30000, CAST(N'2023-02-12' AS Date), CAST(N'2023-02-14' AS Date))
INSERT [dbo].[KhuyenMai] ([ID], [TenKM], [GiaTri], [TGBatDau], [TGKetThuc]) VALUES (N'KM004', N'Mừng lễ Noel', 40000, CAST(N'2023-12-22' AS Date), CAST(N'2023-12-25' AS Date))
INSERT [dbo].[KhuyenMai] ([ID], [TenKM], [GiaTri], [TGBatDau], [TGKetThuc]) VALUES (N'KM005', N'Mừng Quốc Tế Thiếu Nhi', 50000, CAST(N'2023-05-29' AS Date), CAST(N'2023-06-01' AS Date))
GO
INSERT [dbo].[NhanVien] ([ID], [HoTen], [Email], [MatKhau], [TinhTrang], [VaiTro]) VALUES (N'anhnl', N'Nguyễn Lan Anh', N'anhnl@gmail.com', N'123', 1, 0)
INSERT [dbo].[NhanVien] ([ID], [HoTen], [Email], [MatKhau], [TinhTrang], [VaiTro]) VALUES (N'binhnc', N'Nguyễn Công Binh', N'binhnc@gmail.com', N'123', 0, 0)
INSERT [dbo].[NhanVien] ([ID], [HoTen], [Email], [MatKhau], [TinhTrang], [VaiTro]) VALUES (N'chiht', N'Hoàng Thị Chi', N'chiht@gmail.com', N'123', 1, 1)
INSERT [dbo].[NhanVien] ([ID], [HoTen], [Email], [MatKhau], [TinhTrang], [VaiTro]) VALUES (N'haint', N'Nguyễn Thanh Hải', N'haint@gmail.com', N'123', 0, 0)
INSERT [dbo].[NhanVien] ([ID], [HoTen], [Email], [MatKhau], [TinhTrang], [VaiTro]) VALUES (N'tinhdt', N'Đỗ Thị Tình', N'tinhdt@gmail.com', N'123', 1, 0)
GO
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [GiaTien], [SoLuong], [HinhAnh], [IDTopping], [IDSize]) VALUES (N'SP001', N'Trà sữa chân trâu đường đen', 30000, 40, N'abc', N'T1', N'S1')
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [GiaTien], [SoLuong], [HinhAnh], [IDTopping], [IDSize]) VALUES (N'SP002', N'Trà sữa chân trâu đường đen', 40000, 40, N'bca', N'T2', N'S2')
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [GiaTien], [SoLuong], [HinhAnh], [IDTopping], [IDSize]) VALUES (N'SP003', N'Trà sữa chân trâu đường đen', 35000, 23, N'mnb', N'T3', N'S1')
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [GiaTien], [SoLuong], [HinhAnh], [IDTopping], [IDSize]) VALUES (N'SP004', N'Trà sữa chân trâu vị Matcha', 45000, 37, N'mnb', N'T1', N'S2')
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [GiaTien], [SoLuong], [HinhAnh], [IDTopping], [IDSize]) VALUES (N'SP005', N'Trà sữa chân trâu vị Matcha', 40000, 28, N'mnb', N'T2', N'S1')
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [GiaTien], [SoLuong], [HinhAnh], [IDTopping], [IDSize]) VALUES (N'SP006', N'Trà sữa chân trâu vị Matcha', 45000, 78, N'mnb', N'T3', N'S2')
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [GiaTien], [SoLuong], [HinhAnh], [IDTopping], [IDSize]) VALUES (N'SP007', N'Trà sữa bá vương Hokkaido', 40000, 50, N'mnb', N'T1', N'S1')
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [GiaTien], [SoLuong], [HinhAnh], [IDTopping], [IDSize]) VALUES (N'SP008', N'Trà sữa bá vương Hokkaido', 45000, 38, N'mnb', N'T2', N'S2')
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [GiaTien], [SoLuong], [HinhAnh], [IDTopping], [IDSize]) VALUES (N'SP009', N'Trà sữa bá vương Hokkaido', 40000, 50, N'mnb', N'T3', N'S1')
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [GiaTien], [SoLuong], [HinhAnh], [IDTopping], [IDSize]) VALUES (N'SP010', N'Trà sữa Kiwi', 45000, 45, N'mnb', N'T1', N'S2')
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [GiaTien], [SoLuong], [HinhAnh], [IDTopping], [IDSize]) VALUES (N'SP011', N'Trà sữa Kiwi', 40000, 50, N'mnb', N'T2', N'S1')
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [GiaTien], [SoLuong], [HinhAnh], [IDTopping], [IDSize]) VALUES (N'SP012', N'Trà sữa hoa Nhài', 40000, 39, N'mnb', N'T1', N'S2')
GO
INSERT [dbo].[Size] ([ID], [TenSize]) VALUES (N'S1', N'M')
INSERT [dbo].[Size] ([ID], [TenSize]) VALUES (N'S2', N'L')
INSERT [dbo].[Size] ([ID], [TenSize]) VALUES (N'S3', N'S')
GO
INSERT [dbo].[Topping] ([ID], [TenTopping]) VALUES (N'T1', N'Trân Châu Trắng')
INSERT [dbo].[Topping] ([ID], [TenTopping]) VALUES (N'T2', N'Trân Châu Đen')
INSERT [dbo].[Topping] ([ID], [TenTopping]) VALUES (N'T3', N'Thạch Dừa')
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([IDDonHang])
REFERENCES [dbo].[DonHang] ([ID])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_SanPham] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([IDSP])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_SanPham]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTDonHang_ChiTietDonHang] FOREIGN KEY([IDCTDonHang])
REFERENCES [dbo].[ChiTietDonHang] ([ID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_CTDonHang_ChiTietDonHang]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTDonHang_HoaDon] FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([ID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_CTDonHang_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTDonHang_NhanVien] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NhanVien] ([ID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_CTDonHang_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTDonHang_SanPham] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([IDSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_CTDonHang_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [fk_KhuyenMai] FOREIGN KEY([IDKhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([ID])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [fk_KhuyenMai]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_DonHang] FOREIGN KEY([IDDonHang])
REFERENCES [dbo].[DonHang] ([ID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_DonHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Size] FOREIGN KEY([IDSize])
REFERENCES [dbo].[Size] ([ID])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Size]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Topping] FOREIGN KEY([IDTopping])
REFERENCES [dbo].[Topping] ([ID])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Topping]
GO
/****** Object:  StoredProcedure [dbo].[SP_deleteDonHang]    Script Date: 11/12/2023 2:25:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_deleteDonHang]
 @maDH int
as
 begin
	if exists (select IDDonHang from HOADON where @maDH = IDDonHang )
		begin
			delete from HOADON where IDDonHang = @maDH
		end
	if exists (select IDDonHang from CHITIETDONHANG where @maDH = IDDonHang )
		begin 
			delete from CHITIETDONHANG where IDDonHang = @maDH
		end
	if exists (select id from DONHANG where @maDH = id )
		begin 
			delete from DONHANG where id = @maDH
		end
 end
GO
/****** Object:  StoredProcedure [dbo].[SP_deleteHoaDon]    Script Date: 11/12/2023 2:25:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_deleteHoaDon]
@maHD int
as
begin 
	if	exists (select IDHoaDon from CHITIETHOADON where @maHD = IDHoaDon)
		begin 
			delete from CHITIETHOADON where @maHD = IDHoaDon
		end
	if exists (select id from HOADON where @maHD = id)
		begin 
			delete from HOADON where  @maHD = id
		end
end
GO
/****** Object:  StoredProcedure [dbo].[SP_LamMoiCTDonHang]    Script Date: 11/12/2023 2:25:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_LamMoiCTDonHang]
@maSp varchar(10),
@soLuong int
as 
begin
	if exists (select * from CHITIETDONHANG where IDDonHang is null)
		begin
			update SanPham set SoLuong += @soLuong where idsp = @maSp
			delete from CHITIETDONHANG where IDSanPham = @maSp and IDDonHang is null
		end
end
GO
