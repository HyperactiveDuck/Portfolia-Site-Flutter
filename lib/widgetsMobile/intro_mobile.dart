import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;
import 'package:flutter_animated_button/flutter_animated_button.dart';

class IntroMobile extends StatelessWidget {
  const IntroMobile({
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
      height: devHeight * 0.9,
      color: kBlack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Hello World! I am',
            style: TextStyle(
              color: kAccent,
              letterSpacing: 3,
              fontSize: 15,
              fontFamily: GoogleFonts.oswald().fontFamily,
            ),
          ),
          Text(
            'Yücel Arda DEMIRCI',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 3,
              fontSize: 40,
              fontFamily: GoogleFonts.oswald().fontFamily,
            ),
          ),
          Text(
            'Your Local Developer',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 3,
              fontSize: 15,
              fontFamily: GoogleFonts.oswald().fontFamily,
            ),
          ),
          Text(
            'MIS Student',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 3,
              fontSize: 15,
              fontFamily: GoogleFonts.oswald().fontFamily,
            ),
          ),
          SizedBox(height: devHeight * 0.1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedButton(
                borderWidth: 4,
                selectedBackgroundColor: kAccent,
                borderColor: kAccent,
                backgroundColor: Colors.transparent,
                animatedOn: AnimatedOn.onTap,
                onPress: () {
                  html.window
                      .open('https://www.linkedin.com/in/yadhere', 'new tab');
                },
                width: devWidth * 0.2,
                text: 'Connect',
                selectedTextColor: Colors.black,
                transitionType: TransitionType.LEFT_BOTTOM_ROUNDER,
                textStyle: TextStyle(
                    fontFamily: GoogleFonts.oswald().fontFamily,
                    fontSize: 15,
                    letterSpacing: 3,
                    color: kAccent,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                width: 20,
              ),
              AnimatedButton(
                borderWidth: 4,
                selectedBackgroundColor: kAccent,
                borderColor: kAccent,
                backgroundColor: Colors.transparent,
                animatedOn: AnimatedOn.onTap,
                onPress: () {
                  html.window.open(
                      'https://drive.google.com/file/d/1znYy_r1pJtftnfL-Zouhcjoh6bgbESzY/view?usp=sharing',
                      'new tab');
                },
                width: devWidth * 0.2,
                text: 'CV',
                selectedTextColor: Colors.black,
                transitionType: TransitionType.LEFT_BOTTOM_ROUNDER,
                textStyle: TextStyle(
                    fontFamily: GoogleFonts.oswald().fontFamily,
                    fontSize: 15,
                    letterSpacing: 3,
                    color: kAccent,
                    fontWeight: FontWeight.w900),
              ),
            ],
          )
        ],
      ),
    );
  }
}
