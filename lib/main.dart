import 'package:flutter/material.dart';
import 'package:food_delivery_ui/starter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery UI',
      home: StarterPage(),
    );
  }
}
