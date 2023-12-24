import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({
    super.key,
    required this.devWidth,
    required this.devHeight,
  });

  final double devWidth;
  final double devHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: devWidth,
      height: devHeight * 0.07,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/yad.jpg'),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: Icon(
                Icons.menu,
                color: kAccent,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
