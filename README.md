# TechCorp SQL Practice (PostgreSQL)

Latihan SQL menggunakan studi kasus **TechCorp**, sebuah perusahaan e-commerce yang bergerak di bidang penjualan produk elektronik dan layanan dukungan pelanggan. Project ini dibuat sebagai media pembelajaran SQL dengan mengimplementasikan konsep database relasional, pembuatan tabel, relasi antar tabel, manipulasi data, serta penyelesaian studi kasus menggunakan PostgreSQL.

> **Catatan:** Studi kasus ini mengadaptasi materi SQL Practice dari MySkill dengan beberapa penyesuaian sintaks agar kompatibel dengan PostgreSQL serta perbaikan terhadap beberapa kesalahan pada script asli.

---

## Tujuan Project

Project ini bertujuan untuk:

- Memahami konsep database relasional.
- Mempelajari implementasi Primary Key dan Foreign Key.
- Membuat database menggunakan PostgreSQL.
- Melatih penggunaan SQL untuk analisis data.
- Menyelesaikan studi kasus yang umum dijumpai pada pekerjaan Data Analyst.

---

## Database Schema

Database terdiri dari enam tabel utama:

| Tabel | Deskripsi |
|--------|-----------|
| Products | Informasi produk yang dijual |
| Customers | Data pelanggan |
| Orders | Data transaksi pelanggan |
| OrderDetails | Detail produk pada setiap transaksi |
| Employees | Data karyawan |
| SupportTickets | Data tiket layanan pelanggan |

Relasi antar tabel menggunakan **Primary Key** dan **Foreign Key** sesuai prinsip database relasional.

---

## Struktur Project

```
TechCorp_SQL/
│
├── create_database.sql
├── create_tables.sql
├── insert_data.sql
├── sql_case_study.sql
└── README.md
```

---

## Teknologi

- PostgreSQL
- SQL
- DBeaver

---

## Materi yang Dipelajari

Project ini mencakup materi berikut:

- CREATE DATABASE
- CREATE TABLE
- Primary Key
- Foreign Key
- Data Types
- INSERT
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- Aggregate Function
- JOIN
- Subquery
- Common Table Expression (CTE)

---

## Studi Kasus

Beberapa studi kasus yang diselesaikan pada project ini meliputi:

- Menampilkan tiga pelanggan dengan total transaksi terbesar.
- Menghitung rata-rata nilai transaksi setiap pelanggan.
- Menampilkan karyawan yang telah menyelesaikan lebih dari empat tiket dukungan.
- Menemukan produk yang belum pernah dipesan.
- Menghitung total pendapatan dari seluruh penjualan.
- Menghitung rata-rata harga produk berdasarkan kategori.
- Menampilkan pelanggan yang pernah melakukan transaksi di atas nominal tertentu.

---

## Hasil Pembelajaran

Melalui project ini saya memperoleh pemahaman mengenai:

- Perancangan database relasional.
- Implementasi relasi antar tabel menggunakan Foreign Key.
- Penulisan query SQL untuk kebutuhan analisis data.
- Penggunaan berbagai jenis JOIN.
- Agregasi data menggunakan fungsi SQL.
- Penyusunan query yang lebih efisien dan mudah dipelihara.

---

## Catatan

Script pada repository ini telah disesuaikan agar kompatibel dengan PostgreSQL. Beberapa sintaks pada materi asli menggunakan MySQL sehingga dilakukan penyesuaian seperti penggunaan:

- `GENERATED ALWAYS AS IDENTITY`
- Penyesuaian sintaks Foreign Key
- Perbaikan beberapa kesalahan penulisan (typo) pada script asli

---

## Referensi

- MySkill Project — SQL Practice: TechCorp
- PostgreSQL Documentation

---

## Author

**Galuh Kurnia Pratama** Mahasiswa Fisika Universitas Negeri Surabaya
