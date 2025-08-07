import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Workinghistory extends StatelessWidget {
  const Workinghistory({super.key});

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
              'ประวัติการทำงาน',
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
                leading: Icon(
                  Icons.slow_motion_video,
                  color: Colors.white,
                  size: 30,
                ),
                title: Text(
                  'Department of Marine and Coastal Resources',
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
                      'Video Editor (Intern)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: GoogleFonts.notoSansThai().fontFamily,
                      ),
                    ),
                    SizedBox(height: 5),
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
                leading: Icon(Icons.palette, color: Colors.white, size: 30),
                title: Text(
                  'Remax E-sport Thailand',
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
                      'Graphic Designer (Previous)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: GoogleFonts.notoSansThai().fontFamily,
                      ),
                    ),
                    SizedBox(height: 5),
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
                leading: Icon(Icons.terminal, color: Colors.white, size: 30),
                title: Text(
                  'The Art Plastic Surgery Hospital',
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
                      'Website Developer (Present)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: GoogleFonts.notoSansThai().fontFamily,
                      ),
                    ),
                    SizedBox(height: 5),
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
