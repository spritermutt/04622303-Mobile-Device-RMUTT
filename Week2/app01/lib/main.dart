import 'package:flutter/material.dart';

void main() => runApp(ExampleScaffold());

class App01 extends StatelessWidget {
  const App01({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(child: Center(child: Text('สวัสดี RMUTT'))),
    );
  }
}

//2---------------------------
class ExampleScaffold extends StatelessWidget {
  const ExampleScaffold({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('AppBar Section')),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text('top'),
            SizedBox(height: 20),
            Text('middle'),
            SizedBox(height: 20),
            Text('bottom'),
            //3----------------------------
            Center(
              child: Row(
                children: [
                  SizedBox(width: 50),
                  Column(
                    children: [Text('1-1'), SizedBox(height: 20), Text('1-2')],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [Text('2-1'), SizedBox(height: 20), Text('2-2')],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [Text('3-1'), SizedBox(height: 20), Text('3-2')],
                  ),
                ],
              ),
            ),
            //3----------------------------
          ],
        ),
      ),
    ),
  );
}

//2---------------------------
