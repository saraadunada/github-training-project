import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const StudentProfileApp());
}

class StudentProfileApp extends StatelessWidget {
  const StudentProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile App',
      theme: ThemeData(useMaterial3: true, fontFamily: 'Arial'),
      home: const HomeScreen(),
    );
  }
}
