import 'package:arunika/ui/pages/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arunika',
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
