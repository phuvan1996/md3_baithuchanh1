Create Database QuanLyDiemSV CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
use QuanLyDiemSV;
/*=============DANH MUC KHOA==============*/
Create table DMKhoa(
	MaKhoa char(2) primary key,
	TenKhoa nvarchar(30)not null
);
/*==============DANH MUC SINH VIEN============*/
Create table DMSV(
MaSV char(3) not null primary key,
HoSV nvarchar(15) not null,
TenSV nvarchar(7)not null,
Phai nchar(7),
NgaySinh datetime not null,
NoiSinh nvarchar (20),
MaKhoa char(2),
HocBong float
);
/*===================MON HOC========================*/
create table DMMH(
MaMH char (2) not null,
TenMH nvarchar (25)not null,
SoTiet tinyint,
Constraint DMMH_MaMH_pk primary key(MaMH)
);
/*=====================KET QUA===================*/
Create table KetQua
(
MaSV char(3) not null,
MaMH char (2)not null ,
LanThi tinyint,
Diem decimal(4,2),
Constraint KetQua_MaSV_MaMH_LanThi_pk primary key (MaSV,MaMH,LanThi)
);
/*==========================TAO KHOA NGOAI==============================*/
Alter table dmsv
add Constraint DMKhoa_MaKhoa_fk foreign key (MaKhoa)
References DMKhoa (MaKhoa);
Alter table KetQua
add constraint KetQua_MaSV_fk foreign key (MaSV) references DMSV (MaSV);
Alter table KetQua
add constraint DMMH_MaMH_fk foreign key (MaMH) references DMMH (MaMH);
/*==================NHAP DU LIEU====================*/
/*==============NHAP DU LIEU DMMH=============*/
Insert into DMMH(MaMH,TenMH,SoTiet)
values('01','Cơ Sở Dữ Liệu',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('02','Trí Tuệ Nhân Tạo',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('03','Truyền Tin',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('04','Đồ Họa',60);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('05','Văn Phạm',60);
/*==============NHAP DU LIEU DMKHOA=============*/
Insert into DMKhoa(MaKhoa,TenKhoa)
values('AV','Anh Văn');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TH','Tin Học');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TR','Triết');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('VL','Vật Lý');
/*==============NHAP DU LIEU DMSV=============*/
Insert into DMSV
values('A01','Nguyễn Thị','Hải','Nữ','1990-03-20','Hà Nội','TH',130000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A02','Trần Văn','Chính','Nam','1992-12-24','Bình Định','VL',150000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A03','Lê Thu Bạch','Yến','Nữ','1990-02-21','TP Hồ Chí Minh','TH',170000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A04','Trần Anh','Tuấn','Nam','1990-12-20','Hà Nội','AV',80000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B01','Trần Thanh','Mai','Nữ','1991-08-12','Hải Phòng','TR',0);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B02','Trần Thị Thu','Thủy','Nữ','1991-01-02','TP Hồ Chí Minh','AV',0);
/*==============NHAP DU LIEU BANG KET QUA=============*/
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',1,3);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','02',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','03',1,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',1,4.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',2,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','03',1,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','05',1,9);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',1,2);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',2,4);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A04','05',2,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','01',1,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','02',1,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','04',1,10);
select *from dmsv;
-- ====================================================================================================================================================
--  Liệt kê danh sách sinh viên, gồm các thông tin sau: Mã sinh viên, Họ sinh viên, Tên sinh viên, Học bổng. Danh sách sẽ được sắp xếp theo thứ tự Mã 
-- sinh viên tăng dần

select dm.masv,dm.HoSV,dm.TenSV,dm.HocBong
from dmsv dm
order by dm.masv asc;

-- Danh sách các sinh viên gồm thông tin sau: Mã sinh viên, họ tên sinh viên, Phái, Ngày sinh. Danh sách sẽ được sắp xếp theo thứ tự Nam/Nữ.


select dm.MaSV,dm.HoSV,dm.TenSV,dm.Phai,dm.NgaySinh
from dmsv dm
order by dm.Phai;
--  Thông tin các sinh viên gồm: Họ tên sinh viên, Ngày sinh, Học bổng. Thông tin sẽ được sắp xếp theo thứ tự Ngày sinh tăng dần và Học bổng giảm dần.

select dm.HoSV,dm.TenSV,dm.NgaySinh,dm.HocBong
from dmsv dm
order by dm.NgaySinh,dm.HocBong desc;

-- Danh sách các môn học có tên bắt đầu bằng chữ T, gồm các thông tin: Mã môn, Tên môn, Số tiết.
select * from dmmh;
select *
from dmmh mh
where mh.TenMH like 'T%';

--  Liệt kê danh sách những sinh viên có chữ cái cuối cùng trong tên là I, gồm các thông tin: Họ tên sinh viên, Ngày sinh, Phái.

select dm.HoSV,dm.TenSV,dm.NgaySinh,dm.Phai
from dmsv dm
where dm.TenSV like '%i';

-- 6. Danh sách những khoa có ký tự thứ hai của tên khoa có chứa chữ N, gồm các thông tin: Mã khoa, Tên khoa.
select * from dmkhoa;
select *
from dmkhoa dmk
where dmk.TenKhoa like '_N%';

-- Liệt kê những sinh viên mà họ có chứa chữ Thị

select dm.HoSV,dm.TenSV
from dmsv dm
where dm.hoSV  like '%thị%';

-- Cho biết danh sách các sinh viên có học bổng lớn hơn 100,000, gồm các 
-- thông tin: Mã sinh viên, Họ tên sinh viên, Mã khoa, Học bổng. Danh sách sẽ
-- được sắp xếp theo thứ tự Mã khoa giảm dần;

select dm.MaSV,dm.HoSV,dm.TenSV,dm.MaKhoa,dm.HocBong
from dmsv dm
 where dm.HocBong >=100000 
 order by dm.MaKhoa desc;
 
 -- 9. Liệt kê các sinh viên có học bổng từ 150,000 trở lên và sinh ở Hà Nội, gồm các thông tin: Họ tên sinh viên, Mã khoa, Nơi sinh, Học bổng.

select dm.HoSV,dm.TenSV,dm.MaKhoa,dm.NoiSinh,dm.HocBong
from dmsv dm
where dm.HocBong >150000
group by dm.NoiSinh like '%hanoi%';

-- 10.Danh sách các sinh viên của khoa Anh văn và khoa Vật lý, gồm các thông tin: Mã sinh viên, Mã khoa, Phái.

select dm.MaSV,dm.MaKhoa,dm.Phai
from dmsv dm
where dm.MaKhoa = 'vl' or dm.MaKhoa = 'av' ;

-- 11.Cho biết những sinh viên có ngày sinh từ ngày 01/01/1991 đến ngày 
-- 05/06/1992 gồm các thông tin: Mã sinh viên, Ngày sinh, Nơi sinh, Học  bổng

select dm.MaSV,dm.NgaySinh,dm.NoiSinh,dm.HocBong
from dmsv dm
where dm.NgaySinh between('1991-01-01')and('1992-06-05');

-- 12.Danh sách những sinh viên có học bổng từ 80.000 đến 150.000, gồm các thông tin: Mã sinh viên, Ngày sinh, Phái, Mã khoa.

select dm.MaSV,dm.NgaySinh,dm.Phai,dm.MaKhoa
from dmsv dm
where dm.HocBong between 80000 and 150000;

-- 13.Cho biết những môn học có số tiết lớn hơn 30 và nhỏ hơn 45, gồm các thông tin: Mã môn học, Tên môn học, Số tiết.

select *
from dmmh
where dmmh.SoTiet between 30 and 45;

-- 14.Liệt kê những sinh viên nam của khoa Anh văn và khoa tin học, gồm các thông tin: Mã sinh viên, Họ tên sinh viên, tên khoa, Phái.

select sv.MaSV,sv.HoSV,sv.TenSV,k.tenkhoa,sv.Phai
from dmsv sv join dmkhoa k on sv.MaKhoa = k.MaKhoa
where sv.Phai = 'nam' and sv.MaKhoa = 'av' or sv.MaKhoa = 'th';

-- 15.Liệt kê những sinh viên nữ, tên có chứa chữ N

select sv.TenSV
from dmsv sv
where sv.TenSV like '%N%' and sv.Phai = 'nu';

-- 16 .Danh sách sinh viên có nơi sinh ở Hà Nội và sinh vào tháng 02, gồm các thông tin: Họ sinh viên, Tên sinh viên, Nơi sinh, Ngày sinh.

select sv.HoSV,sv.TenSV,sv.NoiSinh,sv.NgaySinh
from dmsv sv
where sv.NoiSinh like 'ha noi' and month(sv.ngaysinh)='02';

-- 17.Cho biết những sinh viên có tuổi lớn hơn 20, thông tin gồm: Họ tên sinh viên, Tuổi,Học bổng

select sv.HoSV,sv.TenSV,sv.HocBong,year(now()) - year(ngaysinh) as tuoi
from dmsv sv
where year(now()) - year(ngaysinh) >20;

-- 18.Danh sách những sinh viên có tuổi từ 20 đến 25, thông tin gồm: Họ tên sinh viên, Tuổi, Tên khoa;

select sv.HoSV,sv.TenSV,year(now()) - year(ngaysinh) as tuoi,k.TenKhoa
from dmsv sv join dmkhoa k on sv.MaKhoa = k.MaKhoa
where year(now()) - year(ngaysinh) between 20 and 25;

-- 19.Danh sách sinh viên sinh vào mùa xuân năm 1990, gồm các thông tin: Họ tên sinh viên,Phái, Ngày sinh.

select sv.HoSV,sv.TenSV,sv.Phai,sv.NgaySinh
from dmsv sv
where year(ngaysinh) = 1990 and month(ngaysinh) between 1 and 3;

-- 20.Cho biết thông tin về mức học bổng của các sinh viên, gồm: Mã sinh viên, Phái, Mã khoa, Mức học bổng. Trong đó, mức học bổng sẽ hiển thị là “Học 
-- bổng cao” nếu giá trị của field học bổng lớn hơn 500,000 và ngược lại hiển thị là “Mức trung bình”

select sv.MaSV,sv.Phai,sv.MaKhoa, case sv.HocBong when HocBong>500000 then 'hoc bong cao' else 'trung binh' end as 'muc hoc bong'
from dmsv sv;

-- 21.Cho biết tổng số sinh viên của toàn trường
select count(sv.MaSV)
from dmsv sv;
	
    -- 22.Cho biết tổng sinh viên và tổng sinh viên nữ;
    
select count(sv.MaSV),sum(case when sv.Phai = 'nu' then 1 else 0 end) as 'so sinh vien nu'
from dmsv sv;

-- 23.Cho biết tổng số sinh viên của từng khoa.

select sv.MaKhoa , count(sv.MaSV) as 'tong so sinh vien cua tung khoa'
from dmsv sv
group by sv.MaKhoa;

-- 24.Cho biết số lượng sinh viên học từng môn

select count(mh.MaMH) as 'số lượng sinh viên học từng môn',TenMH
from dmmh mh join ketqua k on mh.MaMH = k.MaMH
group by mh.MaMH;

-- 25.Cho biết số lượng môn học mà sinh viên đã học(tức tổng số môn học có trong bảng kq)

