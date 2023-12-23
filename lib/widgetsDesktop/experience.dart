import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

class Experience extends StatelessWidget {
  const Experience({super.key, required this.devWidth});

  final double devWidth;
  @override
  Widget build(BuildContext context) {
    double devWidth = MediaQuery.of(context).size.width;
    return Container(
      width: devWidth,
      height: 800,
      color: kBlack,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: devWidth * 0.1),
          Column(
            children: [
              Text('Experience',
                  style: TextStyle(
                    color: kAccent,
                    fontSize: 50,
                    fontFamily: GoogleFonts.oswald().fontFamily,
                  )),
              const SizedBox(height: 80),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    html.window.open('https://bilisimacademy.com/', 'new tab');
                  },
                  child: const Image(
                    image: AssetImage('assets/balogobeyaz.jpg'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: devWidth * 0.05),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 150),
              Text(
                'Bilişim Academy',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontFamily: GoogleFonts.oswald().fontFamily,
                ),
              ),
              Text(
                'IT Intern',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: GoogleFonts.oswald().fontFamily,
                ),
              ),
              Container(
                constraints: BoxConstraints(maxWidth: devWidth * 0.5),
                child: Text(
                  kExp,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: GoogleFonts.oswald().fontFamily,
                  ),
                  overflow: TextOverflow.clip,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
