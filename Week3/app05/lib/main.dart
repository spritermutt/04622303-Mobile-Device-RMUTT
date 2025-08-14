import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
          primary: Colors.deepOrange,
          secondary: Colors.deepOrangeAccent,
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        appBar: AppBar(
          title: const Text('Date Time Picker'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(50.0),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(10),
              color: Colors.yellow,
              child: DateTimePicker(
                type: DateTimePickerType.dateTimeSeparate,
                dateMask: 'd MMM, yyyy',
                initialValue: DateTime.now().toString(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                icon: const Icon(Icons.event),
                dateLabelText: 'วันที่',
                timeLabelText: 'เวลา',
                onChanged: (val) => print(val),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
