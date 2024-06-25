

USE Coffe_DB;
SELECT DATE_FORMAT(CURDATE(), '%d/%m/%Y');
CREATE TABLE Quyen (
	ID INT NOT NULL  AUTO_INCREMENT,
	tenQuyen VARCHAR(256),
	PRIMARY KEY (ID)
);

CREATE TABLE ThongTinNguoiDung (
	ID INT  NOT NULL AUTO_INCREMENT,
	hoVaTen Varchar(256),
	ngaySinh Date,
	diaChi VARCHAR(256),
	taiKhoan VARCHAR(256),
	matKhau VARCHAR(256),
	IDQuyen INT,
	FOREIGN KEY(IDQuyen) REFERENCES Quyen(ID),
	PRIMARY KEY (ID)
);
CREATE TABLE NhanVien(
	IDNguoiDung INT,
	luong INT,
	caLam VARCHAR(256),
	FOREIGN KEY(IDNguoiDung) REFERENCES ThongTinNguoiDung(ID)
);

CREATE TABLE VatPham(
	ID INT NOT NULL AUTO_INCREMENT,
	tenVatPham VARCHAR(256),
	donGia VARCHAR(256),
	PRIMARY KEY (ID)
	
);
CREATE TABLE Ban (
	soBan INT NOT NULL AUTO_INCREMENT,
	trangThai VARCHAR(256),
	PRIMARY KEY (soBan)
);
CREATE TABLE HoaDon (
	ID INT NOT NULL AUTO_INCREMENT,
	soBan INT,
	checkIn DATETIME ,
	checkOut DATETIME,
	IDNhanVien INT,
	PRIMARY KEY (ID),
	FOREIGN KEY(soBan) REFERENCES Ban(soBan),
	FOREIGN KEY(IDNhanVien) REFERENCES ThongTinNguoiDung(ID)
);


CREATE TABLE OrderItem(
	IDHoaDon INT,
	IDVatPham INT,
	soLuong INT,
	thoiGianGoiMon TIME,
	FOREIGN KEY(IDVatPham) REFERENCES VatPham(ID),
	FOREIGN KEY(IDHoaDon) REFERENCES HoaDon(ID)
);



INSERT INTO quyen VALUES (1,'admin'), (2, 'Nhân viên');
INSERT INTO thongtinnguoidung( hoVaTen, ngaySinh, diaChi, taiKhoan, matKhau, IDQuyen) VALUES  ('khoa', "2003-11-12", 'Ninh Binh', 'admin','admin',1);
INSERT INTO thongtinnguoidung( hoVaTen, ngaySinh, diaChi, taiKhoan, matKhau, IDQuyen) VALUES  ('Van A', "2003-12-12", 'soc son', 'danThuong','danThuong',2);


INSERT INTO vatpham(tenVatPham, donGia) VALUES('cà phê đen', 20000);
INSERT INTO vatpham(tenVatPham, donGia) VALUES('cà phê sữa', 25000);
INSERT INTO vatpham(tenVatPham, donGia) VALUES('ca pô chi lô', 40000);

	
INSERT INTO ban (soBan, TrangThai) VALUES(1,'trống');
INSERT INTO ban (soBan, TrangThai) VALUES(2,'đang dùng');
INSERT INTO ban (soBan, TrangThai) VALUES(3,'trống');
INSERT INTO ban (soBan,  TrangThai) VALUES(4, 'trống');


INSERT INTO hoadon 	(soBan, checkIn, checkOut, IDNhanVien) 			VALUES (2,"2018-12-12 23:50:55", "2018-12-12 22:50:55", 2);
INSERT INTO orderitem(IDhoaDon, idvatPham, soluong, thoiGianGoiMon) 	VALUES( 1, 2 , 2, "06:45:00");
INSERT INTO orderitem(IDhoaDon, idvatPham, soluong, thoiGianGoiMon) 	VALUES( 1, 3 , 1, "06:45:00");
INSERT INTO orderitem(IDhoaDon, idvatPham, soluong, thoiGianGoiMon) 	VALUES( 1, 1 , 2, "06:45:00");