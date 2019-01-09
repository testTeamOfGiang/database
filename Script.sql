/*
Created		1/4/2019
Modified		1/4/2019
Project		
Model		
Company		
Author		
Version		
Database		MS SQL 7 
*/


Create table [KHOAHOC] (
	[khoahoc_ma] Integer Identity NOT NULL,
	[giangvien] Integer NOT NULL,
	[khoahoc_ten] Nvarchar(30) NOT NULL UNIQUE,
	[khoahoc_gia] Integer NOT NULL,
Primary Key  ([khoahoc_ma])
) 
go

Create table [HOCVIEN] (
	[hocvien_ma] Integer Identity NOT NULL,
	[hocvien_ten] Nvarchar(30) NOT NULL,
	[hovien_tuoi] Integer NOT NULL,
	[hocvien_sdt] Char(11) NOT NULL UNIQUE,
Primary Key  ([hocvien_ma])
) 
go

Create table [HOCVIEN_KHOAHOC] (
	[hocvien_ma] Integer NOT NULL,
	[khoahoc_ma] Integer NOT NULL,
	[dongtien] Bit NOT NULL,
Primary Key  ([hocvien_ma],[khoahoc_ma])
) 
go

Create table [GIANGVIEN] (
	[giangvien_ma] Integer Identity NOT NULL,
	[giangvien_ten] Nvarchar(30) NOT NULL,
	[giangvien_sdt] Char(11) NOT NULL UNIQUE,
Primary Key  ([giangvien_ma])
) 
go


Alter table [HOCVIEN_KHOAHOC] add  foreign key([khoahoc_ma]) references [KHOAHOC] ([khoahoc_ma]) 
go
Alter table [HOCVIEN_KHOAHOC] add  foreign key([hocvien_ma]) references [HOCVIEN] ([hocvien_ma]) 
go
Alter table [KHOAHOC] add  foreign key([giangvien]) references [GIANGVIEN] ([giangvien_ma]) 
go


Set quoted_identifier on
go

Set quoted_identifier off
go


