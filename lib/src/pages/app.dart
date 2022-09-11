import 'package:ecommerce_app/src/config/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homepage.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Apptheme.appTheme,
      home: Homepage(),
    );
  }
}
