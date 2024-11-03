import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_ui/widgets/bottomnavbar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const BottomNavBar(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      height: 200,
      width: 200,
      child: Lottie.asset(
        "assets/images/netflix.json",
      ),
    ));
  }
}
