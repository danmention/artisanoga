import 'package:artisanoga/Model/Artisan.dart';
import 'package:artisanoga/Utils/card_detail.dart';
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({
    Key? key,
    required this.size,
    required this.sizeHeader,
    required this.detailArtisan,
  }) : super(key: key);

  final Size size;
  final double sizeHeader;
  final Artisan detailArtisan;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.24,
      margin: EdgeInsets.only(top: sizeHeader - size.height * 0.18),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: detailArtisan.image.length,
          itemBuilder: (context, index) {
            return CardDetail(
              size: size,
              image: detailArtisan.image[index],
              isLabel: false, press: (){},
            );
          }),
    );
  }
}