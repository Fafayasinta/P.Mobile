# Laporan Praktikum Pemograman Mobile, Jobsheet 7 | Manajemen Plugin

Nama  : Fardiyani Afro'ul Yasinta <br>
Kelas : SIB 3D <br>
NIM   : 2241760030


------------------------------------------------------
<b>-- Langkah 1 | Buat Project Baru --<br></b>
Buatlah sebuah project flutter baru dengan nama flutter_plugin_pubdev. Lalu jadikan repository di GitHub Anda dengan nama flutter_plugin_pubdev.

<b>-- Langkah 2 | Menambahkan Plugin --<br></b>
Tambahkan plugin auto_size_text menggunakan perintah berikut di terminal
<img src ="..\flutter_plugin_pubdev\img\langkah2.1.png">

Jika berhasil, maka akan tampil nama plugin beserta versinya di file pubspec.yaml pada bagian dependencies.
<img src ="..\flutter_plugin_pubdev\img\langkah2.2.png">

<b>-- Langkah 3 | Buat file red_text_widget.dart --<br></b>
Buat file baru bernama red_text_widget.dart di dalam folder lib lalu isi kode seperti berikut.
<img src ="..\flutter_plugin_pubdev\img\langkah3.png">

<b>-- Langkah 4 | Tambah Widget AutoSizeText --<br></b>
Masih di file red_text_widget.dart, untuk menggunakan plugin auto_size_text, ubahlah kode return Container() menjadi seperti berikut.
<img src ="..\flutter_plugin_pubdev\img\langkah4.png">

Setelah Anda menambahkan kode di atas, Anda akan mendapatkan info error. Mengapa demikian? Jelaskan dalam laporan praktikum Anda!
Jawab:
Kode diatas error karena belum mengimport package untuk auto size text.

<b>-- Langkah 5: Buat Variabel text dan parameter di constructor --<br></b>
Tambahkan variabel text dan parameter di constructor seperti berikut.
<img src ="..\flutter_plugin_pubdev\img\langkah5.png">

<b>-- Langkah 6: Tambahkan widget di main.dart --<br></b>
Buka file main.dart lalu tambahkan di dalam children: pada class _MyHomePageState.
<img src ="..\flutter_plugin_pubdev\img\langkah6.png">

Run aplikasi tersebut dengan tekan F5, maka hasilnya akan seperti berikut.
<b>Output</b>
<img src ="..\flutter_plugin_pubdev\img\output.png">