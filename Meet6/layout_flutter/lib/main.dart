import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Deklarasi _buildButtonColum
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Ukuran minimum agar sesuai konten
      mainAxisAlignment: MainAxisAlignment.center, // Ikon dan teks diposisikan di tengah
      children: [
        Icon(icon, color: color), // Ikon dengan warna utama
        Container(
          margin: const EdgeInsets.only(top: 8), // Margin atas antar ikon dan teks
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12, // Ukuran teks kecil
              fontWeight: FontWeight.w400, // Bobot teks normal
              color: color, // Warna teks sesuai warna utama
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    //Implementasi title row
    Widget titleSection = Container(
      padding: const EdgeInsets.all(16), // Padding untuk seluruh title section
      child: Row(
        children: [
          Expanded(
            //Menambahkan Expanded widget
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Mengatur padding dan text style
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
          //Menambahkan icon dan teks
          Icon(
            Icons.star, // Menggunakan icon star
            color: Colors.red[500], // Mengatur warna icon
          ),
          const Text('41'), // Teks disebelah icon
        ],
      ),
    );

    // Soal 2: Membuat buttonSection dengan ikon CALL, ROUTE, SHARE
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Jarak antar kolom seimbang
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'), // Kolom pertama
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'), // Kolom kedua
        _buildButtonColumn(color, Icons.share, 'SHARE'), // Kolom ketiga
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Carilah teks di internet yang sesuai '
        'dengan foto atau tempat wisata yang ingin '
        'Anda tampilkan. '
        'Tambahkan nama dan NIM Anda sebagai '
        'identitas hasil pekerjaan Anda. '
        'Selamat mengerjakan 🙂.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Mochamad Wildani Azizi/2241720171',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/landscape.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection, // Menambahkan titleSection ke dalam body
            buttonSection, // Menambahkan buttonSection ke dalam body
            textSection, // Menambahkan textSection ke dalam body
          ],
        ),
      ),
    );
  }
}
