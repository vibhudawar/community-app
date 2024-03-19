import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height * 0.50;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: screenHeight,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/zomato.png'), // Replace 'your_image.jpg' with your image asset path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                vertical: 20.0), // Adjust padding as needed
            alignment: Alignment.center,
            child: const Column(
              children: [
                Text(
                  "India's #1 Community App",
                  style: TextStyle(
                    fontSize: 24.0, // Adjust font size as needed
                    fontWeight: FontWeight.bold, // Adjust font weight as needed
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 50, top: 40, right: 50, bottom: 20),
                  child: Divider(
                    color: Colors.red,
                    thickness: 2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
