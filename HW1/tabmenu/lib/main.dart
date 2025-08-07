import 'package:flutter/material.dart';
import 'myhome.dart';
import 'educational.dart';
import 'working.dart';
import 'skills.dart';
import 'contact.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Chusanapak Fongmanee\'s Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 96, 62),
              ),
            ),
            bottom: TabBar(
              tabs: const [
                Tab(
                  icon: FaIcon(FontAwesomeIcons.house),
                  child: Text("หน้าแรก"),
                ),
                Tab(
                  icon: FaIcon(FontAwesomeIcons.graduationCap),
                  child: Text("ประวัติการศึกษา"),
                ),
                Tab(
                  icon: FaIcon(FontAwesomeIcons.briefcase),
                  child: Text("ประวัติการทำงาน"),
                ),
                Tab(
                  icon: FaIcon(FontAwesomeIcons.houseLaptop),
                  child: Text("ความสามารถ"),
                ),
                Tab(
                  icon: FaIcon(FontAwesomeIcons.addressCard),
                  child: Text("ติดต่อ"),
                ),
              ],
              labelColor: const Color.fromARGB(255, 0, 96, 62),
              unselectedLabelColor: const Color.fromARGB(143, 0, 96, 62),
              indicatorColor: const Color.fromARGB(255, 0, 96, 62),
              overlayColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(27, 0, 96, 62),
              ),
            ),
          ),
          //3--------------------------
          body: const TabBarView(
            children: [
              Center(child: MyHome()),
              Center(child: Educational()),
              Center(child: Workinghistory()),
              Center(child: Skills()),
              Center(child: Contact()),
            ],
          ),
          //3--------------------------
        ),
      ),
    );
  }
}
