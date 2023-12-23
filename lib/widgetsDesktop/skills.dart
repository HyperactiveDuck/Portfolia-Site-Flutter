import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
    required this.devWidth,
  });

  final double devWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: devWidth,
      color: Secondery,
      height: 500,
      child: Column(
        children: [
          Container(
            width: devWidth,
            height: 400,
            color: Secondery,
            child: Padding(
              padding: EdgeInsets.fromLTRB(devWidth * 0.2, 100, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    'My Skills',
                    style: TextStyle(
                        fontFamily: GoogleFonts.bebasNeue().fontFamily,
                        fontSize: devWidth > 1200 ? 20 : 15,
                        color: kAccent,
                        fontWeight: FontWeight.bold),
                  ),
                  SelectableText(
                    'Technologies I Work With',
                    style: TextStyle(
                        fontFamily: GoogleFonts.bebasNeue().fontFamily,
                        fontSize: devWidth > 1200 ? 50 : 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SelectableText(
                    kSkills,
                    style: TextStyle(
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontSize: devWidth > 1200 ? 15 : 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, devWidth * 0.3, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SkillList(
                          devWidth: devWidth,
                          ktext1: 'Flutter',
                          ktext2: 'Java',
                          ktext3: 'Dart',
                        ),
                        SkillList(
                          devWidth: devWidth,
                          ktext1: 'Linux (Debian & Arch)',
                          ktext2: 'PM Tools',
                          ktext3: 'HTML',
                        ),
                        SkillList(
                          devWidth: devWidth,
                          ktext1: 'Debian Server',
                          ktext2: 'GIT',
                          ktext3: 'CSS',
                        ),
                        SkillList(
                          devWidth: devWidth,
                          ktext1: 'Python',
                          ktext2: 'Github',
                          ktext3: 'Javascript',
                        ),
                      ],
                    ),
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

class SkillList extends StatelessWidget {
  const SkillList(
      {super.key,
      required this.devWidth,
      required this.ktext1,
      required this.ktext2,
      required this.ktext3});
  final String ktext2;
  final String ktext3;
  final String ktext1;
  final double devWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SkillText(devWidth: devWidth, text: ktext1),
        const SizedBox(
          height: 10,
        ),
        SkillText(devWidth: devWidth, text: ktext2),
        const SizedBox(
          height: 10,
        ),
        SkillText(devWidth: devWidth, text: ktext3),
      ],
    );
  }
}

class SkillText extends StatelessWidget {
  const SkillText({
    super.key,
    required this.devWidth,
    required this.text,
  });

  final double devWidth;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SelectableText(
      text,
      style: TextStyle(
          fontFamily: GoogleFonts.roboto().fontFamily,
          fontSize: devWidth > 1200 ? 15 : 10,
          color: Colors.white,
          fontWeight: FontWeight.bold),
    );
  }
}
