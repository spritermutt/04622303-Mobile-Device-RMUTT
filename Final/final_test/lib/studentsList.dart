import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class StudentsListPage extends StatefulWidget {
  const StudentsListPage({Key? key}) : super(key: key);

  @override
  State<StudentsListPage> createState() => _StudentsListPageState();
}

class _StudentsListPageState extends State<StudentsListPage> {
  List students = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchStudents();
  }

  Future<void> fetchStudents() async {
    setState(() {
      isLoading = true;
    });

    try {
      String url = "http://127.0.0.1/getStudents.php";
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        setState(() {
          students = data is List ? data : [];
          isLoading = false;
        });
      } else {
        setState(() {
          students = [];
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        students = [];
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 101, 140, 88),
        title: Text(
          'รายชื่อนักศึกษาทั้งหมด',
          style: GoogleFonts.notoSansThai(),
        ),
        titleTextStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : students.isEmpty
          ? Center(
              child: Text(
                'ไม่มีข้อมูล',
                style: GoogleFonts.notoSansThai(fontSize: 18),
              ),
            )
          : RefreshIndicator(
              onRefresh: fetchStudents,
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 16),
                    elevation: 2,
                    color: const Color.fromARGB(255, 101, 140, 88),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16),
                      title: Text(
                        '${index + 1}: ${students[index]['name'] ?? ''}',
                        style: GoogleFonts.notoSansThai(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          Text(
                            'เบอร์โทร: ${students[index]['phone'] ?? ''}',
                            style: GoogleFonts.notoSansThai(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'แผนที่: ${students[index]['map'] ?? ''}',
                            style: GoogleFonts.notoSansThai(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 101, 140, 88),
                                    Color.fromARGB(255, 187, 200, 99),
                                  ],
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  padding: const EdgeInsets.all(15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(
                                      color: Colors.white,
                                      width: 3,
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  final mapUrl = students[index]['map'] ?? '';
                                  if (mapUrl.isNotEmpty) {
                                    launchUrl(Uri.parse(mapUrl));
                                  }
                                },
                                icon: Icon(
                                  Icons.location_pin,
                                  color: Colors.white,
                                  size: 24,
                                ),
                                label: Text(
                                  'ดูแผนที่',
                                  style: GoogleFonts.notoSansThai(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: const Color.fromARGB(255, 101, 140, 88),
        child: const Icon(Icons.arrow_back, color: Colors.white),
      ),
    );
  }
}
