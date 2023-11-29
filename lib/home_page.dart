import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemPosition = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
      bottomNavigationBar: SnakeNavigationBar.color(
        backgroundColor: Colors.black,
        behaviour: SnakeBarBehaviour.floating,
        snakeShape: SnakeShape.circle,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25),),
        ),
        padding: const EdgeInsets.all(12),

        ///configuration for SnakeNavigationBar.color
        snakeViewColor: Colors.indigo,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,

        ///configuration for SnakeNavigationBar.gradient
        //snakeViewGradient: selectedGradient,
        //selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
        //unselectedItemGradient: unselectedGradient,

        showUnselectedLabels: true,
        showSelectedLabels: true,

        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'chat'),
          BottomNavigationBarItem(icon: Icon(Icons.mic), label: 'mic'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'bookmark'),
        ],
      ),
    );
  }
}
