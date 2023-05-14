



import 'package:flutter/material.dart';
import 'package:todoapproute/shared/theme/my_theme.dart';
import 'package:todoapproute/splash_page/splash.dart';

import 'home_layout/home_layout_page.dart';



main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:splash.routeName ,
      theme: MyTheme.lightTheme,
      themeMode: ThemeMode.light,
      routes: {
        home_layout.routeName:(context) => home_layout(),
        splash.routeName:(context) => splash(),
      },
    );
  }
}

