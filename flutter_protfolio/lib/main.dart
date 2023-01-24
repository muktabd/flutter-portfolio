import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/constants.dart';
import 'package:flutter_portfolio/controller/contact_me_controller.dart';
import 'package:flutter_portfolio/home_screen.dart';
import 'package:get/get.dart';

void main() async {
  Get.put(ContactMeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Abdullah Ibna Mukta',
      theme: ThemeData(
        inputDecorationTheme: kDefaultInputDecorationTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}