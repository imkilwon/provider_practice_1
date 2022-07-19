import 'package:flutter/material.dart';

class ExpansionTilePractice extends StatelessWidget {
  const ExpansionTilePractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expansion Tile")),
      body: ExpansionTile(
        title: Text("Tile Name"),
        leading: Icon(Icons.info_outline_rounded),
        backgroundColor: Colors.blue,
        children: [Text("num 1"),Text("num 2"),Text("num 3"),ListTile(title: Text("number1"),),ListTile(title:Text("number2"),),],
      ),
    );
  }
}

