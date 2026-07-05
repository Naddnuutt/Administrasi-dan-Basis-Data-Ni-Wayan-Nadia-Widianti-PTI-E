-- Nama		: Afrizan Hidayat
-- NIM		: 24241188
-- Kelas	: E
-- Modul	: 3


-- menggunakan database
USE kelas_e_mart;

-- Nilai Literal
-- isi/data dari kolom dalam tabel
-- Penggunaannya dengan SELECT Statement
-- Praktek #1
-- menggunakan SELECT statment untuk menampilkan nilai literal
SELECT 77;  -- tipe data integer

-- Praktek #2
-- menampilkan nilai literal yang beda tipe data
SELECT 77 AS angka, true AS nilai_logika, 'PTI' AS teks;

-- NULL
-- literal khusus yang artinya tidak punya nilai (kosong)
-- Praktek #3
-- menampilkan NULL menggunakan SELECT
SELECT NULL AS kosong;

-- Operator Matematika
-- */+-MOD(sisa bagi)
-- 10 (literal), 11 (literal) 10 (+) 11 
-- derajat operator matematika (), */, +-
-- ex. (10+2)/2 -> 12/2 = 6
-- ex. 10+2/2 -> 10+1 = 11
-- Praktek #4
SELECT 5%2 AS sisa_bagi, 5/2 AS hasil_bagi1, 5 DIV 2 AS hasil_bagi2;

-- Latihan Mandiri
-- Soal 1: 4 dikali 2
SELECT 4*2 AS hasil_soal1;

-- Soal 2: (4*8)%7 → menggunakan operator %
SELECT (4*8)%7 AS hasil_soal2;

-- Soal 3: (4*8) MOD 7 → menggunakan fungsi MOD
SELECT (4*8) MOD 7 AS hasil_soal3;


-- Praktek 5 
-- mengalikan qty dan harga untuk mendapatkan total bayar dari penjualan

SELECT qty*harga AS total FROM tr_penjualan;

-- Operator Perbandingan 
-- selalu akan menghasilkan nilai true/false
-- Praktek #6
SELECT 5=5, 5<>5, 5<>4, 5!=5, 5!=4, 5>4;

-- Latihan mandiri
-- Soal 1: 1 = true
SELECT 1 = true AS hasil_soal1;

-- Soal 2: 1 = false
SELECT 1 = false AS hasil_soal2;

-- Soal 3: 5 >= 5
SELECT 5 >= 5 AS hasil_soal3;

-- Soal 4: 5.2 = 5.20000
SELECT 5.2 = 5.20000 AS hasil_soal4;

-- Soal 5: NULL = 1
SELECT NULL = 1 AS hasil_soal5;

-- Soal 6: NULL = NULL
SELECT NULL = NULL AS hasil_soal6;

-- Gabung dalam 1 query soal 1 - 6

-- FUNGSI
-- Praktek #7
SELECT NOW(), YEAR(NOW()), MONTH(NOW()), DAY(NOW()),
datediff(NOW(), '1990-03-12'), datediff('1990-03-12', NOW());

-- Latihan mandiri
-- Soal 1: menghitung selisih hari antara tanggal 2022-07-23 dan waktu sekarang
SELECT DATEDIFF('2022-07-23', NOW()) AS selisih_hari;

-- Soal 2: mengambil tahun dari literal tanggal
SELECT YEAR('2022-07-23') AS tahun;

-- Soal 3: mengambil bulan dari literal tanggal
SELECT MONTH('2022-07-23') AS bulan;

-- Soal 4: mengambil hari dari literal tanggal
SELECT DAY('2022-07-23') AS hari;

-- Soal 5: mengambil tahun dari waktu sekarang
SELECT YEAR(NOW()) AS tahun_sekarang;

-- Praktek #10
-- Lama pelanggan tidak bertansaksi dalam hari 
SELECT datediff(NOW(), tgl_transaksi) FROM tr_penjualan;

-- WHERE atau Filtering
-- digunakan untuk menyaring atau membatasi jumlah data yang 
-- ditampilkan dari satu query
-- Praktek #11
SELECT nama_produk, qty
FROM tr_penjualan WHERE qty>2;

-- Filtering multi-kriteria atau banyak kriteria
-- Praktek #12
-- ambil semua produk yang qty > 3 dan harga > 200.000

SELECT nama_produk, qty, harga
FROM tr_penjualan
WHERE qty>3 AND harga<200000;

-- Filter menggunakan teks 
-- Praktek #13
-- ambil semua produk yang namanya 'Flashdisk DQLab 32 GB'

SELECT tgl_transaksi, kode_pelanggan, 
nama_produk, qty, harga, qty*harga AS total
FROM tr_penjualan
WHERE nama_produk = 'Flashdisk DQLab 32 GB';

-- Operator LIKE
-- Praktek #14
-- filtering teks dengan pola tertentu
SELECT nama_produk FROM tr_penjualan
WHERE nama_produk LIKE 'f%';

-- latihan Mandiri
-- Soal 1: nama_produk karakter kedua 'a'
SELECT nama_produk
FROM tr_penjualan
WHERE nama_produk LIKE '_a%';

-- Soal 2: kategori_produk mengandung huruf 't'
SELECT kategori_produk
FROM ms_produk
WHERE kategori_produk LIKE '%t%';

-- Soal 3: kategori_produk mengandung 'un'
SELECT kategori_produk
FROM ms_produk
WHERE kategori_produk LIKE '%un%';

-- Operator logika
-- AND (dan), OR (atau), NOT(negasi)
-- Praktek #15
-- ambil nama produk dan qty yang berawal f dan qty > 2
SELECT nama_produk, qty
FROM tr_penjualan
WHERE nama_produk LIKE 'f%' AND qty>2;


