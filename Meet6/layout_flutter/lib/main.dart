import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Soal 4: Implementasi title row
    Widget titleSection = Container(
      padding: const EdgeInsets.all(16), // Padding untuk seluruh title section
      child: Row(
        children: [
          Expanded(
            // Soal 1: Menambahkan Expanded widget
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Soal 2: Mengatur padding dan text style
                Container(
                  padding: const EdgeInsets.only(bottom: 8), // Padding untuk jarak antara teks
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // Menebalkan teks
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey, // Menambahkan warna pada teks
                  ),
                ),
              ],
            ),
          ),
          // Soal 3: Menambahkan icon dan teks
          Icon(
            Icons.star, // Menggunakan icon star
            color: Colors.red[500], // Mengatur warna icon
          ),
          const Text('41'), // Teks disebelah icon
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Mochamad Wildani Azizi/2241720171',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection, // Menambahkan titleSection ke dalam body
          ],
        ),
      ),
    );
  }
}
