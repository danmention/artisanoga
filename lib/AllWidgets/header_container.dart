import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HeaderContainer extends StatelessWidget {
  var text = "Login";

  HeaderContainer(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.yellow, CupertinoColors.systemYellow,],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
      child: Stack(
        children: <Widget>[
          Positioned(
              bottom: 20,
              right: 20,
              child: Text(
                text,
                style: TextStyle(color: Colors.black45,fontSize: 20),
              )),
          Center(
            child: Image.asset('assets/images/artisanlogo.png'),
          ),
        ],
      ),
    );
  }
}