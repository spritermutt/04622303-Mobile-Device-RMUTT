import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class odd extends StatelessWidget {
  const odd({super.key});

  List<int> getOddNumbers() {
    List<int> oddNumbers = [];
    for (int i = 1; i < 1000; i++) {
      if (i % 2 != 0) {
        oddNumbers.add(i);
      }
    }
    return oddNumbers;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'จำนวนเลขคี่ตั้งแต่ ${getOddNumbers().first} ถึง ${getOddNumbers().last + 1}',
              style: GoogleFonts.notoSansThai(
                fontSize: MediaQuery.of(context).size.width * 0.03,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: getOddNumbers()
                  .map(
                    (number) => Container(
                      width: 60,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 101, 140, 88),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        number.toString(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.notoSansThai(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFeatures: const [FontFeature.tabularFigures()],
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
