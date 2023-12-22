import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';

class Certificate extends StatelessWidget {
  const Certificate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText(
              'Certifications',
              style: GoogleFonts.oswald(
                  color: kAccent, fontSize: 40, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                CertCard(
                  certName: 'Cisco CyberOps',
                  certImage: Image(
                    image: AssetImage('assets/cyberops.png'),
                    width: 200,
                  ),
                ),
                CertCard(
                  certName: 'The App Brewery - Flutter Bootcamp',
                  certImage: Image(
                    image: AssetImage('assets/UCCert.jpg'),
                    width: 200,
                  ),
                ),
              ],
            ),
            SizedBox(height: 150),
            Row(
              children: [
                CertCard(
                  certName: 'Google Professional Project Menager',
                  certImage: Image.asset('assets/google.jpg'),
                ),
                CertCard(
                  certName: 'Schneider Electric Sales & Marketing',
                  certImage: Image.asset('assets/schneider.png'),
                ),
              ],
            )
          ],
        ),
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
    return Expanded(
      child: Container(
        color: kBlack,
        child: Column(
          children: [
            Container(
              width: 500,
              child: Image(
                image: certImage.image,
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(height: 20),
            SelectableText(certName,
                style: GoogleFonts.oswald(
                    color: kAccent, fontSize: 20, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
