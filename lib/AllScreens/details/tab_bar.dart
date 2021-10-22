import 'package:artisanoga/Utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabBarDetail extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    double iconSize = 18;
    Color iconColor = Colors.white.withOpacity(0.7);
    var size = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: TextButton.icon(
        icon: Icon(
          Icons.arrow_back,
          size: 20,
          color: iconColor,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
        label: Container(
          margin: EdgeInsets.only(left: 10),
          child: Text(
            'Back',
            style: TextStyle(color: iconColor, fontSize: 16),
          ),
        ),
      ),
      leadingWidth: size.width * 0.3,
      actions: [
        IconButton(
            icon: SvgPicture.asset(
              'assets/icons/share.svg',
              height: iconSize,
            ),
            onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset(
              'assets/icons/heart.svg',
              color: iconColor,
              height: iconSize,
            ),
            onPressed: () {})
      ],
    );
  }
}