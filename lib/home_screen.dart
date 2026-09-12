import 'package:flutter/material.dart';
import 'package:sara_emad/widgets/InfoCard.dart';
import 'package:sara_emad/widgets/StudentCard.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Student Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StudentCard(),

            const SizedBox(height: 25),

            const Text(
              'Personal Information',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            const InfoCard(
              icon: Icons.person,
              title: 'Name',
              value: 'Student Name',
            ),

            const InfoCard(
              icon: Icons.school,
              title: 'Major',
              value: 'Mobile Application Programming',
            ),

            const InfoCard(
              icon: Icons.code,
              title: 'Programming Language',
              value: 'Dart / Flutter',
            ),

            const InfoCard(
              icon: Icons.email,
              title: 'Email',
              value: 'student@example.com',
            ),

            const SizedBox(height: 25),

            const Text(
              'Skills',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: const [
                Chip(
                  avatar: Icon(Icons.flutter_dash),
                  label: Text('Flutter'),
                ),
                Chip(
                  label: Text('Dart'),
                ),
                Chip(
                  label: Text('Firebase'),
                ),
                Chip(
                  label: Text('Git'),
                ),
                Chip(
                  label: Text('GitHub'),
                ),
              ],
            ),

            const SizedBox(height: 30),

            Center(
              child: Text(
                '© 2026 Student Profile App',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}