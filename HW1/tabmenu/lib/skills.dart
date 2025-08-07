import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
          color: const Color.fromARGB(143, 0, 96, 62),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(
              'ความสามารถ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.notoSansThai().fontFamily,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.wordpress,
                        color: Colors.white,
                        size: 50,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'WordPress',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.notoSansThai().fontFamily,
                        ),
                      ),
                      RatingBar.readOnly(
                        alignment: Alignment.center,
                        filledIcon: Icons.eco,
                        emptyIcon: Icons.eco_outlined,
                        filledColor: Colors.white,
                        emptyColor: Colors.white60,
                        initialRating: 4,
                        maxRating: 5,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.php,
                        color: Colors.white,
                        size: 50,
                      ),
                      Text(
                        'PHP',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.notoSansThai().fontFamily,
                        ),
                      ),
                      RatingBar.readOnly(
                        alignment: Alignment.center,
                        filledIcon: Icons.eco,
                        emptyIcon: Icons.eco_outlined,
                        filledColor: Colors.white,
                        emptyColor: Colors.white60,
                        initialRating: 3,
                        maxRating: 5,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.database,
                        color: Colors.white,
                        size: 50,
                      ),
                      Text(
                        'MySQL',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.notoSansThai().fontFamily,
                        ),
                      ),
                      RatingBar.readOnly(
                        alignment: Alignment.center,
                        filledIcon: Icons.eco,
                        emptyIcon: Icons.eco_outlined,
                        filledColor: Colors.white,
                        emptyColor: Colors.white60,
                        initialRating: 3,
                        maxRating: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.spotify,
                        color: Colors.white,
                        size: 50,
                      ),
                      Text(
                        'Spotify',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.notoSansThai().fontFamily,
                        ),
                      ),
                      RatingBar.readOnly(
                        alignment: Alignment.center,
                        filledIcon: Icons.eco,
                        emptyIcon: Icons.eco_outlined,
                        filledColor: Colors.white,
                        emptyColor: Colors.white60,
                        initialRating: 5,
                        maxRating: 5,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.cat,
                        color: Colors.white,
                        size: 50,
                      ),
                      Text(
                        'Cat Person',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.notoSansThai().fontFamily,
                        ),
                      ),
                      RatingBar.readOnly(
                        alignment: Alignment.center,
                        filledIcon: Icons.eco,
                        emptyIcon: Icons.eco_outlined,
                        filledColor: Colors.white,
                        emptyColor: Colors.white60,
                        initialRating: 10,
                        maxRating: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
