import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

@override 
Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('App 801'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            textButton(),
            SizedBox(height: 30,),
            elevatedButton(),
            SizedBox(height: 30,),
            outlinedButton(),
          ],
        ),
      ),
    ),
  );
  Widget textButton() => const TextButton(
    onPressed: null, 
    child: Text('Text Button',
    style:TextStyle(color: Colors.indigo,
    fontSize:18,
    fontWeight: FontWeight.bold,
        fontFamily: 'Tahoma',
      ),
    ),
  );
  Widget elevatedButton() => ElevatedButton(
    onPressed: (){},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.indigo,
      foregroundColor: Colors.white,
      shape: const StadiumBorder(),
    ),
    child: const Text(
      'Text Button',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Tahoma',
      ),
    ),
  );
  Widget outlinedButton() => OutlinedButton(
    onPressed: (){},
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.indigo,
      side: const BorderSide(color: Colors.indigo, width: 2),
      shape: const StadiumBorder(),
    ),
    child: const Text(
      'Text Button',
      style: TextStyle(
        color: Colors.indigo,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Tahoma',
      ),
    ),
  );

}
