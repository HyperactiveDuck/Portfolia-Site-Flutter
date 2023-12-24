import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fwebportfolio/consts.dart';
import 'dart:html' as html;

class CertsMobile extends StatelessWidget {
  const CertsMobile({
    super.key,
    required this.devHeight,
    required this.devWidth,
  });

  final double devHeight;
  final double devWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: devHeight * 2,
      width: devWidth,
      color: Secondery,
      child: Column(
        children: [
          SizedBox(
            height: devHeight * 0.05,
          ),
          Text(
            'My Certifications',
            style: TextStyle(
              color: kAccent,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.oswald().fontFamily,
            ),
          ),
          SizedBox(
            height: devHeight * 0.05,
          ),
          GestureDetector(
            onTap: () {
              html.window.open(
                  'https://www.udemy.com/certificate/UC-4662dc37-cc12-4bdf-91c2-277ea13c58eb/',
                  'new tab');
            },
            child: const CertCardMobile(
              certName: 'App Brewery Flutter Bootcamp',
              certImage: 'assets/UCCert.jpg',
            ),
          ),
          SizedBox(
            height: devHeight * 0.1,
          ),
          GestureDetector(
            onTap: () {
              html.window.open(
                  'https://www.credly.com/badges/2293829e-62ca-40ee-8a83-0d3f0b50ca69',
                  'new tab');
            },
            child: const CertCardMobile(
              certName: '        Cisco CyberOps Associate        ',
              certImage: 'assets/cyberops.png',
            ),
          ),
          SizedBox(
            height: devHeight * 0.1,
          ),
          GestureDetector(
            onTap: () {
              html.window.open(
                  'https://www.coursera.org/account/accomplishments/verify/7NJ7GW9LU3CX',
                  'new tab');
            },
            child: const CertCardMobile(
              certName: 'Google Proffesional Project Manager',
              certImage: 'assets/google.jpg',
            ),
          ),
          SizedBox(
            height: devHeight * 0.1,
          ),
          GestureDetector(
            onTap: () => html.window.open(
                'https://drive.google.com/file/d/1-dUOmWY3cWJpHA26NZe4NpPkNqGmFZ2t/view?usp=sharing',
                'new tab'),
            child: const CertCardMobile(
              certName: 'Schneider Electric Sales & Marketing',
              certImage: 'assets/schneider.png',
            ),
          ),
        ],
      ),
    );
  }
}

class CertCardMobile extends StatelessWidget {
  const CertCardMobile({
    super.key,
    required this.certName,
    required this.certImage,
  });
  final String certName;
  final String certImage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(12.0)),
              child: Image(
                image: AssetImage('$certImage'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 1,
            child: Text(
              certName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 23,
                fontFamily: GoogleFonts.oswald().fontFamily,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
