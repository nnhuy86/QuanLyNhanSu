use master
go

create database QUANLYNHANSU
go


use QUANLYNHANSU


create table PHONGBAN
(
	MaPB	varchar(10)		primary key,
	TenPB	nvarchar(50),
	DiaChi	nvarchar(30),
	SDTPB   varchar(10)
)
go

create table CHUCVU
(
	MaCV	varchar(10)		primary key,
	TenCV	nvarchar(30),
)
go

create table TRINHDOHOCVAN
(
	MaTDHV	varchar(10)		primary key,
	LoaiTrinhDo  varchar(20),
	TenTDHV	nvarchar(50),
	CNganh	nvarchar(30)
)
go

create table LUONG
(
	BacLuong	int		primary key,
	LuongCB		bigint,
	HSLuong	    bigint,
	HSPhuCap    bigint
)
go

create table HOPDONGLAODONG
(
	MaHD	varchar(10)		primary key,
	LoaiHD	varchar(5),
	TuNgay  date,
	DenNgay date,
)
go

create table NHANVIEN
(
	MaNV	varchar(10)		primary key,
	HoTen	nvarchar(50),
	NgaySinh	date,
	QueQuan	nvarchar(50),
	GioiTinh	nvarchar(10),
	DanToc	nvarchar(20),
	SoDienThoai	varchar(10),
	MaPB	varchar(10),
	MaCV    varchar(10),
	MaHD	varchar(10),
	MaTDHV  varchar(10),
	BacLuong    int,	
	foreign key (MaPB) references PHONGBAN(MaPB),
	foreign key (MaCV) references CHUCVU(MaCV),
	foreign key (MaHD) references HOPDONGLAODONG(MaHD),
	foreign key (MaTDHV) references TRINHDOHOCVAN(MaTDHV),
	foreign key (BacLuong) references LUONG(BacLuong)
)
go

create table NGUOIDUNG
(
	MaNV    varchar(10)		primary key,
	MatKhau	varchar(20),
	foreign key (MaNV) references NHANVIEN(MaNV)
)
go

create table TUYENDUNG
(
	Email	varchar(50)   primary key,
	HoTen	varchar(50),		
	SDT     varchar(10),
	KyNang	varchar(200),
	GioiTinh	nvarchar(10)
)
go



/*nhap lieu */

/* nhap lieu table PHONGBAN */

insert into PHONGBAN
values ('PB01', 'IT', 'so 8 Nguyen Hue, Quan 1, HCM', '09023456')

insert into PHONGBAN
values ('PB02', 'Ke Toan', 'so 8 Nguyen Hue, Quan 1, HCM', '09023457')

insert into PHONGBAN
values ('PB03', 'kinh Doanh', 'so 8 Nguyen Hue, Quan 1, HCM', '09023458')

insert into PHONGBAN
values ('PB04', 'ky Thuat', 'so 8 Nguyen Hue, Quan 1, HCM', '09023459')

insert into PHONGBAN
values ('PB05', 'Thiet Ke', 'so 8 Nguyen Hue, Quan 1, HCM', '09023460')

insert into PHONGBAN
values ('PB06', 'Hanh Chinh', 'so 8 Nguyen Hue, Quan 1, HCM', '09023461')

insert into PHONGBAN
values ('PB07', 'Tai Chinh', 'so 8 Nguyen Hue, Quan 1, HCM', '09023462')

insert into PHONGBAN
values ('PB08', 'San Xuat', 'so 144 XVNT, Binh Thanh, HCM', '09023463')
go

insert into PHONGBAN
values ('PB09', 'Quan Ly Chat Luong', 'so 8 Nguyen Hue, Quan 1, HCM', '09023464')

insert into PHONGBAN
values ('PB10', 'Mua Hang', 'so 8 Nguyen Hue, Quan 1, HCM', '09023465')
go

/* nhap lieu table CHUCVU */
insert into CHUCVU
values ('GDIT01', 'Giam Doc IT')
go

insert into CHUCVU
values ('GDIT02', 'P.Giam Doc IT')
go

insert into CHUCVU
values ('GDIT03', 'Truong Phong Ke Toan')
go

insert into CHUCVU
values ('GDIT04', 'Truong Phong Kinh Doanh')
go

insert into CHUCVU
values ('GDIT05', 'Truong Phong QLCL')
go

insert into CHUCVU
values ('GDIT06', 'Nhan Vien')
go

/* nhap lieu table HOPDONGLAODONG */
insert into HOPDONGLAODONG
values ('HD01', 'LHD01', '2020/05/01', '2022/04/30')
go

insert into HOPDONGLAODONG
values ('HD02', 'LHD02', '2020/02/01', '2022/01/30')
go

insert into HOPDONGLAODONG
values ('HD03', 'LHD03', '2020/01/01', '2021/12/31')
go

insert into HOPDONGLAODONG
values ('HD04', 'LHD03', '2020/01/01', '2021/12/31')
go

insert into HOPDONGLAODONG
values ('HD05', 'LHD03', '2020/01/01', '2021/12/12')
go


/* nhap lieu table TRINHDOVANHOA */ 
insert into TRINHDOHOCVAN
values ('TS01', 'Thac Si', 'Thac Si CNTT', 'Phan Mem')

insert into TRINHDOHOCVAN
values ('CN01', 'Dai Hoc','Cu Nhan QTKD', 'Quan Tri Kinh Doanh')
go

insert into TRINHDOHOCVAN
values ('CN02', 'Dai Hoc' ,'Cu Nhan KT', 'Ke Toan')
go

insert into TRINHDOHOCVAN
values ('CN03', 'Dai Hoc' ,'Cu Nhan CNTT', 'Phan Mem')
go

/* nhap lieu table LUONG */
insert into LUONG
values (7, 20000000, 5000000, 10000000)
go

insert into LUONG
values (5, 18000000, 4000000, 9000000)
go

insert into LUONG
values (3, 16000000, 3000000, 8000000)
go

insert into LUONG
values (1, 14000000, 2000000, 7000000)
go

/* nhap lieu table NHANVIEN */
insert into NHANVIEN
values ('admin01', 'Nguyen Ngoc Huy', '1986/08/10', 'Ninh Thuan', 'Nam',
 'Kinh', '0909000721', 'PB01', 'GDIT01', 'HD01' , 'TS01', 7 )
go

insert into NHANVIEN
values ('NV01', 'Ngo Tan Sang', '1994/08/12', 'TPHCM', 'Nam', 'Kinh', 
'0909032475', 'PB01', 'GDIT02', 'HD01' ,'TS01', 7 )
go

insert into NHANVIEN
values ('NV02', 'Nguyen Van Thang', '1992/07/10', 'Dong Nai', 'Nam', 
'Kinh', '0909358412', 'PB02', 'GDIT03', 'HD02' ,'CN01', 7 )
go

insert into NHANVIEN
values ('NV03', 'Tran Bao Ngoc', '1990/09/12', 'Long An', 'Nu', 'Kinh',
 '0909785460', 'PB03', 'GDIT03', 'HD03' ,'CN02', 5 )
go

insert into NHANVIEN
values ('NV04', 'Tran Nhu Thanh', '1991/02/11', 'Tien Giang ', 'Nu',
 'Kinh', '0937546829', 'PB04', 'GDIT06', 'HD04' ,'CN03', 5 )
go

insert into NHANVIEN
values ('NV05', 'Do Dinh Long', '1985/01/09', 'Can Tho ', 'Nam', 'Kinh',
 '0937998745', 'PB05', 'GDIT06', 'HD05' ,'CN03', 5 )
go

insert into NHANVIEN
values ('NV06', 'Nguyen Dinh Khiem', '1989/04/10', 'Ca Mau ', 'Nam', 
'Kinh', '0937871692', 'PB06', 'GDIT06', 'HD02' ,'CN03', 5 )
go

insert into NHANVIEN
values ('NV07', 'Tran Nhu Thanh', '1991/02/11', 'Tien Giang ', 'Nu', 
'Kinh', '0937546829', 'PB07', 'GDIT06', 'HD03' ,'CN03', 5 )
go

insert into NHANVIEN
values ('NV08', 'Duong Thanh Duy', '1983/10/12', 'Dong Thap ', 'Nam', 
'Kinh', '0947895325', 'PB08', 'GDIT06', 'HD04' ,'CN03', 5 )
go

insert into NHANVIEN
values ('NV09', 'Dang Ngoc Han', '1994/09/01', 'Kien Giang ', 'Nu', 
'Kinh', '0947321800', 'PB09', 'GDIT06', 'HD04' , 'CN03', 3 )
go

insert into NHANVIEN
values ('NV10', 'Pham Van Tai', '1991/07/05', 'Kien Giang ', 'Nam',
 'Kinh', '0947980123', 'PB10', 'GDIT06', 'HD05' ,'CN03', 3 )
go

/* nhap lieu table NGUOIDUNG */
insert into NGUOIDUNG
values ('admin01', '12345')
go

insert into NGUOIDUNG
values ('NV01', '12345')
go

insert into NGUOIDUNG
values ('NV02', '12345')
go

insert into NGUOIDUNG
values ('NV03', '12345')
go

insert into NGUOIDUNG
values ('NV04', '12345')
go

insert into NGUOIDUNG
values ('NV05', '12345')
go

insert into NGUOIDUNG
values ('NV06', '12345')
go

insert into NGUOIDUNG
values ('NV07', '12345')
go

insert into NGUOIDUNG
values ('NV08', '12345')
go

insert into NGUOIDUNG
values ('NV09', '12345')
go

insert into NGUOIDUNG
values ('NV10', '12345')
go

/* nhap lieu bang TUYENDUNG */
insert into TUYENDUNG
values ('luu@gmail.com', 'Tran Thi Luu', '0938555612', 'lap trinh C/C++', 'nu')
go

insert into TUYENDUNG
values ('thanh@gmail.com', 'Nguyen Thi Thanh', '0938555613', 'lap trinh java', 'nu')
go

insert into TUYENDUNG
values ('nhi@gmail.com', 'Tran Tuyet Nhi', '0938555614', 'lap trinh python', 'nu')
go

insert into TUYENDUNG
values ('hai@gmail.com', 'Nguyen Van Hai', '0938555615', 'lap trinh php', 'nam')
go

insert into TUYENDUNG
values ('muoi@gmail.com', 'Tran Van Muoi', '0938555616', 'lap trinh C/C++', 'nam')
go

/* SQL truy van nghiep vu quan ly nhan su */
/*1.	Lập danh sách nhân viên có hợp đồng lao động từ ngày 2020/01/05 */
 SELECT NHANVIEN.HoTen
 FROM NHANVIEN, HOPDONGLAODONG
 WHERE NHANVIEN.MaHD = HOPDONGLAODONG.MaHD
	and HOPDONGLAODONG.TuNgay > '2020/01/05';
  
/*2.Thông tin nhân viên có trình độ trên đại học*/
SELECT nv.*
FROM NHANVIEN nv, TRINHDOHOCVAN tdhv
WHERE nv.MaTDHV = tdhv.MaTDHV
 and (tdhv.LoaiTrinhDo Like '%Thac Si%' or tdhv.LoaiTrinhDo Like '%Tien Si%')

/*3.Cho biết chức vụ của nhân viên có mã nhân viên NV03 */
SELECT cv.TenCV
FROM CHUCVU cv, NHANVIEN nv
WHERE nv.MaCV = cv.MaCV and nv.MaNV = 'NV03'

/*4.Cho biết bậc lương của các nhân viên có chức vụ là trưởng phòng */
SELECT l.BacLuong
FROM LUONG l, NHANVIEN nv, CHUCVU cv
WHERE nv.BacLuong = l.BacLuong and nv.MaCV = cv.MaCV
and TenCV Like '%truong phong%'

/*5.Cho biết chuyên ngành của các nhân viên có loại trình độ học vấn đại học*/
SELECT tdhv.CNganh
FROM TRINHDOHOCVAN tdhv, NHANVIEN nv
WHERE nv.MaTDHV = tdhv.MaTDHV and tdhv.LoaiTrinhDo Like '%dai hoc%'

/*6.Cho biết hệ số phụ cấp của nhân viên ở phòng ban có mã PB05*/
SELECT l.HSPhuCap
FROM LUONG l, NHANVIEN nv, PHONGBAN pb
WHERE l.BacLuong = nv.BacLuong and nv.MaPB = pb.MaPB
and pb.MaPB = 'PB05'

/*7.Liệt kê danh sách các nhân viên của phòng ban mã PB02*/
SELECT MaNV, HoTen
FROM NHANVIEN 
WHERE MaPB = 'PB02'

/*8.Cho biết lương cơ bản của nhân viên có trình độ học vấn đại học*/
SELECT l.LuongCB
FROM LUONG l, TRINHDOHOCVAN tdhv, NHANVIEN nv
WHERE nv.BacLuong = l.BacLuong and nv.MaTDHV = tdhv.MaTDHV
and  tdhv.LoaiTrinhDo Like '%dai hoc'

/*9.Lập danh sách nhân viên hết hạn hợp đồng ngày 31/12/2021*/
SELECT nv.*
FROM NHANVIEN nv, HOPDONGLAODONG hdld
WHERE nv.MaHD = hdld.MaHD 
and hdld.DenNgay = '2021/12/31'

/*10.Cho biết tên chức vụ của các nhân viên có trình độ học vấn trên đại học*/
SELECT cv.TenCV, nv.HoTen
FROM CHUCVU cv, NHANVIEN nv, TRINHDOHOCVAN tdhv
WHERE cv.MaCV = nv.MaCV and nv.MaTDHV = tdhv.MaTDHV
and  tdhv.LoaiTrinhDo Like 'Thac Si' or tdhv.LoaiTrinhDo Like 'Tien Si'
