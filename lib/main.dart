import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/materimodulscreens/utama.dart';


void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(username: 'byn',),
    );
  }
}
