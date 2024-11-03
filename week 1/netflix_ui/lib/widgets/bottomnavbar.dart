import 'package:flutter/material.dart';
import 'package:netflix_ui/screens/Home.dart';
import 'package:netflix_ui/screens/new_hot.dart';
import 'package:netflix_ui/screens/search.dart';
import 'package:netflix_ui/utils/pallete.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Pallete.Black,
        bottomNavigationBar: SizedBox(
          height: 70,
          child: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.search),
                text: "Search",
              ),
              Tab(
                icon: Icon(Icons.photo_album),
                text: "New & Hot",
              ),
            ],
            indicatorColor: Pallete.white,
            labelColor: Pallete.white,
            unselectedLabelColor: Pallete.white,
          ),
        ),
        body: TabBarView(children: [
          Home(),
          Search(),
          NewHot(),
        ]),
      ),
    );
  }
}
