import 'package:fwebportfolio/widgets/hover_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:fwebportfolio/widgets/intro.dart';

class About extends StatelessWidget {
  const About({
    super.key,
    required this.devWidth,
  });

  final double devWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBlack,
      height: 800,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Container(
              child: Image(
                image: AssetImage('assets/YAD_BIG.jpg'),
                alignment: Alignment.centerRight,
                fit: BoxFit.cover,
              ),
              width: devWidth > 1200 ? 400 : devWidth * 0.5,
              height: 600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 50, 0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      'Who is Yücel Arda DEMİRCİ',
                      style: TextStyle(
                          fontFamily: GoogleFonts.oswald().fontFamily,
                          fontSize: devWidth > 1200 ? 50 : 30,
                          color: kAccent,
                          fontWeight: FontWeight.bold),
                    ),
                    SelectableText(
                      'A Bit About Me',
                      style: TextStyle(
                          fontFamily: GoogleFonts.lilitaOne().fontFamily,
                          fontSize: devWidth > 1200 ? 35 : 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                    SelectableText(''),
                    SelectableText(
                      kAbout,
                      style: TextStyle(
                          fontFamily: GoogleFonts.rowdies().fontFamily,
                          fontSize: devWidth > 1200 ? 20 : 15,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              width: devWidth > 1200 ? 600 : devWidth * 0.5,
              height: 600,
            ),
          ),
        ],
      ),
    );
  }
}
