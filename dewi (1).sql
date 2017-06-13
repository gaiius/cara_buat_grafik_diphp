-- Adminer 4.2.4 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `Id_Customer` varchar(25) NOT NULL,
  `Nama_Customer` char(50) NOT NULL,
  `Alamat` varchar(250) NOT NULL,
  `Telpon` int(20) NOT NULL,
  `Keterangan` varchar(100) NOT NULL,
  `Jenis` varchar(100) NOT NULL,
  PRIMARY KEY (`Id_Customer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `customer` (`Id_Customer`, `Nama_Customer`, `Alamat`, `Telpon`, `Keterangan`, `Jenis`) VALUES
('001',	'fahmi tamvan',	'Jakarta',	12,	'OK',	'Konsultan'),
('9823',	'Ga Maju maju',	'ok',	212,	'ok',	'Kontraktor'),
('sda',	'PT. RASYA',	'JL.DKWKDWUDHAKJ',	123342,	'DASDWD',	'Kontraktor');

DROP TABLE IF EXISTS `proses`;
CREATE TABLE `proses` (
  `Id_Proses` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Customer` varchar(25) NOT NULL,
  `Tanggal_Pengajuan` varchar(15) NOT NULL,
  `progress` varchar(10) NOT NULL,
  `Tgl_Meeting_Progress` date NOT NULL,
  `status` char(20) DEFAULT NULL,
  `berita_acara` varchar(100) DEFAULT NULL,
  `approve` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id_Proses`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `proses` (`Id_Proses`, `Id_Customer`, `Tanggal_Pengajuan`, `progress`, `Tgl_Meeting_Progress`, `status`, `berita_acara`, `approve`) VALUES
(1,	'sda',	'2017-05-19',	'2',	'2017-05-18',	'LUNAS',	'files/edu.PNG.png',	1),
(2,	'sda',	'2017-05-19',	'3',	'2017-05-18',	'LUNAS',	'files/edu.PNG.png',	1);

-- 2017-06-13 04:13:53
