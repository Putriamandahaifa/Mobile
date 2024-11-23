import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wisata_mobile_5/screens/landingpage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    // Menunda sebanyak 3 detik
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Landingpage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Lottie.network(
              'https://lottie.host/ec78e935-6666-4e20-afde-1b550470cf96/PEiYTAn89z.json',
              width: 350,
              height: 350,
              fit: BoxFit.contain,
            ),
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 300),
                Text(
                  'ASLABTIF',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1B1B1B),
                  ),
                ),
                Text(
                  'TRAVEL',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1B1B1B),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
