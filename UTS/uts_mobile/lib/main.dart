import 'package:flutter/material.dart';
import 'pages/landing_page.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/profile_page.dart';

void main() {
  runApp(MyApp()); // Ganti FaycakeApp dengan MyApp
}

class MyApp extends StatelessWidget {
  // Ubah nama kelas menjadi MyApp
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Faycake App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
