
// gnav code
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const Center(
        child: Text("Welcome To Flutter Prog ",
          style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
            backgroundColor: Colors.black,
            rippleColor: Colors.grey,
            hoverColor: Colors.black,
            haptic: true,
            tabBorderRadius: 40,
            curve: Curves.easeOutExpo,
            duration: const Duration(milliseconds: 900),
            color: Colors.grey[100],
            activeColor: Colors.white,
            iconSize: 34,
            tabBackgroundColor: Colors.grey.shade800,
            padding: const EdgeInsets.all(10.0),
            gap: 8,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.favorite_border_outlined,
                text: "favorite",
              ),
              GButton(
                icon: Icons.search,
                text: "Search",
              ),
              GButton(
                icon: Icons.settings,
                text: "Setting",
              ),
            ],
          ),
        ),
      ),
    );
  }
}


