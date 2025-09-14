import 'package:flutter/material.dart';
import 'screens/orders_page.dart';

void main() {
  runApp(
    MyTradingApp());
}

class MyTradingApp extends StatelessWidget {
  MyTradingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trading Orders',
      debugShowCheckedModeBanner: false, // Removes the debug banner
      theme: ThemeData(
        
        appBarTheme:AppBarTheme(
          centerTitle: false, // Title aligned to the left
          elevation: 2,       // Subtle shadow
        ),
      ),
      home:OrdersPage(), // Main screen of the app
    );
  }
}
