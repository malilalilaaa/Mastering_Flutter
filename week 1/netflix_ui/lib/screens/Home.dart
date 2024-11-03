import 'package:flutter/material.dart';
import 'package:netflix_ui/utils/pallete.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Pallete.Black,
      body: Center(
        child: Text(
          "Mahiya",
          style: TextStyle(
            color: Pallete.white,
          ),
        ),
      ),
    );
  }
}
