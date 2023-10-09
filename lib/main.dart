import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/home_screen.dart';
import 'screens/form_screen.dart';
import 'screens/map_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Navigation',
    home: NavigationBarDemo(),
  ));
}

class NavigationBarDemo extends StatefulWidget {
  @override
  _NavigationBarDemoState createState() => _NavigationBarDemoState();
}

class _NavigationBarDemoState extends State<NavigationBarDemo> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    // WelcomeScreen(),
    HomeScreen(),
    FormScreen(),
    MapScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: Colors.black), // Ubah warna ikon ke hitam
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.input,
                color: Colors.black), // Ubah warna ikon ke hitam
            label: 'Form',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map,
                color: Colors.black), // Ubah warna ikon ke hitam
            label: 'Map',
          ),
        ],
      ),
    );
  }
}
