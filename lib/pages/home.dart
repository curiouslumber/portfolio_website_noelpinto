import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(80),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 5,
              child: Container(
                height: 600,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffC6A686), width: 1)),
                child: Image.asset(
                  'assets/images/selfpic.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Spacer(),
            Expanded(
              flex: 5,
              child: Container(
                  alignment: Alignment.centerLeft,
                  height: 600,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: height * 0.02,
                    children: [
                      Text(
                        'Hello, I am Noel Pinto.',
                        style: TextStyle(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            fontSize: 40,
                            color: Colors.white),
                      ),
                      Text(
                          'A Mobile Application Developer\nusing Flutter and Native Android/iOS\nbased in Mumbai.',
                          style: TextStyle(
                              fontFamily: GoogleFonts.inter().fontFamily,
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
            ),
          ],
        ),
      ]),
    );
  }
}
