-- Nama : Halimatus sa'diah
-- nim  : 23241095
-- kelas: pti/c
-- modul: 4 : JOIN, UNION, LIMIT

-- Menggunakan database 
USE pti_mart;

-- JOIN 
-- Menggunakan dua buah tabel yang saling berelasi 
-- untuk mwndapatkan informasi yang lebih kompleks 

-- praktek 1
-- ambil nama pelanggan yang pernah bertransaksi beserta qty
-- artinya kita join tabel penjualan dan tabel pelanggan 
-- ambil kode pelanggan, nama pelanggan, dan qty
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
FROM tr_penjualan as tp JOIN ms_pelanggan as mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- ptaktek 2 - CROSS JOIN
-- Mengabungkan dua buah tabel tanpa ekspresi filter
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty from tr_penjualan as tp join ms_pelanggan as mp 
on TRUE; 

-- praktek 3- INER JOIN
-- Ambil pelanggan yang pernah bertransaksi beserta nama produk dan qty 
-- artinya join tabel penjualan dan tabel pelanggan 
-- ambil kode pelanggan, nama pelanggan, nama produk, dan qty
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.nama_produk, tp.qty
FROM tr_penjualan as tp INNER JOIN ms_pelanggan as mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- praktek 4- LEFT JOIN
-- ambil semua nama pelanggan yang pernah bertransaksi
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.nama_produk, tp.qty from tr_penjualan as tp left join ms_pelanggan as mp
on tp.kode_pelanggan = mp.kode_pelanggan;

-- praktek 5- RIGHT JOIN 
-- Ambil semua nama produk yang pernah dijual 
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.nama_produk, tp.qty from tr_penjualan as tp right join ms_pelanggan as mp 
ON tp.kode_pelanggan = mp.kode_pelanggan;
