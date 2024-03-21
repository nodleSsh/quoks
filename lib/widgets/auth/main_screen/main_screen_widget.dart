import 'package:flutter/material.dart';
import 'package:social_vk/widgets/auth/friends_list/friends_list_widget.dart';
import 'package:social_vk/widgets/auth/main_screen/main_screen_profile.dart';

class MainScreeWidget extends StatefulWidget {
  const MainScreeWidget({super.key});

  @override
  State<MainScreeWidget> createState() => _MainScreeWidgetState();
}

class _MainScreeWidgetState extends State<MainScreeWidget> {
  int _currentIndex = 0;

  void onSelectItem(int index) {
    if (_currentIndex == index) return;
    setState(() {
      _currentIndex = index;
    });
  }

  final logoStyle = const TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD8D9DA),
      appBar: AppBar(
        title: Center(
          child: Text(
            // тут сделать чтобы менялось динамически надпись при открытии опрделенного виджета
            'qk',
            style: logoStyle,
          ),
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          FriendsListWidgets(),
          Text(
            'Groups',
          ),
          MainScreenProfile(),
        ],
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
