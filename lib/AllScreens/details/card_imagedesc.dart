import 'package:artisanoga/Model/Artisan.dart';
import 'package:artisanoga/Utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';

class CardImageDesc extends StatelessWidget {
   CardImageDesc({

    required this.size,
    required this.detailArtisan,
  }) ;

  final Size size;
  final Artisan detailArtisan;

  // rating( BuildContext context){
  final _dialog = RatingDialog(
    initialRating: 1.0,
    // your app's name?
    title: Text(
      'Rate Experience',
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    // encourage your user to leave a high rating?
    message: Text(
      'Tap a star to set your rating. Add more description here if you want.',
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 15),
    ),
    // your app's logo?
    image: Image.asset('assets/images/ava.png', height: 50, width: 60,),
    submitButtonText: 'Submit',
    commentHint: 'Set your custom comment hint',
    onCancelled: () => print('cancelled'),
    onSubmitted: (response) {
      print('rating: ${response.rating}, comment: ${response.comment}');

      // TODO: add your own logic
      if (response.rating < 3.0) {
        // send their comments to your email or anywhere you wish
        // ask the user to contact you instead of leaving a bad review
      } else {
        // _rateAndReviewApp();
      }
    },
  );




  // show the dialog


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: size.height * 0.14,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    detailArtisan.name!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '${detailArtisan.address} - ${detailArtisan.distance}',
                    style: TextStyle(
                        letterSpacing: 0.8,
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.grey[800]!.withOpacity(0.7)),
                  ),
                  GestureDetector(
                    onTap: (){
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return _dialog;
                          });
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: kStarColor,
                          size: 18,
                        ),
                        SizedBox(width: 5),

                        Text(
                          '${detailArtisan.rating}/5',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.2),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton.icon(
                  onPressed: () {




                  },
                  icon: Icon(Icons.call),
                  label: Text('Call')),
            )
          ],
        ));
  }
}