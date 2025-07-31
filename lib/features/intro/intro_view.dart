// lib/features/intro/intro_view.dart
import 'package:flutter/material.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AtikVerse')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.account_circle, size: 120, color: Colors.deepPurple),
            SizedBox(height: 16),
            Text('Hi, I\'m Atik Hridoy', style: TextStyle(fontSize: 24)),
            SizedBox(height: 8),
            Text('Flutter Developer | CSE Engineer'),
          ],
        ),
      ),
    );
  }
}
