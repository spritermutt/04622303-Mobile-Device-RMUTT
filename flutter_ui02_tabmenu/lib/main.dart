import 'package:flutter/material.dart';
import 'package:flutter_ui02_tabmenu/myhome.dart';

void main() {
  runApp(const MyApp());
}
//1--------------------------
class MyApp extends StatelessWidget {
  const MyApp({super.key});
//2--------------------------
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    home: DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        title: const Text('MyApp'),
        bottom: const TabBar(tabs: [
Tab(icon: Icon(Icons.home,color: Colors.red),text: "หน้าแรก",),
Tab(icon: Icon(Icons.school,color: Colors.amber),text:"เกี่ยวกับภาควิชา",),
Tab(icon: Icon(Icons.man,color:Colors.lightGreen),text:"บุคลากร",),
        ]),
      ),
      //3--------------------------
      body: const TabBarView(
        children: [
          Center(child: MyHome(),),
          Center(child: Icon(Icons.school),),
          Center(child: Icon(Icons.man),),
        ],
      ),
      //3--------------------------
    )),
   );
  }
}
