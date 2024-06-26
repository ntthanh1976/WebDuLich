CREATE DATABASE QlTourDB
GO
USE [QlTourDB]
GO
/****** Object:  Table [dbo].[DiaDiem]    Script Date: 05/11/2022 8:28:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaDiem](
	[MDD] [int] IDENTITY(1,1) NOT NULL,
	[TenDiaDiem] [nvarchar](30) NULL,
 CONSTRAINT [PK_DiaDiem] PRIMARY KEY CLUSTERED 
(
	[MDD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tour]    Script Date: 05/11/2022 8:28:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[MaTour] [int] IDENTITY(1,1) NOT NULL,
	[TenTour] [nvarchar](50) NULL,
	[ChuongTrinh] [ntext] NULL,
	[Songay] [smallint] NULL,
	[Dongia] [int] NULL,
	[MDD] [int] NULL,
	[Hinh] [nvarchar](100) NULL,
 CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED 
(
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[DiaDiem] ON 

INSERT [dbo].[DiaDiem] ([MDD], [TenDiaDiem]) VALUES (1, N'Miền Trung')
INSERT [dbo].[DiaDiem] ([MDD], [TenDiaDiem]) VALUES (2, N'Miền Bắc')
INSERT [dbo].[DiaDiem] ([MDD], [TenDiaDiem]) VALUES (3, N'Miền Tây')
INSERT [dbo].[DiaDiem] ([MDD], [TenDiaDiem]) VALUES (4, N'Tây Nguyên')
INSERT [dbo].[DiaDiem] ([MDD], [TenDiaDiem]) VALUES (5, N'Miền Đông')
SET IDENTITY_INSERT [dbo].[DiaDiem] OFF
SET IDENTITY_INSERT [dbo].[Tour] ON 

INSERT [dbo].[Tour] ([MaTour], [TenTour], [ChuongTrinh], [Songay], [Dongia], [MDD], [Hinh]) VALUES (1, N'Đà Nẵng-Hội An-Huế', N'Chưa có chương trình', 4, 2999000, 1, N'DN_01.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [ChuongTrinh], [Songay], [Dongia], [MDD], [Hinh]) VALUES (2, N'Đà Nẵng-Huế-Phong Nha', N'Chưa có chương trình', 3, 3100000, 1, N'DN_02.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [ChuongTrinh], [Songay], [Dongia], [MDD], [Hinh]) VALUES (3, N'Đà Nẵng-Hội An-Huế-Phong Nha', N'Chưa có chương trình', 5, 3600000, 1, N'DN_03.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [ChuongTrinh], [Songay], [Dongia], [MDD], [Hinh]) VALUES (4, N'Hà Nội-Hạ Long-Chùa Hương', N'Chưa có chương trình', 5, 3500000, 2, N'HNOI_01.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [ChuongTrinh], [Songay], [Dongia], [MDD], [Hinh]) VALUES (5, N'Hà Nội-Hạ Long-Ninh Bình', N'Chưa có chương trình', 4, 3500000, 2, N'HALONG_01.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [ChuongTrinh], [Songay], [Dongia], [MDD], [Hinh]) VALUES (6, N'Hà Nội-Hạ Long-Ninh Bình-Chùa Hương', N'Chưa có chương trình', 6, 4000000, 2, N'HALONG_02.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [ChuongTrinh], [Songay], [Dongia], [MDD], [Hinh]) VALUES (7, N'Hà Nội-Hạ Long-Sap pa', N'Ngày 1: TP.HCM - HÀ NỘI - HẠ LONG    
08:45 sàng xe đưa đón qúi khách tại điểm hẹn, đưa đòan ra sân bay Tân Sơn Nhất đáp chuyến bay (11:30 - 13:30) đi H2 Nội. Xe Vietravel sẽ đón đòan tại sân bay Nội Bài. Xe đưa quí khách đi thẳng Hạ Long. Ăn trưa tại Hải Phòng. Đến Hạ Long, quí khách nhận phòng khách sạn. Ăn tối, tự do dạo biển, tham quan Công Viên Hòang Gia (Chi phí tự túc), nghỉ đêm tại Hạ Long. (T,C) 

Ngày 2: HẠ LONG - HÀ NỘI - SAPA    
Ăn sáng. Xe đưa khách ra bến tàu, xuống ùa du ngọan trên Vịnh Hạ long (4h) tham quan các hang động: Hang Dấu Gỗ, Động Thiên Cung, Hòn Đỉnh Hương, Hòn Gà Chọi... Ăn trưa. Trở về Hà Nội. Ăn tối. Lên tàu LC1 đi SaPa. Ngủ đêm trên tàu (S,T,C)

Ngày 3: LÀO CAI - SAPA  
Sáng đến Lào Cai. Ăn sáng. Lên xe đi SaPa, nhận phòng khách sạn, tham quan Làng Cát Cát. Ăn trưa tại SaPa. Chiều quí khách đi tham quan Thái Bạc, chinh phục Núi Hàm Rồng ngắm cảnh và chụp ảnh thị trấn SaPa trong sương. Ăn tối. Nghỉ đêm tại Sapa. (khách có thể đi xem chợ Tình nếu là tối thứ Bảy).(S,T,C) 

Ngày 4: SAPA - HÀ NỘI  
Ăn sáng. đòan di chuyển về Lao Cai làm thủ tục qua cửa Hà Khẩu đi chợ Trung Quốc mua sắm quà lưu niệm. Ăn trưa tại Hà Khẩu và thưởng thức các món ăn Trung Quốc. Chiều trở về Lào cai, tham quan thị xã Lao Cai và đi chợ. Ăn chiều, 18:00 lên tàu LC2 về Hài Nội. nghỉ đêm trên tàu (S,T,C) 

Ngày 5: HÀ NỘI  
Xe đón khách tại ga Hàng Cỏ và đưa đòan đi ăn sáng. Ver62 nhân phòng khách sạn, quí khách đi tham quan Hà Nội: Lăng Hồ Chủ Tịch, Nhà sàn Bác Hồ, Bảo tàng Hồ CHí Minh, Chùa một cột. Ăn trưa, quí khách thưởng thức đặc sản "Bánh Tôm Hồ Tây". Buổi chiều đòan đi tham quan: Hồ tây, Chùa Tấn Quốc - ngôi chùa cổ được khởi dựng từ năm 541, Đền Quan Thánh, Văn Miếu - nơi thờ tổ Đạo Nho (1070). Ăn chiều, quí khách nghỉ ngơi tự do, xem múa rối nước (Nếu quí khách có yêu cầu) (S,T,C) 

Ngày 6: HÀ NỘI - TP. HCM  
Tham quan Hồ Hòan Kiếm, đền Ngọc Sơn. Khách tự do mua sắm tại các khu phố cổ Hà Nội: Hàng Đào, Hàng Ngang... và chợ Đồng Xuân. Ăn trưa, xe đưa khách ra sân bay Nội Bài đáp chuyến bay (14:30 - 16.30) về TP. HCM. Tạm biệt và chia tay với đòan. Kết thúc chương trình du lịch (S,T)', 6, 3800000, 2, N'SAPA_01.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [ChuongTrinh], [Songay], [Dongia], [MDD], [Hinh]) VALUES (8, N'Châu Đốc-Hà Tiên-Cần Thơ', N'Chưa có chương trình', 4, 1500000, 3, N'HATIEN_01.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [ChuongTrinh], [Songay], [Dongia], [MDD], [Hinh]) VALUES (9, N'Cần Thơ-Sóc Trăng-Bạc Liêu-Cà Mau', N' Ngày thứ 1:
Sáng :  đoàn khởi hành rời TP.HCM đi Châu Đốc. Ghé ngã ba Trung Lương. Quý khách dùng điểm tâm sáng, ghé Cao Lãnh tham quan Xẻo Quýt – một căn cứ quân sự của quân dân ta trong thời kỳ kháng chiến chống Mỹ. Quý khách dùng cơm trưa. 
Chiều : Đến Châu Đốc, nhận phòng, xe đưa đoàn đi tham quan một vòng thị xã Châu Đốc, ghé chợ Châu Đốc. Quý khách dùng cơm chiều. Sau đó quý khách đi hành hương chùa Bà Châu Đốc, lăng Thoại Ngọc Hầu, Chùa Tây An 
Tối :     Tự do nghĩ đêm tại Châu Đốc.

Ngày thứ 2:  
Sáng : Quý khách dùng điểm tâm sáng, đoàn khởi hành đi Hà Tiên. Trên đường ghé Châu Đốc – Xà Tôn, khách thưởng thức đặc sản Thốt Nốt. Đến Hà Tiên, quý khách dùng cơm trưa.
Chiều : Đòan tham quan chùa Tam Bửu, lăng Mạc Cửu, thạch động Thôn Vân, tắm biển Mũi Nai, ghé chợ Hà Tiên. Nhận phòng khách sạn. Quý khách dùng cơm chiều 
Tối :     Tự do nghĩ đêm tại Hà Tiên.

Ngày thứ 3 :
Sáng : Quý khách dùng điểm tâm sáng, đoàn rời Hà Tiên đi Hòn Chông tham quan hang cá Sấu, chùa Hang, Hòn Phụ Tử, khởi hành đi Thốt Nốt, quý khách dùng cơm trưa
Chiều : Đòan đến Thốt Nốt, tham quan vườn cò Băng Lăng. Đoàn về Cần Thơ, đến Cần Thơ nhận phòng, Quý khách dùng cơm chiều và tham quan Bến Ninh Kiều về đêm.
Tối : Tự do nghĩ đêm tại Cần Thơ . 

Ngày thứ 4 :
Sáng : Quý khách dùng điểm tâm sáng, sau đó đoàn đi Sóc Trăng tham quan chùa Dơi, chùa Đất Sét – kiến trúc độc đáo bằng đất sét thô với những cặp đèn cầy khổng lồ có thể đốt liên tục suốt 35 năm (cặp nhỏ), 70 năm (cặp lớn). Tham quan nhà công tử Bạc Liêu, quý khách dùng cơm trưa tại Sóc Trăng.
Chiều : Khởi hành đi Cà Mau. Đến Cà Mau, nhận phòng khách sạn – ăn chiều và thưởng thức ca cổ tại nhà hàng Vân Thủy
Tối : Tự do 

Ngày thứ 5 :
Sáng : Quý khách dùng điểm tâm sáng, tham quan Sân chim cà Mau, đoàn tiếp tục tham quan Rừng U Minh
Chiều : dùng cơm trưa, khởi hành về TP.HCM, trên đường về đoàn ghé tham quancầu treo Mỹ Thuận, ghé một lò nem thưởng thức đặc sản nem Lai Vung. Đoàn dùng cơm chiều, tiếp tục khởi hành về Tp.HCM, đến TP.HCM, chia tay , hẹn ngày tái ngộ', 5, 1800000, 3, N'CANTHO_01.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [ChuongTrinh], [Songay], [Dongia], [MDD], [Hinh]) VALUES (10, N'Hà Tiên-Phú Quốc', N'Chưa có chương trình', 4, 2300000, 3, N'HATIEN_02.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [ChuongTrinh], [Songay], [Dongia], [MDD], [Hinh]) VALUES (11, N'Phú Quốc', N'Chưa có chương trình', 3, 2100000, 3, N'PHUQUOC_01.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [ChuongTrinh], [Songay], [Dongia], [MDD], [Hinh]) VALUES (12, N'Buôn Ma Thuột', N'Chưa có chương trình', 3, 1560000, 4, N'BMT_01.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [ChuongTrinh], [Songay], [Dongia], [MDD], [Hinh]) VALUES (13, N'BMT - Gia Lai - Pleiku', N'Chưa có chương trình', 4, 2000000, 4, N'BMT_02.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [ChuongTrinh], [Songay], [Dongia], [MDD], [Hinh]) VALUES (14, N'Nha Trang -Biển xanh nắng vàng', N'NGÀY 1:	TPHCM – NHA TRANG.
Sáng :	05h30: Xe và HDV đón khách tại điểm hẹn – Khởi hành đi Nha Trang – Ăn sáng tại KDL Văn Thánh – Tiếp tục lộ trình đi Nha Trang – Ăn trưa và dạo biển Cà Ná
Chiều :	Theo cung đường mới Nguyễn Tất Thành ngắm Bãi Dài ( bãi biển đẹp và hoang sơ trong Vịnh Cam Ranh ). Đến Nha Trang – Nhận phòng khách sạn – Ăn chiều – Tự do dạo phố biển về đêm.
NGÀY 2:	NHA TRANG – THÁC YANGBAY .
Sáng :	Ăn sáng – Khởi hành đi Diên khánh – Tham quan và tắm thác Yangbay (một trong những thác đẹp ở vùng ven biển Việt Nam) – Thưởng thức đặc sản Yangbay: Mối chúa tiềm thuốc bắc, cua đá Yangbay, nhím, cheo…(chi phí tự túc ). Ăn trưa. Về lại Khách sạn . Nghỉ ngơi 
Chiều :	Tắm bùn khoáng tại Trung tâm bùn khoáng Tháp Bà . Ăn chiều - Tối sinh hoạt tự do – Nghỉ đêm
NGÀY 3:	NHA TRANG – ĐẦM MÔN.
Sáng :	Ăn sáng – Khởi hành đi Vịnh Văn Phong ( Một trong những vịnh đẹp và có giá trị kinh tế quan trọng của Khánh Hòa, trên đường ngắm rừng bần cổ thụ, đồi cát….) – Xuống thuyền tham quan, lặn biển ( snorkel ) ngắm san hô tại bãi Me – Vào bãi tắm Xuân Đừng( bãi biển độc đáo với nước ngọt dưới lớp cát ) – Tự do tắm biển, thưởng thức hải sản ( chi phí tự túc ). Ăn trưa tại Khách sạn Đầm Môn
Chiều :	Về Nha Trang . Tham quan và mua sắm tại Trung tâm thương mại Chợ Đầm – Ăn tối – Sinh hoạt tự do – Nghỉ đêm.
NGÀY 4:	NHA TRANG –- TPHCM
Sáng :	06h30 : Trả phòng - Ăn sáng – Khởi hành về TP.HCM – Ghé Phan Rang mua nho, mật nho, tỏi…. Ăn trưa tại Phan Thiết 
Chiều :	Tiếp tục lộ trình về TP.HCM – Về đến điểm đón – Kết thúc chuyến tham quan.

CHI PHÍ : 1.319.000 Đ / KHÁCH ( ĐOÀN 11 KHÁCH )
Bao gồm :
-	Xe tham quan Mer 16 chỗ, máy lạnh.
-	Ăn theo tiêu chuẩn: 85.000đ/ ngày / người .
-	Ở KS 2 sao : 2 – 3 người/ phòng .
-	Nước uống Sapuwa 2 chai 0.5lít/ người / ngày .
-	Bảo hiểm du lịch 10.000.000đ/ người 
-	HDV, vé tham quan, vé tắm bùn khoáng, nón, khăn, thuyền,  ghế , tắm nước ngọt.
	Chưa bao gồm : 
-	Thuế VAT .
-	Chi phí cá nhân ngoài chương trình.
Mọi chi tiết vui lòng liên hệ gặp Mạnh Duy : 9232149 – 2910113 – 0903 888 420', 4, 1600000, 1, N'NHATRANG_01.jpg')
SET IDENTITY_INSERT [dbo].[Tour] OFF
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_DiaDiem] FOREIGN KEY([MDD])
REFERENCES [dbo].[DiaDiem] ([MDD])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [FK_Tour_DiaDiem]
GO
