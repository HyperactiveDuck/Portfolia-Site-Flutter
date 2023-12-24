import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatefulWidget {
  const About({
    Key? key,
    required this.devWidth,
  }) : super(key: key);

  final double devWidth;

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBlack,
      height: 800,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Container(
              width: widget.devWidth > 1200 ? 400 : widget.devWidth * 0.5,
              height: 600,
              child: const Image(
                image: AssetImage('assets/YAD_BIG.jpg'),
                alignment: Alignment.centerRight,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 50, 0),
            child: Container(
              width: widget.devWidth > 1200 ? 600 : widget.devWidth * 0.5,
              height: 600,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      'Who is Yücel Arda DEMİRCİ',
                      style: TextStyle(
                        fontFamily: GoogleFonts.oswald().fontFamily,
                        fontSize: widget.devWidth > 1200 ? 50 : 30,
                        color: kAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SelectableText(
                      'A Bit About Me',
                      style: TextStyle(
                        fontFamily: GoogleFonts.lilitaOne().fontFamily,
                        fontSize: widget.devWidth > 1200 ? 35 : 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SelectableText(''),
                    SelectableText(
                      kAbout,
                      style: TextStyle(
                        fontFamily: GoogleFonts.rowdies().fontFamily,
                        fontSize: widget.devWidth > 1200 ? 20 : 15,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
