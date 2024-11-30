import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/materimodulscreens/mystatefulwidget.dart';

class LittleVenice extends StatefulWidget {
  const LittleVenice({super.key});

  @override
  State<LittleVenice> createState() => _LittleVeniceState();
}

class _LittleVeniceState extends State<LittleVenice> {
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
                        'assets/images/Little_Venice(1).jpg'), // Path benar
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
                                  'Little Venice',
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
                                      'Villa Estate-Kota Bunga, Cipanas',
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
                    'Seperti namanya, Little Venice adalah tempat wisata yang meniru gaya kota Venezia di Italia. Kota ini terkenal banget sebagai salah satu destinasi liburan impian karena keindahannya dan juga keunikannya, karena sebagian kota seperti dibangun di atas laut sehingga menghasilkan banyak kanal-kanal air yang bisa ditelusuri dengan perahu kecil bernama gondola. Selain jalan-jalan dengan gondola ada banyak spot foto yang instagramable.',
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
                    '4. Tempat Bermain Anak\n'
                    '5. Kolam Pancing\n'
                    '6. Tempat sampah\n'
                    '7. Arena Fantasi\n'
                    '8. Restoran, food court, dan snack corner\n'
                    '9. P3K\n'
                    '10. Keamanan\n'
                    '11. Spot foto yang unik dan instagramable\n'
                    '12. Merchandise Store',
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
                    '1. Foto Studio\n'
                    '2. Gondola\n'
                    '3. Jembatan\n'
                    '4. Around The World\n'
                    '5. Sewa Kostum\n'
                    '6.Mississippi Boat\n'
                    '7. Duck Ride \n'
                    '8. Merry Go Round \n'
                    '9. Bumper Boat \n'
                    '10. Dragon Boat \n'
                    '11. Taxi Boat \n',
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
                    'Jam Operasioanl : Senin - Jumat, 09.00-16.30 \n'
                    '                       : Sabtu - Minggu, 08.00-18.00\n'
                    'Harga               : Weekday Rp60.000, Weekend Rp90.000',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 116, 115, 115),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Keindahan Little Venice',
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
                          image: AssetImage('assets/images/Little_Venice(2).jpg'),
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
                          image: AssetImage('assets/images/Little_Venice(3).jpg'),
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
                          image: AssetImage('assets/images/Little_Venice(4).jpg'),
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
