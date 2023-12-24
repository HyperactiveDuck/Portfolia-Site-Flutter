import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

class ExperienceMobile extends StatelessWidget {
  const ExperienceMobile({
    super.key,
    required this.devHeight,
    required this.devWidth,
  });

  final double devHeight;
  final double devWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Secondery,
      height: devHeight * 1,
      width: devWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Text(
                  'My Experiences',
                  style: TextStyle(
                    fontFamily: GoogleFonts.oswald().fontFamily,
                    fontSize: 25,
                    color: kAccent,
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              html.window.open('https://bilisimacademy.com/', 'new tab');
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: const Image(
                image: AssetImage('assets/balogobeyaz.jpg'),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Bilişim Academy',
                  style: TextStyle(
                    fontFamily: GoogleFonts.oswald().fontFamily,
                    fontSize: 25,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Ethical Hacking Instructor',
                  style: TextStyle(
                    fontFamily: GoogleFonts.oswald().fontFamily,
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
