import 'package:ecommerce_app/src/components/categoriesComponent.dart';
import 'package:ecommerce_app/src/components/productsComponent.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            children: [
              SizedBox(
                width: 110,
              ),
              Text(
                "X",
                style: TextStyle(
                  color: HexColor('#3E45AA'),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Text(
                "E",
                style: TextStyle(
                  color: HexColor('#A1DBF5'),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(EvaIcons.searchOutline))
          ],
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            CategoriesComponent(),
            ProductsComponent(),
          ],
        ));
  }
}
