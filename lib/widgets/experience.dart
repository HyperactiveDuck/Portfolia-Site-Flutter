import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';

class Experience extends StatelessWidget {
  const Experience({
    super.key,
    required this.devWidth,
  });

  final double devWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      color: kBlack,
      child: Padding(
        padding: EdgeInsets.fromLTRB(200, 0, 00, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 50, 0, 0),
              child: Column(
                children: [
                  SelectableText(
                    'My Experiences',
                    style: TextStyle(
                        color: kAccent,
                        fontFamily: GoogleFonts.oswald().fontFamily,
                        fontSize: devWidth * 0.03,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: devWidth * 0.2,
                    child: Image(
                      image: AssetImage('assets/balogobeyaz.jpg'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    'Bilişim Academy',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: devWidth * 0.03,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SelectableText(
                    'IT Intern',
                    style: TextStyle(
                        color: Colors.white, fontSize: devWidth * 0.01),
                  ),
                  Row(
                    children: [
                      SelectableText(
                        kExp,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: devWidth * 0.01,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
