import 'package:flutter/material.dart';
import 'package:flutter_shop_app/routes/app_routes_named.dart';
import 'package:get/get.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/image/splash.png',
              width: 210,
              height: 42,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 325,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(AppRoutesNamed.loginPage);
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
                  SizedBox(height: 16),
                  Text(
                    "or",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: 325,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(AppRoutesNamed.registerPage);
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: Color(0xFF4669C9),
                        ),
                        backgroundColor: Color(0xFFFFFFFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF4669C9),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
