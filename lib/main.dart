import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:test_getx/app/modules/home/views/login/sign_in_view.dart';
import 'package:test_getx/app/modules/home/views/login/sign_up_view.dart';
import 'package:test_getx/common/color_extenstion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Book Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: TColor.primary,
          fontFamily: 'SF Pro Text',
        ),
        home: const SignInView());
  }
}
