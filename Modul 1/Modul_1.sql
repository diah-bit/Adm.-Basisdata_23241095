-- Nama		: Halimatus sa'diah
-- NIM		: 23241095
-- Kelas	: C
-- Modul	: Modul 1 SELECT Statement

-- menggunakan database
USE pti_mart;

-- SELECT statement
-- Praktek 1
-- Ambil kolom nama produk dari tabel produk
select nama_produk from ms_produk;

-- Praktek 2
-- Ambil kolom nama produk dan harga dari tabel produk
select nama_produk, harga from ms_produk;

-- Praktek 3
-- Ambil semua kolom dari tabel produk
select * from ms_produk;

-- Latihan
select kode_produk, nama_produk from ms_produk;
select * from tr_penjualan;

-- Prefix dan Alias
-- PREFIX (Mempermudah menemukan file yang diinginkan walau filenya sama)
-- Praktek 4
-- Ambil nama produk dari tabel produk dan gunakan tabel sebagai prefix
select ms_produk.nama_produk from ms_produk;

-- Praktek 5
-- Ambil nama produk dari tabel produk, gunakan tabel dan database sebagai prefix
select pti_mart.ms_produk.nama_produk from ms_produk;

-- ALIAS (Nama sementara/samaran)
-- Praktek 6
select nama_produk as pd from ms_produk;
-- Tanpa 'as'
select nama_produk pd from ms_produk_dqlab;

-- Praktek 7
-- Ambil nama produk dari tabel produk kemudian alias kan tabel produk dengan pd
select nama_produk from ms_produk as pd;

-- Praktek 8
-- Menggunakan Prefix dan Alias secara bersamaan
-- Ambil nama produk dari tabel produk, alias kan tabel produk dengan pd, dan jadi prefix untuk kolom
select pd.nama_produk from ms_produk as pd;

-- Case1
select nama_pelanggan, alamat from ms_pelanggan;

-- Case2
select nama_produk, harga from ms_produk;