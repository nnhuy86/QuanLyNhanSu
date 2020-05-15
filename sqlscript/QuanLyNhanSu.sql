
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
	MaTDHV  varchar(10),
	BacLuong    int,
	foreign key (MaPB) references PHONGBAN(MaPB),
	foreign key (MaCV) references CHUCVU(MaCV),
	foreign key (MaTDHV) references TRINHDOHOCVAN(MaTDHV),
	foreign key (BacLuong) references LUONG(BacLuong)
)
go

create table HOPDONGLAODONG
(
	MaHD	varchar(10)		primary key,
	MaNV	varchar(10),
	LoaiHD	varchar(5),
	TuNgay  date,
	DenNgay date,
	foreign key (MaNV) references NHANVIEN(MaNV)
)
go

create table NGUOIDUNG
(
	MaND	varchar(10)		primary key,
	MatKhau	varchar(20),
	MaNV    varchar(10)
	foreign key (MaNV) references NHANVIEN(MaNV)
)
go

create table TUYENDUNG
(
	HoTen	varchar(50)		primary key,
	Email	varchar(50),
	SDT     varchar(10),
	KyNang	varchar(200),
	GioiTinh	nvarchar(10)
)
go

/*nhap lieu */
