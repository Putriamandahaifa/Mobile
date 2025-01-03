import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/materimodulscreens/page/thenice.dart';
import 'package:wisata_mobile_5/materimodulscreens/utama.dart';
import 'package:wisata_mobile_5/screens/signup_page.dart';

// TextEditingController getUser = TextEditingController();
// TextEditingController getPass = TextEditingController();

class LoginForm extends StatelessWidget {

  final TextEditingController getUser = TextEditingController();
  final TextEditingController getPass = TextEditingController();
   LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '', 
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false, // Hilangkan panah kembali
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text(
              'SIGN IN', 
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0), 
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            const Text(
              'One Step Towards The Wonder Of Cipanas', 
              style: TextStyle(fontSize: 16.0), 
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: getUser,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  contentPadding:
                      const EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(15),
                  ),
                
                  labelText: 'Username',
                  labelStyle: const TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: getPass,
                cursorColor: Colors.black,
                
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  contentPadding:
                      const EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  
                  labelText: 'Password',
                  labelStyle: const TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300.0,
              height: 50.0,
              child: ElevatedButton(
              onPressed: () {

                final username = getUser.text.trim();
                if (username.isNotEmpty) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(username: username),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Username tidak boleh kosong")),
                  );
                }
                // Ambil username dari TextField
                // String username = getUser.text;

                // // Navigasi ke HomePage dan kirimkan username
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => HomePage(username: username),
                //   ),
                // );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Warna background button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                'Sign In',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            ),
            
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignupPage()),
                );
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(color: Colors.blue,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
