import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({
    super.key,
    required this.devHeight,
    required this.devWidth,
  });

  final double devHeight;
  final double devWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: devHeight * 0.9,
      width: devWidth,
      color: kBlack,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: devHeight * 0.1),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Skills',
                style: GoogleFonts.oswald(fontSize: 20, color: kAccent),
              ),
              Text(
                'Technologies I Work With',
                style: GoogleFonts.oswald(fontSize: 40, color: Colors.white),
              ),
              Text(
                kSkills,
                style: GoogleFonts.roboto(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: devHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: devHeight * 0.38,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Flutter',
                          style: GoogleFonts.teko(
                              color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          'Linux Server',
                          style: GoogleFonts.teko(
                              color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          'Java',
                          style: GoogleFonts.teko(
                              color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          'GIT',
                          style: GoogleFonts.teko(
                              color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          'Dart',
                          style: GoogleFonts.teko(
                              color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          'CSS',
                          style: GoogleFonts.teko(
                              color: Colors.white, fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: devHeight * 0.38,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Linux (Debian, Arch)',
                          style: GoogleFonts.teko(
                              color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          'Python',
                          style: GoogleFonts.teko(
                              color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          'PM Tools',
                          style: GoogleFonts.teko(
                              color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          'Github',
                          style: GoogleFonts.teko(
                              color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          'HTML',
                          style: GoogleFonts.teko(
                              color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          'JavaScript',
                          style: GoogleFonts.teko(
                              color: Colors.white, fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
