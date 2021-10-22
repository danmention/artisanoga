import 'package:artisanoga/AllScreens/mainscreen.dart';
import 'package:flutter/material.dart';

import 'Utils/route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Artisan Oga',
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: "HOME_ROUTE",
      theme: ThemeData(


        primarySwatch: Colors.green,
      ),
      //home: MainScreen(),
    );
  }
}


