import 'package:flutter/material.dart';

// Langkah 1
// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fardiyani Afroul Yasinta 2241760030',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter layout demo'),
//         ),
//         body: const Center(
//           child: Text('Hello World'),
//         ),
//       ),
//     );
//   }
// }

// Langkah 4
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Membuat widget titleSection
    Widget titleSection = Container(
      padding:
          const EdgeInsets.all(32.0), // Padding 32 piksel di sepanjang tepinya
      child: Row(
        children: [
          Expanded(
            // soal 1: Expanded untuk menyesuaikan ruang yang tersisa
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Konten Column mulai dari awal
              children: [
                // soal 2: Baris pertama teks di dalam Container dengan padding 8
                Container(
                  padding: const EdgeInsets.only(
                      bottom: 8.0), // Padding bawah untuk jarak
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // Teks dengan font tebal
                    ),
                  ),
                ),
                // soal 2: Set warna teks 'Batu, Malang, Indonesia' menjadi abu-abu
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey, // Set warna teks abu-abu
                  ),
                ),
              ],
            ),
          ),
          // soal 3: Dua item terakhir (ikon dan teks) di dalam baris
          Icon(
            Icons.star,
            color: Colors.red[500], // Set warna ikon bintang merah
          ),
          const Text('41'), // Teks rating "41"
        ],
      ),
    );

    // Return MaterialApp dengan titleSection di body
    return MaterialApp(
      title: 'Fardiyani Afroul Yasinta 2241760030', // Ganti dengan nama dan NIM
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // soal 3: Mengganti isi body dengan titleSection
        body: titleSection, // Menampilkan titleSection di body
      ),
    );
  }
}

// Praktikum 2
Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

