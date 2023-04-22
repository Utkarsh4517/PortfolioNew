import 'package:flutter/material.dart';
import 'package:newportfolio/pages/homepage.dart';
import 'package:newportfolio/pages/testpage.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
      
      home: const TestPage(),
    );
  }
}
