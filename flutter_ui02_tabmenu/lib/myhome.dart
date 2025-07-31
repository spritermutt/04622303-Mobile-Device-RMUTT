import 'package:flutter/material.dart';

class MyHome extends StatelessWidget{
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
    //4--------------------------
    child: Column(
      
      children: [
        const Text(
        'สาขาวิชาวิศวกรรมคอมพิวเตอร์',
        style: 
        TextStyle(
        color: Colors.red,
        fontSize: 30, 
        fontWeight: 
        FontWeight.bold),
      ),
        Image.asset('assets/images/1.PNG'),
        const Text("\n\n"),
        Image.asset('assets/images/2.PNG'),
        ],
    ),
    //4--------------------------
   );
}
}