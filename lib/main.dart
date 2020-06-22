import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BILLZ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 244, 245, 247),
        accentColor: Color.fromARGB(255, 95, 110, 139),
      ),
      home: HomeScreen(),
    );
  }
}
