import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainScreeWidget extends StatefulWidget {
  const MainScreeWidget({super.key});

  @override
  State<MainScreeWidget> createState() => _MainScreeWidgetState();
}

class _MainScreeWidgetState extends State<MainScreeWidget> {
  int _currentIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Friends',
    ),
    Text(
      'Groups',
    ),
    Text(
      'My profile',
    ),
  ];

  void onSelectItem(int index) {
    if (_currentIndex == index) return;
    setState(() {
      _currentIndex = index;
    });
  }

  final logoStyle = const TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD8D9DA),
      appBar: AppBar(
        title: Center(
          child: Text(
            'quoka',
            style: logoStyle,
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: 'Friends',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_2_outlined),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'My profile',
          ),
        ],
        onTap: onSelectItem,
      ),
    );
  }
}
