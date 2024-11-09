import 'package:flutter/material.dart';
import 'package:warmindawg_mobile/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme(
          primary: Colors.red, // Set primary color here
          onPrimary: Colors.white, // Contrast color for primary text/icons
          secondary: Colors.green, // Set a distinct secondary color here
          onSecondary: Colors.white, // Contrast color for secondary text/icons
          surface: Colors.grey[200]!, // Surface color
          onSurface: Colors.black, // Text color on surfaces
          error: Colors.redAccent, // Color for errors
          onError: Colors.white, // Contrast color for errors
          brightness: Brightness.light, // Set light or dark mode
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}