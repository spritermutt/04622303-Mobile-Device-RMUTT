import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_tilt/flutter_tilt.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //4--------------------------
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color.fromARGB(143, 0, 96, 62),
          borderRadius: BorderRadius.circular(10),
        ),

        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              child: ClipOval(
                child: Tilt(
                  borderRadius: BorderRadius.circular(100),
                  clipBehavior: Clip.antiAlias,
                  lightShadowMode: LightShadowMode.projector,
                  child: Image.asset(
                    'images/profile-2.png',
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                    width: 300,
                    height: 300,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Text(
                '116630462001-4',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.teko().fontFamily,
                ),
              ),
            ),
            Text(
              'ชุษณปักษ์ ฟองมณี',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w900,
                fontFamily: GoogleFonts.notoSansThai().fontFamily,
              ),
            ),
            Text(
              'นักศึกษาคณะวิศวกรรมคอมพิวเตอร์\nมหาวิทยาลัยเทคโนโลยีราชมงคลธัญบุรี',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w100,
                fontFamily: GoogleFonts.notoSansThai().fontFamily,
              ),
            ),
          ],
        ),
        //4--------------------------
      ),
    );
  }
}
