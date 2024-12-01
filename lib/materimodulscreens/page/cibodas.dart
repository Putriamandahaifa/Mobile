import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/materimodulscreens/mystatefulwidget.dart';

class Cibodas extends StatefulWidget {
  const Cibodas({super.key});

  @override
  State<Cibodas> createState() => _CibodasState();
}

class _CibodasState extends State<Cibodas> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              child: Container(
                height: 450,
                width: 335,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(0, 6),
                      blurRadius: 4,
                      spreadRadius: 4,
                    )
                  ],

                  //ASSETS GAMBAR

                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/images/KebunRayaCibodas(1).jpg'), // Path benar
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
                            height: 75,
                            width: 224,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Menyelaraskan ke kiri
                              children: [
                                //Nama WISATA

                                Text(
                                  'Kebun Raya Cibodas',
                                  style: TextStyle(
                                    height: 2,
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                Row(
                                  // Membatasi Row ke ukuran kontennya
                                  children: [
                                    Icon(
                                      Icons.location_pin, // Ikon peta
                                      color: const Color.fromARGB(
                                          255, 224, 223, 223),
                                      size: 20.0, // Ukuran ikon
                                    ),

                                    //LOKASI WISATA

                                    SizedBox(
                                        width:
                                            4.0), // Jarak minimal antara ikon dan teks
                                    Text(
                                      'Cipanas, Cibodas',
                                      style: TextStyle(
                                        height: 1.5,
                                        color: const Color.fromARGB(
                                            255, 224, 223, 223),
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // CircleAvatar positioned at the top left
                    Positioned(
                      top: 10,
                      left: 10,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Mystatefulwidget()),
                          );
                        },
                        child: CircleAvatar(
                          radius: 20.0, // Ukuran gambar avatar
                          backgroundColor: Colors.black.withOpacity(0.3),
                          child: Icon(
                            Icons
                                .arrow_back_ios_new_outlined, // Sesuaikan dengan icon yang diinginkan
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      top: 10,
                      right: 10,
                      child: CircleAvatar(
                        radius: 20.0, // Ukuran gambar avatar
                        backgroundColor: Colors.black.withOpacity(0.3),
                        child: Icon(
                          Icons
                              .bookmark_outline_rounded, // Sesuaikan dengan icon yang diinginkan
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),

              //TULISAN DESKIPSI

              child: Column(
                textDirection: TextDirection.ltr,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //overview
                  Row(
                    children: [
                      Text(
                        'Overview',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Detail',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 116, 115, 115),
                        ),
                      )
                    ],
                  ),

                  // DESKRIPSI WISATA

                  SizedBox(height: 30.0),
                  Text(
                    'Pengunjung bisa menikmati dua air terjun di Kebun Raya Cibodas yang memiliki area Rumah Kaca dan Konservatorium guna memfasilitasi pengunjung untuk mengenal lebih dalam tentang koleksi tanaman yang ada. Pengunjung bisa belajar berbagai hal, mulai dari cara menanam, memelihara, hingga merawat tanaman yang dipandu langsung oleh ahli dari kebun raya.',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 116, 115, 115),
                    ),
                  ),

                  SizedBox(height: 30.0),
                  Text(
                    'Fasilitas',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),

                  //FASILITAS WISATA
                  Text(
                    '1. Tempat parkir luas\n'
                    '2. Toilet\n'
                    '3. Masjid\n'
                    '4. Cafe\n'
                    '5. Tempat sampah\n'
                    '6. Pusat informasi\n'
                    '7. Restoran, food court, dan snack corner\n'
                    '8. P3K\n'
                    '9. Keamanan\n'
                    '10. Spot foto yang unik dan instagramable\n'
                    '11. Merchandise Store',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 116, 115, 115),
                    ),
                  ),

                  SizedBox(height: 30.0),
                  Text(
                    'Jam Operasional & Tiket',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),

                  //BIAYA TIKET TARIF WISATA JAM OPERASIONAL
                  Text(
                    'Jam Operasioanl : Senin-Jum’at pukul 08.00-16.00\n'
                    '                       : Sabtu-Minggu dan hari libur nasional pukul 07.00-16.00\n'
                    'Harga               : Weekday  Rp.15.000 & Weekend Rp.25.500',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 116, 115, 115),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Keindahan Kebun Raya Cibodas',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10.0),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 400, // Adjust height as needed
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  children: [
                    // Gambar pertama dengan border radius
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            20), // Menambahkan border radius
                        image: DecorationImage(
                          image: AssetImage('assets/images/KebunRayaCibodas(2).jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Gambar kedua dengan border radius
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            20), // Menambahkan border radius
                        image: DecorationImage(
                          image: AssetImage('assets/images/KebunRayaCibodas(3).jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Gambar ketiga dengan border radius
                    // Container(
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(
                    //         20), // Menambahkan border radius
                    //     image: DecorationImage(
                    //       image: AssetImage('assets/images/Thenicepark(3).jpg'),
                    //       fit: BoxFit.cover,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}

