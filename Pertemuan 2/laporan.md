Soal 2
Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework Flutter ? Jelaskan!
Jawab:
Karena dart merupakan fondasi yang diperlukan untuk memanfaatkan flutter secara maksimal dan dengan memahami tentang dart memudahkan dalam menulis kode flutter yang efisien dan efektif, kemudian dart memiliki fitur-fitur yang sangat berguna saat membangun aplikasi flutter serta dapat lebih efektif memanfaatkan API dan widget yang disediakan oleh flutter

Soal 3
Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.
Jawab:
-- Fitur-fitur pada dart --
- Productive Tooling = fitur untuk menganalisis kode, plugin IDE ekosistem paket yg besar
- Garbage collection: untuk mengelola atau menangani dealokasi memori (terutama memori yang ditempati oleh objek yang tidak lagi digunakan).
- Type annotations (opsional): untuk keamanan dan -konsistensi dalam mengontrol semua data dalam aplikasi.
- Statically typed (opsional): untuk menganalisis types saat runtime. Fitur ini penting untuk menemukan bug selama kompilasi kode.
- Portability: bahasa Dart tidak hanya untuk web (yang dapat diterjemahkan ke JavaScript) tetapi juga dapat dikompilasi secara native ke kode Advanced RISC Machines (ARM) dan x86.

Cara kerja dart dengan menggunakan dua cara yaitu:
- Dart virtual machines(VMs)
- JavaScript compilations

dari kedua cara diatas perlu memperhatikan fitur penting seperti Runtime systems, Dart core libraries, Garvage collectors.

-- Eksekusi kode dart menggunakan dua mode --
- Kompilasi Just in time(JIT)
    tempat kode sumber dikompilasi sesuai kebutuhan—Just in time. Pendekatan ini digunakan untuk menjalankan kode pada command line atau selama proses pengembangan aplikasi mobile yang dapat memanfaatkan fitur seperti debugging dan hot reload.
- Kompilasi Ahead of Time(AOT)
    Dart VM dan kode Anda dikompilasi sebelumnya. Pendekatan ini memiliki keuntungan performa yang sangat besar dibandingkan kompilasi JIT, tetapi fitur lain seperti debugging dan hot reload tidak tersedia.

-- Struktur Dart --
Dart sudah dirancang menggunakan OOP sehingga dart memiliki fitur seperti encapsulation, inheritance, composition, abstraction, dan polymorphism.

-- Operator Dart --
operator tidak lebih dari method yang didefinisikan dalam class dengan sintaks khusus. ketika Anda menggunakan operator seperti x == y, seolah-olah Anda sedang memanggil x.==(y) metode untuk melakukan perbandingan kesetaraan.

-- Operator arithmetic dart --
+ untuk tambahan.
- untuk pengurangan.
* untuk perkalian.
/ untuk pembagian.
~/ untuk pembagian bilangan bulat. Di Dart, setiap pembagian sederhana dengan / menghasilkan nilai double. Untuk mendapatkan nilai bilangan bulat, Anda perlu membuat semacam transformasi (yaitu, typecast) dalam bahasa pemrograman lain; namun Dart sudah mendukung untuk operasi ini.
% untuk operasi modulus (sisa bagi dari bilangan bulat).
-expression untuk negasi (yang membalikkan suatu nilai).

-- Operator Increment and decrement --
++var atau var++ untuk menambah nilai variabel var sebesar 1
--var atau var-- untuk mengurangi nilai variabel var sebesar 1

-- Operator Equality and relational --
== untuk memeriksa apakah operan sama
!= untuk memeriksa apakah operan berbeda
> memeriksa apakah operan kiri lebih besar dari operan kanan
< memeriksa apakah operan kiri lebih kecil dari operan kanan
>= memeriksa apakah operan kiri lebih besar dari atau sama dengan operan kanan
<= memeriksa apakah operan kiri kurang dari atau sama dengan operan kanan

== tidak membandingkan referensi/alamat memori melainkan isi dari variabel

-- Operator Logika --
!expression negasi atau kebalikan hasil ekspresi—yaitu, true menjadi false dan false menjadi true.
|| menerapkan operasi logika OR antara dua ekspresi.
&& menerapkan operasi logika AND antara dua ekspresi.


