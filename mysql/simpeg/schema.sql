-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 14, 2013 at 06:24 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_simpeg`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_dp3`
--

CREATE TABLE IF NOT EXISTS `tbl_data_dp3` (
  `id_dp3` int(50) NOT NULL AUTO_INCREMENT,
  `id_pegawai` int(50) NOT NULL,
  `tahun` varchar(30) NOT NULL,
  `kesetiaan` varchar(100) NOT NULL,
  `prestasi` varchar(100) NOT NULL,
  `tanggung_jawab` varchar(100) NOT NULL,
  `ketaatan` varchar(100) NOT NULL,
  `kejujuran` varchar(100) NOT NULL,
  `kerjasama` varchar(100) NOT NULL,
  `prakarsa` varchar(100) NOT NULL,
  `kepemimpinan` varchar(100) NOT NULL,
  `rata_rata` varchar(100) NOT NULL,
  `atasan` varchar(100) NOT NULL,
  `penilai` varchar(100) NOT NULL,
  `mengetahui` varchar(100) NOT NULL,
  PRIMARY KEY (`id_dp3`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_data_dp3`
--

INSERT INTO `tbl_data_dp3` (`id_dp3`, `id_pegawai`, `tahun`, `kesetiaan`, `prestasi`, `tanggung_jawab`, `ketaatan`, `kejujuran`, `kerjasama`, `prakarsa`, `kepemimpinan`, `rata_rata`, `atasan`, `penilai`, `mengetahui`) VALUES
(1, 9, '2011', '91', '82', '82', '82', '82', '81', '81', '0', '72.625', 'SOLO RIYADI LUMBONG', 'SYAHMANSYAH', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_gaji_pokok`
--

CREATE TABLE IF NOT EXISTS `tbl_data_gaji_pokok` (
  `id_gaji_pokok` int(50) NOT NULL AUTO_INCREMENT,
  `id_pegawai` int(50) NOT NULL,
  `id_golongan` int(50) NOT NULL,
  `nomor_sk` varchar(100) NOT NULL,
  `tanggal_sk` varchar(100) NOT NULL,
  `dasar_perubahan` varchar(100) NOT NULL,
  `gaji_pokok` varchar(50) NOT NULL,
  `tanggal_mulai` varchar(50) NOT NULL,
  `tanggal_selesai` varchar(50) NOT NULL,
  `masa_kerja` varchar(50) NOT NULL,
  `pejabat_menetapkan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_gaji_pokok`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_data_gaji_pokok`
--

INSERT INTO `tbl_data_gaji_pokok` (`id_gaji_pokok`, `id_pegawai`, `id_golongan`, `nomor_sk`, `tanggal_sk`, `dasar_perubahan`, `gaji_pokok`, `tanggal_mulai`, `tanggal_selesai`, `masa_kerja`, `pejabat_menetapkan`) VALUES
(1, 9, 12, 'KEP.DB/117/B/2006-K', '27 February 2006', 'KENAIKAN PANGKAT', '1243800', '01 April 2006', '30 June 2023', '17 Tahun 12 Bulan', 'MENTERI PU');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_hukuman`
--

CREATE TABLE IF NOT EXISTS `tbl_data_hukuman` (
  `id_hukuman` int(50) NOT NULL AUTO_INCREMENT,
  `id_pegawai` int(50) NOT NULL,
  `id_master_hukuman` int(50) NOT NULL,
  `uraian` text NOT NULL,
  `nomor_sk` varchar(100) NOT NULL,
  `tanggal_sk` varchar(100) NOT NULL,
  `tanggal_mulai` varchar(50) NOT NULL,
  `tanggal_selesai` varchar(50) NOT NULL,
  `masa_berlaku` varchar(100) NOT NULL,
  `pejabat_menetapkan` varchar(100) NOT NULL,
  PRIMARY KEY (`id_hukuman`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_keluarga`
--

CREATE TABLE IF NOT EXISTS `tbl_data_keluarga` (
  `id_data_keluarga` int(50) NOT NULL AUTO_INCREMENT,
  `id_pegawai` int(50) NOT NULL,
  `nama_anggota_keluarga` varchar(150) NOT NULL,
  `tanggal_lahir` varchar(100) NOT NULL,
  `status_kawin` varchar(50) NOT NULL,
  `tanggal_nikah` varchar(100) NOT NULL,
  `uraian` text NOT NULL,
  `tanggal_cerai_meninggal` text NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_data_keluarga`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_data_keluarga`
--

INSERT INTO `tbl_data_keluarga` (`id_data_keluarga`, `id_pegawai`, `nama_anggota_keluarga`, `tanggal_lahir`, `status_kawin`, `tanggal_nikah`, `uraian`, `tanggal_cerai_meninggal`, `pekerjaan`) VALUES
(1, 1, 'HELENA P. NGOEO', '19 April 1967', 'KAWIN', '20 Juni 1992', '-', '14 November 2012', '-'),
(2, 9, 'SITI RAHAYU', '-', 'KAWIN', '-', '-', '-', '-'),
(3, 19, '-', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_organisasi`
--

CREATE TABLE IF NOT EXISTS `tbl_data_organisasi` (
  `id_organisasi` int(50) NOT NULL AUTO_INCREMENT,
  `id_pegawai` int(50) NOT NULL,
  `uraian` text NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  PRIMARY KEY (`id_organisasi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_pegawai`
--

CREATE TABLE IF NOT EXISTS `tbl_data_pegawai` (
  `id_pegawai` int(50) NOT NULL AUTO_INCREMENT,
  `nip` varchar(100) NOT NULL,
  `nip_lama` varchar(100) NOT NULL,
  `no_kartu_pegawai` varchar(100) NOT NULL,
  `nama_pegawai` varchar(150) NOT NULL,
  `tempat_lahir` varchar(150) NOT NULL,
  `tanggal_lahir` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `usia` varchar(10) NOT NULL,
  `status_pegawai` varchar(50) NOT NULL,
  `tanggal_pengangkatan_cpns` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_npwp` varchar(75) NOT NULL,
  `kartu_askes_pegawai` varchar(100) NOT NULL,
  `status_pegawai_pangkat` varchar(50) NOT NULL,
  `id_golongan` int(20) NOT NULL,
  `nomor_sk_pangkat` varchar(50) NOT NULL,
  `tanggal_sk_pangkat` varchar(50) NOT NULL,
  `tanggal_mulai_pangkat` varchar(50) NOT NULL,
  `tanggal_selesai_pangkat` varchar(50) NOT NULL,
  `id_status_jabatan` int(20) NOT NULL,
  `id_jabatan` int(20) NOT NULL,
  `id_unit_kerja` int(20) NOT NULL,
  `id_satuan_kerja` int(20) NOT NULL,
  `lokasi_kerja` varchar(100) NOT NULL,
  `nomor_sk_jabatan` varchar(50) NOT NULL,
  `tanggal_sk_jabatan` varchar(50) NOT NULL,
  `tanggal_mulai_jabatan` varchar(50) NOT NULL,
  `tanggal_selesai_jabatan` varchar(50) NOT NULL,
  `id_eselon` int(20) NOT NULL,
  `tmt_eselon` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tbl_data_pegawai`
--

INSERT INTO `tbl_data_pegawai` (`id_pegawai`, `nip`, `nip_lama`, `no_kartu_pegawai`, `nama_pegawai`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `usia`, `status_pegawai`, `tanggal_pengangkatan_cpns`, `alamat`, `no_npwp`, `kartu_askes_pegawai`, `status_pegawai_pangkat`, `id_golongan`, `nomor_sk_pangkat`, `tanggal_sk_pangkat`, `tanggal_mulai_pangkat`, `tanggal_selesai_pangkat`, `id_status_jabatan`, `id_jabatan`, `id_unit_kerja`, `id_satuan_kerja`, `lokasi_kerja`, `nomor_sk_jabatan`, `tanggal_sk_jabatan`, `tanggal_mulai_jabatan`, `tanggal_selesai_jabatan`, `id_eselon`, `tmt_eselon`, `foto`) VALUES
(2, '196109031992051004', '196109031992051004', 'F329422', 'Ir. ASRI ABU, MM', 'MAKASAR, PROPINSI SULAWESI SELATAN', '03 September 1961', 'Laki-Laki', 'Islam', '51 tahun,', '5', '12 May 1992', 'JL. TONDANO, KEL. BULOTADA\\''A TIMUR, GORONTALO, PROPINSI GORONTALO', '780609', '8669vd23232', '5', 17, '823.4/BKPAD/SK/190/2008', '31 March 2008', '01 April 2008', '22 November 2012', 3, 2347, 31, 8, '29', '664/KPTS/M/2010', '10 December 2010', '10 December 2010', '22 November 2012', 29, '30 November 2012', ''),
(3, '196607201997031004', '-', '-', 'JOHANES ROBBY WAANI ST', '-', '20 July 1966', 'Laki-Laki', 'Kristen', '46 Tahun 3', '5', '01 March 1997', '-', '-', '-', '5', 16, '-', '01 April 2009', '01 April 2009', '-', 2, 592, 31, 8, '22', '02/KPTS/Db/2011', '21 January 2011', '21 January 2011', '-', 29, '24 January 2011', ''),
(4, '196411191997031002', '110053948', '-', 'IR. WILLIAM TAVIPONOVA GLORICUS KEREH MT', '-', '19 November 1964', 'Laki-Laki', 'Islam', '47 Tahun 1', '5', '01 March1997', 'BUKIT DURI NO.33 JAKARTA SELATAN,', '-', '-', '5', 16, 'DB/090/B/2009-W', '27 February 2009', '01 April 2009', '-', 2, 2349, 31, 7, '22', '164/KPTS/M/2004', '12 February 2004', '12 February 2004', '-', 32, '-', ''),
(5, '19721024200003005', '560015858', 'D.155084', 'HARI PURWANTO SAMIRAN ST., MM.', 'MANADO', '24 October 1972', 'Laki-Laki', 'Islam', '40 Tahun 0', '5', '01 March 2000', 'JL.JEND. SUDIRMAN NO. 71 KOTA SELATAN, GORONTALO, PROPINSI GORONTALO', '-', '-', '5', 16, 'Db/008/B/2011-H', '21 March 2003', '01 April 2011', '-', 2, 2345, 31, 177, '29', '11/KPTS/BS/2011', '16 March 2011', '16 March 2011', '-', 32, '-', ''),
(6, '195907101983031030', '110043776', 'D.152665', 'DARMADJI SUHEDI ST.MT', 'GORONTALO', '10 July 1959', 'Laki-Laki', 'Islam', '53 Tahun 4', '5', '1 March 2003', 'JL. TAMAN PENDIDIKAN NO.34 KOTA TIMUR, GORONTALO, PROPINSI GORONTALO', '-', '-', '5', 16, '823.3/BKPAD/SK/472/10', '31 March 2010', '01 April 2010', '-', 2, 2345, 31, 8, '22', '-', '27 May 2010', '01 June 2010', '-', 32, '-', ''),
(7, '195812311997031004', '110054393', 'G.387882', 'DRS. ARSYID USMAN', 'GORONTALO', '31 December 1958', 'Laki-Laki', 'Islam', '53 Tahun 1', '5', '01 March 1997', 'JLN. RAYA PONDOK KACANG TIMUR, KAMPUNG BULAK', '-', '-', '5', 16, 'DB/207/B/2009-A', '27 February 2009', '01 April 2009', '-', 2, 2345, 31, 177, '29', '11/KPTS/BS/2011', '16 March 2011', '16 March 2011', '-', 32, '-', ''),
(8, '196904101998031005', '110054827', '-', 'MARTINUS PAKONGLEAN BANDASO ST', 'SULAWESI UTARA', '10 April 1969', 'Laki-Laki', 'Kristen', '43 tahun,', '5', '01 March 1998', '-', '-', '-', '5', 15, '-', '-', '01 April 2010', '-', 2, 2345, 31, 12, '22', '433/KPTS/M/2011', '27 December 2011', '01 December 2012', '-', 32, '-', ''),
(9, '196402161991011001', '110045316', 'F.232606', 'KUSNAEDI ST', 'PROPINSI JAWA BARAT', '16 February 1964', 'Laki-Laki', 'Islam', '48 Tahun 8', '5', '01 March 1991', 'KOMPLEK AL. JL. BARU 24 PONDOK LABU', '-', '-', '5', 17, '-', '-', '01 April 2010', '-', 2, 2344, 1, 7, '4', 'KP.03/01/116/XII/1992', '24 September 2012', '12 October 2012', '-', 29, '12 October 2012', ''),
(10, '197907072005021001', '110057522', '-', 'IBNU KURNIAWAN ST', 'SURABAYA', '07 July 1979', 'Laki-Laki', 'Islam', '33 tahun, ', '5', '01 February 2005', '-', '-', '-', '5', 17, 'KEP.103/A/DP/2005-I', '04 April 2005', '01/02/2005', '01/06/2006', 2, 511, 16479, 175, '-', '-', '-', '-', '-', 32, '-', ''),
(11, '-', '110056174', '-', 'EVANDA LIENTJE CAROLIEN SALANGKA', 'MANADO', '04 December 1967', 'Perempuan', 'Kristen Protestan', '44 tahun, ', '5', '01 December 2002', '-', '-', '-', '1', 4, '-', '-', '01 October 2010', '-', 2, 1, 1, 1, 'SULAWESI UTARA', '11/KPTS/BS/2011', '06 March 2011', '16 March 2011', '-', 32, '-', ''),
(12, '196308272002122', '110056237', '-', 'HELEN A.RANTUNG SE', 'TUMPAAN', '27 August 1963', 'Perempuan', 'Kristen Katolik', '49 tahun, ', '5', '01 December 2002', '-', '-', '-', '5', 14, '-', '-', '01 April 2010', '-', 2, 116, 16479, 175, 'SULAWESI UTARA', '11/KPTS/BS/2011', '16 March 2011', '16 March 2011', '-', 32, '-', ''),
(13, '196307162002122002', '110056404', '-', 'RUSDA PODUNGE S.SOS', 'GORONTALO, PROPINSI SULAWESI UTARA', '16 July 1963', 'Perempuan', 'Kristen Protestan', '49 tahun, ', '5', '01 December 2012', 'JL.IRIAN KEL.DULALAWO GORONTALO', '-', '-', '5', 14, 'Db/435/B/2012-R', '23 July 2012', '01 October 2012', '-', 2, 116, 16479, 175, 'GORONTALO', '11/KPTS/BS/2011', '16 March 2011', '16 March 2011', '-', 32, '-', ''),
(14, '196405312006041001', '110058297', '-', 'DENNY MEIKY PAENDONG SE', 'MANADO, PROPINSI SULAWESI UTARA', '31 May 1964', 'Laki-Laki', 'Islam', '48 tahun, ', '5', '01 April 2006', '-', '-', '-', '5', 14, 'Db/434/B/2012-D', '23 July 2012', '01 October 2012', '-', 2, 116, 16479, 175, 'SULAWESI UTARA', '-', '-', '-', '-', 32, '-', ''),
(15, '196705092002121', '110056730', '-', 'FERYANTO SUPII S.ST', 'MANADO, PROPINSI SULAWESI UTARA', '-', 'Laki-Laki', 'Hindu', '45 tahun,', '5', '01 December 2002', '-', '-', '-', '5', 14, '-', '-', '-', '-', 2, 116, 1, 1, 'SULAWESI UTARA', '11/KPTS/BS/2011', '-', '16 March 2011', '-', 32, '-', ''),
(16, '196410142008122001', '-', '-', 'OLVI KALENGKIAN SE', 'TONDANO, PROPINSI SULAWESI TENGAH', '14 October 1964', 'Perempuan', 'Islam', '48 tahun, ', '4', '01 December 2008', '-', '-', '-', '5', 14, 'Db/018/C/2010 - O', '23 February 2010', '01 March 2010', '-', 2, 116, 16479, 175, 'SULAWESI UTARA', '11/KPTS/BS/2011', '16 March 2011', '16 March 2011', '-', 32, '-', ''),
(17, '196712092006042002', '110058305', '-', 'JANSJE MONTOLALU SH', 'TUMANI', '19 December 1967', 'Laki-Laki', 'Hindu', '44 tahun,', '5', '01 April 2006', '-', '-', '-', '5', 14, '-', '-', '-', '-', 2, 116, 16479, 175, 'SULAWESI UTARA', '11/KPTS/BS/2011', '16 March 2011', '16 March 2011', '-', 32, '-', ''),
(18, '196503182008122001', '-', '-', 'NILA POOE SE', 'GORONTALO', '18 March 1969', 'Perempuan', 'Budha', '47 tahun, ', '5', '01 December 2008', 'JL. DURIAN, GORONTALO, PROPINSI GORONTALO', '-', '-', '5', 14, 'Db/054/B/2011-N', '-', '01 April 2011', '-', 2, 116, 16479, 175, 'GORONTALO', '11/KPTS/BS/2011', '16 March 2011', '16 March 2011', '-', 32, '-', ''),
(19, '197108052008121001', '-', '-', 'V. ANSOUW SE', 'PROPINSI SULAWESI UTARA', '05 August 1971', 'Laki-Laki', 'Lainnya', '41 tahun,', '5', '01 December 2008', '-', '-', '-', '1', 14, '-', '-', '01/12/2008', '-', 2, 2345, 31, 178, '22', '11/KPTS/BS/2011', '-', '-', '-', 32, '-', ''),
(20, '196412082007012001', '110062253', '-', 'DRA. DELLY JETSIE TAMARA', 'AMURANG', '08 December 1964', 'Perempuan', 'Islam', '47 tahun, ', '5', '01 January 2007', '-', '-', '-', '5', 14, 'Db/274/B/2011-D', '21 March 2011', '01 April 2011', '-', 2, 116, 16479, 175, '-', '11/KPTS/BS/2011', '16 March 2011', '-', '-', 32, '-', ''),
(21, '196006012006041003', '110058300', '-', 'JAN MOVIE SEROY ST', 'MINAHASA, PROPINSI SULAWESI UTARA', '01 Juni 1960', 'Laki-Laki', 'Kristen', '52 tahun,', '5', '01 April 2006', '-', '-', '-', '5', 18, 'DB/709/B/2010-J', '26 Juli 2010', '26 Juli 2010', '-', 2, 2345, 31, 178, '22', '11/KPTS/BS/2011', '16 Maret 2011', '16 Maret 2011', '-', 32, '-', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_pelatihan`
--

CREATE TABLE IF NOT EXISTS `tbl_data_pelatihan` (
  `id_pelatihan` int(50) NOT NULL AUTO_INCREMENT,
  `id_pegawai` int(50) NOT NULL,
  `id_master_pelatihan` int(50) NOT NULL,
  `uraian` text NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `tanggal_sertifikat` varchar(50) NOT NULL,
  `jam_pelatihan` varchar(50) NOT NULL,
  `negara` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pelatihan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_data_pelatihan`
--

INSERT INTO `tbl_data_pelatihan` (`id_pelatihan`, `id_pegawai`, `id_master_pelatihan`, `uraian`, `lokasi`, `tanggal_sertifikat`, `jam_pelatihan`, `negara`) VALUES
(1, 1, 18, 'ADUM (DIKLATPIM TK.IV)', 'MANADO', '06 July 2000', '0', 'INDONESIA'),
(2, 1, 310, 'PRAJABATAN UMUM TINGKAT III', 'MANADO', '10 October 1998', '0', 'INDONESIA'),
(3, 9, 12, 'UJIAN DINAS TINGKAT I', 'BANDUNG', '17 June 2004', '-', 'INDONESIA'),
(4, 9, 394, 'PEJABAT INTI SATUAN KERJA', 'JAKARTA', '29 September 2007', '-', 'INDONESIA'),
(5, 9, 394, 'LABORATORY TESTING EQUPMENT TRAINING', 'MAKASAR', '29 June 2007', '-', 'INDONESIA'),
(6, 9, 394, 'SOSIALISASI SISTIM AKUNTANSI BARANG MILIK NEGARA', 'JAKARTA', '15 June 2007', '-', 'INDONESIA'),
(7, 9, 394, 'PENGAWAS PELAKSANA JEMBATAN RANGKA BAJA', 'BANDUNG', '01 December 1999', '-', 'INDONESIA'),
(8, 2, 394, 'APLIKASI TEKNIS PENATAUSAHAAN BMN', 'MAKASSAR', '19 May 2008', '-', 'INDONESIA'),
(9, 2, 394, 'PENYULUHAN HUKUM PIDANA, PERDATA DAN TATA USAHA NEGARA', 'GORONTALO', '4 May 2007', '-', 'INDONESIA'),
(10, 2, 17, 'DIKLAT PIM III', 'WILAYAH II BANDUNG', '10 March 2007', '360', 'INDONESIA'),
(11, 2, 394, 'PENYELENGGARAAN PIMPRO/PIMBAGPRO BIDANG JALAN DAN JEMBATAN', 'MAKASSAR', '07 August 2003', '-', 'INDONESIA'),
(12, 2, 84, 'PEJABAT INTI PROYEK', 'BANDUNG', '24 September 1996', '-', 'INDONESIA'),
(13, 18, 394, 'PELATIHAN PRAJABATAN TINGKAT II', 'MANADO', '26 October 2009', '174', 'INDONESIA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_pendidikan`
--

CREATE TABLE IF NOT EXISTS `tbl_data_pendidikan` (
  `id_pendidikan` int(50) NOT NULL AUTO_INCREMENT,
  `id_pegawai` int(50) NOT NULL,
  `tingkat_pendidikan` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `uraian` text NOT NULL,
  `teknik_non_teknik` varchar(50) NOT NULL,
  `sekolah` varchar(100) NOT NULL,
  `tempat_sekolah` text NOT NULL,
  `nomor_sttb` varchar(100) NOT NULL,
  `tanggal_sttb` varchar(100) NOT NULL,
  `tanggal_lulus` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pendidikan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_data_pendidikan`
--

INSERT INTO `tbl_data_pendidikan` (`id_pendidikan`, `id_pegawai`, `tingkat_pendidikan`, `jurusan`, `uraian`, `teknik_non_teknik`, `sekolah`, `tempat_sekolah`, `nomor_sttb`, `tanggal_sttb`, `tanggal_lulus`) VALUES
(1, 1, 'S1/D4', 'SARJANA TEKNIK SIPIL', 'TEKNIK SIPIL', 'teknik', 'UNIVERSITAS SAM RATULANGI', 'UNSRAT, MANADO', '01/07/1991', '01/07/1991', '01 July 1991'),
(2, 9, 'S1/D4', 'TEKNIK SIPIL', 'SARJANA TEKNIK SIPIL', 'teknik', 'UNIVERSITAS PANCASILA', 'PANCASILA, JAKARTA', '-', '16/04/2006', '16 April 2006'),
(3, 11, 'SLTA', 'IPA', 'IPA', 'non teknik', 'SMA', '-', '-', '05 May 1986', '-'),
(4, 12, 'D III', 'AKD. SEKRETRS. & MANAGEMENT', 'AKD. SEKRETRS. & MANAGEMENT', 'non teknik', '-', 'AKD.', '-', '08/12/1985', '08 December 1985'),
(5, 13, 'S1/D4', 'SARJANA SOSPOL JUR ADM NEGARA', 'ADM NEGARA', 'non teknik', '-', '-', '-', '27/08/2007', '27 August 2007'),
(6, 16, 'S1/D4', 'ILMU ADM JUR ADM NEGARA', 'SARJANA ILMU ADM JUR ADM NEGARA', 'non teknik', '-', '-', '-', '01 January 2000', '01 January 2000'),
(7, 18, 'SI/D4', 'MANAJEMEN', 'SARJANA EKONOMI JUR MANAJEMEN', 'non teknik', '-', '-', '20/08/2008', '-', '-'),
(8, 18, 'SLTA', 'IPS', 'IPS', 'non teknik', '-', '-', '-', '19/04/1984', '19/04/1984'),
(9, 19, 'SI/D4', 'EKONOMI JUR UMUM', 'BUDAYA', 'non teknik', '-', '-', '-', '31/07/1992', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_penghargaan`
--

CREATE TABLE IF NOT EXISTS `tbl_data_penghargaan` (
  `id_penghargaan` int(50) NOT NULL AUTO_INCREMENT,
  `id_pegawai` int(50) NOT NULL,
  `id_master_penghargaan` int(50) NOT NULL,
  `uraian` text NOT NULL,
  `nomor_sk` varchar(100) NOT NULL,
  `tanggal_sk` varchar(100) NOT NULL,
  PRIMARY KEY (`id_penghargaan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_data_penghargaan`
--

INSERT INTO `tbl_data_penghargaan` (`id_penghargaan`, `id_pegawai`, `id_master_penghargaan`, `uraian`, `nomor_sk`, `tanggal_sk`) VALUES
(1, 9, 69, 'SATYALANCANA KARYA SATYA XX TAHUN', '062/TK/TAHUN 2012', '06 August 2012');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_riwayat_jabatan`
--

CREATE TABLE IF NOT EXISTS `tbl_data_riwayat_jabatan` (
  `id_riwayat_jabatan` int(50) NOT NULL AUTO_INCREMENT,
  `id_pegawai` int(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `penempatan` varchar(50) NOT NULL,
  `id_jabatan` int(50) NOT NULL,
  `id_unit_kerja` int(50) NOT NULL,
  `uraian` text NOT NULL,
  `id_eselon` int(50) NOT NULL,
  `tmt_eselon` varchar(50) NOT NULL,
  `nomor_sk` varchar(50) NOT NULL,
  `tanggal_sk` varchar(50) NOT NULL,
  `tanggal_mulai` varchar(50) NOT NULL,
  `tanggal_selesai` varchar(50) NOT NULL,
  `lokasi` varchar(150) NOT NULL,
  PRIMARY KEY (`id_riwayat_jabatan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_data_riwayat_jabatan`
--

INSERT INTO `tbl_data_riwayat_jabatan` (`id_riwayat_jabatan`, `id_pegawai`, `status`, `penempatan`, `id_jabatan`, `id_unit_kerja`, `uraian`, `id_eselon`, `tmt_eselon`, `nomor_sk`, `tanggal_sk`, `tanggal_mulai`, `tanggal_selesai`, `lokasi`) VALUES
(2, 15, 'PNS PUSAT', 'PUSAT', 116, 1, 'STAF SEKSI SULAWESI UTARA DAN GORONTALO, SUBDIT WILAYAH TIMUR IV, DIREKTORAT JALAN DAN JEMBATAN WILAYAH TIMUR, DIREKTORAT JENDERAL BINA MARGA, DEP PU', 32, '-', '-', '-', '-', '-', '-'),
(3, 16, 'PNS PUSAT', 'PUSAT', 116, 16479, 'STAF BALAI PELAKSANAAN JALAN NASIONAL XI,    DITJEN BINA MARGA', 32, '-', '11/KPTS/BS/2011', '-', '-', '-', 'SULAWESI UTARA'),
(4, 18, 'PNS PUSAT', 'PUSAT', 116, 16479, 'BALAI PELAKSANAAN JALAN NASIONAL XI, DITJEN BINA MARGA', 32, '11/KPTS/BS/2011', '11/KPTS/BS/2011', '16 March 2011', '16 March 2011', '-', '-'),
(5, 18, 'PNS PUSAT', 'PUSAT', 116, 16479, 'STAF BALAI BESAR PELAKSANAAN JALAN NASIONAL VI,  DIREKTORAT JENDERAL BINA MARGA,  DEP PU', 32, '-', '-', '-', '01 December 2008', '-', '-'),
(6, 19, 'PNS PUSAT', 'PUSAT', 116, 16479, 'STAF BALAI BESAR P ALAN NASIONAL VI,  DIREKTORAT JENDERAL BINA MARGA,  DEP PU', 32, '-', '-', '-', '01 December 2008', '15 March 2011', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_riwayat_pangkat`
--

CREATE TABLE IF NOT EXISTS `tbl_data_riwayat_pangkat` (
  `id_riwayat_pangkat` int(50) NOT NULL AUTO_INCREMENT,
  `id_pegawai` int(50) NOT NULL,
  `id_golongan` int(30) NOT NULL,
  `status` varchar(50) NOT NULL,
  `nomor_sk` varchar(50) NOT NULL,
  `tanggal_sk` varchar(50) NOT NULL,
  `tanggal_mulai` varchar(50) NOT NULL,
  `tanggal_selesai` varchar(50) NOT NULL,
  `masa_kerja` varchar(30) NOT NULL,
  PRIMARY KEY (`id_riwayat_pangkat`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_data_riwayat_pangkat`
--

INSERT INTO `tbl_data_riwayat_pangkat` (`id_riwayat_pangkat`, `id_pegawai`, `id_golongan`, `status`, `nomor_sk`, `tanggal_sk`, `tanggal_mulai`, `tanggal_selesai`, `masa_kerja`) VALUES
(1, 1, 16, 'PNS DAERAH', '23.3/BKD/SK/43/2009', '01 April 2009', '01 April 2009', '06 November 2012', '3 Tahun 7 Bulan'),
(2, 1, 13, 'PNS DAERAH', '23.3/BKD/SK/04/2005', '01 Maret 2005', '01 Maret 2005', '31 March 2009', '3 Tahun 11 Bulan'),
(3, 1, 14, 'PNS DAERAH', '823.3/7/SK/99/2001', '01 March 2001', '01 March 2001', '31 March 2005', '3 Tahun 11 Bulan'),
(4, 1, 13, 'PNS DAERAH', '821.13/9/SK/155/1998', '01 December 1998', '01 December 1998', '31 March 2001', '2 Tahun 3 bulan'),
(5, 1, 13, 'CPNS DaAERAH', '813.3/9/SK/96/1997', '01 March 1997', '01 March 1997', '30 November 1998', '1 Tahun 8 Bulan'),
(6, 2, 17, 'PNS PUSAT', '823.4/BKPAD/SK/190/2008', '31 March 2008', '01 April 2008', '21 November 2012', '4 Tahun 7 Bulan'),
(7, 15, 14, 'PNS PUSAT', '-', '-', '01 October 2010', '-', '-'),
(8, 16, 14, 'PNS PUSAT', 'Db/018/C/2010 - O', '23 February 2010', '01 March 2010', '-', '-'),
(9, 18, 14, 'PNS PUSAT', 'Db/054/B/2011-N', '21 March 2011', '01 April 2011', '-', '1 Tahun 7 Bulan'),
(10, 19, 14, 'PNS PUSAT', '01/12/2008', '-', '-', '-', '3 Tahun 11 Bulan'),
(11, 20, 14, 'PNS PUSAT', 'Db/274/B/2011-D', '21 March 2011', '01 April 2011', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_seminar`
--

CREATE TABLE IF NOT EXISTS `tbl_data_seminar` (
  `id_seminar` int(50) NOT NULL AUTO_INCREMENT,
  `id_pegawai` int(50) NOT NULL,
  `uraian` text NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  PRIMARY KEY (`id_seminar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_eselon`
--

CREATE TABLE IF NOT EXISTS `tbl_master_eselon` (
  `id_eselon` int(50) NOT NULL AUTO_INCREMENT,
  `nama_eselon` varchar(150) NOT NULL,
  `level` varchar(50) NOT NULL,
  PRIMARY KEY (`id_eselon`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `tbl_master_eselon`
--

INSERT INTO `tbl_master_eselon` (`id_eselon`, `nama_eselon`, `level`) VALUES
(23, 'I.a', '1'),
(24, 'I.b', '2'),
(25, 'II.a', '3'),
(26, 'II.b', '4'),
(27, 'III.a', '5'),
(28, 'III.b', '6'),
(29, 'IV.a', '7'),
(30, 'IV.b', '8'),
(31, 'V', '9'),
(32, '-', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_golongan`
--

CREATE TABLE IF NOT EXISTS `tbl_master_golongan` (
  `id_golongan` int(50) NOT NULL AUTO_INCREMENT,
  `golongan` varchar(100) NOT NULL,
  `uraian` text NOT NULL,
  `level` varchar(50) NOT NULL,
  PRIMARY KEY (`id_golongan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tbl_master_golongan`
--

INSERT INTO `tbl_master_golongan` (`id_golongan`, `golongan`, `uraian`, `level`) VALUES
(4, 'CPNS', 'CALON PEGAWAI NEGERI SIPIL', '18'),
(5, 'I/A', 'JURU MUDA', '17'),
(6, 'I/B', 'JURU MUDA TINGKAT I', '16'),
(7, 'I/C', 'JURU', '15'),
(8, 'I/D', 'JURU TINGKAT I', '14'),
(9, 'II/A', 'PENGATUR MUDA', '13'),
(10, 'II/B', 'PENGATUR MUDA TK IPENGATUR MUDA TK I', '12'),
(11, 'II/C', 'Pengatur', '11'),
(12, 'II/D', 'PENGATUR TINGKAT I', '10'),
(13, 'III/A', 'PENATA MUDA', '9'),
(14, 'III/B', 'PENATA MUDA TINGKAT I', '8'),
(15, 'III/C', 'PENATA', '7'),
(16, 'III/D', 'PENATA TINGKAT I', '6'),
(17, 'IV/A', 'PEMBINA', '5'),
(18, 'IV/B', 'PEMBINA TINGKAT I', '4'),
(19, 'IV/C', 'PEMBINA UTAMA MUDA', '3'),
(20, 'IV/D', 'PEMBINA UTAMA MADYA', '2'),
(21, '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_hukuman`
--

CREATE TABLE IF NOT EXISTS `tbl_master_hukuman` (
  `id_hukuman` int(50) NOT NULL AUTO_INCREMENT,
  `nama_hukuman` varchar(100) NOT NULL,
  PRIMARY KEY (`id_hukuman`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_master_hukuman`
--

INSERT INTO `tbl_master_hukuman` (`id_hukuman`, `nama_hukuman`) VALUES
(4, 'TEGURAN LISAN'),
(5, 'TEGURAN TERTULIS'),
(6, 'PERNYATAAN TAK PUAS TERTULIS'),
(7, 'PENUNDAAN KGB'),
(8, 'PENUNDAAN Kp'),
(9, 'PENURUNAN PANGKAT'),
(10, 'PEMBEBASAN DARI JABATAN'),
(11, 'PEMBERHENTIAN DENGAN HORMAT TAPS'),
(12, 'PEMBERHENTIAN TIDAK DENGAN HORMAT');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_jabatan`
--

CREATE TABLE IF NOT EXISTS `tbl_master_jabatan` (
  `id_jabatan` int(50) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2350 ;

--
-- Dumping data for table `tbl_master_jabatan`
--

INSERT INTO `tbl_master_jabatan` (`id_jabatan`, `nama_jabatan`, `level`) VALUES
(2344, '-', '-'),
(2345, 'STAF', '0'),
(2346, '.BALAI BESAR PELAKSANAAN JALAN NASIONAL VI  DIREKTORAT JENDERAL BINA MARGA, DEP PU', '.BALAI BESAR PELAKSANAAN JALAN NASIONAL VI  DIREKT'),
(2347, 'KEPALA SATKER PELAKSANAAN JALAN NASIONAL PROVINSI GORONTALO', 'KEPALA SATKER'),
(2348, 'STAF', 'STAF'),
(2349, 'KEPALA SATKER PELAKSANAAN JALAN NASIONAL PROVINSI SULAWESI UTARA', 'KEPALA SATKER');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_lokasi_kerja`
--

CREATE TABLE IF NOT EXISTS `tbl_master_lokasi_kerja` (
  `id_lokasi_kerja` int(10) NOT NULL AUTO_INCREMENT,
  `lokasi_kerja` varchar(100) NOT NULL,
  PRIMARY KEY (`id_lokasi_kerja`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `tbl_master_lokasi_kerja`
--

INSERT INTO `tbl_master_lokasi_kerja` (`id_lokasi_kerja`, `lokasi_kerja`) VALUES
(1, 'NANGROE ACEH DARUSALAM'),
(2, 'SUMATERA UTARA'),
(3, 'SUMATERA BARAT'),
(4, 'RIAU'),
(5, 'JAMBI'),
(6, 'SUMATERA SELATAN'),
(7, 'BENGKULU'),
(8, 'LAMPUNG'),
(9, 'DKI JAKARTA'),
(10, 'JAWA BARAT'),
(11, 'JAWA TENGAH'),
(12, 'DI YOGYAKARTA'),
(13, 'JAWA TIMUR'),
(14, 'BALI'),
(15, 'NUSA TENGGARA BARAT'),
(16, 'NUSA TENGGARA TIMUR'),
(17, 'MANADO'),
(18, 'KALIMANTAN BARAT'),
(19, 'KALIMANTAN TENGAH'),
(20, 'KALIMANTAN SELATAN'),
(21, 'KALIMANTAN TIMUR'),
(22, 'SULAWESI UTARA'),
(23, 'SULAWESI TENGAH'),
(24, 'SULAWESI SELATAN'),
(25, 'SULAWESI TENGGARA'),
(26, 'IRIAN JAYA BARAT'),
(27, 'BANTEN'),
(28, 'PAPUA'),
(29, 'GORONTALO'),
(30, 'SULAWESI BARAT'),
(31, 'KEP. RIAU'),
(32, 'MALUKU UTARA'),
(33, 'MALUKU');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_lokasi_pelatihan`
--

CREATE TABLE IF NOT EXISTS `tbl_master_lokasi_pelatihan` (
  `id_lokasi_pelatihan` int(50) NOT NULL AUTO_INCREMENT,
  `nama_lokasi` varchar(100) NOT NULL,
  PRIMARY KEY (`id_lokasi_pelatihan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tbl_master_lokasi_pelatihan`
--

INSERT INTO `tbl_master_lokasi_pelatihan` (`id_lokasi_pelatihan`, `nama_lokasi`) VALUES
(3, 'BALAI DIKLAT PU WIL I MEDAN'),
(4, 'BALAI DIKLAT PU WIL II BANDUNG'),
(5, 'BALAI DIKLAT PU WIL III YOGYAKARTA'),
(6, 'BALAI DIKLAT PU WIL IV SURABAYA'),
(7, 'BALAI DIKLAT PU WIL V MAKASAR'),
(8, 'BALAI DIKLAT PU WIL VI JAKARTA'),
(9, 'BALAI DIKLAT PU WIL VII BANJARMASIN'),
(10, 'BALAI DIKLAT PU WIL VIII PALEMBANG'),
(11, 'BALAI DIKLAT PU WIL IX JAYAPURA'),
(12, 'LAN JAKARTA'),
(13, 'LAN SEMARANG'),
(14, 'LAN SURABAYA'),
(15, 'LAN MAKASAR'),
(16, 'LAIN-LAIN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_pelatihan`
--

CREATE TABLE IF NOT EXISTS `tbl_master_pelatihan` (
  `id_pelatihan` int(50) NOT NULL AUTO_INCREMENT,
  `nama_pelatihan` varchar(150) NOT NULL,
  `level` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pelatihan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=395 ;

--
-- Dumping data for table `tbl_master_pelatihan`
--

INSERT INTO `tbl_master_pelatihan` (`id_pelatihan`, `nama_pelatihan`, `level`) VALUES
(1, 'LEMHANNAS', '1'),
(2, 'SESPA', '2'),
(3, 'SESPASUS', '0'),
(4, 'SESKOAD', '0'),
(5, 'KM-III', '0'),
(6, 'SEPADYA', '3'),
(7, 'KM-IV', '0'),
(8, 'SEPALA', '4'),
(9, 'SEPADA', '0'),
(10, 'SESPUT', '0'),
(11, 'TARPADNAS', '0'),
(12, 'UJIAN DINAS TK I', '0'),
(13, 'UJIAN DINAS TK II', '0'),
(14, 'UJIAN DINAS TK III', '0'),
(15, 'SPATI', '1'),
(16, 'SPAMEN (DIKLATPIM TK.II)', '2'),
(17, 'SPAMA (DIKLATPIM TK.III)', '3'),
(18, 'ADUM (DIKLATPIM TK.IV)', '4'),
(19, 'EVALUASI & PELAPORAN', '0'),
(20, 'PENATARAN P4', '0'),
(21, 'ADMINISTRASI & KEUANGAN', '0'),
(22, 'ANALISA JABATAN', '0'),
(23, 'MATERIAL MANAGEMENT', '0'),
(24, 'NETWORK PLANNING', '0'),
(25, 'PENATARAN ATLAS', '0'),
(26, 'PENGAWASAN MELEKAT', '0'),
(27, 'P.T.K.', '0'),
(28, 'PROCUREMENT', '0'),
(29, 'MANAGEMENT PROYEK', '0'),
(30, 'SCREENING', '0'),
(31, 'PUBLIC ADMINISTRATION', '0'),
(32, 'ADMINISTRASI KEPEGAWAIAN', '0'),
(33, 'ADMINISTRASI PERKANTORAN', '0'),
(34, 'AKUNTANSI', '0'),
(35, 'ADMINISTRASI TEKNIS', '0'),
(36, 'ASPAL BETON', '0'),
(37, 'BAHASA INGGRIS', '0'),
(38, 'BENDAHARAWAN', '0'),
(39, 'BENDAHARAWAN', '0'),
(40, 'BREVET', '0'),
(41, 'BREVET A', '0'),
(42, 'BREVET B', '0'),
(43, 'BREVET C', '0'),
(44, 'DRAFTER REPRODUKSI GRAFIKA', '0'),
(45, 'DRAINASE', '0'),
(46, 'DRIVER', '0'),
(47, 'E & P', '0'),
(48, 'E & P IRIGASI', '0'),
(49, 'ENGINEERING & MANAGEMENT', '0'),
(50, 'GAMBAR', '0'),
(51, 'GROUND WATER MONITORING PROCEDURE', '0'),
(52, 'HIDROMETRI', '0'),
(53, 'INSTRUKTUR DIKLAT KEPENDUDUKAN', '0'),
(54, 'INSTRUKTUR MEKANIK', '0'),
(55, 'INSTRUKTUR MEKANIK & PERALATAN', '0'),
(56, 'INSTRUKTUR OPERATOR', '0'),
(57, 'INSTRUKTUR OPERATOR PERALATAN', '0'),
(58, 'INTERPRET FOTO UDARA', '0'),
(59, 'INVENTARISASI BARANG', '0'),
(60, 'IRIGASI SEDERHANA', '0'),
(61, 'JURU AIR', '0'),
(62, 'JURU UKUR', '0'),
(63, 'KADER TEKNIK TK C (OPSETER)', '0'),
(64, 'KEARSIPAN', '0'),
(65, 'KEINSTRUKTURAN', '0'),
(66, 'KOMPUTER', '0'),
(67, 'KEPROTOKOLAN', '0'),
(68, 'KESELAMATAN & KESEHATAN KERJA', '0'),
(69, 'KETERTIBAN & KEAMANAN', '0'),
(70, 'KOMPUTER BASIC', '0'),
(71, 'KOMPUTER FORTRAN', '0'),
(72, 'KOMPUTER INTRODUCTION', '0'),
(73, 'KOMPUTER PROGRAMMING', '0'),
(74, 'MANAGEMENT LOGISTIK', '0'),
(75, 'MANDOR/FOREMAN', '0'),
(76, 'MEKANIK', '0'),
(77, 'MEKANIK LAPANGAN', '0'),
(78, 'MEKANIK LISTRIK', '0'),
(79, 'MEKANIK UMUM', '0'),
(80, 'OPERATION RESEARCH', '0'),
(81, 'OPERATOR KOMPUTER', '0'),
(82, 'OPERATOR MEKANIK', '0'),
(83, 'PADAT KARYA GAYA BARU', '0'),
(84, 'PEJABAT INTI PROYEK', '0'),
(85, 'PEMADAM KEBAKARAN', '0'),
(86, 'PEMASANGAN BATA & PELESTERAN', '0'),
(87, 'PEMBINAAN HUKUM', '0'),
(88, 'PEMIMPIN PROYEK JALAN (PPJ)', '0'),
(89, 'PENGAMAT BID PENGAIRAN', '0'),
(90, 'PENGAWASAN BANGUNAN', '0'),
(91, 'PENGETAHUAN BARANG', '0'),
(92, 'PENGGUNAAN MESIN TIK IBM', '0'),
(93, 'PENINGKATAN PENGEMUDI', '0'),
(94, 'PENYIMPANAN & PENYALURAN', '0'),
(95, 'IKMN', '0'),
(96, 'PENYUSUNAN ANGGARAN', '0'),
(97, 'PERENC DETAIL KOTA', '0'),
(98, 'PERENC SOSIAL PENGEMBANGAN AREA', '0'),
(99, 'PERENC SOSIAL PENGEMBANGAN KOTA', '0'),
(100, 'PERINTIS PERBAIKAN PERUMAHAN KOTA', '0'),
(101, 'PRATUGAS BID BINA MARGA', '0'),
(102, 'PRATUGAS BID CIPTA KARYA', '0'),
(103, 'PRATUGAS BID PENGAIRAN', '0'),
(104, 'PRATUGAS PENGAWASAN', '0'),
(105, 'PRATUGAS PERENCANAAN', '0'),
(106, 'PROFFESIONAL STAFF', '0'),
(107, 'PROG PENGAWASAN TATA PENGAIRAN', '0'),
(108, 'PROG TEKNIK MENGGAMBAR', '0'),
(109, 'QUALITY CONTROL', '0'),
(110, 'SATPAM', '0'),
(111, 'SEISMOLOGI & TEKNOLOGI GEMPA', '0'),
(112, 'SINDER BID BM', '0'),
(113, 'SISTEM AKUNTANSI', '0'),
(114, 'SURVEY & MAPPING', '0'),
(115, 'TATA KEARSIPAN', '0'),
(116, 'TEKNIS PADAT KARYA GAYA BARU', '0'),
(117, 'TEKNOLOGI BETON', '0'),
(118, 'TEKNOLOGI GEMPA', '0'),
(119, 'TENAGA INTI', '0'),
(120, 'TENAGA PELAKSANA PEMBANGUNAN PERUMAHAN RAKYAT', '0'),
(121, 'UKUR TANAH', '0'),
(122, 'VERIFIKASI', '0'),
(123, 'UKUR TANAH & PEMETAAN', '0'),
(124, 'UKUR TANAH BID KE-AIR-AN', '0'),
(125, 'UKUR TANAH BID KE-BM-AN', '0'),
(126, 'UKUR TANAH BID KE-CK-AN', '0'),
(127, 'UKUR TANAH TK A/B', '0'),
(128, 'HYDROLOGY', '0'),
(129, 'LAND CAPABILITY EVALUATION', '0'),
(130, 'PLANNING & DESIGN', '0'),
(131, 'DESIGN OF SMALL HYDRAULIC STRUCTURES', '0'),
(132, 'IRRIGATION AND DRAINAGE LAYOUT', '0'),
(133, 'OVERVIEW OF PROJECT SELECTION THROUGH TH', '0'),
(134, 'REVIEW OF SSIMP STRUCTURE DESIGNS', '0'),
(135, 'MATHEMATICAL MODEL SIMULATION', '0'),
(136, 'SITE SELECTION-GROUND WATER', '0'),
(137, 'PENGAWASAN & PELAKSANAAN KONSTRUKSI', '0'),
(138, 'CONSTRUCTION SUPERVISION', '0'),
(139, 'WELL DESIGN & WELL CONSTRUCTION', '0'),
(140, 'CONSTRUCTION SUPERVISION TRAINING', '0'),
(141, 'LAB. TECHNICIAN TRAINING', '0'),
(142, 'KERJASAMA TEKNIK ANTAR NEGARA BERKEMBANG', '0'),
(143, 'INSTITUTIONAL DEVELOPMENT', '0'),
(144, 'WOMEN IN DEVELOPMENT', '0'),
(145, 'IRIGASI TAMBAK', '0'),
(146, 'O & M - AIR TANAH', '0'),
(147, 'O & M - IRIGASI', '0'),
(148, 'OPERATION & MAINTENANCE', '0'),
(149, 'WATER OPERATION CENTRE', '0'),
(150, 'OPERATION-ADVANCED OPERATION PROJECT', '0'),
(151, 'OPERATION-BUDGETTING', '0'),
(152, 'OPERATION-INTRODUCTION & MAINTENANCE', '0'),
(153, 'OPERATION-REQUIREMENT & MAINTENANCE', '0'),
(154, 'OPERATION-WATER DISTRIBUTION', '0'),
(155, 'INFORMATION FILM', '0'),
(156, 'KEY FARMERS', '0'),
(157, 'TRAINING IN FARM MACHINERY - OPERATORS', '0'),
(158, 'TRAINING OF ACTION GROUP', '0'),
(159, 'TRAINING OF FIELD GROUPS', '0'),
(160, 'WATER USE MANAGEMENT', '0'),
(161, 'INVENTARISASI LAPANGAN', '0'),
(162, 'PENELITIAN PENGAIRAN (PTGA)', '0'),
(163, 'PENGEMBANGAN POLA SOCIO-TECHNICAL ASSOSI', '0'),
(164, 'AGRICULTURAL DEVELOPMENT', '0'),
(165, 'ENUMERATOR TRAINING', '0'),
(166, 'TRAINING OF SURVEYORS', '0'),
(167, 'AGRO-ECONOMIC ANALYSIS', '0'),
(168, 'TEKNIK PANTAI', '0'),
(169, 'COASTAL ZONE MANAGEMENT', '0'),
(170, 'O & M - RAWA', '0'),
(171, 'KEAMANAN BENDUNGAN', '0'),
(172, 'OVERVIEW OF DAM DESIGN AND CONSTRUCTION', '0'),
(173, 'PERENCANAAN & PEMBUATAN PROGRAM', '0'),
(174, 'MANAJEMEN LALU LINTAS', '0'),
(175, 'KEAMANAN JALAN', '0'),
(176, 'KEBISINGAN LALULINTAS', '0'),
(177, 'KESELAMATAN JALAN RAYA', '0'),
(178, 'PENCEMARAN UDARA', '0'),
(179, 'PARKIR', '0'),
(180, 'PENAKSIRAN CEPAT PERGERAKAN DIPERKOTAAN', '0'),
(181, 'TANAH LEMBEK', '0'),
(182, 'PENINGKATAN KEMAMPUAN TEKNISI LABORATORIUM', '0'),
(183, 'PENGENDALIAN MUTU JALAN & JEMBATAN', '0'),
(184, 'PELAKSANAAN PEKERJAAN KONSTRUKSI JALAN', '0'),
(185, 'PELAKSANAAN PERCOBAAN PENGHAMPARAN ASPAL', '0'),
(186, 'PENANGGULANGAN EROSI LERENG JALAN', '0'),
(187, 'PENGAWAS PELAKSANA KONSTRUKSI JALAN', '0'),
(188, 'OPERATOR PERALATAN JALAN', '0'),
(189, 'PENANGANAN & PERAWATAN ALAT-ALAT KONSTR.', '0'),
(190, 'DRIVING/RIDING TRAINING', '0'),
(191, 'LEGGER JALAN', '0'),
(192, 'TATA CARA PENULISAN LAPORAN', '0'),
(193, 'PEMASYARAKATAN PRODUK HASIL PUSLITBANG', '0'),
(194, 'KOMPUTERISASI INVENTARISASI BAHAN JALAN', '0'),
(195, 'INTEGRASI KOMPUTERISASI LEGER JALAN', '0'),
(196, 'MODEL PROJECT-SEMINAR', '0'),
(197, 'METODOLOGI PENELITIAN', '0'),
(198, 'PENGGUNAAN ALAT FWD', '0'),
(199, 'PENGGUNAAN X-RAY FLOURESCENE', '0'),
(200, 'DAUR ULANG KONSTRUKSI PEKERJAAN JALAN', '0'),
(201, 'PENYEMPURNAAN STANDAR SPESIFIKASI ASPAL', '0'),
(202, 'PEMELIHARAAN RUTIN DAN BERKALA', '0'),
(203, 'PENDATAAN JALAN', '0'),
(204, 'HASIL PENELITIAN ASPAL KARET DILAPANGAN', '0'),
(205, 'DESAIN JEMBATAN', '0'),
(206, 'PERENCANAAN DAN PEMROGRAMAN JEMBATAN', '0'),
(207, 'PROSEDUR UMUM', '0'),
(208, 'GENERAL HIGHWAY COURSE', '0'),
(209, 'BRIDGE PLANNING & PROGRAMMING INSTRUCTOR', '0'),
(210, 'PLANNING & PROGRAMMING WORKSHOP', '0'),
(211, 'KONSTRUKSI EKSPANSION JOINT', '0'),
(212, 'INSPEKSI KONDISI JEMBATAN', '0'),
(213, 'PENGAWASAN PEMBANGUNAN JEMBATAN', '0'),
(214, 'KONSULTAN P3KT', '0'),
(215, 'PERKUATAN JEMBATAN', '0'),
(216, 'BRIDGE ROUTINE INSPECTION', '0'),
(217, 'BRIDGE CONSTRUCTION SUPERVISION', '0'),
(218, 'PEMELIHARAAN JEMBATAN', '0'),
(219, 'PEMELIHARAAN RUTIN & BERKALA JALAN KOTA', '0'),
(220, 'PENATAAN UNTUK TROUBLE SHOOTER', '0'),
(221, 'DESIMINASI KETATABANGUNAN', '0'),
(222, 'PENGELOLAAN & PEMANFAATAN GEDUNG NEGARA', '0'),
(223, 'KEPALA SEKSI BID.PERSAMPAHAN', '0'),
(224, 'TEKNOLOGI BANGUNAN BID PEMUKIMAN', '0'),
(225, 'LAB. BIDANG PENGUJIAN', '0'),
(226, 'MANAJEMEN PEMBANGUANAN KOTA DE', '0'),
(227, 'PEMANTAPAN MATERI TEKNIS PELATIHAN', '0'),
(228, 'PENATAAN RUANG DAERAH', '0'),
(229, 'PENATAAN RUANG', '0'),
(230, 'PENATAAN RUANG KOTA METROPOLITAN', '0'),
(231, 'PENATAAN RUANG TERBUKA UMUM', '0'),
(232, 'PENGEMBANGAN PROFESI PERENCANA', '0'),
(233, 'PENYIAPAN PROGRAM P3KT', '0'),
(234, 'MANAJEMEN KAWASAN PERKOTAAN', '0'),
(235, 'PENINGKATAN KEMAMPUAN TENAGA PENATAAN', '0'),
(236, 'PENATAAN RUANG KAWASAN PARIWISATA', '0'),
(237, 'LOKAKARYA P3KT BAGI STAF PROFESIONAL', '0'),
(238, 'PENATAAN RUANG KOTA METROPOLITAN', '0'),
(239, 'PENATAAN RUANG KOTA BARU', '0'),
(240, 'PRE COURSE IUDM', '0'),
(241, 'SISTIM INFORMASI GEOGRAFI', '0'),
(242, 'DESAIN JALAN/JEMBATAN', '0'),
(243, 'TRAINING TEHNIK KOMUNIKASI', '0'),
(244, 'COMUNICATION SAMS', '0'),
(245, 'TATA KEARSIPAN DAN PERSURATAN', '0'),
(246, 'TATALAKSANA ADMINISTRASI', '0'),
(247, 'KESEKRETARIATAN', '0'),
(248, 'PENGELOLAAN ARSIP AKTIF', '0'),
(249, 'PENYEGARAN SATPAM', '0'),
(250, 'MANAJEMEN PERKANTORAN', '0'),
(251, 'INFORMASI & KOMUNIKASI', '0'),
(252, 'KEHUMASAN', '0'),
(253, 'OPERATOR TELEX', '0'),
(254, 'PENINGKATAN KEMAMPUAN BAHASA INGGRIS', '0'),
(255, 'DHARMA WANITA CONVERSATION CLASS', '0'),
(256, 'ENGLISH FOR INKINDO ENGINEERS', '0'),
(257, 'ENGLISH FOR INTERNATIONAL COOPERATION', '0'),
(258, 'ENGLISH LEVEL II', '0'),
(259, 'ENGLISH LEVEL III', '0'),
(260, 'KETERAMPILAN PEGAWAI/ BAHASA INGGRIS', '0'),
(261, 'BPBLAV', '0'),
(262, 'TRAINING OF TRAINERS', '0'),
(263, 'TEKNIK KEINSTRUKTURAN', '0'),
(264, 'INSTRUKTUR', '0'),
(265, 'TEKNIK INSTRUKSIONAL I', '0'),
(266, 'TOT FOR ENGLISH TEACHERS', '0'),
(267, 'PENGEMBANGAN KURIKULUM DAN MEDIA', '0'),
(268, 'CURRICULUM DEVELOPMENT', '0'),
(269, 'AUDIO VISUAL', '0'),
(270, 'MANAJEMEN PELATIHAN', '0'),
(271, 'INDONESIA TRAINING NETWORK (INTN)', '0'),
(272, 'PENYEGARAN PEDIKPROP', '0'),
(273, 'MONITORING DAN EVALUASI DIKLAT', '0'),
(274, 'MANAJEMEN DIKLAT', '0'),
(275, 'RENCANA DIKLAT DAERAH', '0'),
(276, 'MANAJEMEN KOMPUTER', '0'),
(277, 'PERPUSTAKAAN', '0'),
(278, 'MANAGEMENT INFORMATION SYSTEMS', '0'),
(279, 'PENGINDRAAN JAUH & SIST INFO GEOGRAFI', '0'),
(280, 'BENDAHARAWAN PENERIMA', '0'),
(281, 'MANAJEMEN KEUANGAN', '0'),
(282, 'TATA USAHA ADMINISTRASI KEUANGAN', '0'),
(283, 'PEMBUKUAN & PENYUSUNAN LAPORAN KEUANGAN', '0'),
(284, 'FINANCIAL MANAGEMENT', '0'),
(285, 'CARA PENGADAAN KONSULTAN', '0'),
(286, 'PENGADAAN JASA KONSTRUKSI', '0'),
(287, 'PENGADAAN BARANG DAN JASA KONSULTAN', '0'),
(288, 'BIMBINGAN TEKNIS IKMN', '0'),
(289, 'MANAJEMEN PERALATAN', '0'),
(290, 'PENGADAAN BARANG', '0'),
(291, 'MANAJEMEN AUDIT', '0'),
(292, 'ADMINISTRASI BANTUAN LUAR NEGERI', '0'),
(293, 'ABLN', '0'),
(294, 'PENYULUHAN ADM. PINJAMAN LUAR NEGERI', '0'),
(295, 'MANAGEMENT DEVELOPMENT', '0'),
(296, 'PERENCANAAN TENAGA KERJA', '0'),
(297, 'PSYKOLOGI TERAPAN', '0'),
(298, 'SISTEM PENILAIAN PERFORMANCE PEGAWAI', '0'),
(299, 'SIST PEMBGN. KARIER & PENGKAJIAN KINERJA', '0'),
(300, 'KESEHATAN DAN KESELAMATAN KERJA', '0'),
(301, 'MANPOWER PLANNING INFORMATION SYSTEM', '0'),
(302, 'COORDINATION OF PLANNING & PROGRAMMING', '0'),
(303, 'MANAJEMEN PROYEK', '0'),
(304, 'PEMIMPIN PROYEK FISIK/P3F', '0'),
(305, 'TECHNICAL ASPECTS OF PROJECT MANAGEMENT', '0'),
(306, 'MANAJEMEN SKILL DAN DINAMIKA KELOMPOK', '0'),
(307, 'PRAJABATAN UMUM TINGKAT I', '0'),
(308, 'PRAJABATAN UMUM TINGKAT II', '0'),
(309, 'ASPEK HUKUM', '0'),
(310, 'PRAJABATAN UMUM TINGKAT III', '0'),
(311, 'TATA CARA PEMAKAIAN STANDAR BIDANG PU', '0'),
(312, 'INFORMASI TENTANG PTUN', '0'),
(313, 'HUKUM PERBURUHAN', '0'),
(314, 'PENERAPAN HUKUM & PERUNDANG-UNDANGAN', '0'),
(315, 'KOLOKIUM HASIL PENELITIAN & PENGEMBANGAN', '0'),
(316, 'PERENCANAAN PENANGGULANGAN BENCANA ALAM', '0'),
(317, 'PREPARATION OF TENDER DOCUMENTS', '0'),
(318, 'PROSEDUR TENDER', '0'),
(319, 'GAMBAR & ANGGARAN', '0'),
(320, 'GRAFIKA', '0'),
(321, 'TEKNIK GAMBAR & ANGGARAN', '0'),
(322, 'INSTRUKTUR WORKSHOP P3KT', '0'),
(323, 'ASISTEN TEKNISI LABORATORIUM', '0'),
(324, 'TEKNISI LABORATORIUM & REKAYASA', '0'),
(325, 'PENGAWAS LAPANGAN', '0'),
(326, 'TRAINING JOB SITE (OECF)', '0'),
(327, 'VALUE CONTROL', '0'),
(328, 'QUALITY SURVEYOR', '0'),
(329, 'SUPERVISI KONSTRUKSI', '0'),
(330, 'KETERAMPILAN MEKANIK', '0'),
(331, 'KETERAMPILAN OPERATOR', '0'),
(332, 'KETERAMPILAN OPERATOR DUMP TRUCK', '0'),
(333, 'MEKANIK DASAR', '0'),
(334, 'SIMKA', '0'),
(335, 'PENINGKATAN MEKANIK OPERATOR BUMAR WHEEL', '0'),
(336, 'PENINGKATAN MEKANIK STONE CRUSHER', '0'),
(337, 'BAHAN BANGUNAN DAN LABORATORIUM', '0'),
(338, 'PENINGKATAN LABORATORIUM', '0'),
(339, 'PENGUJIAN BAHAN (LABORATORIUM)', '0'),
(340, 'PENANGGULANGAN PENDERITA GAWAT DARURAT', '0'),
(341, 'PAKET STATISTIK', '0'),
(342, 'PENCEGAHAN BAHAYA KEBAKARAN', '0'),
(343, 'ANALISA DAMPAK LINGKUNGAN', '0'),
(344, 'STONE COLOUMN SEBAGAI REDUKSI PENURUNAN', '0'),
(345, 'SIMD UNTUK MANAJER', '0'),
(346, 'SIMD UNTUK OPERATOR', '0'),
(347, 'TRAINING LABORAN', '0'),
(348, 'FUNGSI PENGT.BID.KE-PU-AN', '0'),
(349, 'PENINGK.FUNGSI.PENGAT.BID.KE-PU-AN', '0'),
(350, 'PENGEMBANGAN SISTEM PERENC & KARIER', '0'),
(351, 'BIMBINGAN TEKNIK HUKUM', '0'),
(352, 'TEKNIK PELAKS. PROG. BUDAYA KERJA', '0'),
(353, 'TEKNIK PENYUSUNAN PEDOMAN KERJA', '0'),
(354, 'PEMBINAAN TEKNIS PASCA GEMPA', '0'),
(355, 'PENANGANAN TEKNIS BID.PERSAMPAHAN', '0'),
(356, 'APPLIED ENGINEERING', '0'),
(357, 'TEKNIS PENGT. PENATAAN BANGUNAN', '0'),
(358, 'TEKNIS PENGELOLAAN ADM. LAN', '0'),
(359, 'SINKRONISASI PERENCANAAN DAN PROGRAM', '0'),
(360, 'DESIMINASI TATACARA APLK.KEU.PROYEK', '0'),
(361, 'PENGELOLAAN ADMINISTRASI PROYEK', '0'),
(362, 'MANAJEMEN KONSTRUKSI PENGAIRAN', '0'),
(363, 'INSTRUKTUR TATAGUNA AIR', '0'),
(364, 'PENGAWAS UTAMA', '0'),
(365, 'PROGRAM D.III DALAM NAGERI', '0'),
(366, 'PROGRAM D.IV', '0'),
(367, 'PROGRAM S1 DALAM NEGERI', '0'),
(368, 'PROGRAM S2 DALAM NEGERI', '0'),
(369, 'PROGRAM S3 DALAM NEGERI', '0'),
(370, 'SIM KLN', '0'),
(371, 'PEMERIKSAAN PROGRAM/KOMPREHENSHIF', '0'),
(372, 'STANDARD PENGADAAN BARANG DAN JASA', '0'),
(373, 'PENINGK.FUNGSI PEL.TUGAS BID.KE-PU-AN', '0'),
(374, 'DASAR KEARSIPAN', '0'),
(375, 'MANAJEMEN PERPUSTAKAAN', '0'),
(376, 'APRESIASI PUSDOKINFO', '0'),
(377, 'OVERSEAS TRAINING LUAR NEGERI', '0'),
(378, 'ELECTRICAL INSTALLATION & INSTRUMENT', '0'),
(379, 'WATER SUPPLY MASTER PLANNING', '0'),
(380, 'WATER SUPPLY MANAGEMENT', '0'),
(381, 'WATER TREATMENT FACILITY PLAN & DESIGN', '0'),
(382, 'DISTRIBUTION SYSTEM PLANNING & DESIGN', '0'),
(383, 'WATER PURIFICATION', '0'),
(384, 'MAINTENANCE OF PIPELINE', '0'),
(385, 'LEAKAGE CONTROL', '0'),
(386, 'PENINGKATAN KOORDINASI PERENCANAAN', '0'),
(387, 'SINKRONISASI PROGRAM', '0'),
(388, 'AIR LIMBAH', '0'),
(389, 'MECHANICAL INSTALLATION', '0'),
(390, 'BIDANG PERSAMPAHAN', '0'),
(391, 'ORGANISASI & MANAJEMEN', '0'),
(392, 'PERSYARATAN JABATAN', '0'),
(393, 'TEKNIS KEPEGAWAIAN', '0'),
(394, '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_penghargaan`
--

CREATE TABLE IF NOT EXISTS `tbl_master_penghargaan` (
  `id_penghargaan` int(50) NOT NULL AUTO_INCREMENT,
  `nama_penghargaan` varchar(100) NOT NULL,
  PRIMARY KEY (`id_penghargaan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=114 ;

--
-- Dumping data for table `tbl_master_penghargaan`
--

INSERT INTO `tbl_master_penghargaan` (`id_penghargaan`, `nama_penghargaan`) VALUES
(1, 'BINTANG REPUBLIK INDONESIA'),
(2, 'BINTANG REPUBLIK INDONESIA ADIPURNA'),
(3, 'BINTANG REPUBLIK INDONESIA ADIPRADANA'),
(4, 'BINTANG REPUBLIK INDONESIA UTAMA'),
(5, 'BINTANG REPUBLIK INDONESIA PRATAMA'),
(6, 'BINTANG REPUBLIK INDONESIA NARARYA'),
(7, 'BINTANG MAHAPUTERA'),
(8, 'BINTANG MAHAPUTERA ADIPURNA'),
(9, 'BINTANG MAHAPUTERA ADIPRADANA'),
(10, 'BINTANG MAHAPUTERA UTAMA'),
(11, 'BINTANG MAHAPUTERA PRATAMA'),
(12, 'BINTANG MAHAPUTERA NARARYA'),
(13, 'BINTANG JASA'),
(14, 'BINTANG JASA UTAMA'),
(15, 'BINTANG JASA PRATAMA'),
(16, 'BINTANG JASA NARARYA'),
(17, 'BINTANG YUDHA DHARMA'),
(18, 'BINTANG YUDHA DHARMA UTAMA'),
(19, 'BINTANG YUDHA DHARMA PRATAMA'),
(20, 'BINTANG YUDHA DHARMA NARARYA'),
(21, 'BINTANG KARTIKA EKA PAKSI'),
(22, 'BINTANG KARTIKA EKA PAKSI UTAMA'),
(23, 'BINTANG KARTIKA EKA PAKSI PRATAMA'),
(24, 'BINTANG KARTIKA EKA PAKSI NARARYA'),
(25, 'BINTANG JALASENA'),
(26, 'BINTANG JALASENA UTAMA'),
(27, 'BINTANG JALASENA PRATAMA'),
(28, 'BINTANG JALASENA NARARYA'),
(29, 'BINTANG SWA BHUWANA PAKSA'),
(30, 'BINTANG SWA BHUWANA PAKSA UTAMA'),
(31, 'BINTANG SWA BHUWANA PAKSA PRATAMA'),
(32, 'BINTANG SWA BHUWANA PAKSA NARARYA'),
(33, 'BINTANG BHAYANGKARA'),
(34, 'BINTANG BHAYANGKARA UTAMA'),
(35, 'BINTANG BHAYANGKARA PRATAMA'),
(36, 'BINTANG BHAYANGKARA NARARYA'),
(37, 'BINTANG GARUDA'),
(38, 'BINTANG SEWINDU ANGKATAN PERANG RI'),
(39, 'SATYALANCANA BHAKTI'),
(40, 'SATYALANCANA TELADAN'),
(41, 'SATYALANCANA KESETIAAN'),
(42, 'SATYALANCANA KESETIAAN 8 TAHUN'),
(43, 'SATYALANCANA KESETIAAN 16 TAHUN'),
(44, 'SATYALANCANA KESETIAAN 24 TAHUN'),
(45, 'SATYALANCANA PERANG KEMERDEKAAN'),
(46, 'SATYALANCANA PERANG KEMERDEKAAN KELAS I'),
(47, 'SATYALANCANA PERANG KEMERDEKAAN KELAS II'),
(48, 'SATYALANCANA SAPTAMARGA'),
(49, 'SATYALANCANA GOM'),
(50, 'SATYALANCANA GOM KELAS I'),
(51, 'SATYALANCANA GOM KELAS II'),
(52, 'SATYALANCANA GOM KELAS III'),
(53, 'SATYALANCANA GOM KELAS IV'),
(54, 'SATYALANCANA GOM KELAS V'),
(55, 'SATYALANCANA GOM KELAS VI'),
(56, 'SATYALANCANA GOM KELAS VII'),
(57, 'SATYALANCANA GOM KELAS VIII'),
(58, 'SATYALANCANA GOM KELAS IX'),
(59, 'SATYALANCANA PERINTIS PERGERAKAN KEMERDEKAAN'),
(60, 'SATYALANCANA PERINGATAN PERJUANGAN KEMERDEKAAN'),
(61, 'SATYALANCANA PEMBANGUNAN'),
(62, 'SATYALANCANA KARYA SATYA'),
(63, 'SATYALANCANA KARYA SATYA KELAS I'),
(64, 'SATYALANCANA KARYA SATYA KELAS II'),
(65, 'SATYALANCANA KARYA SATYA KELAS III'),
(66, 'SATYALANCANA KARYA SATYA KELAS IV'),
(67, 'SATYALANCANA KARYA SATYA KELAS V'),
(68, 'SATYALANCANA KARYA SATYA XXX TAHUN'),
(69, 'SATYALANCANA KARYA SATYA XX TAHUN'),
(70, 'SATYALANCANA KARYA SATYA X TAHUN'),
(71, 'SATYALANCANA KEBAKTIAN SOSIAL'),
(72, 'SATYALANCANA KEBUDAYAAN'),
(73, 'SATYALANCANA JASA DHARMA ANGKATAN LAUT'),
(74, 'SATYALANCANA SATYA DASA WARSA POLRI'),
(75, 'SATYALANCANA JANA UTAMA'),
(76, 'SATYALANCANA KSATRYA TAMTAMA'),
(77, 'SATYALANCANA KARYA BHAKTI'),
(78, 'SATYALANCANA PRASETYA PANCA WARSA'),
(79, 'SATYALANCANA KEAMANAN'),
(80, 'SATYALANCANA WIRA KARYA'),
(81, 'SATYALANCANA SATYA DHARMA'),
(82, 'SATYALANCANA WIRA DHARMA'),
(83, 'SATYALANCANA YUDHA UTAMA KKO-AL'),
(84, 'SATYALANCANA YUDHA UTAMA KKO-AL KELAS I'),
(85, 'SATYALANCANA YUDHA UTAMA KKO-AL KELAS II'),
(86, 'SATYALANCANA DWIYA SISTHA'),
(87, 'SATYALANCANA PENEGAK'),
(88, 'SATYALANCANA PEPERA'),
(89, 'PIAGAM SATYA KARYA'),
(90, 'PIAGAM SATYA KARYA 20 TAHUN'),
(91, 'PIAGAM SATYA KARYA 30 TAHUN'),
(92, 'PIAGAM PENGHARGAAN ATAS JASA KHUSUS TEK.KEKARYAAN'),
(93, 'PIAGAM PENGHARGAAN TELADAN'),
(94, 'PIAGAM PENGHARGAAN TELADAN KEPEMIMPINAN'),
(95, 'PIAGAM PENGHARGAAN TELADAN KEPEGAWAIAN'),
(96, 'PIAGAM PENGHARGAAN TELADAN PELAK. TUGAS'),
(97, 'PIAGAM PENGHARGAAN ANUMERTA'),
(98, 'PIAGAM PENGHARGAAN KHUSUS'),
(99, 'SATYALANCANA SANTI DHARMA'),
(100, 'SATYALANCANA SEROJA'),
(101, 'SATYALANCANA PENDIDIKAN'),
(102, 'NUGRAHA SAKANTI JANA UTAMA'),
(103, 'NUGRAHA SAKANTI KSATRYA TAMTAMA'),
(104, 'NUGRAHA SAKANTI KARYA BHAKTI'),
(105, 'SAM KARYA NUGRAHA'),
(106, 'PRASAMYA PURNAKARYA NUGRAHA'),
(107, 'BINTANG SAKTI'),
(108, 'BINTANG DHARMA'),
(109, 'BINTANG GERILYA'),
(110, 'BINTANG BUDAYA PARAMA DHARMA'),
(111, 'SATYALANCANA PERISTIWA'),
(112, 'LAIN-LAIN'),
(113, '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_ppk`
--

CREATE TABLE IF NOT EXISTS `tbl_master_ppk` (
  `id_ppk` int(50) NOT NULL AUTO_INCREMENT,
  `nama_ppk` varchar(150) NOT NULL,
  `parent_satuan_kerja` varchar(50) NOT NULL,
  PRIMARY KEY (`id_ppk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=512 ;

--
-- Dumping data for table `tbl_master_ppk`
--

INSERT INTO `tbl_master_ppk` (`id_ppk`, `nama_ppk`, `parent_satuan_kerja`) VALUES
(31, 'PPK 18 (Metropolitan Medan Selatan, Cs)', 'PELAKSANAAN JALAN NASIONAL METROPOLITAN MEDAN'),
(32, 'PPK Pelaksanaan Jalan Bebas Hambatan Medan - Kuala Namu', 'PELAKSANAAN JALAN BEBAS HAMBATAN MEDAN - KUALANAMU'),
(33, 'PPK Perencanaan dan Pengawasan Jalan Bebas Hambatan Medan-Kuala Namu', 'PELAKSANAAN JALAN BEBAS HAMBATAN MEDAN - KUALANAMU'),
(34, 'PPK1 (Bts. Sumut - Simpang Kulim)', 'PELAKSANAAN JALAN NASIONAL WILAYAH I PROVINSI RIAU'),
(35, 'PPK 2 (Simpang Batam - Dumai)', 'PELAKSANAAN JALAN NASIONAL WILAYAH I PROVINSI RIAU'),
(36, 'PPK 3 (Simpang Palas - Pekanbaru)', 'PELAKSANAAN JALAN NASIONAL WILAYAH I PROVINSI RIAU'),
(37, 'PPK 4 (Jalan Subrantas Pekanbaru - Rantau Berangin - Batas Sumbar)', 'PELAKSANAAN JALAN NASIONAL WILAYAH I PROVINSI RIAU'),
(38, 'PPK 5 (Pekanbaru - Batas Kampar - Simpang Lago)', 'PELAKSANAAN JALAN NASIONAL WILAYAH II PROVINSI RIA'),
(39, 'PPK 6 (Simpang Lago - Batas Inhu - Simpang Jayapura)', 'PELAKSANAAN JALAN NASIONAL WILAYAH II PROVINSI RIA'),
(40, 'PPK 7 (Simpang Jayapura - Siberida - Batas Jambi)', 'PELAKSANAAN JALAN NASIONAL WILAYAH II PROVINSI RIA'),
(41, 'PPK 8 (Pematang Reba - Rengat - Kuala Enok)', 'PELAKSANAAN JALAN NASIONAL WILAYAH II PROVINSI RIA'),
(42, 'PPK 9 (Batas Kuansing - Taluk Kuantan - Batas Sumbar)', 'PELAKSANAAN JALAN NASIONAL WILAYAH II PROVINSI RIA'),
(43, 'PPK Perencanaan Dan Pengawasan Jalan Nasional Prov. Riau', 'PERENCANAAN DAN PENGAWASAN JALAN NASIONAL PROVINSI'),
(44, 'PPK 1 (Pulau Bintan)', 'PELAKSANAAN JALAN NASIONAL WILAYAH I PROVINSI KEPU'),
(45, 'PPK 2 (Pulau Batam dan Pulau Galang)', 'PELAKSANAAN JALAN NASIONAL WILAYAH I PROVINSI KEPU'),
(46, 'PPK 3 (Pulau Karimun dan Pulau Kundur)', 'PELAKSANAAN JALAN NASIONAL WILAYAH I PROVINSI KEPU'),
(47, 'PPK 4 (Pulau Natuna)', 'PELAKSANAAN JALAN NASIONAL WILAYAH I PROVINSI KEPU'),
(48, 'PPK Perencanaan Dan Pengawasan Jalan Nasional Prov. Kepulauan Riau', 'PERENCANAAN DAN PENGAWASAN JALAN NASIONAL PROVINSI'),
(49, 'PPK 7 (Pelaksanaan Preservasi dan Peningkatan Kapasitas Jalan dan Jembatan Nasional Payakumbuh dan Sekitarnya)', 'PELAKSANAAN JALAN NASIONAL WILAYAH I PROVINSI SUMB'),
(50, 'PPK 8 (Pelaksanaan Preservasi dan Peningkatan Kapasitas Jalan dan Jembatan Nasional Lubuk Sikaping dan Sekitarnya)', 'PELAKSANAAN JALAN NASIONAL WILAYAH I PROVINSI SUMB'),
(51, 'PPK 9 (Pelaksanaan Preservasi dan Peningkatan Kapasitas Jalan dan Jembatan Nasional Ujung Gading dan Sekitarnya)', 'PELAKSANAAN JALAN NASIONAL WILAYAH I PROVINSI SUMB'),
(52, 'PPK 10 (Pelaksanaan Preservasi dan Peningkatan Kapasitas Jalan dan Jembatan Nasional Pariaman dan Sekitarnya)', 'PELAKSANAAN JALAN NASIONAL WILAYAH I PROVINSI SUMB'),
(53, 'PPK 11 (Pembangunan jembatan kelok)', 'PELAKSANAAN JALAN NASIONAL WILAYAH I PROVINSI SUMB'),
(54, 'PPK 6 (Pelaksanaan Preservasi dan Peningkatan Kapasitas Jalan dan Jembatan Nasional Padang Panjang dan Sekitarnya)', 'PELAKSANAAN JALAN NASIONAL WILAYAH II PROVINSI SUM'),
(55, 'PPK 12 (Pelaksanaan Preservasi dan Peningkatan Kapasitas Jalan dan Jembatan Nasional Solok dan Sekitarnya)', 'PELAKSANAAN JALAN NASIONAL WILAYAH II PROVINSI SUM'),
(56, 'PPK 13 (Pelaksanaan Preservasi dan Peningkatan Kapasitas Jalan dan Jembatan Nasional Dharmasraya dan Sekitarnya)', 'PELAKSANAAN JALAN NASIONAL WILAYAH II PROVINSI SUM'),
(57, 'PPK 14 (Pelaksanaan Preservasi dan Peningkatan Kapasitas Jalan dan Jembatan Nasional Painan dan Sekitarnya)', 'PELAKSANAAN JALAN NASIONAL WILAYAH II PROVINSI SUM'),
(58, 'PPK 15 (Pelaksanaan Preservasi dan Peningkatan Kualitas Kapasitas Jalan dan Jembatan Nasional Indarapura dan Sekitarnya)', 'PELAKSANAAN JALAN NASIONAL WILAYAH II PROVINSI SUM'),
(59, 'PPK Perencanaan Dana Pengawasan Jalan Nasional Provinsi Sumatera Barat', 'PERENCANAAN DAN PENGAWASAN JALAN NASIONAL PROVINSI'),
(60, 'PPK. 2 Batas Riau - Batas Kab. Tanjab', 'PELAKSANAAN JALAN NASIONAL WILAYAH I PROVINSI JAMB');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_satuan_kerja`
--

CREATE TABLE IF NOT EXISTS `tbl_master_satuan_kerja` (
  `id_satuan_kerja` int(50) NOT NULL AUTO_INCREMENT,
  `nama_satuan_kerja` varchar(150) NOT NULL,
  `parent_unit` varchar(50) NOT NULL,
  PRIMARY KEY (`id_satuan_kerja`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=185 ;

--
-- Dumping data for table `tbl_master_satuan_kerja`
--

INSERT INTO `tbl_master_satuan_kerja` (`id_satuan_kerja`, `nama_satuan_kerja`, `parent_unit`) VALUES
(7, 'PERENCANAAN DAN PENGAWASAN JALAN NASIONAL PROVINSI SULAWESI UTARA', 'BALAI PELAKSANAAN JALAN NASIONAL XI, DITJEN BINA M'),
(8, 'PELAKSANAAN JALAN NASIONAL WILAYAH I PROVINSI SULUT', 'BALAI PELAKSANAAN JALAN NASIONAL XI, DITJEN BINA M'),
(9, 'PELAKSANAAN JALAN NASIONAL WILAYAH II PROVINSI SULUT', 'BALAI PELAKSANAAN JALAN NASIONAL XI, DITJEN BINA M'),
(10, 'PELAKSANAAN JALAN NASIONAL WILAYAH III PROVINSI SULUT (SANGIHE TALAUD)', 'BALAI PELAKSANAAN JALAN NASIONAL XI, DITJEN BINA M'),
(11, 'PERENCANAAN DAN PENGAWASAN JALAN NASIONAL PROVINSI GORONTALO', 'BALAI PELAKSANAAN JALAN NASIONAL XI, DITJEN BINA M'),
(12, 'PELAKSANAAN JALAN NASIONAL WILAYAH PROVINSI GORONTALO', 'BALAI PELAKSANAAN JALAN NASIONAL XI, DITJEN BINA M');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_status_jabatan`
--

CREATE TABLE IF NOT EXISTS `tbl_master_status_jabatan` (
  `id_status_jabatan` int(50) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(100) NOT NULL,
  PRIMARY KEY (`id_status_jabatan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_master_status_jabatan`
--

INSERT INTO `tbl_master_status_jabatan` (`id_status_jabatan`, `nama_jabatan`) VALUES
(2, 'STRUKTURAL'),
(3, 'DPK'),
(4, 'DPB'),
(5, 'DITUGASKAN'),
(6, 'FUNGSIONAL'),
(7, '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_status_pegawai`
--

CREATE TABLE IF NOT EXISTS `tbl_master_status_pegawai` (
  `id_status_pegawai` int(50) NOT NULL AUTO_INCREMENT,
  `nama_status` varchar(150) NOT NULL,
  PRIMARY KEY (`id_status_pegawai`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_master_status_pegawai`
--

INSERT INTO `tbl_master_status_pegawai` (`id_status_pegawai`, `nama_status`) VALUES
(1, 'MENINGGAL DUNIA'),
(2, 'OUTSOURCING'),
(3, 'HONORER'),
(4, 'CPNS PUSAT'),
(5, 'PNS PUSAT'),
(6, 'CPNS DAERAH'),
(7, 'PNS DAERAH'),
(8, 'ABRI'),
(9, 'PENSIUN'),
(10, 'BERHENTI/PINDAH'),
(12, '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_unit_kerja`
--

CREATE TABLE IF NOT EXISTS `tbl_master_unit_kerja` (
  `id_unit_kerja` int(50) NOT NULL AUTO_INCREMENT,
  `nama_unit_kerja` varchar(150) NOT NULL,
  `eselon` varchar(50) NOT NULL,
  `parent_unit` varchar(50) NOT NULL,
  PRIMARY KEY (`id_unit_kerja`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=239 ;

--
-- Dumping data for table `tbl_master_unit_kerja`
--

INSERT INTO `tbl_master_unit_kerja` (`id_unit_kerja`, `nama_unit_kerja`, `eselon`, `parent_unit`) VALUES
(1, 'DIREKTORAT JENDERAL BINA MARGA', 'I.a', ''),
(2, 'SEKRETARIAT DIREKTORAT JENDERAL BINA MARGA', 'II.a', 'DIREKTORAT JENDERAL BINA MARGA'),
(31, 'BALAI PELAKSANAAN JALAN NASIONAL XI, DITJEN BINA MARGA', 'III.b', 'DIREKTORAT JENDERAL BINA MARGA'),
(32, 'SUB BAGIAN TATA USAHA, BPJN XI, DITJEN BINA MARGA', 'IV.a', 'BALAI PELAKSANAAN JALAN NASIONAL XI, DITJEN BINA M'),
(33, 'SEKSI PERENCANAAN DAN PELAKSANA, BPJN XI, DITJEN BINA MARGA', 'IV.a', 'BALAI PELAKSANAAN JALAN NASIONAL XI, DITJEN BINA M'),
(34, 'SEKSI PENGENDALIAN SISTEM, PELAKSANAAN, PENGUJIAN DAN PERALATAN, BPJN XI, DITJEN BINA MARGA', 'IV.a', 'BALAI PELAKSANAAN JALAN NASIONAL XI, DITJEN BINA M');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_login`
--

CREATE TABLE IF NOT EXISTS `tbl_user_login` (
  `id_user_login` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `stts` varchar(30) NOT NULL,
  PRIMARY KEY (`id_user_login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_user_login`
--

INSERT INTO `tbl_user_login` (`id_user_login`, `username`, `password`, `nama_lengkap`, `stts`) VALUES
(1, 'admin', 'ef75d152cf5d3fc1852bf5cc9dfd080f', 'Administrator', 'administrator');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
