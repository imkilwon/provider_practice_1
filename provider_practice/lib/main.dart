import 'package:flutter/material.dart';
import 'package:provider_practice/pages/ChoiceChip.dart';
import 'package:provider_practice/pages/CustomScrollView.dart';
import 'package:provider_practice/pages/ExpansionTile.dart';
import 'package:provider_practice/pages/adaptive.dart';
import 'package:provider_practice/pages/showTimePicker.dart';
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
      home: ShowTimePickerPractice(),
    );
  }
}
