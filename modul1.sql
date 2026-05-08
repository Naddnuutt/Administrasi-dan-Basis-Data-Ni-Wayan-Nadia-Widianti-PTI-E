CREATE TABLE `DOKTER` (
  `id_dokter` int PRIMARY KEY,
  `nama` varchar(30),
  `sp` varchar(30),
  `no_tlp` int,
  `kode_poli` int
);

CREATE TABLE `POLIKLINIK` (
  `kode_poli` int PRIMARY KEY,
  `nama_poli` varchar(20)
);

CREATE TABLE `PASIEN` (
  `NIK` int PRIMARY KEY,
  `nama` varchar(30),
  `alamat` varchar(50),
  `DOD` datetime
);

CREATE TABLE `PENDAFTARAN` (
  `no_antrian` int PRIMARY KEY,
  `tgl_daftar` datetime,
  `kode_poli` int,
  `NIK` int
);

CREATE TABLE `REKAM_MEDIS` (
  `no_rm` int PRIMARY KEY,
  `NIK` int,
  `diagnosi` text,
  `tanggal` datetime
);

CREATE TABLE `OBAT` (
  `kode_obat` int PRIMARY KEY,
  `nama` varchar(255),
  `harga` int
);

ALTER TABLE `DOKTER` ADD FOREIGN KEY (`kode_poli`) REFERENCES `POLIKLINIK` (`kode_poli`);

ALTER TABLE `PENDAFTARAN` ADD FOREIGN KEY (`kode_poli`) REFERENCES `DOKTER` (`kode_poli`);

ALTER TABLE `PASIEN` ADD FOREIGN KEY (`NIK`) REFERENCES `PENDAFTARAN` (`NIK`);

ALTER TABLE `REKAM_MEDIS` ADD FOREIGN KEY (`NIK`) REFERENCES `PENDAFTARAN` (`NIK`);
