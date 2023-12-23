// ignore_for_file: sized_box_for_whitespace, avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'dart:html' as html;

class Intro extends StatefulWidget {
  const Intro({
    Key? key,
    required this.devWidth,
  }) : super(key: key);

  final double devWidth;

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeInAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _triggerAnimation();
  }

  void _triggerAnimation() {
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeInAnimation,
      child: Container(
        color: Secondery,
        height: 800,
        width: widget.devWidth * 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: widget.devWidth * 0.5,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 200,
                            ),
                            SelectableText(
                              'HELLO WOLRD! I AM',
                              style: TextStyle(
                                  fontFamily: GoogleFonts.oswald().fontFamily,
                                  color: kAccent,
                                  fontSize: widget.devWidth * 0.011,
                                  fontWeight: FontWeight.w900),
                              textAlign: TextAlign.left,
                            ),
                            SelectableText(
                              'Yücel Arda DEMIRCI',
                              style: TextStyle(
                                  fontFamily: GoogleFonts.oswald().fontFamily,
                                  fontSize: widget.devWidth * 0.04,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            ),
                            SelectableText(
                              'Your Local Developer',
                              style: TextStyle(
                                  fontFamily: GoogleFonts.oswald().fontFamily,
                                  fontSize: widget.devWidth * 0.01,
                                  color: Colors.white54),
                            ),
                            SelectableText(
                              'MIS Student',
                              style: TextStyle(
                                  fontSize: widget.devWidth * 0.01,
                                  color: Colors.white54),
                            ),
                            const SizedBox(
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
                                    html.window.open(
                                        'https://www.linkedin.com/in/yadhere',
                                        'new tab');
                                  },
                                  width: 200,
                                  text: 'Contact Me!',
                                  selectedTextColor: Colors.black,
                                  transitionType:
                                      TransitionType.LEFT_BOTTOM_ROUNDER,
                                  textStyle: TextStyle(
                                      fontFamily:
                                          GoogleFonts.oswald().fontFamily,
                                      fontSize: widget.devWidth * 0.01,
                                      letterSpacing: 5,
                                      color: kAccent,
                                      fontWeight: FontWeight.w900),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                AnimatedButton(
                                  borderWidth: 4,
                                  selectedBackgroundColor: Colors.white,
                                  backgroundColor: Colors.transparent,
                                  animatedOn: AnimatedOn.onHover,
                                  onPress: () {
                                    html.window.open(
                                        'https://drive.google.com/file/d/1znYy_r1pJtftnfL-Zouhcjoh6bgbESzY/view?usp=sharing',
                                        'new tab');
                                  },
                                  width: 200,
                                  text: 'Download CV',
                                  selectedTextColor: Colors.black,
                                  transitionType: TransitionType.CENTER_LR_IN,
                                  textStyle: TextStyle(
                                      fontFamily:
                                          GoogleFonts.oswald().fontFamily,
                                      fontSize: widget.devWidth * 0.01,
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
                height: 700,
                width: widget.devWidth * 0.5,
                child: const Image(
                  image: AssetImage('assets/dev.png'),
                  alignment: Alignment.topLeft,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
