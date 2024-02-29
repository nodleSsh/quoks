import 'package:flutter/material.dart';
import 'package:social_vk/widgets/auth/auth_widget.dart';
import 'package:social_vk/widgets/auth/main_screen/main_screen_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const colorThemeAppBar = Color(0xFF61677A);
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: colorThemeAppBar,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFFD8D9DA),
          selectedItemColor: Color.fromARGB(255, 58, 62, 73),
          unselectedItemColor: Color(0xFF61677A),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/auth': (context) => const AuthWidget(),
        '/main_screen': (context) => const MainScreeWidget(),
      },
      initialRoute: '/auth',
    );
  }
}
