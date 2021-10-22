import 'package:artisanoga/AllScreens/listpage.dart';
import 'package:artisanoga/AllWidgets/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';


class MainScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var size  =  MediaQuery.of(context).size;
    return Scaffold(
appBar: AppBar(elevation: 0,),
      drawer: NavDrawer(),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.3,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                    )),
              child: Column(
                children: [
                  SafeArea(
                      child: Container(
                    padding: EdgeInsets.fromLTRB(30.0, 35.0, 30.0, 15.0),
                    child: Column(

                      children: [

                        _labelName('Daria'),
                        Container(
                          width: size.width * 0.9,
                          margin: EdgeInsets.only(top: 15),
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.grey[100]!.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(14)),
                          child: TextFormField(
                            decoration: InputDecoration(
                                icon: SvgPicture.asset(
                                  'assets/icons/search.svg',
                                  color: Colors.white,
                                ),
                                border: InputBorder.none,
                                hintStyle: TextStyle(color: Colors.white.withOpacity(0.8)),
                                hintText: 'What are you looking for?'),
                          ),
                        )
                      ],
                    ),
                  ))
                ],
              ),),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

            Text('Categories', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(
                     Radius.circular(25.0),
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('View All', style: TextStyle(fontSize: 15, color: Colors.white),),
              ),
            )


          ],),
        ),
              BodyHome(),


            ],
          ),
        ),
      ),
    );
  }


  _settingProfile() {
    return Container(
      child: Row(
        children: [
          IconButton(
              icon: SvgPicture.asset(
                'assets/icons/setting-lines.svg',
                height: 20,
                color: Colors.grey[300],
              ),
              onPressed: () {}),
          Container(
            width: 35,
            height: 32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/images/ava.png'),
                    fit: BoxFit.fill)),
          ),
        ],
      ),
    );
  }

  _labelName(String name) {
    return RichText(
      text: TextSpan(
        text: 'Hello ',
        style: TextStyle(fontSize: 30, color: Colors.white.withOpacity(0.8)),
        children: [
          TextSpan(
              text: "$name.",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white.withOpacity(1))),
        ],
      ),
    );
  }


}
