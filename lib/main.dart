import 'package:advanced_basics/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: const StartScreen(),
      appBar: AppBar(
        title: const Text('Advanced Basics'),
      ),
    ),
  ));
}
