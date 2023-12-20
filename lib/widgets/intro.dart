import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class Intro extends StatelessWidget {
  const Intro({
    super.key,
    required this.devWidth,
  });

  final double devWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Secondery,
      height: 800,
      width: devWidth * 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: devWidth * 0.5,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 200,
                          ),
                          SelectableText(
                            'HELLO WOLRD! I AM',
                            style: TextStyle(
                                fontFamily: GoogleFonts.oswald().fontFamily,
                                color: kAccent,
                                fontSize: devWidth * 0.011,
                                fontWeight: FontWeight.w900),
                            textAlign: TextAlign.left,
                          ),
                          SelectableText(
                            'Yücel Arda DEMIRCI',
                            style: TextStyle(
                                fontFamily: GoogleFonts.oswald().fontFamily,
                                fontSize: devWidth * 0.04,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                          SelectableText(
                            'Your Local Developer',
                            style: TextStyle(
                                fontFamily: GoogleFonts.oswald().fontFamily,
                                fontSize: devWidth * 0.01,
                                color: Colors.white54),
                          ),
                          SelectableText(
                            'MIS Student',
                            style: TextStyle(
                                fontSize: devWidth * 0.01,
                                color: Colors.white54),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AnimatedButton(
                                borderWidth: 4,
                                selectedBackgroundColor: kAccent,
                                borderColor: kAccent,
                                backgroundColor: Colors.transparent,
                                animatedOn: AnimatedOn.onHover,
                                onPress: () {
                                  print('test');
                                },
                                width: 200,
                                text: 'Contact Me!',
                                selectedTextColor: Colors.black,
                                transitionType:
                                    TransitionType.LEFT_BOTTOM_ROUNDER,
                                textStyle: TextStyle(
                                    fontFamily: GoogleFonts.oswald().fontFamily,
                                    fontSize: devWidth * 0.01,
                                    letterSpacing: 5,
                                    color: kAccent,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              AnimatedButton(
                                borderWidth: 4,
                                selectedBackgroundColor: Colors.white,
                                backgroundColor: Colors.transparent,
                                animatedOn: AnimatedOn.onHover,
                                onPress: () {
                                  print('test');
                                },
                                width: 200,
                                text: 'Download CV',
                                selectedTextColor: Colors.black,
                                transitionType: TransitionType.CENTER_LR_IN,
                                textStyle: TextStyle(
                                    fontFamily: GoogleFonts.oswald().fontFamily,
                                    fontSize: devWidth * 0.01,
                                    letterSpacing: 5,
                                    color: kAccent,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Image(
                image: AssetImage('assets/dev.png'),
                alignment: Alignment.topLeft,
              ),
              height: 700,
              width: devWidth * 0.5,
            )
          ],
        ),
      ),
    );
  }
}
