import 'package:flutter/material.dart';

void main() {
  Widget app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('สวัสดี AppBar'), centerTitle: true),
      floatingActionButton: FloatingActionButton(
        //child: Text('กรุณากดปุ่ม', style: TextStyle(fontSize: 20)),
        child: const Icon(Icons.settings, size: 30, color: Colors.red),
        onPressed: () {
          print('ได้กดปุ่มเรียบร้อยแล้ว');
        },
      ),
    ),
  );
  runApp(app);
}
