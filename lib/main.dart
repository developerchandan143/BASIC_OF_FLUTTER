import 'package:basic_of_flutter/pages/Home_page.dart';
import 'package:basic_of_flutter/pages/Login_page.dart';
import 'package:basic_of_flutter/pages/cart_page.dart';
import 'package:basic_of_flutter/utlis/routes.dart';
import 'package:basic_of_flutter/widgets/themes.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
