import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/create_split_page.dart';
import 'package:split_it/modules/home/home_page.dart';
import 'package:split_it/modules/splash/splash_page.dart';

import 'error/error_page.dart';
import 'login/login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Split.it", initialRoute: "/splash", routes: {
      "/splash": (context) => SplashPage(),
      "/login": (context) => LoginPage(),
      "/error": (context) => ErrorPage(),
      "/home": (context) => HomePage(),
      "/create_split": (context) => CreateSplitPage()
    });
  }
}
