# Nama file: negativeEff.py
# Deskripsi: Fungsi agar membuat foto negative filter
# Pembuat: Resma Adi Nugroho (24060121120021)
# Tanggal:  23 April 2022

# Mengimport file OpenCv dan Matplotlib 
import cv2
import matplotlib.pyplot as plot

# Input nama file sebagai gambar yang akan dimuat
print("---------Negative Filter pada Foto---------")
print('Masukan nama file beserta jenis ekstensinya')
file = input('Nama file : ')

# Memuat file gambar 
img_ori = cv2.imread(file, 1)

# Menampilkan gambar original 
plot.figure(1)
plot.imshow(img_ori)

# Mencari panjang dan lebar dari gambar
height, width, _ = img_ori.shape
  
for i in range(0, height - 1):
    for j in range(0, width - 1):
          
        # Mendapatkan nilai pixel
        pixel = img_ori[i, j]
          
        # Melakukan penegatifan pada setiap channel warna RGB 
        # kemudian 255 dikurangi nilai pixel
          
        # index pertama berisi channel warna red
        pixel[0] = 255 - pixel[0]
          
        # index kedua berisi channel warna hijau
        pixel[1] = 255 - pixel[1]
          
        # index ketiga berisi channel warna biru
        pixel[2] = 255 - pixel[2]
          
        # masukan nilai yang baru ke dalam pixel
        img_ori[i, j] = pixel
  
# Menampilkan gambar hasi dari penegatifan
plot.figure(2)
plot.imshow(img_ori)
plot.show()
