import 'package:flutter/material.dart';
import 'package:listbuilder/homepage.dart'; // Import user list screen

void main() {
  runApp(const MyApp()); // Ensure it doesn't reference itself inside its build method
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserListScreen(), // Make sure this is a valid screen
    );
  }
}
