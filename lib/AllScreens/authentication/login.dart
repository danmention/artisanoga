import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.yellow, CupertinoColors.systemYellow, ],
                  end: Alignment.bottomCenter,
                    begin:Alignment.topCenter
                ),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100.0)),

              ),
              child: Center(
                child: Image.asset('assets/images/artisanlogo.png'),
              ),

            ),

            Expanded(child: Container(

            ))
          ],
        ),
      ),
    );
  }
}

