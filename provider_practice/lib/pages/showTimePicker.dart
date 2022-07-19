import 'package:flutter/material.dart';

class ShowTimePickerPractice extends StatefulWidget {
  const ShowTimePickerPractice({Key? key}) : super(key: key);

  @override
  State<ShowTimePickerPractice> createState() => _ShowTimePickerPracticeState();
}

class _ShowTimePickerPracticeState extends State<ShowTimePickerPractice> {
  TimeOfDay? time = const TimeOfDay(hour: 12, minute: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("show time picker")),
      body: Center(
        child: Column(
          children: [
            Text("timePicker를 이용하면 시계로 시간을 설정하게 할 수 있다.\n 방식은 다르지만 비슷한 DatePicker도 있음"),
            Text(
              '${time!.hour.toString()}:${time!.minute.toString()}',
              style:  const TextStyle(fontSize: 50),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.access_time_filled,
        ),
        onPressed: ()async{
          TimeOfDay? newTime = await showTimePicker(
            context:context,
            initialTime: time!,
          );
          if(newTime != null){
            setState(() {
              time = newTime;
            });
          }
        },
      ),
    );
  }
}
