import 'package:artisanoga/AllScreens/UndefinedScreen.dart';
import 'package:artisanoga/AllScreens/authentication/login.dart';
import 'package:artisanoga/AllScreens/detailscreen.dart';
import 'package:artisanoga/AllScreens/mainscreen.dart';
import 'package:flutter/material.dart';

class RouteGenerator{

  static Route<dynamic> generateRoute(RouteSettings settings)  {
    switch (settings.name) {
      case "HOME_ROUTE":
        return MaterialPageRoute(builder: (_) => MainScreen());

      case "login":
        return MaterialPageRoute(builder: (_) => LoginScreen());
    case "DETAIL_ROUTE":
      return MaterialPageRoute(builder: (_) => DetailScreen());
    default:
      return MaterialPageRoute(builder: (_) => UndefinedScreen());
    }
  }

}

