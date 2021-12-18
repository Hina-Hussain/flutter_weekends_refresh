import 'package:flutter/material.dart';
import 'package:flutter_30_days_challenge/pages/home_page.dart';
import 'package:flutter_30_days_challenge/pages/login_page.dart';
import 'package:flutter_30_days_challenge/pages/my_theme.dart';
import 'package:flutter_30_days_challenge/utils/my_routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme(),
      //darkTheme: ThemeData.dark(),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.loginRoute:(context)=>LoginPage(),
        MyRoutes.homeRoute:(context)=>HomePage()
      },
    );
  }
}

