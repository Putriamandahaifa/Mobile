import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/screens/Loginpage.dart';

TextEditingController getUser = TextEditingController();
TextEditingController getPass = TextEditingController();

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
            const SizedBox(height: 30),
            const Text(
              'SIGN UP', 
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0), 
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            const Text(
              'Please Enter Your Personal Data', 
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
                
                  labelText: 'Name',
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
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
                  
                  labelText: 'Confirm Password',
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
                // Ambil username dari TextField
                String username = getUser.text;

                // Navigasi ke HomePage dan kirimkan username
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  LoginForm(),
                  )
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Warna background button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                'Create',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
