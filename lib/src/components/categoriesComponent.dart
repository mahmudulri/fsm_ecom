import 'package:ecommerce_app/src/controllers/shopcontroller.dart';
import 'package:ecommerce_app/src/widgets/ktext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesComponent extends StatelessWidget {
  final _shop = Get.put(ShopController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                KText(
                  text: 'Our Product ',
                  fontSize: 30,
                  color: Colors.black,
                  fontFamily: 'Cera Bold',
                ),
                Spacer(),
                KText(text: 'short by'),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 12,
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              height: 70,
              width: Get.width,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: _shop.categories.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = _shop.categories[index];
                  return Container(
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.only(left: 8),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 12,
                        ),
                        Image.asset(
                          '${item['imagePath']}',
                          color: Colors.black54,
                          width: 40,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        KText(
                          text: '${item['title']}',
                          fontSize: 16,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
