import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';

class StudentsPage extends StatefulWidget {
  const StudentsPage({Key? key}) : super(key: key);

  @override
  State<StudentsPage> createState() => _StudentsPageState();
}

class _StudentsPageState extends State<StudentsPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController map = TextEditingController();
  Future saveData() async {
    String url = "http://127.0.0.1/save.php";

    final response = await http.post(
      Uri.parse(url),
      body: {"name": name.text, "phone": phone.text, "map": map.text},
    );

    var data = json.decode(response.body);
    if (!mounted) return;
    if (data == "Error") {
      Navigator.pushNamed(context, 'students');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'บันทึกข้อมูลเรียบร้อยแล้ว',
            style: GoogleFonts.notoSansThai(
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 92, 255, 87),
        ),
      );
      name.clear();
      phone.clear();
      map.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Form(
          key: formKey,
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'บันทึกประวัติเพื่อนในชั้นเรียน',
                    style: GoogleFonts.notoSansThai(
                      fontSize: MediaQuery.of(context).size.width * 0.06,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      obscureText: false,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'กรุณากรอกชื่อ';
                        }
                        return null;
                      },
                      controller: name,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      obscureText: false,
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                      buildCounter:
                          (
                            context, {
                            required currentLength,
                            required isFocused,
                            maxLength,
                          }) => null,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone Number',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'กรุณากรอกเบอร์โทรศัพท์';
                        }
                        if (value.length != 10) {
                          return 'กรุณากรอกเบอร์โทรศัพท์ให้ครบ 10 หลัก';
                        }
                        return null;
                      },
                      controller: phone,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      obscureText: false,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Google Map link',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'กรุณากรอก Google Map link';
                        }
                        return null;
                      },
                      controller: map,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: 350,
                    height: 60,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 101, 140, 88),
                          Color.fromARGB(255, 187, 200, 99),
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                        // Stay on current page - no navigation needed
                        bool pass = formKey.currentState!.validate();
                        if (pass) {
                          saveData();
                        }
                      },
                      icon: const Icon(
                        Icons.save,
                        color: Colors.white,
                        size: 24,
                      ),
                      label: const Text(
                        'Save Data',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: 350,
                    height: 60,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 101, 140, 88),
                          Color.fromARGB(255, 187, 200, 99),
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/studentsList');
                      },
                      icon: const Icon(
                        Icons.list,
                        color: Colors.white,
                        size: 24,
                      ),
                      label: const Text(
                        'Students List',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
