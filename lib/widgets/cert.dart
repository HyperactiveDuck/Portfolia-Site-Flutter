import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

class Certificate extends StatelessWidget {
  const Certificate({
    super.key,
    required this.devWidth,
  });

  final double devWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableText(
            'Certifications',
            style: GoogleFonts.oswald(
                color: kAccent, fontSize: 40, fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    html.window.open(
                        'https://www.credly.com/badges/2293829e-62ca-40ee-8a83-0d3f0b50ca69',
                        'new tab');
                  },
                  child: CertCard(
                    certName: 'Cisco CyberOps',
                    certImage: Image(
                      image: const AssetImage('assets/cyberops.png'),
                      width: devWidth * 0.1,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    html.window.open(
                        'https://www.udemy.com/certificate/UC-4662dc37-cc12-4bdf-91c2-277ea13c58eb/',
                        'new tab');
                  },
                  child: const CertCard(
                    certName: 'The App Brewery - Flutter Bootcamp',
                    certImage: Image(
                      image: AssetImage('assets/UCCert.jpg'),
                      width: 200,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: devWidth * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    html.window.open(
                        'https://www.coursera.org/account/accomplishments/verify/7NJ7GW9LU3CX',
                        'new tab');
                  },
                  child: CertCard(
                    certName: 'Google Professional Project Menager',
                    certImage: Image.asset('assets/google.jpg'),
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () => html.window.open(
                      'https://drive.google.com/file/d/1-dUOmWY3cWJpHA26NZe4NpPkNqGmFZ2t/view?usp=sharing',
                      'new tab'),
                  child: CertCard(
                    certName: 'Schneider Electric Sales & Marketing',
                    certImage: Image.asset('assets/schneider.png'),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CertCard extends StatelessWidget {
  const CertCard({
    super.key,
    required this.certName,
    required this.certImage,
  });

  final String certName;
  final Image certImage;

  @override
  Widget build(BuildContext context) {
    final double devWidth = MediaQuery.of(context).size.width;
    return Container(
      color: kBlack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: devWidth * 0.2,
            child: Image(
              image: certImage.image,
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(height: 20),
          SelectableText(certName,
              style: GoogleFonts.oswald(
                  color: kAccent, fontSize: 20, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
