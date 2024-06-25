-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2024 at 01:22 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffe_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ban`
--

CREATE TABLE `ban` (
  `soBan` int(11) NOT NULL,
  `trangThai` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `ban`
--

INSERT INTO `ban` (`soBan`, `trangThai`) VALUES
(1, 1),
(2, 0),
(3, 0),
(4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `ID` int(11) NOT NULL,
  `soBan` int(11) DEFAULT NULL,
  `checkIn` datetime DEFAULT NULL,
  `checkOut` datetime DEFAULT NULL,
  `idNhanVien` int(11) DEFAULT NULL,
  `isPayed` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`ID`, `soBan`, `checkIn`, `checkOut`, `idNhanVien`, `isPayed`) VALUES
(1, 2, '2018-12-12 23:50:55', NULL, NULL, 0),
(2, 1, '2023-12-15 22:03:00', '2023-12-15 22:03:54', 2, 1),
(3, 3, '2023-12-15 22:04:04', NULL, NULL, 0),
(4, 4, '2023-12-15 22:04:20', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `IDHoaDon` int(11) DEFAULT NULL,
  `IDVatPham` int(11) DEFAULT NULL,
  `soLuong` int(11) DEFAULT NULL,
  `thoiGianGoiMon` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`IDHoaDon`, `IDVatPham`, `soLuong`, `thoiGianGoiMon`) VALUES
(1, 2, 2, '06:45:00'),
(1, 3, 1, '06:45:00'),
(1, 1, 2, '06:45:00'),
(2, 1, 3, '22:02:42'),
(2, 2, 2, '22:02:49'),
(2, 3, 1, '22:02:52'),
(3, 1, 1, '22:04:00'),
(3, 2, 1, '22:04:02'),
(4, 2, 1, '22:04:16'),
(4, 3, 1, '22:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `quyen`
--

CREATE TABLE `quyen` (
  `ID` int(11) NOT NULL,
  `tenQuyen` varchar(256) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `quyen`
--

INSERT INTO `quyen` (`ID`, `tenQuyen`) VALUES
(1, 'admin'),
(2, 'Nhân viên');

-- --------------------------------------------------------

--
-- Table structure for table `thongtinnguoidung`
--

CREATE TABLE `thongtinnguoidung` (
  `ID` int(11) NOT NULL,
  `hoVaTen` varchar(256) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ngaySinh` date DEFAULT NULL,
  `diaChi` varchar(256) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `taiKhoan` varchar(256) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `matKhau` varchar(256) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `IDQuyen` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `thongtinnguoidung`
--

INSERT INTO `thongtinnguoidung` (`ID`, `hoVaTen`, `ngaySinh`, `diaChi`, `taiKhoan`, `matKhau`, `IDQuyen`) VALUES
(1, 'khoa', '2003-11-12', 'Ninh Binh', 'admin', 'admin', 1),
(2, 'Van A', '2003-12-12', 'soc son', 'danThuong', 'danThuong', 2),
(3, 'Van Q', '2003-12-12', 'q', 'q', 'q', 2);

-- --------------------------------------------------------

--
-- Table structure for table `vatpham`
--

CREATE TABLE `vatpham` (
  `ID` int(11) NOT NULL,
  `tenVatPham` varchar(256) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `donGia` varchar(256) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `vatpham`
--

INSERT INTO `vatpham` (`ID`, `tenVatPham`, `donGia`) VALUES
(1, 'cà phê đen', '20000'),
(2, 'cà phê sữa', '25000'),
(3, 'ca pô chi lô', '40000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ban`
--
ALTER TABLE `ban`
  ADD PRIMARY KEY (`soBan`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `soBan` (`soBan`),
  ADD KEY `idNhanVien` (`idNhanVien`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD KEY `IDVatPham` (`IDVatPham`),
  ADD KEY `IDHoaDon` (`IDHoaDon`);

--
-- Indexes for table `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `thongtinnguoidung`
--
ALTER TABLE `thongtinnguoidung`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDQuyen` (`IDQuyen`);

--
-- Indexes for table `vatpham`
--
ALTER TABLE `vatpham`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ban`
--
ALTER TABLE `ban`
  MODIFY `soBan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quyen`
--
ALTER TABLE `quyen`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `thongtinnguoidung`
--
ALTER TABLE `thongtinnguoidung`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vatpham`
--
ALTER TABLE `vatpham`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`soBan`) REFERENCES `ban` (`soBan`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`idNhanVien`) REFERENCES `thongtinnguoidung` (`ID`);

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`IDVatPham`) REFERENCES `vatpham` (`ID`),
  ADD CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`IDHoaDon`) REFERENCES `hoadon` (`ID`);

--
-- Constraints for table `thongtinnguoidung`
--
ALTER TABLE `thongtinnguoidung`
  ADD CONSTRAINT `thongtinnguoidung_ibfk_1` FOREIGN KEY (`IDQuyen`) REFERENCES `quyen` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
