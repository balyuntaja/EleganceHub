import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/pages/register_page.dart';
import 'package:flutter_shop_app/routes/app_routes_named.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Future<void> _signInWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.offAllNamed(AppRoutesNamed.homePage);
      print("Login successful");
    } on FirebaseAuthException catch (e) {
      print('Login Error: ${e.message}');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Login Error: ${e.message}'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 72.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Welcome Text
              Text(
                'Welcome back to EleganceHub',
                style: GoogleFonts.dmSans(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Silahkan masukkan data untuk login',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 50),
              Text(
                'Email/Phone',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 24),

              // Email/Phone TextField with no border and background color
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Masukkan Alamat Email/No Telepon Anda',
                  hintStyle: GoogleFonts.dmSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF838589),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFAFAFA), // Background color
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none, // Remove border
                  ),
                ),
              ),
              SizedBox(height: 32),
              Text(
                'Password',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),

              SizedBox(
                height: 24,
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Masukkan Kata Sandi Akun',
                  hintStyle: GoogleFonts.dmSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF838589),
                  ),
                  suffixIcon: Icon(Icons.visibility_outlined),
                  filled: true,
                  fillColor: Color(0xFFFAFAFA), // Background color
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 50),

              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    _signInWithEmailAndPassword(_emailController.text,
                        _passwordController.text, context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF3669C9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 140),

              // Forgot Password and Sign Up Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // Implementasi forgot password
                    },
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(RegisterPage());
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Color(0xFF3669C9)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
