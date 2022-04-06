import 'package:flutter/material.dart';

import 'screens/dashboard.dart';

void main() {
  runApp(const BytebankApp());
}

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.green[900],
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.green[900],
            secondary: Colors.blueAccent.shade700,
          ),
          elevatedButtonTheme:
              ElevatedButtonThemeData(style: TextButton.styleFrom(backgroundColor: Colors.blueAccent[700]))),
      home: const Dashboard(), //Scaffold
    );
  }
}
