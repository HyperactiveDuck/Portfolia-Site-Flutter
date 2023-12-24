import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';

class BottomBarMobile extends StatelessWidget {
  const BottomBarMobile({
    super.key,
    required this.devHeight,
  });

  final double devHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Secondery,
      height: devHeight * 0.06,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Text(
              '© 2023 Yücel Arda DEMİRCİ',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            Spacer(),
            Text(
              'github',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Scroll to top',
              style: TextStyle(color: kAccent),
            ),
          ],
        ),
      ),
    );
  }
}
