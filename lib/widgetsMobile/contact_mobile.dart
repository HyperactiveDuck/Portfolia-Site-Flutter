import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

class ContactMobile extends StatelessWidget {
  const ContactMobile({
    super.key,
    required this.devHeight,
    required this.devWidth,
  });

  final double devHeight;
  final double devWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: devHeight * 0.4,
      width: devWidth,
      color: kBlack,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: devHeight * 0.05,
            ),
            Text(
              'WOULD YOU LIKE TO CONNECT?',
              style: GoogleFonts.oswald(
                  color: kAccent, fontSize: 20, fontWeight: FontWeight.w300),
            ),
            Text(
              "Let's Work Together",
              style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: devHeight * 0.005,
            ),
            Text(
              kConnect,
              style: const TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: devHeight * 0.02,
            ),
            GestureDetector(
              onTap: () {
                html.window
                    .open('mailto:demirciyucelarda@gmail.com', 'new tab');
              },
              child: Text(
                'GET IN TOUCH →',
                style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ),
            const SelectableText(
              '(or copy) demirciyucelarda@gmail.com',
              style: TextStyle(color: Colors.white30),
            ),
          ],
        ),
      ),
    );
  }
}
