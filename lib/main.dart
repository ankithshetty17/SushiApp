import 'package:flutter/material.dart';
import 'package:sushiapp/pages/first_page.dart';
import 'package:sushiapp/pages/menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
      routes: {
        '/intropage':(context) => FirstScreen(),
        '/menupage':(context)=>MenuPage(),
      },
    );
  }
}

