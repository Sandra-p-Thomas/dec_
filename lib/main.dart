import 'package:flutter/material.dart';
import 'package:slacks_test/screens/detail_page.dart';
import 'package:slacks_test/screens/home-screen.dart';
import 'package:slacks_test/splash_screen/splash_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // home screen
     // home: MyHomePage(),      //  too add splash screen
    );
  }
}
