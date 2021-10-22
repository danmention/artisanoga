import 'package:artisanoga/AllScreens/detailscreen.dart';
import 'package:artisanoga/AllWidgets/card_label.dart';
import 'package:artisanoga/Model/Artisan.dart';
import 'package:artisanoga/Utils/card_detail.dart';
import 'package:flutter/material.dart';

class BodyHome extends StatefulWidget {
  List<Artisan> artisanList = [
    Artisan(
        name: 'Cute Cut - Hair Salon',
        rating: 4.7,
        distance: '1.6 Km',
        image: '1.jpg'),

    Artisan(
        name: 'Eli - Plumber',
        rating: 4.5,
        distance: '3.6 Km',
        image: '3.jpg'),
    Artisan(
        name: 'Eli - Spa Salon',
        rating: 4.5,
        distance: '3.6 Km',
        image: '2.jpg'),
  ];

  List<Artisan> nailList = [
    Artisan(
        name: 'Cute Cut - Hair Salon',
        rating: 4.7,
        distance: '1.6 Km',
        image: '1.jpg'),

    Artisan(
        name: 'Eli - Spa Salon',
        rating: 4.5,
        distance: '3.6 Km',
        image: '3.jpg'),
    Artisan(
        name: 'Eli - Spa Salon',
        rating: 4.5,
        distance: '3.6 Km',
        image: '4.jpg'),
  ];

  @override
  _BodyHomeState createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            //HeaderHome(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                children: [
                  CardLabel(
                    lightText: 'Recommended for ',
                    boldText: 'You',
                  ),
                  Container(
                    height: size.height * 0.35,
                    margin: EdgeInsets.only(top: 20),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.artisanList.length,
                        itemBuilder: (context, index) {
                          return CardDetail(
                            size: size,
                            name: widget.artisanList[index].name,
                            image: widget.artisanList[index].image,
                            distance: widget.artisanList[index].distance,
                            rating: widget.artisanList[index].rating,
                            isLabel: true,
                            press: () {
                              Future(() {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => DetailScreen()));
                              });
                            //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => DetailScreen()));
                            },
                          );
                        }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CardLabel(
                    lightText: 'Artisan ',
                    boldText: 'Top Services',
                  ),
                  Container(
                    height: size.height * 0.32,
                    margin: EdgeInsets.only(top: 20),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.nailList.length,
                        itemBuilder: (context, index) {
                          return CardDetail(
                            size: size,
                            name: widget.nailList[index].name,
                            image: widget.nailList[index].image,
                            distance: widget.nailList[index].distance,
                            rating: widget.nailList[index].rating,
                            isLabel: true,
                            press: (){

                              Future(() {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => DetailScreen()));
                              });
                            //Navigator.pushNamed(context, "DETAIL_ROUTE");
                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => DetailScreen()));
                          },
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}