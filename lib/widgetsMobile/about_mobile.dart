import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fwebportfolio/consts.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({
    super.key,
    required this.devWidth,
    required this.devHeight,
  });

  final double devWidth;
  final double devHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: devWidth,
      height: devHeight * 1.25,
      color: Secondery,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Image.asset('assets/YAD_BIG.jpg'),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              width: devWidth * 0.9,
              height: devHeight * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Who is Yücel Arda DEMİRCİ',
                    style: TextStyle(
                        letterSpacing: 3,
                        color: kAccent,
                        fontFamily: GoogleFonts.oswald().fontFamily,
                        fontSize: 15),
                  ),
                  Text(
                    'A Bit About Me',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: GoogleFonts.anton().fontFamily,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: devHeight * 0.05),
                  Text(
                    kAbout,
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
