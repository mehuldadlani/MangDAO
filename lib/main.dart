import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:temp/screens/home_page.dart';
import 'package:temp/screens/login_page.dart';
import 'package:temp/screens/splash_screen.dart';
import 'package:temp/widgets/drawer_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OKToast(
      // 2-A: wrap your app with OKToast
      textStyle: const TextStyle(fontSize: 19.0, color: Colors.white),
      backgroundColor: Colors.black,
      animationCurve: Curves.easeIn,
      animationBuilder: const OffsetAnimationBuilder(),
      animationDuration: const Duration(milliseconds: 200),
      duration: const Duration(seconds: 5),
      child: MaterialApp(
        home: const HomePage(),
      ),
    );
  }
}

