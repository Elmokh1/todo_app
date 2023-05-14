import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todoapproute/home_layout/home_layout_page.dart';

class splash extends StatefulWidget {
  static const String routeName = 'Splash';

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, home_layout.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/splash.png'),
        fit: BoxFit.fill,
      )),
    );
  }
}
