import 'package:flutter/material.dart';

class FittedBox_Practice extends StatefulWidget {
  const FittedBox_Practice({Key? key}) : super(key: key);

  @override
  State<FittedBox_Practice> createState() => _FittedBox_PracticeState();
}

class _FittedBox_PracticeState extends State<FittedBox_Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 150,
          color: Colors.red,
          //padding: EdgeInsets.all(25.0),
          child: FittedBox(
            child: Text(
              'KW Practice',
              style: TextStyle(
                fontSize: 100,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
