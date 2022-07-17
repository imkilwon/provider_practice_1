import 'package:flutter/material.dart';

class Adapted_Practice extends StatefulWidget {
  const Adapted_Practice({Key? key}) : super(key: key);

  @override
  State<Adapted_Practice> createState() => _Adapted_PracticeState();
}

class _Adapted_PracticeState extends State<Adapted_Practice> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adaptive Practice"),
      ),
      body: Center(
        child: Column(
          children: [
            Slider(value: 0.25, onChanged: (double newValue) {}),
            //드래그로 값을 조절할 수 있는 위젯
            SwitchListTile.adaptive(
              title: Text("Switch"),
              subtitle: Text("ListTile"),
              value: _value,
              onChanged: (bool newValue) {
                setState(() {
                  _value = newValue;
                });
              },
            ),
            Switch.adaptive(value: true, onChanged: (bool newValue) {}),
            Icon(Icons.adaptive.share),
          ],
        ),
      ),
    );
  }
}
