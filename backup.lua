-- Script backup file Lua oleh ifulxploit
-- Deskripsi: Program untuk backup file dengan jadwal dan direktori tujuan yang telah ditentukan.

-- Tanyakan direktori tujuan backup kepada user
print("Masukkan path ke direktori tujuan backup:")
backup_dir = io.read()

-- Tanyakan daftar file yang ingin di-backup kepada user
file_list = {}
while true do
   print("Masukkan path ke file yang ingin di-backup atau ketik 'selesai' untuk keluar:")
   file_path = io.read()
   if file_path == "selesai" then
      break
   end
   table.insert(file_list, file_path)
end

-- Fungsi untuk backup file ke direktori tujuan
function backup_files()
   for i,file_path in ipairs(file_list) do
      -- Ambil nama file dari path
      file_name = string.match(file_path, "[^/]+$")
      
      -- Tambahkan path ke direktori tujuan
      backup_path = backup_dir .. file_name
      
      -- Salin atau pindahkan file ke direktori tujuan
      os.rename(file_path, backup_path)
   end
end

-- Jadwalkan backup file dengan cron job
-- Contoh: backup setiap hari jam 2 siang
-- 0 14 * * * /path/to/lua /path/to/script.lua
os.execute("crontab -l | { cat; echo '0 14 * * * /path/to/lua /path/to/script.lua'; } | crontab -")

-- Tampilkan banner dengan ascii art
print([[
Deskripsi : Program untuk backup file
            dengan jadwal dan direktori
            tujuan yang telah ditentukan.

       dBBBBBBBBBBBBBBBBBBBBBBBBb 
      BP YBBBBBBBBBBBBBBBBBBBBBBBb
     dB   YBb                 YBBBb
     dB    YBBBBBBBBBBBBBBBBBBBBBBBb
      Yb    YBBBBBBBBBBBBBBBBBBBBBBBb
       Yb    YBBBBBBBBBBBBBBBBBBBBBBBb        
        Yb    YBBBBBBBBBBBBBBBBBBBBBBBb      
	     Yb    YBBBBBBBBBBBBBBBBBBBBBBBb
          Yb    YBBBBBBBBBBBBBBBBBBBBBBBb
	       Yb   dBBBBBBBBBBBBBBBBBBBBBBBBb
            Yb dP=======================/
             YbB=======================(
	          Ybb=======================\
	           Y888888888888888888DSI8888b

	               Author : IfulXploit
	               
]])
-- Jalankan backup pertama kali
backup_files()
