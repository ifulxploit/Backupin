# Backup File Script
Script ini ditulis dengan menggunakan bahasa pemrograman Lua oleh ifulxploit. Program ini dapat digunakan untuk membuat backup dari file-file penting dengan cara mengkopi atau memindahkan file ke folder backup yang telah ditentukan. Selain itu, program ini juga dapat dijadwalkan agar berjalan secara otomatis pada waktu tertentu.

<p align="center">
  <img src="https://img.freepik.com/free-vector/global-data-security-personal-data-security-cyber-data-security-online-concept-illustration-internet-security-information-privacy-protection_1150-37336.jpg" alt="BACKUP ILLUSTRATION">
</p>



## Penggunaan
* Pastikan Anda telah mengunduh dan menginstal Lua di sistem operasi Anda.
* Unduh file backup.lua pada halaman GitHub ini.
* Edit path ke direktori tujuan backup pada variabel backup_dir di dalam file backup.lua.
* Tambahkan daftar file yang ingin di-backup pada variabel file_list di dalam file backup.lua.
* Jalankan program backup.lua dengan perintah lua backup.lua.
* Program akan membuat backup dari file-file yang telah ditentukan dan menyimpannya di direktori backup yang telah ditentukan.

## Jadwal Backup Otomatis
Anda juga dapat menjadwalkan program ini agar berjalan secara otomatis pada waktu tertentu dengan menggunakan cron job pada sistem operasi Linux. Berikut contoh konfigurasi cron job yang dapat digunakan:
```
0 0 * * * /path/to/lua /path/to/backup.lua
```
Konfigurasi di atas akan menjalankan program backup setiap hari pada pukul 00:00.

## Kontribusi
Anda dapat mengirimkan pull request untuk berkontribusi pada pengembangan program ini.

## Lisensi
Program ini dilisensikan di bawah lisensi MIT. Lihat berkas LICENSE untuk informasi lebih lanjut.









