import 'package:flutter/material.dart';

class ChoiceChip_Practice extends StatefulWidget {
  const ChoiceChip_Practice({Key? key}) : super(key: key);

  @override
  State<ChoiceChip_Practice> createState() => _ChoiceChip_PracticeState();
}

class _ChoiceChip_PracticeState extends State<ChoiceChip_Practice> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Choice Chip"),),
      body: Center(
        child: ChoiceChip(
          label: const Text("예시"),
          selected:_isSelected,
          onSelected: (newBool) {
            setState(() {
              _isSelected = newBool;
              },
            );
          },
          selectedColor: Colors.amber,
          avatar: Icon(Icons.abc),
          ),
        ),
      );
  }
}
