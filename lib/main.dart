import 'package:flutter/material.dart';
import 'Homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'audio app',
      theme: ThemeData(
          primarySwatch: Colors.teal,
          scaffoldBackgroundColor: Colors.teal[100]),
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
