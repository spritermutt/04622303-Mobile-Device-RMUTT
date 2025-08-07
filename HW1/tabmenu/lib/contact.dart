import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //4--------------------------
      child: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          color: const Color.fromARGB(143, 0, 96, 62),
          borderRadius: BorderRadius.circular(10),
        ),

        child: Column(
          children: [
            Text(
              'ช่องทางการติดต่อ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.notoSansThai().fontFamily,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.globe,
                  color: Colors.white,
                  size: 30,
                ),
                title: Text(
                  'https://justcatnip.xyz',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.phone,
                  color: Colors.white,
                  size: 30,
                ),
                title: Text(
                  '(+66)93 686 4531',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.envelope,
                  color: Colors.white,
                  size: 30,
                ),
                title: Text(
                  'chusanapak.f@gmail.com',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.line,
                  color: Colors.white,
                  size: 30,
                ),
                title: Text(
                  'ID:08aug2545',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
                const SizedBox(width: 20),
                FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
                const SizedBox(width: 20),
                FaIcon(FontAwesomeIcons.line, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
