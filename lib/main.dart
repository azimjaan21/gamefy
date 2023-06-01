import 'package:flutter/material.dart';
import 'package:gamefy/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      brightness: Brightness.dark
        
      ),

      home: const HomeScreen(),
    );
  }
}

