import 'package:final_test/odd.dart';
import 'package:final_test/students.dart';
import 'package:final_test/studentsList.dart';
import 'package:final_test/change.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/studentsList': (context) => StudentsListPage()},
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 101, 140, 88),
            title: Text('สอบปลายภาค', style: GoogleFonts.notoSansThai()),
            titleTextStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: Material(
            color: const Color.fromARGB(255, 101, 140, 88),
            child: TabBar(
              tabs: const [
                Tab(text: 'คู่/คี่', icon: Icon(Icons.numbers)),
                Tab(text: 'คำนวณเงินทอน', icon: Icon(Icons.calculate)),
                Tab(text: 'บันทึกข้อมูล', icon: Icon(Icons.person_add)),
              ],
              labelStyle: GoogleFonts.notoSansThai(),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              indicatorColor: Colors.white,
            ),
          ),
          body: const TabBarView(
            children: [odd(), ChangePage(), StudentsPage()],
          ),
        ),
      ),
    );
  }
}
