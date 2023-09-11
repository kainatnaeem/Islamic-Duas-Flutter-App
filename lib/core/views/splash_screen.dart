import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islamic_duas_ktech/core/views/home_Screen.dart';

import '../utils/widgets/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.mybgcolor,
        body: const SafeArea(
          child: Center(
              child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Image(
                image: AssetImage("assets/images/islamicLogo.png"), width: double.infinity, height: 300),
          )),
        ));
  }
}
