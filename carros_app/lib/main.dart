import 'package:carros_app/ui/pages/home_page.dart';
import 'package:carros_app/ui/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carros',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.indigo,
        scaffoldBackgroundColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}



