# 🍽️ Aplikasi Manajemen Pegawai Restoran (Java GUI)

Aplikasi ini adalah sistem informasi berbasis Desktop yang dirancang untuk mengelola data pegawai di sebuah restoran secara digital dan terintegrasi. Proyek ini dibuat untuk mengimplementasikan konsep Pemrograman Berorientasi Objek (PBO) dengan konektivitas database MySQL.

---

## 📸 Dokumentasi Aplikasi

| Halaman Login | Form Input & Data Pegawai |
|---|---|
| ![Login Screen](1.png?raw=true) | ![Main Screen](2.png?raw=true) |
| *Sistem keamanan akses masuk* | *Pengelolaan data (Tambah, Hapus, View)* |

---

## 🛠️ Penjelasan Package & Arsitektur Kod

Aplikasi ini dibangun menggunakan bahasa Java dengan beberapa konsep utama PBO:

### 1. Model (Inheritance & Polymorphism)
Menggunakan struktur pewarisan (*inheritance*) untuk mengklasifikasikan peran pegawai:
* **`Pegawai` (Superclass):** Menyimpan atribut umum seperti Nama, NIP, Gaji, dan Alamat.
* **Subclasses:** Terdiri dari `Manager`, `Kasir`, `Pelayan`, `Koki`, dan `Satpam`. 
* **Polimorfisme:** Setiap kelas anak mengimplementasikan metode tugas yang spesifik sesuai peran masing-masing di restoran.

### 2. Database & Koneksi (JDBC)
* **`Koneksi.java`:** Menggunakan JDBC (Java Database Connectivity) untuk menghubungkan aplikasi ke database MySQL.
* **CRUD Operations:** Sistem mendukung operasi *Create* (Tambah), *Read* (Lihat), *Update* (Ubah), dan *Delete* (Hapus) data yang tersimpan di tabel database.

---

## 🚀 Langkah-Langkah Instalasi

### 1. Persiapan Lingkungan
* Pastikan Anda memiliki **JDK (Java Development Kit)** versi 8 atau yang terbaru.
* Install **XAMPP** atau aplikasi MySQL server lainnya.
* Gunakan IDE seperti **NetBeans**, **Eclipse**, atau **IntelliJ IDEA**.

### 2. Konfigurasi Database
1. Aktifkan **Apache** dan **MySQL** di XAMPP.
2. Buka `phpMyAdmin` (localhost/phpmyadmin).
3. Buat database baru dengan nama `pegawai_restoran`.
4. Import tabel atau buat tabel `pegawai` dengan kolom: `id`, `nama`, `nip`, `gaji`, `alamat`, dan `profesi`.

### 3. Konfigurasi Library
* Tambahkan file `.jar` **MySQL Connector/J** ke dalam *Libraries* proyek Anda di IDE agar aplikasi dapat terhubung ke database.

### 4. Menjalankan Aplikasi
1. Jalankan (Run) file `Login.java` sebagai entry point.
2. Gunakan username dan password yang sudah ditentukan (cek pada kode sumber).
3. Anda sekarang bisa menambah, melihat, dan menghapus data pegawai.

---

## Peran & Kontribusi Saya
Sebagai **Backend Developer & Logic Programmer**, kontribusi utama saya meliputi:
- Mengembangkan logika CRUD untuk manipulasi data pegawai
- Mengintegrasikan GUI dengan database agar data sinkron
- Menerapkan konsep OOP seperti **inheritance** dan **encapsulation**
- Mengimplementasikan validasi login untuk keamanan sistem

---
## Tujuan Pembelajaran
- Memahami implementasi Java dalam aplikasi desktop
- Menerapkan konsep OOP pada studi kasus nyata
- Mengembangkan sistem terintegrasi antara GUI, logika, dan database
- Melatih perancangan logika bisnis sederhana dalam aplikasi

---

## 👨‍💻 Anggota Kelompok (Tim Pengembang)
Proyek ini disusun oleh mahasiswa Teknik Informatika Universitas Esa Unggul:
1. **Bagas Yoas Sibagariang** (20230801254)
2. **Hanif Ardiansyah** (20230801397)
3. **Nakhwah Alfikry** (20230801244)
4. **Dwi Abdul Kholiq** (20230801214)
5. **Raja Indera Supriadi** (20230810265)

