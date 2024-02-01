import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tethsecure/pages/token_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const TokenPage())));
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 8, 35, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/logo.png',
              height: 180,
              width: 167.59,
            ),
          ),
          const SizedBox(height: 25,),
          const Text(
            'TethSecure',
            style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}