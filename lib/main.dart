import 'package:bidur_gupta/views/Web/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio: Bidur Gupta',
      theme: ThemeData(
        fontFamily: 'Barlow',
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomePage(),
    );
  }
}
