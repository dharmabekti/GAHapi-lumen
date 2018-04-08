/*
SQLyog Ultimate v10.42 
MySQL - 5.5.5-10.1.26-MariaDB : Database - sigahdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sigahdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sigahdb`;

/*Table structure for table `checkin_checkout` */

DROP TABLE IF EXISTS `checkin_checkout`;

CREATE TABLE `checkin_checkout` (
  `ID_RESERVASI` int(11) NOT NULL AUTO_INCREMENT,
  `TGL_CHECKIN` datetime DEFAULT NULL,
  `TGL_CHECKOUT` datetime DEFAULT NULL,
  `DEPOSIT` float DEFAULT NULL,
  `CASH` float DEFAULT NULL,
  `ID_BOOKING` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_RESERVASI`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `checkin_checkout` */

insert  into `checkin_checkout`(`ID_RESERVASI`,`TGL_CHECKIN`,`TGL_CHECKOUT`,`DEPOSIT`,`CASH`,`ID_BOOKING`) values (1,'2016-04-20 00:00:00','2016-04-22 00:00:00',300000,0,'G040416-006'),(2,'2016-07-16 00:00:00','2016-07-18 00:00:00',300000,0,'G070716-008'),(3,'2016-08-16 00:00:00','2016-08-20 00:00:00',300000,0,'G080816-007'),(4,'2012-12-24 00:00:00',NULL,300000,0,'G121212-003'),(5,'2017-12-31 00:00:00',NULL,300000,0,'G241217-009'),(6,'2017-06-01 00:00:00','2017-06-02 00:00:00',300000,0,'G250517-010'),(7,'2018-02-09 00:00:00',NULL,300000,0,'P020218-004'),(8,'2018-08-20 00:00:00','2018-08-23 00:00:00',300000,100000,'P080818-002'),(9,'2018-12-30 00:00:00',NULL,300000,NULL,'P231218-001'),(10,'2018-11-08 00:00:00','2018-11-10 00:00:00',300000,25000,'P301018-005');

/*Table structure for table `data_diri` */

DROP TABLE IF EXISTS `data_diri`;

CREATE TABLE `data_diri` (
  `ID_DATA_DIRI` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA` varchar(30) DEFAULT NULL,
  `NAMA_INSTITUSI` varchar(30) DEFAULT NULL,
  `NO_IDENTITAS` varchar(15) DEFAULT NULL,
  `NO_TELEPON` varchar(12) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `ALAMAT` varchar(50) DEFAULT NULL,
  `JENIS_KELAMIN` varchar(15) DEFAULT NULL,
  `TGL_BUAT` datetime DEFAULT NULL,
  `ID_USER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_DATA_DIRI`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `data_diri` */

insert  into `data_diri`(`ID_DATA_DIRI`,`NAMA`,`NAMA_INSTITUSI`,`NO_IDENTITAS`,`NO_TELEPON`,`EMAIL`,`ALAMAT`,`JENIS_KELAMIN`,`TGL_BUAT`,`ID_USER`) values (1,'Viktor A.',NULL,'1234567','1234567890','lala@gmail.com','mana aja','Laki-laki','2018-02-02 00:00:00',10),(2,'Dwi Cahya Sadewa',NULL,'123456789','123344','dwi@gmail.com','yeah','Laki-laki','1996-02-28 00:00:00',6),(3,'Lala','ITB','12121212','08080808','lala@gmail.com','Kuku','Perempuan','2012-01-02 00:00:00',NULL),(4,'Johan S.',NULL,'13579013','123123123','johan@gmail.com','solo','Laki-laki','2018-01-01 00:00:00',8),(5,'Bella P.',NULL,'1234567','453223563','bella@gmail.com','cilacap','Perempuan','2018-10-30 00:00:00',9),(6,'Desi','UAJY','12345671','123451234','desi@gmail.com','Lokasi','Perempuan','2016-03-03 00:00:00',NULL),(7,'Joko',' ogle','4689213','123457411','joko@gmail.com','Jakarta','Laki-laki','2016-08-08 00:00:00',NULL),(8,'Kuncoro','Blibli','34578321','123567334','kunc@gmail.com','Kutilang','Laki-laki','2017-07-07 00:00:00',NULL),(9,'Herri','Blibli','32546621','112345554','Henri@gmail.com','babarsari','Laki-laki','2017-12-24 00:00:00',NULL),(10,'Lola','Tokopedia','11111111','234311233','lola@gmail.com','babarsari','Perempuan','2017-05-25 00:00:00',NULL);

/*Table structure for table `detil_kamar` */

DROP TABLE IF EXISTS `detil_kamar`;

CREATE TABLE `detil_kamar` (
  `ID_DETIL_KAMAR` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_KAMAR` varchar(30) DEFAULT NULL,
  `JUMLAH_KAMAR` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_DETIL_KAMAR`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `detil_kamar` */

insert  into `detil_kamar`(`ID_DETIL_KAMAR`,`NAMA_KAMAR`,`JUMLAH_KAMAR`) values (1,'Junior Suite',10),(2,'Executive Deluxe',25),(3,'Double Deluxe',25),(4,'Superior',65);

/*Table structure for table `detil_reservasi` */

DROP TABLE IF EXISTS `detil_reservasi`;

CREATE TABLE `detil_reservasi` (
  `ID_DETIL_RESERVASI` int(11) NOT NULL AUTO_INCREMENT,
  `JENIS_TAMU` varchar(10) NOT NULL,
  `JUMLAH_TAMU` int(11) DEFAULT NULL,
  `STATUS_BATAL` varchar(10) DEFAULT NULL,
  `JUMLAH_KAMAR` int(11) DEFAULT NULL,
  `JUMLAH_ANAK` int(11) DEFAULT NULL,
  `JUMLAH_DEWASA` int(11) DEFAULT NULL,
  `ID_BOOKING` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_DETIL_RESERVASI`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `detil_reservasi` */

insert  into `detil_reservasi`(`ID_DETIL_RESERVASI`,`JENIS_TAMU`,`JUMLAH_TAMU`,`STATUS_BATAL`,`JUMLAH_KAMAR`,`JUMLAH_ANAK`,`JUMLAH_DEWASA`,`ID_BOOKING`) values (1,'Personal',2,'TIDAK',1,0,2,'P231218-001'),(2,'Personal',2,'TIDAK',1,0,2,'P080818-002'),(3,'Grup',20,'TIDAK',10,5,15,'G121212-003'),(4,'Personal',4,'TIDAK',1,2,2,'P020218-004'),(5,'Personal',3,'YA',1,1,3,'P301018-005'),(6,'Grup',25,'YA',12,0,25,'G040416-006'),(7,'Grup',30,'TIDAK',15,15,15,'G080816-007'),(8,'Grup',40,'TIDAK',20,10,30,'G070716-008'),(9,'Grup',50,'YA',25,0,50,'G241217-009'),(10,'Grup',100,'TIDAK',50,0,100,'G250517-010'),(11,'Grup',20,'TIDAK',10,0,20,'G080818-011');

/*Table structure for table `detil_tarif` */

DROP TABLE IF EXISTS `detil_tarif`;

CREATE TABLE `detil_tarif` (
  `ID_DETIL_TARIF` int(11) NOT NULL AUTO_INCREMENT,
  `ID_ITEM` int(11) DEFAULT NULL,
  `ID_TARIF` int(11) DEFAULT NULL,
  `JUMLAH_ITEM` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_DETIL_TARIF`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `detil_tarif` */

insert  into `detil_tarif`(`ID_DETIL_TARIF`,`ID_ITEM`,`ID_TARIF`,`JUMLAH_ITEM`) values (1,1,2,2),(2,2,4,1),(3,3,4,1),(4,4,4,1),(5,9,4,1),(6,5,3,2),(7,6,1,2),(8,7,1,1),(9,8,1,1),(10,9,4,1);

/*Table structure for table `detil_transaksi_pembayaran` */

DROP TABLE IF EXISTS `detil_transaksi_pembayaran`;

CREATE TABLE `detil_transaksi_pembayaran` (
  `ID_DETIL_TRANSAKSI` int(11) NOT NULL AUTO_INCREMENT,
  `JENIS_PEMBAYARAN` varchar(10) DEFAULT NULL,
  `NOMOR_KARTU_KREDIT` varchar(20) DEFAULT NULL,
  `NO_INVOICE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_DETIL_TRANSAKSI`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `detil_transaksi_pembayaran` */

insert  into `detil_transaksi_pembayaran`(`ID_DETIL_TRANSAKSI`,`JENIS_PEMBAYARAN`,`NOMOR_KARTU_KREDIT`,`NO_INVOICE`) values (1,'Transfer',NULL,'G040416-006'),(2,'Transfer',NULL,'G070716-008'),(3,'Transfer',NULL,'G080816-007'),(7,'Transfer',NULL,'G250517-010'),(9,'Kredit','123456789','P080818-002'),(11,'Kredit','987654321','P301018-005'),(12,'Transfer',NULL,'G080818-011'),(13,'Transfer',NULL,'G121212-003'),(14,'Transfer',NULL,'G241217-009');

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `ID_ITEM` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_ITEM` varchar(30) DEFAULT NULL,
  `HARGA_ITEM` float DEFAULT NULL,
  PRIMARY KEY (`ID_ITEM`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `item` */

insert  into `item`(`ID_ITEM`,`NAMA_ITEM`,`HARGA_ITEM`) values (1,'Extra Bed',150000),(2,'Laundry Regular',10000),(3,'Laundry Fast Service',25000),(4,'Massage',75000),(5,'Tambahan Breakfast',50000),(6,'Lunch Package',100000),(7,'Dinner Package',100000),(8,'Meeting Room Full Day',200000),(9,'Minibar',20000);

/*Table structure for table `kamar` */

DROP TABLE IF EXISTS `kamar`;

CREATE TABLE `kamar` (
  `ID_KAMAR` varchar(10) NOT NULL,
  `TEMPAT_TIDUR` varchar(10) DEFAULT NULL,
  `STAUS_SMOKING` varchar(5) DEFAULT NULL,
  `STATUS_BOOKING` varchar(20) DEFAULT NULL,
  `FASILITAS` varchar(100) DEFAULT NULL,
  `ID_DETIL_KAMAR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kamar` */

insert  into `kamar`(`ID_KAMAR`,`TEMPAT_TIDUR`,`STAUS_SMOKING`,`STATUS_BOOKING`,`FASILITAS`,`ID_DETIL_KAMAR`) values ('1001JS','King','TIDAK','TERSEDIA','Layout,Internet,Hiburan,Makan Minum,Untuk Tidur,Kamar Mandi,Kemudahan,Kenyamanan',1),('1002JS','King','IYA','TERSEDIA','Layout,Internet,Hiburan,Makan Minum,Untuk Tidur,Kamar Mandi,Kemudahan,Kenyamanan',1),('1003ED','King','TIDAK','TERSEDIA','Layout,Internet,Hiburan,Makan Minum,Untuk Tidur,Kamar Mandi,Kemudahan,Kenyamanan',2),('1004ED','King','IYA','TERSEDIA','Layout,Internet,Hiburan,Makan Minum,Untuk Tidur,Kamar Mandi,Kemudahan,Kenyamanan',2),('1005ED','King','TIDAK','TERSEDIA','Layout,Internet,Hiburan,Makan Minum,Untuk Tidur,Kamar Mandi,Kemudahan,Kenyamanan',2),('1006ED','King','TIDAK','TERSEDIA','Layout,Internet,Hiburan,Makan Minum,Untuk Tidur,Kamar Mandi,Kemudahan,Kenyamanan',2),('1007ED','King','IYA','TERSEDIA','Layout,Internet,Hiburan,Makan Minum,Untuk Tidur,Kamar Mandi,Kemudahan,Kenyamanan',2),('1008DD','Double','TIDAK','TERSEDIA','Layout,Internet,Hiburan,Makan Minum,Untuk Tidur,Kamar Mandi,Kemudahan,Kenyamanan',3),('1009DD','Double','IYA','TERSEDIA','Layout,Internet,Hiburan,Makan Minum,Untuk Tidur,Kamar Mandi,Kemudahan,Kenyamanan',3),('1010DD','King','TIDAK','TERSEDIA','Layout,Internet,Hiburan,Makan Minum,Untuk Tidur,Kamar Mandi,Kemudahan,Kenyamanan',3),('1011DD','King','IYA','TERSEDIA','Layout,Internet,Hiburan,Makan Minum,Untuk Tidur,Kamar Mandi,Kemudahan,Kenyamanan',3),('1012DD','Double','TIDAK','TERSEDIA','Layout,Internet,Hiburan,Makan Minum,Untuk Tidur,Kamar Mandi,Kemudahan,Kenyamanan',3),('1013S','Double','TIDAK','TERSEDIA','Layout,Internet,Hiburan,Makan Minum,Untuk Tidur,Kamar Mandi,Kemudahan,Kenyamanan',4),('1014S','King','TIDAK','TERSEDIA','Layout,Internet,Hiburan,Makan Minum,Untuk Tidur,Kamar Mandi,Kemudahan,Kenyamanan',4),('1015S','Double','IYA','TERSEDIA','Layout,Internet,Hiburan,Makan Minum,Untuk Tidur,Kamar Mandi,Kemudahan,Kenyamanan',4),('1016S','King','IYA','TERSEDIA','Layout,Internet,Hiburan,Makan Minum,Untuk Tidur,Kamar Mandi,Kemudahan,Kenyamanan',4);

/*Table structure for table `kota` */

DROP TABLE IF EXISTS `kota`;

CREATE TABLE `kota` (
  `ID_KOTA` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_KOTA` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID_KOTA`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `kota` */

insert  into `kota`(`ID_KOTA`,`NAMA_KOTA`) values (1,'Bandung'),(2,'Yogyakarta');

/*Table structure for table `reservasi` */

DROP TABLE IF EXISTS `reservasi`;

CREATE TABLE `reservasi` (
  `ID_BOOKING` varchar(20) NOT NULL,
  `TGL_RESERVASI` datetime DEFAULT NULL,
  `ID_KAMAR` varchar(10) DEFAULT NULL,
  `ID_DATA_DIRI` int(11) DEFAULT NULL,
  `ID_KOTA` int(11) DEFAULT NULL,
  `ID_TARIF` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reservasi` */

insert  into `reservasi`(`ID_BOOKING`,`TGL_RESERVASI`,`ID_KAMAR`,`ID_DATA_DIRI`,`ID_KOTA`,`ID_TARIF`) values ('G040416-006','2016-04-04 00:00:00','1005ED',6,2,1),('G070716-008','2016-07-07 00:00:00','1007ED',8,2,NULL),('G080816-007','2016-08-08 00:00:00','1006ED',7,1,NULL),('G080818-011','2018-08-08 00:00:00','1016S',6,2,4),('G121212-003','2012-12-12 00:00:00','1002JS',3,1,NULL),('G241217-009','2017-12-24 00:00:00','1008DD',9,2,NULL),('G250517-010','2017-05-24 00:00:00','1009DD',10,2,NULL),('P020218-004','2018-02-02 00:00:00','1003ED',4,1,2),('P080818-002','2018-08-08 00:00:00','1008DD',2,1,NULL),('P231218-001','2018-12-23 00:00:00','1001JS',1,1,3),('P301018-005','2018-10-30 00:00:00','1004ED',5,2,NULL);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `ID_ROLE` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_ROLE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_ROLE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`ID_ROLE`,`NAMA_ROLE`) values (1,'Admin'),(2,'Sales & Marketing'),(3,'General Manager'),(4,'Owner'),(5,'Front Office'),(6,'Customer');

/*Table structure for table `season` */

DROP TABLE IF EXISTS `season`;

CREATE TABLE `season` (
  `ID_SEASON` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_SEASON` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_SEASON`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `season` */

insert  into `season`(`ID_SEASON`,`NAMA_SEASON`) values (1,'Normal'),(2,'High Season'),(3,'Promo');

/*Table structure for table `tarif` */

DROP TABLE IF EXISTS `tarif`;

CREATE TABLE `tarif` (
  `ID_TARIF` int(11) NOT NULL AUTO_INCREMENT,
  `HARGA_TARIF` float DEFAULT NULL,
  PRIMARY KEY (`ID_TARIF`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tarif` */

insert  into `tarif`(`ID_TARIF`,`HARGA_TARIF`) values (1,500000),(2,300000),(3,100000),(4,150000);

/*Table structure for table `tarif_season` */

DROP TABLE IF EXISTS `tarif_season`;

CREATE TABLE `tarif_season` (
  `ID_TARIF_SEASON` int(11) NOT NULL AUTO_INCREMENT,
  `TGL_MULAI` datetime DEFAULT NULL,
  `TGL_SELESAI` datetime DEFAULT NULL,
  `ID_SEASON` int(11) DEFAULT NULL,
  `ID_DETIL_KAMAR` int(11) DEFAULT NULL,
  `HARGA_KAMAR` float DEFAULT NULL,
  PRIMARY KEY (`ID_TARIF_SEASON`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tarif_season` */

insert  into `tarif_season`(`ID_TARIF_SEASON`,`TGL_MULAI`,`TGL_SELESAI`,`ID_SEASON`,`ID_DETIL_KAMAR`,`HARGA_KAMAR`) values (1,'2017-12-20 00:00:00','2018-01-21 00:00:00',1,1,550000),(2,'2017-12-20 00:00:00','2018-01-21 00:00:00',1,2,500000),(3,'2017-12-20 00:00:00','2018-01-21 00:00:00',1,3,450000),(4,'2017-12-20 00:00:00','2018-01-21 00:00:00',1,4,400000),(5,'2018-01-22 00:00:00','2018-04-21 00:00:00',2,1,700000),(6,'2018-01-22 00:00:00','2018-04-21 00:00:00',2,2,650000),(7,'2018-01-22 00:00:00','2018-04-21 00:00:00',2,3,600000),(8,'2018-01-22 00:00:00','2018-04-21 00:00:00',2,4,550000),(9,'2018-04-22 00:00:00','2018-08-22 00:00:00',3,1,450000),(10,'2018-04-22 00:00:00','2018-08-22 00:00:00',3,2,400000),(11,'2018-04-22 00:00:00','2018-08-22 00:00:00',3,3,350000),(12,'2018-04-22 00:00:00','2018-08-22 00:00:00',3,4,300000);

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `ID_USER` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `ID_ROLE` int(11) DEFAULT NULL,
  `ID_KOTA` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_USER`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`ID_USER`,`USERNAME`,`PASSWORD`,`ID_ROLE`,`ID_KOTA`) values (1,'Glady','080897',1,2),(2,'Desya','8563',2,2),(3,'Bekti','1234567',3,1),(4,'Mike','8573',4,1),(5,'Cherlie','8546',5,1),(6,'Dwi','8549',6,2),(7,'Felix','8564',2,2),(8,'Johan','8558',6,2),(9,'Bella','8888',6,1),(10,'Viktor','7118',6,2);

/*Table structure for table `transaksi` */

DROP TABLE IF EXISTS `transaksi`;

CREATE TABLE `transaksi` (
  `NO_INVOICE` varchar(20) NOT NULL,
  `JUMLAH_TARIF` float DEFAULT NULL,
  `JENIS_STATUS` varchar(20) DEFAULT NULL,
  `TGL_TRANSAKSI` datetime DEFAULT NULL,
  `ID_BOOKING` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transaksi` */

insert  into `transaksi`(`NO_INVOICE`,`JUMLAH_TARIF`,`JENIS_STATUS`,`TGL_TRANSAKSI`,`ID_BOOKING`) values ('G040416-006',10000000,'LUNAS','2016-04-04 00:00:00','G040416-006'),('G070716-008',12000000,'LUNAS','2016-07-07 00:00:00','G070716-008'),('G080816-007',4000000,'LUNAS','2016-08-08 00:00:00','G080816-007'),('G080818-011',5000000,'BELUM LUNAS','2018-08-08 00:00:00','G080818-011'),('G121212-003',6500000,'BELUM LUNAS','2012-12-12 00:00:00','G121212-003'),('G241217-009',3500000,'BELUM LUNAS','2017-12-24 00:00:00','G241217-009'),('G250517-010',2500000,'LUNAS','2017-05-24 00:00:00','G250517-010'),('P020218-004',500000,'BELUM LUNAS','2018-02-02 00:00:00','P020218-004'),('P080818-002',700000,'LUNAS','2018-08-08 00:00:00','P080818-002'),('P231218-001',1000000,'BELUM LUNAS','2018-12-23 00:00:00','P231218-001'),('P301018-005',950000,'LUNAS','2018-10-30 00:00:00','P301018-005');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
