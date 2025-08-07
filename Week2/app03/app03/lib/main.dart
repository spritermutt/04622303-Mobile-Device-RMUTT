import 'package:flutter/material.dart';

void main() => runApp(App03());

class App03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(home: HomePage());
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  num a = 15, b = 5;
  String _txt = '';

  void btn_pressed({String op = ''}) {
    setState(() {
      num r = 0;
      if (op == '+') {
        r = a + b;
      } else if (op == '-') {
        r = a - b;
      }
      _txt = '15 +5 = $r';
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Test App03')),
    body: Center(
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(_txt, textScaleFactor: 1.2),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('$a + $b', textScaleFactor: 1.2),
            onPressed: () => btn_pressed(op: '+'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('$a - $b', textScaleFactor: 1.2),
            onPressed: () => btn_pressed(op: '-'),
          ),
        ],
      ),
    ),
  );
}
