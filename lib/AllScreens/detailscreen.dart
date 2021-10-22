import 'package:artisanoga/AllScreens/details/card_imagedesc.dart';
import 'package:artisanoga/AllScreens/details/details_image.dart';
import 'package:artisanoga/AllScreens/details/tab_service.dart';
import 'package:artisanoga/Model/Artisan.dart';
import 'package:artisanoga/Utils/constant.dart';
import 'package:flutter/material.dart';

import 'details/tab_bar.dart';

class DetailScreen extends StatefulWidget {


  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  //TabController? _tabController;

  Artisan detailArtisan = Artisan(
      name: 'Cute Cut - Hair Salon',
      rating: 4.7,
      distance: '1.6 Km',
      image: ['1.jpg', '3.jpg'],
      address: 'Wolla Warsaw');

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeHeader = size.height * 0.3;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Detail'),
      // ),
      body: Container(
        height: size.height,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                color: kPrimaryColor,
                width: size.width,
                height: sizeHeader,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TabBarDetail(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25, top: 20),
                child: Column(
                  children: [
                    CardImage(
                        size: size,
                        sizeHeader: sizeHeader,
                        detailArtisan: detailArtisan),
                    CardImageDesc(size: size, detailArtisan: detailArtisan),
                     TabBarService(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}