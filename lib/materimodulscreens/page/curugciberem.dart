import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/materimodulscreens/mystatefulwidget.dart';

class CIbereum extends StatefulWidget {
  const CIbereum({super.key});

  @override
  State<CIbereum> createState() => _CIbereumState();
}

class _CIbereumState extends State<CIbereum> {
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
                        'assets/images/Cibereum (1).jpg'), // Path benar
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
                                  'Cibereum',
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
                                      'Cibodas, Cianjur',
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
                    'Selain keindahan Curug atau Air Terjun Cibeureum, selama perjalanan menuju ke lokasi akan terhidang pemandangan alam yang indah dan eksotis. Tidak heran jika pengunjung menemukan berbagai jenis burung dan kera yang bergelantungan. Ada juga telaga biru dan rawa panyangcangan yang bisa dinikmati keindahannya selama perjalanan. Serta jembatan panjang yang terbuat dari batu buatan yang sering menjadi salah satu tempat favorit berfoto ria atau selfie selama perjalanan ke Curug Cibeureum ini.',
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
                    '3. Pasar\n'
                    '4. Musolla\n'
                    '5. Pos\n'
                    '6. Tempat sampah\n'
                    '7. Spot foto yang unik dan instagramable\n',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 116, 115, 115),
                    ),
                  ),

                  SizedBox(height: 30.0),
                  Text(
                    'WAHANA',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),

                  //WAHANA WISATA
                  Text(
                    '1. Telaga Biru\n',
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
                    'Jam Operasioanl : Setiap hari07.00-14.00 \n'
                    'Harga               :  Weekday: Rp16.000 Weekend Rp18.500',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 116, 115, 115),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Keindahan Curug Cibereum',
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
                          image: AssetImage('assets/images/Cibereum (2).jpg'),
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
                          image: AssetImage('assets/images/Telaga biru(1).jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Gambar ketiga dengan border radius
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            20), // Menambahkan border radius
                        image: DecorationImage(
                          image: AssetImage('assets/images/Telaga biru(2).jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
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
