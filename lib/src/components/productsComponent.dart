import 'package:ecommerce_app/src/widgets/ktext.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductsComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: GridView.builder(
          shrinkWrap: true,
          primary: false,
          itemCount: 18,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .6,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.white,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffC4E0EE).withOpacity(.8),
                    radius: 73,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 65,
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xffC4E0EE).withOpacity(.8),
                    radius: 63,
                  ),
                  Positioned(
                    top: 12,
                    left: 12,
                    child: Container(
                      height: 25,
                      width: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xffC4E0EE).withOpacity(.8),
                      ),
                      child: Center(
                        child: KText(
                          text: '35%',
                          color: Colors.black54,
                          fontSize: 13,
                          fontFamily: 'Cera Bold',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.red.withOpacity(.8),
                      ),
                      child: Center(
                          child: Icon(
                        EvaIcons.heart,
                        color: Colors.white,
                        size: 14,
                      )),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    child: Column(
                      children: [
                        KText(
                          text: 'Nike Shoe',
                          fontSize: 15,
                        ),
                        KText(
                          text: '\$30',
                          fontSize: 15,
                        ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3,
                              itemSize: 20,
                              unratedColor: Colors.grey,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              // itemPadding:
                              //     EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                size: 10,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
