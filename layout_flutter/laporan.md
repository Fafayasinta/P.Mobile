# Laporan Praktikum Pemograman Mobile, Jobsheet 6 | Membangun Layout di Flutter

Nama  : Fardiyani Afro'ul Yasinta <br>
Kelas : SIB 3D <br>
NIM   : 2241760030

------------------------------------------------------
<b>-- Praktikum 1 : Membangun Layout di Flutter--<br></b>
<i>Langkah 1 : Buat Project Baru</i><br>
Buatlah sebuah project flutter baru dengan nama layout_flutter. Atau sesuaikan style laporan praktikum yang Anda buat.

<i>Langkah 2 : Buka file lib/main.dart</i><br>
Buka file main.dart lalu ganti dengan kode berikut. Isi nama dan NIM Anda di text title.
<img src ="..\layout_flutter\image\prak1.1.png">

<i>Langkah 3 : Identifikasi layout diagram</i><br>
Langkah pertama adalah memecah tata letak menjadi elemen dasarnya:

- Identifikasi baris dan kolom.
- Apakah tata letaknya menyertakan kisi-kisi (grid)?
- Apakah ada elemen yang tumpang tindih?
- Apakah UI memerlukan tab?
- Perhatikan area yang memerlukan alignment, padding, atau borders.

<i>Langkah 4 : Implementasi title row</i><br>
Pertama, Anda akan membuat kolom bagian kiri pada judul. Tambahkan kode berikut di bagian atas metode build() di dalam kelas MyApp:

/* soal 1 */ Letakkan widget Column di dalam widget Expanded agar menyesuaikan ruang yang tersisa di dalam widget Row. Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start sehingga posisi kolom berada di awal baris.<br>
/* soal 2 */ Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks ‘Batu, Malang, Indonesia' di dalam Column, set warna menjadi abu-abu.<br>
/* soal 3 */ Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi body text ‘Hello World' dengan variabel titleSection seperti berikut:<br>

<img src ="..\layout_flutter\image\prak1.4.png">

<b>-- Praktikum 2: Implementasi button row --<br></b>
<i>Langkah 1 : Buat method Column_buildButtonColumn</i><br>
Bagian tombol berisi 3 kolom yang menggunakan tata letak yang sama—sebuah ikon di atas baris teks. Kolom pada baris ini diberi jarak yang sama, dan teks serta ikon di beri warna primer.

Karena kode untuk membangun setiap kolom hampir sama, buatlah metode pembantu pribadi bernama buildButtonColumn(), yang mempunyai parameter warna, Icon dan Text, sehingga dapat mengembalikan kolom dengan widgetnya sesuai dengan warna tertentu.

lib/main.dart (_buildButtonColumn)