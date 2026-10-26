# TechCorp SQL Practice — PostgreSQL

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-336791?style=for-the-badge&logo=databricks&logoColor=white)
![DBeaver](https://img.shields.io/badge/DBeaver-382923?style=for-the-badge&logo=dbeaver&logoColor=white)

Project latihan SQL menggunakan studi kasus **TechCorp**, sebuah perusahaan e-commerce yang menjual produk elektronik dan menyediakan layanan dukungan pelanggan.

Project ini dibuat sebagai sarana untuk mempelajari dan mempraktikkan **SQL, database relasional, relasi antar tabel, manipulasi data, serta analisis data menggunakan PostgreSQL**.

> **Catatan:** Studi kasus ini diadaptasi dari materi **SQL Practice – TechCorp** dari MySkill. Beberapa sintaks telah disesuaikan agar kompatibel dengan PostgreSQL dan beberapa kesalahan pada script asli telah diperbaiki.

---

## Tujuan Project

Project ini dibuat untuk mempraktikkan beberapa konsep dasar SQL dan database, yaitu:

- Memahami konsep database relasional.
- Membuat dan mengelola tabel menggunakan PostgreSQL.
- Memahami penggunaan **Primary Key** dan **Foreign Key**.
- Menghubungkan data dari beberapa tabel.
- Mengolah dan menganalisis data menggunakan SQL.
- Membiasakan diri menyelesaikan studi kasus yang umum digunakan dalam analisis data.

---

## Database Schema

Database TechCorp terdiri dari **6 tabel utama**:

| Tabel | Deskripsi |
|---|---|
| `Products` | Menyimpan informasi produk yang dijual. |
| `Customers` | Menyimpan data pelanggan. |
| `Orders` | Menyimpan informasi transaksi pelanggan. |
| `OrderDetails` | Menyimpan detail produk pada setiap transaksi. |
| `Employees` | Menyimpan data karyawan. |
| `SupportTickets` | Menyimpan data tiket layanan pelanggan. |

Setiap tabel saling terhubung menggunakan **Primary Key** dan **Foreign Key** untuk membentuk relasi antar data.

### Relasi Utama

```text
Customers
    │
    └── Orders
          │
          └── OrderDetails
                │
                └── Products

Employees
    │
    └── SupportTickets
```

---

## Struktur Project

```text
TechCorp_SQL/
│
├── create_database.sql
├── create_tables.sql
├── insert_data.sql
├── sql_case_study.sql
└── README.md
```

### Penjelasan File

| File | Fungsi |
|---|---|
| `create_database.sql` | Membuat database TechCorp. |
| `create_tables.sql` | Membuat struktur tabel dan relasinya. |
| `insert_data.sql` | Memasukkan data ke dalam tabel. |
| `sql_case_study.sql` | Berisi query untuk menyelesaikan studi kasus. |
| `README.md` | Dokumentasi project. |

---

## Teknologi yang Digunakan

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-4169E1?logo=postgresql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Query_Language-336791?logo=databricks&logoColor=white)
![DBeaver](https://img.shields.io/badge/DBeaver-Database_Tool-382923?logo=dbeaver&logoColor=white)

- **PostgreSQL** — Database Management System
- **SQL** — Bahasa untuk membuat, mengolah, dan menganalisis data
- **DBeaver** — Database management dan SQL development tool

---

## Konsep SQL yang Dipelajari

Project ini mencakup beberapa konsep dasar hingga menengah dalam SQL:

### Database & Table

- `CREATE DATABASE`
- `CREATE TABLE`
- Data Types
- Primary Key
- Foreign Key

### Data Manipulation

- `INSERT`
- `SELECT`
- `WHERE`
- `ORDER BY`

### Data Aggregation

- `GROUP BY`
- `HAVING`
- Aggregate Functions
  - `COUNT()`
  - `SUM()`
  - `AVG()`
  - `MIN()`
  - `MAX()`

### Data Relationships

- `INNER JOIN`
- `LEFT JOIN`
- Multiple Table JOIN

### Query Lanjutan

- Subquery
- Common Table Expression (CTE)

---

## Studi Kasus

Beberapa pertanyaan yang diselesaikan dalam project ini antara lain:

1. Menampilkan **3 pelanggan dengan total transaksi terbesar**.
2. Menghitung **rata-rata nilai transaksi setiap pelanggan**.
3. Menampilkan **karyawan yang telah menyelesaikan lebih dari 4 tiket dukungan**.
4. Menemukan **produk yang belum pernah dipesan**.
5. Menghitung **total pendapatan dari seluruh transaksi**.
6. Menghitung **rata-rata harga produk berdasarkan kategori**.
7. Menampilkan pelanggan yang pernah melakukan **transaksi di atas nominal tertentu**.

Studi kasus tersebut digunakan untuk melatih penggunaan `JOIN`, agregasi, filtering, subquery, dan CTE dalam situasi yang menyerupai kebutuhan analisis data.

---

## Contoh Query

### Menghitung Total Pendapatan

```sql
SELECT 
    SUM(od.quantity * od.unit_price) AS total_revenue
FROM order_details od;
```

### Menampilkan 3 Pelanggan dengan Total Transaksi Terbesar

```sql
SELECT 
    c.customer_name,
    SUM(od.quantity * od.unit_price) AS total_spending
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
JOIN order_details od 
    ON o.order_id = od.order_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spending DESC
LIMIT 3;
```

Query-query tersebut menunjukkan bagaimana SQL dapat digunakan untuk menggabungkan data dari beberapa tabel dan menghasilkan informasi yang relevan untuk analisis.

---

## Hasil Pembelajaran

Melalui project ini, saya mempraktikkan:

- Perancangan database relasional.
- Pembuatan tabel dan relasi antar tabel.
- Penggunaan Primary Key dan Foreign Key.
- Pengambilan data menggunakan SQL.
- Penggabungan data menggunakan `JOIN`.
- Pengolahan data menggunakan fungsi agregasi.
- Filtering dan pengurutan data.
- Penggunaan Subquery dan CTE.
- Penyelesaian studi kasus menggunakan pendekatan SQL.

Project ini juga membantu saya memahami bagaimana data yang tersimpan dalam beberapa tabel dapat diolah menjadi informasi yang lebih berguna untuk kebutuhan analisis.

---

## Penyesuaian PostgreSQL

Materi awal dari studi kasus menggunakan sintaks yang perlu disesuaikan dengan PostgreSQL.

Beberapa penyesuaian yang dilakukan antara lain:

- Menggunakan `GENERATED ALWAYS AS IDENTITY` untuk kebutuhan auto-generated ID.
- Menyesuaikan definisi dan sintaks `FOREIGN KEY`.
- Menyesuaikan beberapa bagian query agar kompatibel dengan PostgreSQL.
- Memperbaiki beberapa kesalahan penulisan pada script asli.
- Menyesuaikan penamaan tabel dan kolom agar konsisten.

---

## Referensi

- **MySkill — SQL Practice: TechCorp**
- **PostgreSQL Documentation**

---

## Author

**Galuh Kurnia Pratama**

Mahasiswa Fisika — Universitas Negeri Surabaya

Project ini dibuat sebagai bagian dari proses pembelajaran dan pengembangan keterampilan di bidang **SQL dan Data Analysis**.