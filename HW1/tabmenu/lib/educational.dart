import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Educational extends StatelessWidget {
  const Educational({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color.fromARGB(143, 0, 96, 62),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(
              'ประวัติการศึกษา',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.notoSansThai().fontFamily,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: ListTile(
                leading: Icon(Icons.computer, color: Colors.white, size: 30),
                title: Text(
                  'เทคโนโลยีสารสนเทศและการสื่อสาร',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.notoSansThai().fontFamily,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'วิทยาลัยเทคนิคนครศรีธรรมราช',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: GoogleFonts.notoSansThai().fontFamily,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'ปวช.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: GoogleFonts.notoSansThai().fontFamily,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.mobile_friendly,
                  color: Colors.white,
                  size: 30,
                ),
                title: Text(
                  'เทคโนโลยีสารสนเทศและการสื่อสาร',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.notoSansThai().fontFamily,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'วิทยาลัยเทคนิคนครศรีธรรมราช',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: GoogleFonts.notoSansThai().fontFamily,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'ปวส.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: GoogleFonts.notoSansThai().fontFamily,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: ListTile(
                leading: Icon(Icons.school, color: Colors.white, size: 30),
                title: Text(
                  'วิศวกรรมคอมพิวเตอร์',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.notoSansThai().fontFamily,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'มหาวิทยาลัยเทคโนโลยีราชมงคลธัญบุรี',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: GoogleFonts.notoSansThai().fontFamily,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'ปริญญาตรี',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: GoogleFonts.notoSansThai().fontFamily,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
