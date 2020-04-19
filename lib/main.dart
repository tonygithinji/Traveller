import 'package:flutter/material.dart';
import 'package:traveller/screens/home.screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traveller',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF46BACE),
        accentColor: Color(0xFFD8ECF2),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      home: Home(),
    );
  }
}
