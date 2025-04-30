-- Nama : Halimatus sa'diah
-- NIM : 23241095
-- Kelas : C
-- Modul : Modul 1 Data Definition Langauge

-- Mebuat Database
CREATE DATABASE pti_mart;

-- Menggunakan DATABASE
USE pti_mart;

-- Membuat Tabel
CREATE TABLE pelanggan(
 id_pelanggan int PRIMARY KEY NOT NULL,
 nama_pelanggan VARCHAR(50),
 alamat VARCHAR(100),
 kota VARCHAR (20),
 no_tlp VARCHAR (15)
);

CREATE TABLE produk(
 id_produk int PRIMARY KEY NOT NULL,
 nama_produk VARCHAR (50),
 kategori VARCHAR (20),
 harga int (17),
 stok int (10)
); 
 
-- membuat tabel dengan foreign key
CREATE TABLE transaksi(
 id_transaksi int PRIMARY KEY NOT NULL,
 tgl_transaksi DATE,
 id_produk int,
 id_pelanggan int,
 qty int,
 total_harga int,
 FOREIGN KEY (id_produk) REFERENCES produk (id_produk),
 FOREIGN KEY (id_pelanggan) REFERENCES pelanggan (id_pelanggan)
 );
 
-- mengisi data dalam tabel
INSERT INTO pelanggan(
id_pelanggan, nama_pelanggan, alamat, kota, no_tlp
)VALUES
(001,"Diah", "Jl pemuda No.15B", "Monjok", "085666001234"),
(002,"Wiwin", "Jl selaparang No.77A", "Taliwang", "081134168251"),
(003,"Jeje", "Jl maja pahit No.88C", "Gomong", "246168247198"),
(004,"Aulia", "Jl RA Kartini No.99A", "Monjok","157251638"),
(005,"Ulik", "Jl Selaparang No.19B", "Selaparang","081641863821");


INSERT INTO produk(
id_produk, nama_produk, kategori, harga, stok
)VALUES
(111,"coklat", "makanan", "12000", "5"),
(112,"cocacola", "minuman", "7000", "10"),
(113,"potato", "makanan", "10000", "20"),
(114,"tiktak", "makanan", "5000", "4"),
(115,"sprite", "minuman", "8000", "10");

-- cek apakah data ada 
SELECT * FROM pelanggan;
SELECT * FROM produk;

-- mengisi data pada tabel yang ada foreign key
INSERT INTO transaksi
 set id_transaksi = 2910,
	 tgl_transaksi = "2025-03-21",
     id_produk = (
     SELECT id_produk FROM produk
     WHERE id_produk = 111),
     id_pelanggan = (
     SELECT id_pelanggan FROM pelanggan
     WHERE id_pelanggan = 001),
     qty = 1,
     total_harga = (
     SELECT harga FROM produk
     WHERE id_produk = 111) * qty;
     
SELECT * FROM transaksi;
     
 
 