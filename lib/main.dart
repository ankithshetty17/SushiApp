

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushiapp/models/shop.dart';
import 'package:sushiapp/pages/cart_page.dart';
import 'package:sushiapp/pages/first_page.dart';
import 'package:sushiapp/pages/menu_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context)=>shop(),
    child:MyApp(),
    )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstScreen(),
      routes: {
        '/intropage':(context) => FirstScreen(),
        '/menupage':(context)=>MenuPage(),
        '/cartpage':(context)=>CartPage(),
      },
    );
  }
}

