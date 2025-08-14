import 'package:flutter/material.dart';

void main() {
  runApp(const App803());
}

class App803 extends StatelessWidget {
  const App803({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(home: HomePage());
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var varCtrlEmail = TextEditingController();
  var varCtrlPWD = TextEditingController();
  var varCtrlName = TextEditingController();
  String varStr = '';

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.indigo[0],

    appBar: AppBar(title: const Text('TextField')),
    body: Center(
      child: SizedBox(
        width: 350,
        child: Column(
          children: [
            SizedBox(height: 30),
            //Text('Email :'),
            textFieldEmail(),
            // Text('Password :'),
            SizedBox(height: 30),
            textFieldPWD(),
            //Text('Name :'),
            SizedBox(height: 30),
            textFieldName(),
            SizedBox(height: 30),
            //Text('String :'),
            Text('$varStr'),
          ],
        ),
      ),
    ),
  );
  //1-----------------------------
  OutlineInputBorder outlineBorder() => const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.indigo, width: 2),
  );
  //2-----------------------------
  TextStyle textStyle() => const TextStyle(
    fontSize: 20,
    color: Colors.indigo,
    fontWeight: FontWeight.normal,
  );
  //3-----------------------------
  Widget textFieldEmail() => TextField(
    controller: varCtrlEmail,
    decoration: InputDecoration(border: outlineBorder(), hintText: 'Email'),
    keyboardType: TextInputType.emailAddress,
    style: textStyle(),
    onChanged: (text) => updateText(),
    onSubmitted: null,
  );
  //4-----------------------------
  Widget textFieldPWD() => TextField(
    controller: varCtrlPWD,
    decoration: InputDecoration(border: outlineBorder(), hintText: 'Password'),
    obscureText: true,
    keyboardType: TextInputType.text,
    style: textStyle(),
    onChanged: (text) => updateText(),
    onSubmitted: null,
  );
  //5-----------------------------
  Widget textFieldName() => TextField(
    controller: varCtrlName,
    decoration: InputDecoration(border: outlineBorder(), hintText: 'Name'),
    keyboardType: TextInputType.text,
    style: textStyle(),
    onChanged: (text) => updateText(),
    onSubmitted: null,
  );
  //6-----------------------------
  void updateText() => setState(() {
    // Update the state with the new value
    varStr = 'Email : ${varCtrlEmail.value.text}\n';
    varStr += 'Password : ${varCtrlPWD.value.text}\n';
    varStr += 'Name : ${varCtrlName.value.text}';
  });
  //finish------------------------
}
