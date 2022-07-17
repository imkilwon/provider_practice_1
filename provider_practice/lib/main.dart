import 'package:flutter/material.dart';
import 'pages/FittedBox.dart';
import 'pages/Stepper.dart';
import 'pages/showSearch.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Practice",
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: showSearch_practice(),
    );
  }
}
