-- Nama : Halimatus sa'diah
-- Nim  : 23241095
-- Kelas: PTI C
-- Modul : UAS

CREATE pti_mart

-- soal 1
-- Munculkan kode pelanggan, nama produk, kuantitynya harga dan total dari semua produk yang pernah di transaksikan, namun output yang diminta adalah total harga minimal 200.000 dan diurutkan berdasarkan total harga terkecil
select tp.kode_pelanggan, tp.nama_produk, tp.qty, tp.harga, (tp.qty * tp.harga) as total_harga
from tr_penjualan as tp
where (tp.qty * tp.harga) >= 200000
order by total_harga asc;

-- soal 2
-- tampilkan nama produk, kategori, dan harga dari semua produk yang tidak pernah terjual
select nama_produk, kategori, harga FROM ms_produk WHERE id.produk;

-- soal 3
-- Munculkan kode pelanggan, nama pelanggan, alamat, dan nilai transaksi dari pelanggan yang paling tinggi nilai transaksinya
select kode_pelanggan, nama_pelanggan, alamat, nilai transaksi FROM ms_pelanggan;




